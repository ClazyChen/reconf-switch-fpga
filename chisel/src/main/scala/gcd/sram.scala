package gcd

import chisel3._
import chisel3.util._

// 双端口SRAM
class SRAM(capacity: Int, addr: Int, width: Int) extends Module {
    val io = IO(new Bundle {
        val ren   = Input(Bool())         // 读控制线
        val raddr = Input(UInt(addr.W))   // 读地址线
        val rd    = Output(UInt(width.W)) // 读数据线
        val wen   = Input(Bool())         // 写控制线
        val waddr = Input(UInt(addr.W))   // 写地址线
        val wd    = Input(UInt(width.W))  // 写数据线
    })

    val mem = SyncReadMem(capacity, UInt(width.W)) // SRAM
    val output = Reg(UInt(width.W))
    val wrs = Reg(Bool())

    when (io.wen) {
        mem.write(io.waddr, io.wd)
    }

    when (io.ren && io.wen && io.waddr === io.raddr) {
        output := io.wd
        wrs    := true.B
    } .otherwise {
        wrs := false.B
    }

    io.rd := Mux(wrs, output, mem.read(io.raddr, io.ren))
}