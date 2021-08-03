package gcd

import chisel3._
import chisel3.util._

class Encoder42 extends Module {
  val io = IO(new Bundle {
    val input  = Input(UInt(4.W))
    val output = Output(UInt(2.W))
    val valid  = Output(Bool())
  })
  io.output := 0.U(2.W)
  for (i <- 0 until 4) {
      when (io.input(i)) { 
          io.output := i.U(2.W)
      } 
  }
  io.valid := io.input.orR
}