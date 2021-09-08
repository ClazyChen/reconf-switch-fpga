package fpga

import chisel3._
import chisel3.util._

// PISA with PCIE (actually BRAM-PORT interface)
class PISAPCIE extends Module {
    val io = IO(new Bundle {
        val pcie_r   = new PCIEReadPort
        val pcie_w   = new PCIEWritePort
    })

    val pisa = Module(new PISA)
    val pcie = Module(new PCIEInterfacePISA)
    val outp = Module(new OutPort)
    val inp  = Module(new InPort)

    pisa.io.pipe.phv_in  <> inp.io.phv_out

    pcie.io.pcie_r <> io.pcie_r
    pcie.io.pcie_w <> io.pcie_w
    pcie.io.mod    <> pisa.io.mod

    pisa.io.pipe.phv_out <> outp.io.phv_in
    pcie.io.pcie_o       <> outp.io.pcie_o
}

object PISA_PCIE_OBJ extends App {
    Driver.execute(args, () => new PISAPCIE)
}