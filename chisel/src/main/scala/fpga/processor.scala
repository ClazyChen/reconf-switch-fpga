package fpga

import chisel3._
import chisel3.util._

class Processor extends Module {
    val io = IO(new Bundle {
        val pipe   = new Pipeline
        val mod    = new ProcessorModify
        val mem    = Flipped(new ClusterReadPort)
    })

    val PAR = Module(new Parser)
    val MAT = Module(new Matcher)
    val EXE = Module(new Executor)

    PAR.io.pipe.phv_in <> io.pipe.phv_in
    PAR.io.mod         <> io.mod.par_mod

    MAT.io.pipe.phv_in <> PAR.io.pipe.phv_out
    MAT.io.mod         <> io.mod.mat_mod
    MAT.io.mem         <> io.mem

    EXE.io.pipe.phv_in <> MAT.io.pipe.phv_out
    EXE.io.hit         <> MAT.io.hit
    EXE.io.match_value <> MAT.io.match_value
    EXE.io.action_mod  <> io.mod.act_mod

    io.pipe.phv_out    <> EXE.io.pipe.phv_out
}

object PROC_OBJ extends App {
    Driver.execute(args, () => new Processor)
}