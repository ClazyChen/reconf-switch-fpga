package fpga

import chisel3._
import chisel3.util._

class PCIEInterfacePISA extends Module {
    val io = IO(new Bundle {
        val pcie_r = new PCIEReadPort
        val pcie_w = new PCIEWritePort

        val pcie_o = Flipped(new OutputInterface)
        val mod    = Flipped(new PISAModify)
    })

    // read
    io.pcie_o.cs     := io.pcie_r.addr(12,8)
    io.pcie_o.r.en   := io.pcie_r.en
    io.pcie_o.r.addr := io.pcie_r.addr(7,0)
    io.pcie_o.r.data <> io.pcie_r.data

    // write
    val pcie_addr = io.pcie_w.addr
    val pcie_data = io.pcie_w.data
    val type_field     = Mux(io.pcie_w.en, pcie_addr(19,16), 0.U(4.W))
    val proc_id_field  = pcie_addr(15,12)
    val sub_type_field = pcie_addr(11,8)
    val config_field   = pcie_addr(7,4)
    val bias_field     = pcie_addr(3,0)
    val offset_field   = pcie_addr(7,0)
    val sram_id_field  = sub_type_field

    val proc_mod = io.mod.proc_mod

    val last_mau_id = Reg(UInt(const.mau_id_width.W))
    val state_id    = Reg(UInt(const.PHV.current_state_width.W))
    val par_mod     = io.mod.par_mod
    // parser modify initialization
    par_mod.en              := false.B
    par_mod.last_mau_id_mod := false.B
    par_mod.last_mau_id     := last_mau_id
    par_mod.cs              := sub_type_field(2,0) // 2P[GS]ZZ
    par_mod.module_mod.state_id_mod := false.B
    par_mod.module_mod.state_id     := state_id
    par_mod.module_mod.sram_w_cs    := sub_type_field(3)
    par_mod.module_mod.sram_w.en    := false.B
    par_mod.module_mod.sram_w.addr  := offset_field
    par_mod.module_mod.sram_w.data  := pcie_data
    when (type_field === 2.U(4.W)) {
        par_mod.en := true.B
        par_mod.module_mod.sram_w.en := true.B
    }
    when (type_field === 3.U(4.W)) {
        when (sub_type_field === 1.U(4.W)) {
            last_mau_id := pcie_data
        }
        when (sub_type_field === 2.U(4.W)) {
            when (bias_field === 0.U(4.W)) {
                state_id    := pcie_data
            }
            when (bias_field === 0xF.U(4.W)) {
                par_mod.en              := true.B
                par_mod.last_mau_id_mod := true.B
                par_mod.module_mod.state_id_mod := config_field =/= 0xF.U(4.W)
            }
        }
    }

    // match key
    val key_length   = Reg(UInt(const.MATCH.match_key_length_width.W))
    val group_index  = Reg(UInt(3.W))
    val group_config = Reg(UInt(2.W))
    val group_mask   = Reg(Vec(4, Bool()))
    val group_id     = Reg(Vec(4, UInt(7.W)))
    
    val mat_tab = Reg(new MatchTablePISAConfig)
    for (j <- 0 until const.processor_number) {
        val mat_mod = proc_mod(j).mat_mod
        val act_mod = proc_mod(j).exe_mod

        // matcher modify initialization
        mat_mod.en        := false.B
        mat_mod.config_id := config_field
        mat_mod.key_mod.en := false.B
        mat_mod.key_mod.key_length := key_length
        mat_mod.key_mod.group_index := group_index
        mat_mod.key_mod.group_config := group_config
        mat_mod.key_mod.group_mask := group_mask
        mat_mod.key_mod.group_id := group_id
        mat_mod.table_mod := mat_tab
        mat_mod.w.en := type_field === 1.U(4.W) && proc_id_field === j.U(4.W)
        mat_mod.w.sram_id := sub_type_field
        mat_mod.w.addr := offset_field
        mat_mod.w.data := pcie_data

        // executor modify initialization
        for (k <- 0 until const.EXEC.sram_number) {
            act_mod.en(k)   := false.B
            act_mod.addr    := 0.U(const.SRAM.address_width.W)
            act_mod.data(k) := 0.U(const.SRAM.data_width.W)
        }

        when (proc_id_field === j.U(4.W)) {
            // matcher config modify
            when (type_field === 3.U(4.W)) {
                // matcher config modify
                when (sub_type_field === 3.U(4.W)) {
                    when (bias_field === 0x2.U(4.W)) {
                        key_length := pcie_data
                    }
                    when (bias_field === 0x4.U(4.W)) {
                        group_index := pcie_data
                    }
                    when (bias_field === 0x5.U(4.W)) {
                        group_config := pcie_data
                    }
                    when (bias_field === 0x6.U(4.W)) {
                        for (k <- 0 until 4) {
                            group_mask(k) := pcie_data(k)
                        }
                    }
                    when (bias_field === 0x7.U(4.W)) {
                        for (k <- 0 until 4) {
                            group_id(k) := pcie_data((k+1)*8-2,k*8)
                        }
                    }
                }
                when (sub_type_field === 5.U(4.W)) {
                    when (bias_field === 0x0.U(4.W)) {
                        mat_tab.table_width := pcie_data
                    }
                    when (bias_field === 0x1.U(4.W)) {
                        mat_tab.table_depth := pcie_data
                    }
                    when (bias_field === 0xF.U(4.W)) {
                        mat_mod.en := true.B
                        mat_mod.key_mod.en  := true.B
                    }
                }
            }
            // executor action modify
            when (type_field === 4.U(4.W)) {
                act_mod.addr := offset_field
                for (k <- 0 until const.EXEC.sram_number) {
                    when (sram_id_field === k.U(4.W)) {
                        act_mod.en(k)   := true.B
                        act_mod.data(k) := pcie_data
                    }
                }
            }
        }
    }
}