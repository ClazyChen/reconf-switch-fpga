package fpga

import chisel3._
import chisel3.util._

class ClusterReadPort extends Bundle {
    val cluster = Vec(const.SRAM.sram_number_in_cluster, new ReadPort)
}

// SRAM cluster containing 8 SRAMs
class SRAMCluster extends Module {
    val io = IO(new Bundle {
        val wcs = Input(UInt(const.SRAM.sram_id_width.W))
        val w = new WritePort

        val r = Vec(const.SRAM.processor_number_in_cluster, new ClusterReadPort)
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
        sram(j).io.r.en   := false.B
        sram(j).io.r.addr := 0.U(const.SRAM.address_width.W)
        for (k <- 0 until const.SRAM.processor_number_in_cluster) {
            when (io.r(k).cluster(j).en) {
                sram(j).io.r.en   := true.B
                sram(j).io.r.addr := io.r(k).cluster(j).addr
            }
            io.r(k).cluster(j).data := sram(j).io.r.data
        }
    }
}

object SRAM_CLU_OBJ extends App {
    Driver.execute(args, () => new SRAMCluster)
}