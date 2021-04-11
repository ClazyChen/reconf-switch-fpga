package gcd

import chisel3._
import chisel3.util._

class Controller extends Module {
    val io = IO(new Bundle {
        val start = Input(Bool())
        val packet_header = Input(Vec(const.header_max_length, UInt(const.byte_width.W)))

        val mem = Flipped(new MemInterface)
    })

    val proc = for (j <- 0 until const.processor_number) {
        val exe = Module(new ProcssorController)
        exe.io.update := false.B
        exe.io.packet_header := 
        exe
    }
}