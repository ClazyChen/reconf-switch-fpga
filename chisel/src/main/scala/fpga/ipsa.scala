package fpga

import chisel3._
import chisel3.util._

class Initializer extends Module {
    val io = IO(new Bundle {
        val pipe          = new Pipeline
        val first_proc_id = Input(UInt(const.processor_id_width.W))
    })

    val phv = Reg(new PHV)
    phv := io.pipe.phv_in
    io.pipe.phv_out := phv

    io.pipe.phv_out.next_processor_id := io.first_proc_id
    io.pipe.phv_out.next_config_id := 0.U(const.config_id_width.W)
}

class InterProcessorTransfer extends Module {
    val io = IO(new Bundle {
        val pipe          = new Pipeline
        val next_proc_exist = Input(Bool())
        val next_proc_id_in  = Input(UInt(const.processor_id_width.W))
        val next_proc_id_out = Output(UInt(const.processor_id_width.W))
    })

    val phv = Reg(new PHV)
    phv := io.pipe.phv_in
    io.pipe.phv_out := phv

    val next_proc_id = Reg(UInt(const.processor_id_width.W))
    next_proc_id := io.next_proc_id_in
    io.next_proc_id_out := next_proc_id

    io.pipe.phv_out.is_valid_processor := io.next_proc_exist && next_proc_id === phv.next_processor_id
}

// The total IPSA switch
// containing all processors and clusters of SRAMs
class IPSA extends Module {
    val io = IO(new Bundle {
        val pipe   = new Pipeline  // from and to outside, only 1 port is supported
        val mod    = new IPSAModify
        val w      = Vec(const.cluster_number, new ClusterWritePort)  // sram cluster write interface
    })

    val first_proc_id = Reg(UInt(const.processor_id_width.W))
    val last_proc_id  = Reg(UInt(const.processor_id_width.W))
    val next_proc_id  = Reg(Vec(const.processor_number, UInt(const.processor_id_width.W)))

    when (io.mod.xbar_mod.en) {
        first_proc_id := io.mod.xbar_mod.first_proc_id
        last_proc_id  := io.mod.xbar_mod.last_proc_id
        for (j <- 0 until const.processor_number) {
            next_proc_id(j) := io.mod.xbar_mod.next_proc_id(j)
        }
    }

    val recv = Reg(Vec(const.processor_number, new PHV))
    val proc = for (j <- 0 until const.processor_number) yield {
        val exe = Module(new Processor)
        exe.io.mod <> io.mod.proc_mod(j)
        exe
    }

    val sram_cluster = for (j <- 0 until const.cluster_number) yield {
        val exe = Module(new SRAMCluster)
        exe.io.w <> io.w(j)
        exe
    }

    for (j <- 0 until const.cluster_number) {
        for (k <- 0 until const.processor_number_in_cluster) {
            val processor_id = j * const.processor_number_in_cluster + k
            sram_cluster(j).io.r(k) <> proc(processor_id).io.mem
        }
    }

    val init = Module(new Initializer)
    init.io.pipe.phv_in <> io.pipe.phv_in
    init.io.first_proc_id := first_proc_id

    val trans = for (j <- 0 until const.processor_number) yield {
        val exe = Module(new InterProcessorTransfer)
        exe.io.next_proc_exist := last_proc_id =/= j.U(const.processor_id_width.W)
        exe.io.next_proc_id_in := next_proc_id(j)
        exe.io.pipe.phv_in     <> proc(j).io.pipe.phv_out
        exe
    }

    io.pipe.phv_out := io.pipe.phv_in

    for (j <- 0 until const.processor_number) {
        // proc(j) -> proc(next_proc_id(j))
        when (j.U(const.processor_id_width.W) === last_proc_id) {
            io.pipe.phv_out := trans(j).io.pipe.phv_out
        }
    }

    // processor_number = 4
    // using 2x2 2x2 instead of 4x4
    val amplifier = Reg(Vec(5, Vec(const.processor_number, new PHV)))
    val next_proc_id_buf = Reg(Vec(5, Vec(const.processor_number, UInt(const.processor_id_width.W))))

    val complex_xbar = List(
        List(Seq(0,1), Seq(2,3), Seq(4,5)),
        List(Seq(0,2), Seq(1,5), Seq(3,4)),
        List(Seq(0,3), Seq(1,4), Seq(2,5)), 
        List(Seq(0,4), Seq(1,2), Seq(3,5)),
        List(Seq(0,5), Seq(1,3), Seq(2,4))
    )

    // first level
    for (j <- 0 until const.processor_number) {
        when (last_proc_id === j.U) {
            amplifier(0)(j) := init.io.pipe.phv_out
            next_proc_id_buf(0)(j) := first_proc_id
        } .otherwise {
            amplifier(0)(j) := trans(j).io.pipe.phv_out
            next_proc_id_buf(0)(j) := trans(j).io.next_proc_id_out
        }
    }

    for (l <- 0 until 5) {
        for (j <- complex_xbar(l)) {
            val x = j(0)
            val y = j(1)
            if (l < 4) {
                amplifier(l+1)(x) := Mux(
                    next_proc_id_buf(l)(y) === x.U, amplifier(l)(y), amplifier(l)(x)
                )
                amplifier(l+1)(y) := Mux(
                    next_proc_id_buf(l)(x) === y.U, amplifier(l)(x), amplifier(l)(y)
                )
                next_proc_id_buf(l+1)(x) := Mux(
                    next_proc_id_buf(l)(y) === x.U, x.U, next_proc_id_buf(l)(x)
                )
                next_proc_id_buf(l+1)(y) := Mux(
                    next_proc_id_buf(l)(x) === y.U, y.U, next_proc_id_buf(l)(y)
                )
            } else {
                recv(x) := Mux(
                    next_proc_id_buf(l)(y) === x.U, amplifier(l)(y), amplifier(l)(x)
                )
                recv(y) := Mux(
                    next_proc_id_buf(l)(x) === y.U, amplifier(l)(x), amplifier(l)(y)
                )
            }
        }
    }

    for (j <- 0 until const.processor_number) {
        proc(j).io.pipe.phv_in := recv(j)
    }
}

object IPSA_OBJ extends App {
    Driver.execute(args, () => new IPSA)
}