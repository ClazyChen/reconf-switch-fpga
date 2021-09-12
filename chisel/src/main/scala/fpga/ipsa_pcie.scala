package fpga

import chisel3._
import chisel3.util._

// IPSA with PCIE (actually BRAM-PORT interface)
// has cmac interface
class IPSAPCIE extends Module {
    val io = IO(new Bundle {
        // val pcie_r   = new PCIEReadPort
        val pcie_w   = new PCIEWritePort
        val en_in    = Input(Bool())
        val last_in  = Input(Bool())
        val data_in  = Input(UInt((const.PHV.header_data_length*8).W))
        val en_out   = Output(Bool())
        val last_out = Output(Bool())
        val data_out = Output(UInt((const.PHV.header_data_length*8).W))
    })

    val ipsa = Module(new IPSA)
    val pcie = Module(new PCIEInterface)
    val outp = Module(new OutPort)
    val inp  = Module(new InPort)

    ipsa.io.pipe.phv_in  <> inp.io.phv_out
    io.data_in           <> inp.io.data
    io.en_in             <> inp.io.en
    io.last_in           <> inp.io.last

    // pcie.io.pcie_r <> io.pcie_r
    pcie.io.pcie_w <> io.pcie_w
    // pcie.io.pcie_r.en   := false.B
    // pcie.io.pcie_w.en   := false.B
    // pcie.io.pcie_r.addr := 0.U(const.PCIE.address_width.W)
    // pcie.io.pcie_w.addr := 0.U(const.PCIE.address_width.W)
    // pcie.io.pcie_w.data := 0.U(const.PCIE.data_width.W)
    // pcie.io.pcie_o.r.data := 0.U(const.SRAM.data_width.W)

    pcie.io.mod    <> ipsa.io.mod
    pcie.io.w      <> ipsa.io.w

    ipsa.io.pipe.phv_out <> outp.io.phv_in
    outp.io.data   <> io.data_out
    outp.io.last   <> io.last_out
    outp.io.en     <> io.en_out
}

object IPSA_PCIE_OBJ extends App {
    Driver.execute(args, () => new IPSAPCIE)
}