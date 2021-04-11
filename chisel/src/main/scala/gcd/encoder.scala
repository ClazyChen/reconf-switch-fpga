package gcd

import chisel3._
import chisel3.util._

class Encoder83 extends Module {
  val io = IO(new Bundle {
    val input  = Input(UInt(8.W))
    val output = Output(UInt(3.W))
    val valid  = Output(Bool())
  })
  io.output := 0.U(3.W)
  for (i <- 0 until 8) {
      when (io.input(i)) { 
          io.output := i.U(3.W)
          io.valid := true.B
      } 
  }
  io.valid := io.input.orR
}