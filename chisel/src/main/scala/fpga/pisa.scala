package fpga

import chisel3._
import chisel3.util._

class PISAModify extends Bundle {
    val par_mod   = new ParserPISAModify
    val proc_mod  = Vec(const.processor_number, new ProcessorPISAModify)
}

// The total PISA switch
// containing all processors and clusters of SRAMs
class PISA extends Module {
    val io = IO(new Bundle {
        val pipe   = new Pipeline
        val mod    = new PISAModify
    })

    val init = Module(new Initializer)
    init.io.pipe.phv_in <> io.pipe.phv_in
    init.io.first_proc_id := 0.U

    val PAR = Module(new ParserPISA)
    PAR.io.pipe.phv_in <> init.io.pipe.phv_out
    PAR.io.mod <> io.mod.par_mod

    val proc = for (j <- 0 until const.processor_number) yield {
        val exe = Module(new ProcessorPISA)
        exe.io.mod <> io.mod.proc_mod(j)
        exe
    }

    proc(0).io.pipe.phv_in <> PAR.io.pipe.phv_out
    for (j <- 0 until const.processor_number) {
        if (j > 0) {
            proc(j).io.pipe.phv_in <> proc(j-1).io.pipe.phv_out
        }
    }
    proc(const.processor_number-1).io.pipe.phv_out <> io.pipe.phv_out
}