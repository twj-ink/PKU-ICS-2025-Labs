use anyhow::{bail, Context};
use rand::prelude::*;
use y86_sim::{isa::reg_code, utils::get_u64, AssembleOption};

fn gen_i64s(rng: &mut SmallRng, len: usize) -> Vec<i64> {
    rng.sample_iter(rand::distributions::Standard)
        .take(len)
        .collect()
}

fn render_nums(data: &[i64]) -> String {
    data.iter()
        .map(|&num| num as u64)
        .map(|num| format!(".quad 0x{:016x}", num))
        .collect::<Vec<_>>()
        .join("\n")
}

/// This function computes the score rate of based on the metrics of one's
/// implementation of the `ncopy` task.
///
/// - `cpe`: the average cycle per element for the ncopy function
/// - `cost`: the length of the critical path of the ncopy architecture
///
/// Formally, the critical path of a CPU architecture is the longest path of
/// combinational logic between clocked elements (like flip-flops). The length
/// of the critical path can be used to mesure the CPU's clock frequency, which
/// in turn can be used to estimate the architecture performance.
///
/// In this lab, the length of the critical path is simplified as: 1 plus the
/// maximum number of hardware devices (units) that lines up in a path of the
/// architecture. For example, `seq_std` has a critical path of length 8, and
/// `pipe_std` has a critical path of length 4.
///
/// One can use `./target/debug/ysim -A [arch_name] -I` to inspect the length
/// of the critical path and the devices execution order of an architecture.
/// This command will also generate an HTML file that visualizes the
/// dependency graph of the architecture.
pub fn ncopy_scorerate(cpe: f64, cost: u64) -> f64 {
    let s = cpe + (cost as f64) * 2.0;
    if s <= 15.0 {
        1.0
    } else if s <= 16.0 {
        0.95
    } else if s > 19.0 {
        0.0
    } else {
        (19.0 - s) / 3.0 * 0.95
    }
}

/// This function assembles the `misc/ncopy.ys` file and run the simulation
/// using `ncopy` architecture.
///
/// It returns the average cycle per element and the architecture cost.
///
/// It generate random bytes of a list of lengths and test the correctness and
/// performance of ncopy function.
pub fn grade_ncopy(tty_out: bool) -> anyhow::Result<(f64, u64)> {
    // fix seed for reproducibility
    let mut rng = SmallRng::from_seed([0; 32]);

    let source = std::fs::read_to_string("misc/ncopy.ys")?;

    let Some(tester) = y86_sim::test::SimTester::new("ncopy") else {
        bail!(
            "ncopy architecture not found, make sure sim/src/architectures/extra/ncopy.rs exists"
        );
    };

    let data_lens = (1..=64).collect::<Vec<_>>();

    let mut sum_cpe = 0f64;
    let mut sim_cycle_cost = 10; // should be <= 10

    for len in data_lens.iter().copied() {
        if tty_out {
            println!("test len={}", len);
        }

        let data = gen_i64s(&mut rng, len);

        // This source file call the ncopy function to copy data from data_to_copy to
        // data_dst the return value of ncopy is the number of positive numbers
        let src = format!(
            r##"
            .pos 0
            irmovq stack, %rsp
            irmovq data_to_copy, %rdi
            irmovq data_dst, %rsi
            irmovq ${len}, %rdx

            call ncopy
            halt
            nop
            nop
            nop
            nop
            nop
        
        {source}

        # do not fall through to the end of the source!
        # Otherwise you will encounter this trap :)
        trapititit: jmp trapititit

            .pos 0x1000 # source code + stack limits to 4kb
            .align 8
        stack:
        data_to_copy:
            {quad_data}
        data_dst:
        "##,
            quad_data = render_nums(&data),
        );

        let res = tester.test_isa(&src).inspect_err(|_| {
            if tty_out {
                println!("==========================================================");
                println!("failed to pass ISA check for: ncopy.ys");
                println!("The test source file is saved as ncopy_test_failure.ys");
                println!("==========================================================");
            }
            std::fs::write("ncopy_test_failure.ys", &src).unwrap();
        })?;

        let sim = res.sim;

        // cycle per element
        let cpe = sim.cycle_count() as f64 / len as f64;

        if tty_out {
            println!("total cycles: {}, cpe: {}", sim.cycle_count(), cpe);
        }

        sum_cpe += cpe;
        sim_cycle_cost = sim.cycle_cost();

        let check_data = || {
            let a = y86_sim::assemble(&src, AssembleOption::default())?;

            let dst_addr = a.obj.symbols["data_dst"] as usize;
            let result: Vec<i64> = res.mem.read()[dst_addr..dst_addr + len * 8]
                .chunks_exact(8)
                .map(|chunk| {
                    let mut bytes = [0; 8];
                    bytes.copy_from_slice(chunk);
                    u64::from_le_bytes(bytes) as i64
                })
                .collect();

            if result != data {
                anyhow::bail!("data mismatch");
            }

            // get return value of ncopy
            let Some(pos_count) = sim
                .registers()
                .get(y86_sim::isa::reg_code::RAX as usize)
                .copied()
            else {
                bail!("RAX not found");
            };

            // std::fs::write("out.yo", a.to_string())?;
            // std::fs::write("out.ys", &src)?;

            let data_pos_count = data.iter().filter(|x| **x > 0).count();
            if pos_count != data_pos_count as u64 {
                eprintln!("{data:?}");
                bail!(
                    "pos_count mismatch, expected: {}, got: {}",
                    data_pos_count,
                    pos_count
                );
            }
            Ok(())
        };

        check_data().inspect_err(|e| {
            if tty_out {
                println!("==========================================================");
                println!("failed to pass check for ncopy.ys: {:#?}", e);
                println!("The test source file is saved as ncopy_test_failure.ys");
                println!("==========================================================");
            }
            std::fs::write("ncopy_test_failure.ys", &src).unwrap();
        })?;
    }

    let avg_cpe = sum_cpe / data_lens.len() as f64;

    Ok((avg_cpe, sim_cycle_cost))
}

