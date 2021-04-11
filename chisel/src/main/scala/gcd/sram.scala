package gcd

import chisel3._
import chisel3.util._

// 双端口SRAM
// width = 32
// capacity = 1024
// addr = 10
class SRAM(capacity: Int, addr: Int, width: Int) extends Module {
    val io = IO(new Bundle {
        val mem_a = new MemInterface
        val mem_b = new MemInterface
    })

    val mem = SyncReadMem(capacity, UInt(width.W)) // SRAM
    val wdata_a = Reg(UInt(width.W))
    val we_a = Reg(Bool())
    val wdata_b = Reg(UInt(width.W))
    val we_b = Reg(Bool())

    when (io.mem_a.ce) {
        when (io.mem_a.we) {
            mem.write(io.mem_a.addr, io.mem_a.wdata)
            we_a := true.B
            wdata_a := io.mem_a.wdata
        } .otherwise {
            we_a := false.B
        }
    } .otherwise {
        we_a := false.B
        wdata_a := 0.U(width.W)
    }

    when (io.mem_b.ce) {
        when (io.mem_b.we) {
            mem.write(io.mem_b.addr, io.mem_b.wdata)
            we_b := true.B
            wdata_b := io.mem_b.wdata
        } .otherwise {
            we_b := false.B
        }
    } .otherwise {
        we_b := false.B
        wdata_b := 0.U(width.W)
    }

    io.mem_a.rdata := Mux(we_a, wdata_a, mem.read(io.mem_a.addr, !io.mem_a.we))
    io.mem_b.rdata := Mux(we_b, wdata_b, mem.read(io.mem_b.addr, !io.mem_b.we))
}

object SR extends App {
    Driver.execute(args, () => new SRAM(1024, 10, 32))
}