package gcd

import chisel3._
import chisel3.util._

class Hash extends Module {
    val io = IO(new Bundle {
        val start = Input(Bool())
        val key   = Input(UInt(const.quad_width.W))

        val hash_ready = Output(Bool())
        val hash_val   = Output(UInt(const.data_width.W))
    })

    val state = RegInit(0.U(2.W))
    val hash_ready = RegInit(false.B)
    val hash_val = RegInit(0.U(const.data_width.W))
    io.hash_ready := hash_ready
    io.hash_val := hash_val

    when (state === 0.U(2.W)) {
        when (io.start) {
            state := 1.U(2.W)
            hash_ready := false.B
            hash_val := io.key(7,0) + io.key(15,8) + io.key(23,16) + io.key(31,24) + io.key(39,32) + io.key(47,40) + io.key(55,48) + io.key(63,56)
        }
    }

    when (state === 1.U(2.W)) {
        hash_val := hash_val(15,8) + hash_val(7,0)
        state := 2.U(2.W)
    }

    when (state === 2.U(2.W)) {
        hash_ready := true.B
        hash_val   := hash_val(15,8) + hash_val(7,0)
        state      := 3.U(2.W)
    }

    when (state === 3.U(2.W)) {
        when (!io.start) {
            state := 0.U(2.W)
        } 
    }

}