/// This function just checks if the given array is sorted. Make sure there's
/// a symbol `array` in `misc/bubble.ys` that points to the array.
pub fn grade_bubble(path: &str) -> anyhow::Result<()> {
    let source = std::fs::read_to_string(path)?;
    let a = y86_sim::assemble(&source, AssembleOption::default())?;

    let res = y86_sim::isa::simulate(a.obj.init_mem(), false)?;
    let array_addr = a
        .obj
        .symbols
        .get("array")
        .copied()
        .ok_or(anyhow::anyhow!("array label not found"))? as usize;

    let mut array = [0xbca, 0xcba, 0xacb, 0xcab, 0xabc, 0xbac];
    array.sort();

    // the length of the array is 6
    for i in 0..array.len() {
        let val = get_u64(&res.bin[(array_addr + i * 8)..(array_addr + (i + 1) * 8)]);
        if val != array[i] {
            bail!("expected: 0x{:x}, got: 0x{:x}", array[i], val);
        }
    }

    Ok(())
}

/// This function only checks if the return value of the sum function is the
/// sum of all elements in the list.
pub fn grade_sum(path: &str) -> anyhow::Result<()> {
    let source = std::fs::read_to_string(path)?;
    let a = y86_sim::assemble(&source, AssembleOption::default())?;

    let res = y86_sim::isa::simulate(a.obj.init_mem(), false)?;
    let nums = [0x00d, 0x0e0, 0xf00];
    let ans = nums.into_iter().sum::<u64>();
    let out = res.regs[reg_code::RAX as usize];

    if out != ans {
        bail!("expected: 0x{:x}, got: 0x{:x}", ans, out);
    }

    Ok(())
}

