package fpga

import chisel3._
import chisel3.util._

// SRAM cluster containing 8 SRAMs
class SRAMCluster extends Module {
    val io = IO(new Bundle {
        val wcs = Input(UInt(const.SRAM.sram_id_width.W))
        val w = new WritePort

        val r = Vec(const.SRAM.sram_number_in_cluster, new ReadPort)
    })

    // SRAMs
    val sram = for (j <- 0 until const.SRAM.sram_number_in_cluster) yield {
        val exe = Module(new SRAM)
        exe
    }

    // write port
    for (j <- 0 until const.SRAM.sram_number_in_cluster) {
        sram(j).io.w := io.w
        when (j.U(const.SRAM.sram_id_width.W) =/= io.wcs) {
            sram(j).io.w.en := false.B
        }
    }

    // read port
    for (j <- 0 until const.SRAM.sram_number_in_cluster) {
        sram(j).io.r := io.r(j)
    }
}