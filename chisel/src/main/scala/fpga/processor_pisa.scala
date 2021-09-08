package fpga

import chisel3._
import chisel3.util._

class ProcessorPISAModify extends Bundle {
    //val par_mod  = new ParserPISAModify
    val mat_mod  = new MatcherPISAModify
    val exe_mod  = new ActionModify
}

class ProcessorPISA extends Module {
    val io = IO(new Bundle {
        val pipe   = new Pipeline
        val mod    = new ProcessorPISAModify
    })

    //val PAR = Module(new ParserPISA)
    val MAT = Module(new MatcherPISA)
    val EXE = Module(new ExecutorPISA)

    //PAR.io.pipe.phv_in <> io.pipe.phv_in
    //PAR.io.mod         <> io.mod.par_mod

    MAT.io.pipe.phv_in <> io.pipe.phv_in
    MAT.io.mod         <> io.mod.mat_mod
    
    EXE.io.pipe.phv_in <> MAT.io.pipe.phv_out
    EXE.io.hit         <> MAT.io.hit
    EXE.io.match_value <> MAT.io.match_value
    EXE.io.action_mod  <> io.mod.exe_mod

    io.pipe.phv_out    <> EXE.io.pipe.phv_out
}

object PROC_PISA_OBJ extends App {
    Driver.execute(args, () => new ProcessorPISA)
}