/// Check if the given architecture respects the y86 ISA specification.
///
/// - If `ext_iopq` is true, the architecture should support the `iopq`
///   instruction.
pub fn grade_arch(arch: &str, ext_iopq: bool, tty_out: bool) -> anyhow::Result<()> {
    let paths = std::fs::read_dir("misc/y86-code")?
        .filter_map(Result::ok)
        .map(|entry| entry.path())
        .collect::<Vec<_>>();

    for path in paths {
        if path.extension().is_some_and(|ext| ext == "ys") {
            if !ext_iopq && path.ends_with("asumi.ys") {
                continue;
            }
            // we do not support jm instruction
            if path.ends_with("asumj.ys") {
                continue;
            }

            // this program cause rsp to overflow
            if path.ends_with("prog10.ys") {
                continue;
            }

            let Some(sim) = y86_sim::test::SimTester::new(arch) else {
                bail!("architecture not found: {}", arch);
            };

            if tty_out {
                println!("- testing {}", path.display());
            }

            sim.test_isa(
                &std::fs::read_to_string(&path)
                    .with_context(|| format!("read file {}", path.display()))?,
            )
            .inspect_err(|_| {
                if tty_out {
                    println!("==========================================================");
                    println!("failed to pass ISA check for: {}", path.display());
                    println!("arch: {}", arch);
                    println!("To reproduce the error, you may run the following command:");
                    println!("./target/debug/yas {}", path.display());
                    println!("./target/debug/ysim {} -A {arch}", path.display());
                    println!("==========================================================");
                }
            })?;
        }
    }

    Ok(())
}

/// check if the two architectures are the same cycle by cycle.
/// make sure `arch` and `gt_arch` are both valid architectures.
fn compare_arch(arch: &str, gt_arch: &str, tty_out: bool) -> anyhow::Result<()> {
    let paths = std::fs::read_dir("misc/y86-code")?
        .filter_map(Result::ok)
        .map(|entry| entry.path())
        .collect::<Vec<_>>();

    for path in paths {
        if path.extension().is_some_and(|ext| ext == "ys") {
            if path.ends_with("asumi.ys") {
                continue;
            }
            // we do not support jm instruction
            if path.ends_with("asumj.ys") {
                continue;
            }
            // this program cause rsp to overflow
            if path.ends_with("prog10.ys") {
                continue;
            }
            if tty_out {
                println!("- testing {}", path.display());
            }
            let src = std::fs::read_to_string(&path)
                .with_context(|| format!("read file {}", path.display()))?;

            let a = y86_sim::assemble(&src, y86_sim::AssembleOption::default())?;

            let mem = y86_sim::framework::MemData::init(a.obj.init_mem());
            let mut sim = y86_sim::architectures::create_sim(arch.to_string(), mem.clone(), false);

            let gt_mem = y86_sim::framework::MemData::init(a.obj.init_mem());
            let mut gt_sim =
                y86_sim::architectures::create_sim(gt_arch.to_string(), gt_mem.clone(), false);

            while !gt_sim.is_terminate() {
                if sim.is_terminate() {
                    bail!(
                        "testing {}: {} terminates before {}",
                        path.display(),
                        arch,
                        gt_arch
                    );
                }
                gt_sim.step();
                sim.step();

                if sim.registers() != gt_sim.registers() {
                    bail!("testing {}: {} registers mismatch", path.display(), arch);
                }
                if sim.program_counter() != gt_sim.program_counter() {
                    bail!("testing {}: {} pc mismatch", path.display(), arch);
                }
            }
            if gt_mem.read().as_ref() != mem.read().as_ref() {
                bail!("testing {}: {} memory mismatch", path.display(), arch);
            }
        }
    }

    Ok(())
}

/// At student's side, gt_arch is not provided, so we only test the correctness.
pub fn grade_pipe_placeholder(
    arch: &str,
    gt_arch: Option<&str>,
    tty_out: bool,
) -> anyhow::Result<()> {
    if tty_out {
        println!("testing {} ISA:", arch);
    }
    // check ISA correctness
    grade_arch(arch, false, tty_out)?;

    if let Some(gt_arch) = gt_arch {
        if tty_out {
            println!("testing {} compared with {}:", arch, gt_arch);
        }
        compare_arch(arch, gt_arch, tty_out)?;
    }
    Ok(())
}
