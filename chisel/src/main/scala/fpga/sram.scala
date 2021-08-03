package fpga

import chisel3._
import chisel3.util._

// double-port SRAM
// 1 port only used for R and
// the other port only used for W

// does not support masked write

class WritePort extends Bundle {
    val en = Input(Bool())
    val addr = Input(UInt(const.SRAM.address_width.W))
    val data = Input(UInt(const.SRAM.data_width.W))
}

class ReadPort extends Bundle {
    val en = Input(Bool())
    val addr = Input(UInt(const.SRAM.address_width.W))
    val data = Output(UInt(const.SRAM.data_width.W))
}

class SRAM extends Module {
    val io = IO(new Bundle {
        val w = new WritePort
        val r = new ReadPort
    })

    val mem = SyncReadMem(const.SRAM.capacity, UInt(const.SRAM.data_width.W))
    
    io.r.data := DontCare

    when (io.w.en) {
        mem.write(io.w.addr, io.w.data)
    } .otherwise {
        when (io.r.en) {
            io.r.data := mem.read(io.r.addr)
        }
    }
}

object SRAM_OBJ extends App {
    Driver.execute(args, () => new SRAM)
}