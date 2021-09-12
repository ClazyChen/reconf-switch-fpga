package fpga

import chisel3._
import chisel3.util._

class OutPort extends Module {
    val io = IO(new Bundle {
        val phv_in = Input(new PHV)
        val data   = Output(UInt((const.PHV.header_data_length*8).W))
        val last   = Output(Bool())
        val en     = Output(Bool())
    })

    val bytes = Wire(Vec(const.PHV.header_data_length, UInt(8.W)))
    for (j <- 0 until const.PHV.header_data_length) {
        bytes(j) := io.phv_in.data(j)
        //bytes(j) := io.phv_in.data(const.PHV.header_data_length-1-j)
    }
    io.data := bytes.reduce(Cat(_, _))
    io.en   := io.phv_in.valid
    io.last := io.phv_in.last
}