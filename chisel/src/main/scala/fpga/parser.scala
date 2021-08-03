package fpga

import chisel3._
import chisel3.util._

// Parser containing 8 MAUs
class Parser extends Module {
    val io = IO(new Bundle {
        val pipe   = new Pipeline
        val mod    = new ParserModify
    })

    // configuration
    val last_mau_id = Reg(UInt(const.mau_id_width.W))
    // MAU[last_id+1:] are disabled
    // from MAU[last_id], directly go to Matcher

    // MAUs Pipeline
    val mau = for (j <- 0 until const.mau_number_in_parser) yield {
        val exe = Module(new ParseModule)
        exe
    }
    io.pipe.ready   := mau(0).io.pipe.ready
    io.pipe.phv_out := mau(0).io.pipe.phv_out
    for (j <- 0 until const.mau_number_in_parser) {
        if (j == 0) {
            mau(j).io.pipe.en     <> io.pipe.en
            mau(j).io.pipe.phv_in <> io.pipe.phv_in
        } else {
            mau(j).io.pipe.en     <> mau(j-1).io.pipe.ready
            mau(j).io.pipe.phv_in <> mau(j-1).io.pipe.phv_out
        }
        when (j.U(const.mau_id_width.W) === last_mau_id) {    // goto matcher
            io.pipe.ready         := mau(j).io.pipe.ready
            io.pipe.phv_out       := mau(j).io.pipe.phv_out
        }
        mau(j).io.mod := io.mod.module_mod
    }

    // modify
    when (io.mod.en) {
        when (io.mod.last_mau_id_mod) {
            last_mau_id := io.mod.last_mau_id
        }
        for (j <- 0 until const.mau_number_in_parser) {
            val mod_j = io.mod.cs(j)
            mau(j).io.mod.sram_w.en    := io.mod.module_mod.sram_w.en    && mod_j
            mau(j).io.mod.state_id_mod := io.mod.module_mod.state_id_mod && mod_j
        }
    }
}

object PAR_OBJ extends App {
    Driver.execute(args, () => new Parser)
}