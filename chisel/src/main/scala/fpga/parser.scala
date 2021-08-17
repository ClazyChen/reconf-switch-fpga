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
    val last_mau_id = Reg(UInt((const.mau_id_width+1).W))
    // MAU[last_id+1:] are disabled
    // from MAU[last_id], directly go to Matcher
    // if last_mau_id === -1(1111) then directly connect phv_in & phv_out

    // MAUs Pipeline
    val mau = for (j <- 0 until const.mau_number_in_parser) yield {
        val exe = Module(new ParseModule)
        exe
    }

    // allow no MAU is used and pass directly
    io.pipe.phv_out := io.pipe.phv_in
    
    for (j <- 0 until const.mau_number_in_parser) {
        if (j == 0) {
            mau(j).io.pipe.phv_in <> io.pipe.phv_in
        } else {
            mau(j).io.pipe.phv_in <> mau(j-1).io.pipe.phv_out
            when (j.U(const.mau_id_width.W) === last_mau_id) {    // goto matcher
                io.pipe.phv_out   := mau(j).io.pipe.phv_out
            }
        }
        mau(j).io.mod := io.mod.module_mod
    }

    // modify
    when (io.mod.en) {
        when (io.mod.last_mau_id_mod) {
            last_mau_id := io.mod.last_mau_id
        }
        for (j <- 0 until const.mau_number_in_parser) {
            val mod_j = io.mod.cs === j.U(const.mau_id_width.W)
            mau(j).io.mod.sram_w.en    := io.mod.module_mod.sram_w.en    && mod_j
            mau(j).io.mod.state_id_mod := io.mod.module_mod.state_id_mod && mod_j
        }
    }
}

object PAR_OBJ extends App {
    Driver.execute(args, () => new Parser)
}