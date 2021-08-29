package fpga

import chisel3._
import chisel3.util._

// IPSA with PCIE (actually BRAM-PORT interface)
class IPSAPCIE extends Module {
    val io = IO(new Bundle {
        val pcie_r   = new PCIEReadPort
        val pcie_w   = new PCIEWritePort
    })

    val ipsa = Module(new IPSA)
    val pcie = Module(new PCIEInterface)
    val outp = Module(new OutPort)
    val inp  = Module(new InPort)

    ipsa.io.pipe.phv_in  <> inp.io.phv_out

    pcie.io.pcie_r <> io.pcie_r
    pcie.io.pcie_w <> io.pcie_w
    pcie.io.mod    <> ipsa.io.mod
    pcie.io.w      <> ipsa.io.w

    ipsa.io.pipe.phv_out <> outp.io.phv_in
    pcie.io.pcie_o       <> outp.io.pcie_o
}

object IPSA_PCIE_OBJ extends App {
    Driver.execute(args, () => new IPSAPCIE)
}