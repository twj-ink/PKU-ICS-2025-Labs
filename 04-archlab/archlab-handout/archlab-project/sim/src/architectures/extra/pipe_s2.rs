//! We try to create a 2-stage pipeline to make instruction fetch and other
//! stages work in parallel.
//!
//! The `icode` and `ifun` fetched from the instruction memory are stored in
//! the pipeline reigster `e` for the next cycle, in which the execute stage
//! will use them to complete the instruction execution.
//!
//! Be careful when using a unit across stages. Because at a specific cycle,
//! different stage are processing different instructions.
//! 
//! You can compare this architecture with `seq_plus_std` to have a better
//! attention on the differences.

// A pipeline register stores necessary information to process the instruction
// at a specific stage.
crate::define_stages! {
    FetchStage f {
        valP: u64 = 0
    }
    // Although this pipeline register is named as "DecodeStage", it is actually
    // used in all of the rest stages.
    DecodeStage d {
        stat: Stat = Stat::Aok, icode: u8 = NOP, ifun: u8 = 0,
        rA: u8 = RNONE, rB: u8 = RNONE,
        valC: u64 = 0, valP: u64 = 0
    }
}

sim_macro::hcl! {
#![hardware = crate::architectures::hardware_seq]
#![program_counter = f_pc]
#![termination = prog_term]
#![stage_alias(F => f, D => d)]

use Stat::*;

:==============================: Fetch Stage :================================:

// What address should instruction be fetched at?
// We use D.icode because we use the icode in the last cycle to determine the
// next PC.

u64 f_pc = [
    // Call.  Use instruction constant
    // If the previous instruction is CALL, the constant value should be the next PC
    // valC is from Fetch Stage, thus the last cycle
    D.icode == CALL : D.valC;
    // Taken branch.  Use instruction constant
    D.icode == JX && cnd : D.valC;
    // Completion of RET instruction.  Use value from stack
    // valM is from DEMW stage, thus the current cycle
    D.icode == RET : valM;
    // Default: Use incremented PC
    1 : F.valP;
];

@set_input(imem, {
    pc: f_pc
});

// Determine instruction code
// This signal is prefixed with 'f_' simply to inform that, it is not intended
// to be used in the Execute stage (why?). Use `D.icode` instead.
u8 f_icode = [
    imem.error : NOP;
    1 : imem.icode; // Default: get from instruction memory
];

// Determine instruction function
u8 f_ifun = [
    imem.error : 0; // set ifun to 0 if error
    1 : imem.ifun;	// Default: get from instruction memory
];

bool instr_valid = f_icode in // CMOVX is the same as RRMOVQ
    { NOP, HALT, CMOVX, IRMOVQ, RMMOVQ, MRMOVQ,
    OPQ, JX, CALL, RET, PUSHQ, POPQ };

// Does fetched instruction require a regid byte?
bool need_regids =
    f_icode in { CMOVX, OPQ, PUSHQ, POPQ, IRMOVQ, RMMOVQ, MRMOVQ };

// Does fetched instruction require a constant word?
bool need_valC = f_icode in { IRMOVQ, RMMOVQ, MRMOVQ, JX, CALL };

@set_input(pc_inc, {
    need_valC: need_valC,
    need_regids: need_regids,
    old_pc: f_pc,
});

u64 f_valP = pc_inc.new_pc;

[u8; 9] align = imem.align;

@set_input(ialign, {
    align: align,
    need_regids: need_regids,
});

u64 f_valC = ialign.valC;
u8 f_ra = ialign.rA;
u8 f_rb = ialign.rB;

@set_stage(f, {
    valP: f_valP,
});


Stat f_stat = [
    imem.error : Adr;
    !instr_valid : Ins;
    1 : Aok;
];

@set_stage(d, {
    valC: f_valC,
    valP: f_valP,
    rA: f_ra,
    rB: f_rb,
    icode: f_icode,
    ifun: f_ifun,
    stat: f_stat,
});

:=========================: "Decode Stage (Decode)" :==========================:

// What register should be used as the A source?
u8 srcA = [
    D.icode in { CMOVX, RMMOVQ, OPQ, PUSHQ  } : D.rA;
    D.icode in { POPQ, RET } : RSP;
    1 : RNONE; // Don't need register
];

// What register should be used as the B source?
u8 srcB = [
    D.icode in { OPQ, RMMOVQ, MRMOVQ } : D.rB;
    D.icode in { PUSHQ, POPQ, CALL, RET } : RSP;
    1 : RNONE; // Don't need register
];

@set_input(reg_read, {
    srcA: srcA,
    srcB: srcB,
});

// What register should be used as the E destination?
u8 dstE = [
    D.icode in { CMOVX } && cnd : D.rB;
    D.icode in { IRMOVQ, OPQ } : D.rB;
    D.icode in { PUSHQ, POPQ, CALL, RET } : RSP;
    1 : RNONE; // Don't write any register
];

// What register should be used as the M destination?
u8 dstM = [
    D.icode in { MRMOVQ, POPQ } : D.rA;
    1 : RNONE; // Don't write any register
];

:========================: "Decode Stage (Execute)" :==========================:

// Select input A to ALU
u64 aluA = [
    D.icode in { CMOVX, OPQ } : reg_read.valA;
    D.icode in { IRMOVQ, RMMOVQ, MRMOVQ } : D.valC;
    D.icode in { CALL, PUSHQ } : NEG_8;
    D.icode in { RET, POPQ } : 8;
    // Other instructions don't need ALU
];

// Select input B to ALU
u64 aluB = [
    D.icode in { RMMOVQ, MRMOVQ, OPQ, CALL,
              PUSHQ, RET, POPQ } : reg_read.valB;
    D.icode in { CMOVX, IRMOVQ } : 0;
    // Other instructions don't need ALU
];

// Set the ALU function
u8 alufun = [
    D.icode == OPQ : D.ifun;
    1 : ADD;
];
@set_input(alu, {
    a: aluA,
    b: aluB,
    fun: alufun,
});

// Should the condition codes be updated?
bool set_cc = D.icode in { OPQ };

u64 valE = alu.e;

@set_input(reg_cc, {
    a: aluA,
    b: aluB,
    e: valE,
    opfun: alufun,
    set_cc: set_cc,
});

ConditionCode cc = reg_cc.cc;
u8 cond_fun = D.ifun;

@set_input(cond, {
    cc: cc,
    condfun: cond_fun,
});

bool cnd = cond.cnd;

:=========================: "Decode Stage (Memory)" :==========================:

// Set read control signal
bool mem_read = D.icode in { MRMOVQ, POPQ, RET };

// Set write control signal
bool mem_write = D.icode in { RMMOVQ, PUSHQ, CALL };

// Select memory address
u64 mem_addr = [
    D.icode in { RMMOVQ, PUSHQ, CALL, MRMOVQ } : valE;
    D.icode in { POPQ, RET } : reg_read.valA;
    // Other instructions don't need address
];

// Select memory input data
u64 mem_data = [
    // Value from register
    D.icode in { RMMOVQ, PUSHQ } : reg_read.valA;
    // Return PC (valP is the incremented PC)
    D.icode == CALL : D.valP;
    // Default: Don't write anything
];

@set_input(dmem, {
    read: mem_read,
    write: mem_write,
    addr: mem_addr,
    datain: mem_data,
});

u64 valM = dmem.dataout;

@set_input(reg_write, {
    dstE: dstE,
    dstM: dstM,
    valM: valM,
    valE: valE,
});

// Determine instruction status
Stat stat = [
    dmem.error : Adr;
    D.icode == HALT : Hlt;
    1 : D.stat;
];

bool prog_term = stat in { Hlt, Adr, Ins };

}

impl crate::framework::PipeSim<Arch> {
    fn print_state(&self) {
        use crate::utils::format_icode;

        let PipeRegs { f: _, d } = &self.cur_state;

        println!(
            r#"      Fetch  DEMW
icode {f_icode} {d_icode}
"#,
            f_icode = format_icode(self.cur_inter.f_icode),
            d_icode = format_icode(d.icode),
        );
    }
}
