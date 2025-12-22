use anyhow::Context;
use binutils::{clap, verbose};
use clap::Parser;

const PART_A_SCORE: i64 = 15;
const PART_C_SCORE: i64 = 60;
const PART_B_SEQ_FULL_SCORE: i64 = 4;
const PART_B_ARCHS: [(&str, &str, i64); 7] = [
    ("pipe_s3a", "pipe_s3a_ans", 3),
    ("pipe_s3b", "pipe_s3b_ans", 3),
    ("pipe_s3c", "pipe_s3c_ans", 3),
    ("pipe_s3d", "pipe_s3d_ans", 3),
    ("pipe_s4a", "pipe_s4a_ans", 3),
    ("pipe_s4b", "pipe_s4b_ans", 3),
    ("pipe_s4c", "pipe_s4c_ans", 3),
];

fn grade_it(name: &str, func: impl FnOnce() -> anyhow::Result<()>) {
    use y86_sim::utils::{GRNB, REDB};
    println!("Grading {name}...");
    match func() {
        Ok(_) => println!("{GRNB}{name} check passed{GRNB:#}"),
        Err(e) => {
            println!("{REDB}{name} check failed{REDB:#}: {:?}", e);
        }
    }
}

fn grade_autolab() {
    // Part A

    let bubble_score = grader::grade_bubble("misc/bubble.ys")
        .map(|_| PART_A_SCORE / 3)
        .unwrap_or(0);

    let sum_score = grader::grade_sum("misc/sum.ys")
        .map(|_| PART_A_SCORE / 3)
        .unwrap_or(0);

    // this grading is very loose
    let rsun_score = grader::grade_sum("misc/rsum.ys")
        .map(|_| PART_A_SCORE / 3)
        .unwrap_or(0);

    let part_a_score = bubble_score + sum_score + rsun_score;

    // Part B
    let seq_full_score = std::panic::catch_unwind(|| {
        grader::grade_arch("seq_full", true, false)
            .map(|_| PART_B_SEQ_FULL_SCORE)
            .unwrap_or(0)
    })
    .unwrap_or(0);

    let names = y86_sim::architectures::arch_names();
    let pipes_score: i64 = PART_B_ARCHS
        .map(|(arch, gt_arch, score)| {
            if !names.contains(&arch) {
                return 0;
            }
            let maybe_gt = if names.contains(&gt_arch) {
                Some(gt_arch)
            } else {
                None
            };

            std::panic::catch_unwind(|| {
                grader::grade_pipe_placeholder(arch, maybe_gt, false)
                    .map(|_| score)
                    .unwrap_or(0)
            })
            .unwrap_or(0)
        })
        .iter()
        .sum();
    let part_b_score = seq_full_score + pipes_score;

    // Part C

    let (cpe, ac, ncopy_score) = grader::grade_ncopy(false)
        .map(|(cpe, ac)| {
            (
                cpe,
                ac,
                grader::ncopy_scorerate(cpe, ac) * PART_C_SCORE as f64,
            )
        })
        .unwrap_or((0.0, 0, 0.0));

    let part_c_score = ncopy_score as i64;

    println!("PartA-Correctness={part_a_score} PartB-Testbench={part_b_score} PartC-CPE={cpe} ParcC-AC={ac} PartC-Performance={part_c_score}");
}

#[derive(clap::Subcommand, Debug)]
enum Subcommands {
    /// Test the part A of the lab
    PartA,
    /// Test the part B of the lab
    PartB,
    /// Test the part C of the lab
    PartC,

    /// Grader all section and output the results which is processed by
    /// the autolab script.
    Autolab,

    /// Test the correctness of arbitrary architecture
    Arch {
        /// The architecture to test
        arch: String,
        /// Whether to test the iopq instruction
        #[arg(short = 'i', long)]
        iopq: bool,
    },
}

/// Autograder for archlab
#[derive(Parser, Debug)]
#[command(
    author,
    version,
    long_about = None,
    styles = binutils::get_styles(),
    arg_required_else_help = true,
)]
struct Args {
    #[command(subcommand)]
    part: Subcommands,

    /// Print logs during simulation
    #[command(flatten)]
    verbose: verbose::Verbosity,
}
fn inner_main() -> anyhow::Result<()> {
    let args = Args::parse();
    let log_level = binutils::verbose_level_to_trace(args.verbose.log_level());
    binutils::logging_setup(log_level, None::<&std::fs::File>);

    use y86_sim::utils::GRNB;

    match args.part {
        Subcommands::PartA => {
            grade_it("misc/bubble.ys", || grader::grade_bubble("misc/bubble.ys"));
            grade_it("misc/sum.ys", || grader::grade_sum("misc/sum.ys"));
            // this grading is very loose
            grade_it("misc/rsum.ys", || grader::grade_sum("misc/rsum.ys"));
        }
        Subcommands::PartB => {
            grade_it("seq_full", || grader::grade_arch("seq_full", true, true));

            let names = y86_sim::architectures::arch_names();

            for (arch, gt_arch, _) in PART_B_ARCHS {
                if !names.contains(&arch) {
                    anyhow::bail!("architecture not found: {}", arch);
                }
                let maybe_gt = if names.contains(&gt_arch) {
                    Some(gt_arch)
                } else {
                    None
                };

                grade_it(arch, || {
                    grader::grade_pipe_placeholder(arch, maybe_gt, true)
                });
            }
        }
        Subcommands::PartC => {
            let (cpe, cost) = grader::grade_ncopy(true).context("part C: misc/ncopy.ys")?;
            println!(
                "{GRNB}Part C{GRNB:#}: all tests passed, cpe: {}, arch cost: {}, score: {:.4}",
                cpe,
                cost,
                grader::ncopy_scorerate(cpe, cost) * PART_C_SCORE as f64
            );
        }
        Subcommands::Autolab => {
            let r = std::panic::catch_unwind(grade_autolab);

            // we got a panic!
            if let Err(_) = r {
                println!("PartA-Correctness=0 PartB-Testbench=0 PartC-CPE=0 ParcC-AC=0 PartC-Performance=0");
            }
        }
        Subcommands::Arch { arch, iopq } => {
            grader::grade_arch(&arch, iopq, true).context("test architecture")?;
        }
    }

    Ok(())
}

fn main() {
    use y86_sim::utils::REDB;
    let r = std::panic::catch_unwind(inner_main);
    match r {
        Ok(Ok(_)) => (),
        Ok(Err(e)) => {
            eprintln!("{REDB}Grader check failed{REDB:#}: {:?}", e);
        }
        Err(_) => {
            eprintln!("{REDB}Grader panicked, please check your implementation or report this to TA{REDB:#}");
        }
    }
}
