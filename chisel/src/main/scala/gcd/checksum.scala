package gcd

import chisel3._
import chisel3.util._

class CheckSum extends Module {
    val io = IO(new Bundle {
        val start = Input(Bool())
        val packet_header = Input(Vec(const.header_max_length, UInt(const.byte_width.W)))
        val field_start = Input(UInt(const.addr_width.W))
        val field_len   = Input(UInt(const.data_width.W))
        
        val value = Output(UInt(const.half_width.W))
        val ready = Output(Bool()) 
    })

    val field_addr = RegInit(0.U(const.addr_width.W))
    val field_end_addr = RegInit(0.U(const.addr_width.W))
    val value = RegInit(0.U(const.data_width.W))
    val ready = RegInit(false.B)
    io.value := value(15,0)
    io.ready := ready

    val state = RegInit(0.U(3.W))
    when (state === 0.U(3.W)) {
        when (io.start) {
            field_addr := io.field_start
            field_end_addr := io.field_start + io.field_len
            state := 1.U(3.W)
        }
    }
    when (state === 1.U(3.W)) {
        when (field_addr < field_end_addr) {
            value := value + Cat(
                io.packet_header(field_addr +  1.U(const.addr_width.W)),
                io.packet_header(field_addr)
            )
            field_addr := field_addr + 2.U(const.addr_width.W)
        } .otherwise {
            state := 2.U(3.W)
        }
    }
    when (state === 2.U(3.W)) {
        value := value(31,16) + value(15,0)
        state := 3.U(3.W)
    }
    when (state === 3.U(3.W)) {
        value := ~(value(31,16) + value(15,0))
        ready := true.B
        state := 4.U(3.W)
    }
    when (state === 4.U(3.W)) {
        when (!io.start) {
            ready := false.B
            value := const.zero_word
            field_end_addr := const.zero_addr
            state := 0.U(3.W)
        }
    }
    
}