package fpga

import chisel3._
import chisel3.util._

// An IPSA switch containing only 1 processor
class IPSASP extends Module {
    val io = IO(new Bundle {
        val pipe   = new Pipeline  // from and to outside, only 1 port is supported
        val mod    = new ProcessorModify
        val w      = new ClusterWritePort
    })

    val proc = Module(new Processor)
    proc.io.pipe.phv_in <> io.pipe.phv_in
    proc.io.pipe.phv_out <> io.pipe.phv_out
    proc.io.mod <> io.mod

    val sram_cluster = Module(new SRAMCluster)
    sram_cluster.io.w <> io.w
    sram_cluster.io.r(0) <> proc.io.mem
    for (j <- 1 until const.processor_number_in_cluster) {
        for (k <- 0 until const.SRAM.sram_number_in_cluster) {
            sram_cluster.io.r(j).cluster(k).en := false.B
            sram_cluster.io.r(j).cluster(k).addr := 0.U(const.SRAM.address_width.W)
        }
    }
}

object IPSA_SP_OBJ extends App {
    Driver.execute(args, () => new IPSASP)
}