package fpga

import chisel3._
import chisel3.util._

class OutputInterface extends Bundle {
    val cs     = Input(UInt(const.OUTPORT.sram_id_width.W))
    val r      = new ReadPort
}

class OutPortInternal extends Module {
    val io = IO(new Bundle {
        val phv_in = Input(new PHV)
        val pcie_o = new OutputInterface
    })

    val addr = Reg(UInt(const.SRAM.address_width.W))
    addr := addr + 1.U(const.SRAM.address_width.W)

    io.pcie_o.r.data := 0.U(const.SRAM.data_width.W)

    val sram = for (j <- 0 until const.OUTPORT.sram_number) yield {
        val exe = Module(new SRAM)
        exe.io.w.en    := true.B
        exe.io.w.addr  := addr
        val data_vec = Wire(Vec(const.OUTPORT.sram_data_length, UInt(8.W)))
        for (k <- 0 until const.OUTPORT.sram_data_length) {
            data_vec(k) := io.phv_in.data(j*const.OUTPORT.sram_data_length+k)
        }
        exe.io.w.data  := data_vec.reduce(Cat(_, _))
        val cs_hit = io.pcie_o.cs === j.U(const.OUTPORT.sram_id_width.W)
        exe.io.r.en    := io.pcie_o.r.en && cs_hit
        exe.io.r.addr  := io.pcie_o.r.addr
        when (cs_hit) {
            io.pcie_o.r.data  := exe.io.r.data
        }
        exe
    }
}