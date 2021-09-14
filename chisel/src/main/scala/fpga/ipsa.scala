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
    val amplifier = Reg(Vec(2, Vec(4, new PHV)))
    val next_proc_id_buf = Reg(Vec(2, Vec(4, UInt(2.W))))

    for (j <- List(Seq(0,1), Seq(2,3))) {
        val x = j(0)
        val y = j(1)
        amplifier(0)(x) := Mux(
            trans(y).io.next_proc_id_out === x.U,
            trans(y).io.pipe.phv_out, trans(x).io.pipe.phv_out
        )
        next_proc_id_buf(0)(x) := Mux(
            trans(y).io.next_proc_id_out === x.U, x.U, trans(x).io.next_proc_id_out
        )
        amplifier(0)(y) := Mux(
            trans(x).io.next_proc_id_out === y.U,
            trans(x).io.pipe.phv_out, trans(y).io.pipe.phv_out
        )
        next_proc_id_buf(0)(y) := Mux(
            trans(x).io.next_proc_id_out === y.U, y.U, trans(y).io.next_proc_id_out
        )
    }

    for (j <- 0 until const.processor_number) {
        when (first_proc_id === j.U) {
            amplifier(0)(j)        := init.io.pipe.phv_out
            next_proc_id_buf(0)(j) := j.U
        }
    }

    for (j <- List(Seq(0,2), Seq(1,3))) {
        val x = j(0)
        val y = j(1)
        amplifier(1)(x) := Mux(
            next_proc_id_buf(0)(y) === x.U, amplifier(0)(y), amplifier(0)(x)
        )
        next_proc_id_buf(1)(x) := Mux(
            next_proc_id_buf(0)(y) === x.U, x.U, next_proc_id_buf(0)(x)
        )
        amplifier(1)(y) := Mux(
            next_proc_id_buf(0)(x) === y.U, amplifier(0)(x), amplifier(0)(y)
        )
        next_proc_id_buf(1)(y) := Mux(
            next_proc_id_buf(0)(x) === y.U, y.U, next_proc_id_buf(0)(y)
        )
    }

    for (j <- List(Seq(0,3), Seq(1,2))) {
        val x = j(0)
        val y = j(1)
        recv(x) := Mux(
            next_proc_id_buf(1)(y) === x.U, amplifier(1)(y), amplifier(1)(x)
        )
        recv(y) := Mux(
            next_proc_id_buf(1)(x) === y.U, amplifier(1)(x), amplifier(1)(y)
        )
    }

    for (j <- 0 until const.processor_number) {
        proc(j).io.pipe.phv_in := recv(j)
    }
}

object IPSA_OBJ extends App {
    Driver.execute(args, () => new IPSA)
}