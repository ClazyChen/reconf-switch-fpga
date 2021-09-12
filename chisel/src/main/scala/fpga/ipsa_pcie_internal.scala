// package fpga

// import chisel3._
// import chisel3.util._

// // IPSA with PCIE (actually BRAM-PORT interface)
// // no cmac interface, only for pcie
// class IPSAPCIEInternal extends Module {
//     val io = IO(new Bundle {
//         val pcie_r   = new PCIEReadPort
//         val pcie_w   = new PCIEWritePort
//     })

//     val ipsa = Module(new IPSA)
//     val pcie = Module(new PCIEInterface)
//     val outp = Module(new OutPortInternal)
//     val inp  = Module(new InPortInternal)

//     ipsa.io.pipe.phv_in  <> inp.io.phv_out

//     pcie.io.pcie_r <> io.pcie_r
//     pcie.io.pcie_w <> io.pcie_w
//     pcie.io.mod    <> ipsa.io.mod
//     pcie.io.w      <> ipsa.io.w

//     ipsa.io.pipe.phv_out <> outp.io.phv_in
//     pcie.io.pcie_o       <> outp.io.pcie_o
// }