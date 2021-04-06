package gcd

import chisel3._
import chisel3.util._

class ProcessorController extends Module {
    val io = IO(new Bundle {
        val update = Input(Bool())
        val packet_header = Input(Vec(const.header_max_length, UInt(const.byte_width.W)))

        val mem = Flipped(new MemInterface)
        val ready = Output(Bool())
    })

    val packet_header = Reg(Vec(const.header_max_length, UInt(const.byte_width.W)))
    val updated = RegInit(false.B)
    val processing = RegInit(false.B)

    val start = updated && !processing

    io.ready := !processing

    when (io.update) {
        updated := true.B
        for (j <- 0 until const.header_max_length) {
            packet_header(j) := io.packet_header(j)
        }
    }

    when (start) {
        processing := true.B
        updated    := false.B
    }

    val proc = Module(new Processor)
    proc.io.start         := start
    proc.io.packet_header := packet_header
    proc.io.mem           <> io.mem

    when (proc.io.ready) {
        processing := false.B
    }
}


object PRC extends App {
    Driver.execute(args, () => new Processor)
}