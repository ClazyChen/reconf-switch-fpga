module PCIEInterface(
  input         clock,
  input         io_pcie_r_en,
  input  [19:0] io_pcie_r_addr,
  output [63:0] io_pcie_r_data,
  input         io_pcie_w_en,
  input  [19:0] io_pcie_w_addr,
  input  [63:0] io_pcie_w_data,
  output [4:0]  io_pcie_o_cs,
  output        io_pcie_o_r_en,
  output [7:0]  io_pcie_o_r_addr,
  input  [63:0] io_pcie_o_r_data,
  output        io_mod_proc_mod_0_par_mod_en,
  output        io_mod_proc_mod_0_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_0_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_0_par_mod_cs,
  output        io_mod_proc_mod_0_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_0_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_0_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_0_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_0_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_0_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_0_mat_mod_en,
  output        io_mod_proc_mod_0_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_0_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_0_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_0_mat_mod_key_mod_key_length,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_0,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_1,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_2,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_3,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_4,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_5,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_6,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_7,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_8,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_9,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_10,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_11,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_12,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_13,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_14,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_15,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_16,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_17,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_18,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_19,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_20,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_21,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_22,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_23,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_24,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_25,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_26,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_27,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_28,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_29,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_30,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_31,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_32,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_33,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_34,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_35,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_36,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_37,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_38,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_39,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_40,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_41,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_42,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_43,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_44,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_45,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_46,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_47,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_48,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_49,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_50,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_51,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_52,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_53,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_54,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_55,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_56,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_57,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_58,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_59,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_60,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_61,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_62,
  output [5:0]  io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_63,
  output [6:0]  io_mod_proc_mod_0_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_0_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_0_act_mod_en_0,
  output        io_mod_proc_mod_0_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_0_act_mod_addr,
  output [63:0] io_mod_proc_mod_0_act_mod_data_0,
  output [63:0] io_mod_proc_mod_0_act_mod_data_1,
  output        io_mod_proc_mod_1_par_mod_en,
  output        io_mod_proc_mod_1_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_1_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_1_par_mod_cs,
  output        io_mod_proc_mod_1_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_1_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_1_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_1_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_1_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_1_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_1_mat_mod_en,
  output        io_mod_proc_mod_1_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_1_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_1_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_1_mat_mod_key_mod_key_length,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_0,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_1,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_2,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_3,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_4,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_5,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_6,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_7,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_8,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_9,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_10,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_11,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_12,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_13,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_14,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_15,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_16,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_17,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_18,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_19,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_20,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_21,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_22,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_23,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_24,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_25,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_26,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_27,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_28,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_29,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_30,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_31,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_32,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_33,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_34,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_35,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_36,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_37,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_38,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_39,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_40,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_41,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_42,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_43,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_44,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_45,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_46,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_47,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_48,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_49,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_50,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_51,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_52,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_53,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_54,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_55,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_56,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_57,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_58,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_59,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_60,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_61,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_62,
  output [5:0]  io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_63,
  output [6:0]  io_mod_proc_mod_1_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_1_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_1_act_mod_en_0,
  output        io_mod_proc_mod_1_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_1_act_mod_addr,
  output [63:0] io_mod_proc_mod_1_act_mod_data_0,
  output [63:0] io_mod_proc_mod_1_act_mod_data_1,
  output        io_mod_proc_mod_2_par_mod_en,
  output        io_mod_proc_mod_2_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_2_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_2_par_mod_cs,
  output        io_mod_proc_mod_2_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_2_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_2_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_2_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_2_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_2_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_2_mat_mod_en,
  output        io_mod_proc_mod_2_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_2_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_2_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_2_mat_mod_key_mod_key_length,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_0,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_1,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_2,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_3,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_4,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_5,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_6,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_7,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_8,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_9,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_10,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_11,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_12,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_13,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_14,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_15,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_16,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_17,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_18,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_19,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_20,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_21,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_22,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_23,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_24,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_25,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_26,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_27,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_28,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_29,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_30,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_31,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_32,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_33,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_34,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_35,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_36,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_37,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_38,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_39,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_40,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_41,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_42,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_43,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_44,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_45,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_46,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_47,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_48,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_49,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_50,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_51,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_52,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_53,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_54,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_55,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_56,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_57,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_58,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_59,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_60,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_61,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_62,
  output [5:0]  io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_63,
  output [6:0]  io_mod_proc_mod_2_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_2_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_2_act_mod_en_0,
  output        io_mod_proc_mod_2_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_2_act_mod_addr,
  output [63:0] io_mod_proc_mod_2_act_mod_data_0,
  output [63:0] io_mod_proc_mod_2_act_mod_data_1,
  output        io_mod_proc_mod_3_par_mod_en,
  output        io_mod_proc_mod_3_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_3_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_3_par_mod_cs,
  output        io_mod_proc_mod_3_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_3_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_3_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_3_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_3_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_3_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_3_mat_mod_en,
  output        io_mod_proc_mod_3_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_3_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_3_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_3_mat_mod_key_mod_key_length,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_0,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_1,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_2,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_3,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_4,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_5,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_6,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_7,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_8,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_9,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_10,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_11,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_12,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_13,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_14,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_15,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_16,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_17,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_18,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_19,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_20,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_21,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_22,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_23,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_24,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_25,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_26,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_27,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_28,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_29,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_30,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_31,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_32,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_33,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_34,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_35,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_36,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_37,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_38,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_39,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_40,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_41,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_42,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_43,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_44,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_45,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_46,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_47,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_48,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_49,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_50,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_51,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_52,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_53,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_54,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_55,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_56,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_57,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_58,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_59,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_60,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_61,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_62,
  output [5:0]  io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_63,
  output [6:0]  io_mod_proc_mod_3_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_3_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_3_act_mod_en_0,
  output        io_mod_proc_mod_3_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_3_act_mod_addr,
  output [63:0] io_mod_proc_mod_3_act_mod_data_0,
  output [63:0] io_mod_proc_mod_3_act_mod_data_1,
  output        io_mod_xbar_mod_en,
  output [1:0]  io_mod_xbar_mod_first_proc_id,
  output [1:0]  io_mod_xbar_mod_last_proc_id,
  output [1:0]  io_mod_xbar_mod_next_proc_id_0,
  output [1:0]  io_mod_xbar_mod_next_proc_id_1,
  output [1:0]  io_mod_xbar_mod_next_proc_id_2,
  output [1:0]  io_mod_xbar_mod_next_proc_id_3,
  output [5:0]  io_w_0_wcs,
  output        io_w_0_w_en,
  output [7:0]  io_w_0_w_addr,
  output [63:0] io_w_0_w_data
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] type_field = io_pcie_w_en ? io_pcie_w_addr[19:16] : 4'h0; // @[pcie_interface.scala 80:29]
  wire [3:0] cluster_id_field = io_pcie_w_addr[15:12]; // @[pcie_interface.scala 81:35]
  wire [3:0] sram_id_field = io_pcie_w_addr[11:8]; // @[pcie_interface.scala 82:35]
  wire [3:0] config_field = io_pcie_w_addr[7:4]; // @[pcie_interface.scala 83:35]
  wire [3:0] bias_field = io_pcie_w_addr[3:0]; // @[pcie_interface.scala 84:35]
  wire [7:0] offset_field = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  wire  sram_resource_pool = type_field == 4'h1; // @[pcie_interface.scala 92:41]
  wire [3:0] _GEN_1308 = {{2'd0}, cluster_id_field[1:0]}; // @[pcie_interface.scala 96:57]
  reg [1:0] last_mau_id; // @[pcie_interface.scala 102:26]
  reg [7:0] state_id; // @[pcie_interface.scala 103:26]
  reg [7:0] mat_key_header_id; // @[pcie_interface.scala 104:22]
  reg [7:0] mat_key_internal_offset; // @[pcie_interface.scala 104:22]
  reg [7:0] mat_key_key_length; // @[pcie_interface.scala 104:22]
  reg [5:0] mat_tab_sram_id_table_0; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_1; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_2; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_3; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_4; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_5; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_6; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_7; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_8; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_9; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_10; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_11; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_12; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_13; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_14; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_15; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_16; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_17; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_18; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_19; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_20; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_21; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_22; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_23; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_24; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_25; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_26; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_27; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_28; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_29; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_30; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_31; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_32; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_33; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_34; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_35; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_36; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_37; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_38; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_39; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_40; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_41; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_42; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_43; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_44; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_45; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_46; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_47; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_48; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_49; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_50; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_51; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_52; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_53; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_54; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_55; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_56; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_57; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_58; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_59; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_60; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_61; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_62; // @[pcie_interface.scala 105:22]
  reg [5:0] mat_tab_sram_id_table_63; // @[pcie_interface.scala 105:22]
  reg [6:0] mat_tab_table_width; // @[pcie_interface.scala 105:22]
  reg [6:0] mat_tab_table_depth; // @[pcie_interface.scala 105:22]
  wire  _T_1 = type_field == 4'h2; // @[pcie_interface.scala 139:30]
  wire  _T_3 = sram_id_field == 4'h1; // @[pcie_interface.scala 147:38]
  wire [63:0] _GEN_1 = sram_id_field == 4'h1 ? io_pcie_w_data : {{62'd0}, last_mau_id}; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33 pcie_interface.scala 102:26]
  wire  _T_5 = bias_field == 4'h0; // @[pcie_interface.scala 151:38]
  wire [63:0] _GEN_2 = bias_field == 4'h0 ? io_pcie_w_data : {{56'd0}, state_id}; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37 pcie_interface.scala 103:26]
  wire  _T_6 = bias_field == 4'hf; // @[pcie_interface.scala 154:38]
  wire  _GEN_3 = bias_field == 4'hf | _T_1; // @[pcie_interface.scala 154:54 pcie_interface.scala 155:49]
  wire  _GEN_5 = bias_field == 4'hf & config_field != 4'hf; // @[pcie_interface.scala 154:54 pcie_interface.scala 157:57 pcie_interface.scala 117:41]
  wire [63:0] _GEN_6 = sram_id_field == 4'h2 ? _GEN_2 : {{56'd0}, state_id}; // @[pcie_interface.scala 150:52 pcie_interface.scala 103:26]
  wire  _GEN_7 = sram_id_field == 4'h2 ? _GEN_3 : _T_1; // @[pcie_interface.scala 150:52]
  wire  _GEN_8 = sram_id_field == 4'h2 & _T_6; // @[pcie_interface.scala 150:52 pcie_interface.scala 114:33]
  wire  _GEN_9 = sram_id_field == 4'h2 & _GEN_5; // @[pcie_interface.scala 150:52 pcie_interface.scala 117:41]
  wire [63:0] _GEN_10 = _T_5 ? io_pcie_w_data : {{56'd0}, mat_key_header_id}; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43 pcie_interface.scala 104:22]
  wire  _T_9 = bias_field == 4'h1; // @[pcie_interface.scala 166:38]
  wire [63:0] _GEN_11 = bias_field == 4'h1 ? io_pcie_w_data : {{56'd0}, mat_key_internal_offset}; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49 pcie_interface.scala 104:22]
  wire [63:0] _GEN_12 = bias_field == 4'h2 ? io_pcie_w_data : {{56'd0}, mat_key_key_length}; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44 pcie_interface.scala 104:22]
  wire [3:0] _GEN_14 = sram_id_field == 4'h3 ? config_field : 4'h0; // @[pcie_interface.scala 161:52 pcie_interface.scala 162:39 pcie_interface.scala 126:27]
  wire [63:0] _GEN_15 = sram_id_field == 4'h3 ? _GEN_10 : {{56'd0}, mat_key_header_id}; // @[pcie_interface.scala 161:52 pcie_interface.scala 104:22]
  wire [63:0] _GEN_16 = sram_id_field == 4'h3 ? _GEN_11 : {{56'd0}, mat_key_internal_offset}; // @[pcie_interface.scala 161:52 pcie_interface.scala 104:22]
  wire [63:0] _GEN_17 = sram_id_field == 4'h3 ? _GEN_12 : {{56'd0}, mat_key_key_length}; // @[pcie_interface.scala 161:52 pcie_interface.scala 104:22]
  wire [1:0] hi = config_field[3:2]; // @[pcie_interface.scala 177:59]
  wire [5:0] _T_13 = {hi,bias_field}; // @[Cat.scala 30:58]
  wire [5:0] _GEN_19 = 6'h0 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_0; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_20 = 6'h1 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_1; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_21 = 6'h2 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_2; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_22 = 6'h3 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_3; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_23 = 6'h4 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_4; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_24 = 6'h5 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_5; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_25 = 6'h6 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_6; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_26 = 6'h7 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_7; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_27 = 6'h8 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_8; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_28 = 6'h9 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_9; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_29 = 6'ha == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_10; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_30 = 6'hb == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_11; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_31 = 6'hc == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_12; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_32 = 6'hd == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_13; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_33 = 6'he == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_14; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_34 = 6'hf == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_15; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_35 = 6'h10 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_16; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_36 = 6'h11 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_17; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_37 = 6'h12 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_18; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_38 = 6'h13 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_19; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_39 = 6'h14 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_20; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_40 = 6'h15 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_21; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_41 = 6'h16 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_22; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_42 = 6'h17 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_23; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_43 = 6'h18 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_24; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_44 = 6'h19 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_25; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_45 = 6'h1a == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_26; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_46 = 6'h1b == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_27; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_47 = 6'h1c == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_28; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_48 = 6'h1d == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_29; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_49 = 6'h1e == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_30; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_50 = 6'h1f == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_31; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_51 = 6'h20 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_32; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_52 = 6'h21 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_33; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_53 = 6'h22 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_34; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_54 = 6'h23 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_35; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_55 = 6'h24 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_36; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_56 = 6'h25 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_37; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_57 = 6'h26 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_38; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_58 = 6'h27 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_39; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_59 = 6'h28 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_40; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_60 = 6'h29 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_41; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_61 = 6'h2a == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_42; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_62 = 6'h2b == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_43; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_63 = 6'h2c == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_44; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_64 = 6'h2d == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_45; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_65 = 6'h2e == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_46; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_66 = 6'h2f == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_47; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_67 = 6'h30 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_48; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_68 = 6'h31 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_49; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_69 = 6'h32 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_50; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_70 = 6'h33 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_51; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_71 = 6'h34 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_52; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_72 = 6'h35 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_53; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_73 = 6'h36 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_54; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_74 = 6'h37 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_55; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_75 = 6'h38 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_56; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_76 = 6'h39 == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_57; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_77 = 6'h3a == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_58; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_78 = 6'h3b == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_59; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_79 = 6'h3c == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_60; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_80 = 6'h3d == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_61; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_81 = 6'h3e == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_62; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_82 = 6'h3f == _T_13 ? io_pcie_w_data[5:0] : mat_tab_sram_id_table_63; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78 pcie_interface.scala 105:22]
  wire [5:0] _GEN_83 = sram_id_field == 4'h4 ? _GEN_19 : mat_tab_sram_id_table_0; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_84 = sram_id_field == 4'h4 ? _GEN_20 : mat_tab_sram_id_table_1; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_85 = sram_id_field == 4'h4 ? _GEN_21 : mat_tab_sram_id_table_2; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_86 = sram_id_field == 4'h4 ? _GEN_22 : mat_tab_sram_id_table_3; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_87 = sram_id_field == 4'h4 ? _GEN_23 : mat_tab_sram_id_table_4; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_88 = sram_id_field == 4'h4 ? _GEN_24 : mat_tab_sram_id_table_5; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_89 = sram_id_field == 4'h4 ? _GEN_25 : mat_tab_sram_id_table_6; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_90 = sram_id_field == 4'h4 ? _GEN_26 : mat_tab_sram_id_table_7; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_91 = sram_id_field == 4'h4 ? _GEN_27 : mat_tab_sram_id_table_8; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_92 = sram_id_field == 4'h4 ? _GEN_28 : mat_tab_sram_id_table_9; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_93 = sram_id_field == 4'h4 ? _GEN_29 : mat_tab_sram_id_table_10; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_94 = sram_id_field == 4'h4 ? _GEN_30 : mat_tab_sram_id_table_11; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_95 = sram_id_field == 4'h4 ? _GEN_31 : mat_tab_sram_id_table_12; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_96 = sram_id_field == 4'h4 ? _GEN_32 : mat_tab_sram_id_table_13; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_97 = sram_id_field == 4'h4 ? _GEN_33 : mat_tab_sram_id_table_14; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_98 = sram_id_field == 4'h4 ? _GEN_34 : mat_tab_sram_id_table_15; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_99 = sram_id_field == 4'h4 ? _GEN_35 : mat_tab_sram_id_table_16; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_100 = sram_id_field == 4'h4 ? _GEN_36 : mat_tab_sram_id_table_17; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_101 = sram_id_field == 4'h4 ? _GEN_37 : mat_tab_sram_id_table_18; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_102 = sram_id_field == 4'h4 ? _GEN_38 : mat_tab_sram_id_table_19; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_103 = sram_id_field == 4'h4 ? _GEN_39 : mat_tab_sram_id_table_20; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_104 = sram_id_field == 4'h4 ? _GEN_40 : mat_tab_sram_id_table_21; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_105 = sram_id_field == 4'h4 ? _GEN_41 : mat_tab_sram_id_table_22; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_106 = sram_id_field == 4'h4 ? _GEN_42 : mat_tab_sram_id_table_23; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_107 = sram_id_field == 4'h4 ? _GEN_43 : mat_tab_sram_id_table_24; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_108 = sram_id_field == 4'h4 ? _GEN_44 : mat_tab_sram_id_table_25; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_109 = sram_id_field == 4'h4 ? _GEN_45 : mat_tab_sram_id_table_26; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_110 = sram_id_field == 4'h4 ? _GEN_46 : mat_tab_sram_id_table_27; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_111 = sram_id_field == 4'h4 ? _GEN_47 : mat_tab_sram_id_table_28; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_112 = sram_id_field == 4'h4 ? _GEN_48 : mat_tab_sram_id_table_29; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_113 = sram_id_field == 4'h4 ? _GEN_49 : mat_tab_sram_id_table_30; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_114 = sram_id_field == 4'h4 ? _GEN_50 : mat_tab_sram_id_table_31; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_115 = sram_id_field == 4'h4 ? _GEN_51 : mat_tab_sram_id_table_32; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_116 = sram_id_field == 4'h4 ? _GEN_52 : mat_tab_sram_id_table_33; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_117 = sram_id_field == 4'h4 ? _GEN_53 : mat_tab_sram_id_table_34; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_118 = sram_id_field == 4'h4 ? _GEN_54 : mat_tab_sram_id_table_35; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_119 = sram_id_field == 4'h4 ? _GEN_55 : mat_tab_sram_id_table_36; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_120 = sram_id_field == 4'h4 ? _GEN_56 : mat_tab_sram_id_table_37; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_121 = sram_id_field == 4'h4 ? _GEN_57 : mat_tab_sram_id_table_38; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_122 = sram_id_field == 4'h4 ? _GEN_58 : mat_tab_sram_id_table_39; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_123 = sram_id_field == 4'h4 ? _GEN_59 : mat_tab_sram_id_table_40; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_124 = sram_id_field == 4'h4 ? _GEN_60 : mat_tab_sram_id_table_41; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_125 = sram_id_field == 4'h4 ? _GEN_61 : mat_tab_sram_id_table_42; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_126 = sram_id_field == 4'h4 ? _GEN_62 : mat_tab_sram_id_table_43; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_127 = sram_id_field == 4'h4 ? _GEN_63 : mat_tab_sram_id_table_44; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_128 = sram_id_field == 4'h4 ? _GEN_64 : mat_tab_sram_id_table_45; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_129 = sram_id_field == 4'h4 ? _GEN_65 : mat_tab_sram_id_table_46; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_130 = sram_id_field == 4'h4 ? _GEN_66 : mat_tab_sram_id_table_47; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_131 = sram_id_field == 4'h4 ? _GEN_67 : mat_tab_sram_id_table_48; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_132 = sram_id_field == 4'h4 ? _GEN_68 : mat_tab_sram_id_table_49; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_133 = sram_id_field == 4'h4 ? _GEN_69 : mat_tab_sram_id_table_50; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_134 = sram_id_field == 4'h4 ? _GEN_70 : mat_tab_sram_id_table_51; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_135 = sram_id_field == 4'h4 ? _GEN_71 : mat_tab_sram_id_table_52; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_136 = sram_id_field == 4'h4 ? _GEN_72 : mat_tab_sram_id_table_53; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_137 = sram_id_field == 4'h4 ? _GEN_73 : mat_tab_sram_id_table_54; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_138 = sram_id_field == 4'h4 ? _GEN_74 : mat_tab_sram_id_table_55; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_139 = sram_id_field == 4'h4 ? _GEN_75 : mat_tab_sram_id_table_56; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_140 = sram_id_field == 4'h4 ? _GEN_76 : mat_tab_sram_id_table_57; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_141 = sram_id_field == 4'h4 ? _GEN_77 : mat_tab_sram_id_table_58; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_142 = sram_id_field == 4'h4 ? _GEN_78 : mat_tab_sram_id_table_59; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_143 = sram_id_field == 4'h4 ? _GEN_79 : mat_tab_sram_id_table_60; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_144 = sram_id_field == 4'h4 ? _GEN_80 : mat_tab_sram_id_table_61; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_145 = sram_id_field == 4'h4 ? _GEN_81 : mat_tab_sram_id_table_62; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [5:0] _GEN_146 = sram_id_field == 4'h4 ? _GEN_82 : mat_tab_sram_id_table_63; // @[pcie_interface.scala 176:52 pcie_interface.scala 105:22]
  wire [63:0] _GEN_147 = _T_5 ? io_pcie_w_data : {{57'd0}, mat_tab_table_width}; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45 pcie_interface.scala 105:22]
  wire [63:0] _GEN_148 = _T_9 ? io_pcie_w_data : {{57'd0}, mat_tab_table_depth}; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45 pcie_interface.scala 105:22]
  wire [63:0] _GEN_150 = sram_id_field == 4'h5 ? _GEN_147 : {{57'd0}, mat_tab_table_width}; // @[pcie_interface.scala 179:52 pcie_interface.scala 105:22]
  wire [63:0] _GEN_151 = sram_id_field == 4'h5 ? _GEN_148 : {{57'd0}, mat_tab_table_depth}; // @[pcie_interface.scala 179:52 pcie_interface.scala 105:22]
  wire  _GEN_152 = sram_id_field == 4'h5 & _T_6; // @[pcie_interface.scala 179:52 pcie_interface.scala 125:27]
  wire [3:0] _GEN_153 = type_field == 4'h3 ? config_field : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 144:44 pcie_interface.scala 146:28 pcie_interface.scala 116:33]
  wire [63:0] _GEN_154 = type_field == 4'h3 ? _GEN_1 : {{62'd0}, last_mau_id}; // @[pcie_interface.scala 144:44 pcie_interface.scala 102:26]
  wire [63:0] _GEN_155 = type_field == 4'h3 ? _GEN_6 : {{56'd0}, state_id}; // @[pcie_interface.scala 144:44 pcie_interface.scala 103:26]
  wire  _GEN_156 = type_field == 4'h3 ? _GEN_7 : _T_1; // @[pcie_interface.scala 144:44]
  wire  _GEN_157 = type_field == 4'h3 & _GEN_8; // @[pcie_interface.scala 144:44 pcie_interface.scala 114:33]
  wire  _GEN_158 = type_field == 4'h3 & _GEN_9; // @[pcie_interface.scala 144:44 pcie_interface.scala 117:41]
  wire [3:0] _GEN_159 = type_field == 4'h3 ? _GEN_14 : 4'h0; // @[pcie_interface.scala 144:44 pcie_interface.scala 126:27]
  wire [63:0] _GEN_160 = type_field == 4'h3 ? _GEN_15 : {{56'd0}, mat_key_header_id}; // @[pcie_interface.scala 144:44 pcie_interface.scala 104:22]
  wire [63:0] _GEN_161 = type_field == 4'h3 ? _GEN_16 : {{56'd0}, mat_key_internal_offset}; // @[pcie_interface.scala 144:44 pcie_interface.scala 104:22]
  wire [63:0] _GEN_162 = type_field == 4'h3 ? _GEN_17 : {{56'd0}, mat_key_key_length}; // @[pcie_interface.scala 144:44 pcie_interface.scala 104:22]
  wire [5:0] _GEN_164 = type_field == 4'h3 ? _GEN_83 : mat_tab_sram_id_table_0; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_165 = type_field == 4'h3 ? _GEN_84 : mat_tab_sram_id_table_1; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_166 = type_field == 4'h3 ? _GEN_85 : mat_tab_sram_id_table_2; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_167 = type_field == 4'h3 ? _GEN_86 : mat_tab_sram_id_table_3; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_168 = type_field == 4'h3 ? _GEN_87 : mat_tab_sram_id_table_4; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_169 = type_field == 4'h3 ? _GEN_88 : mat_tab_sram_id_table_5; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_170 = type_field == 4'h3 ? _GEN_89 : mat_tab_sram_id_table_6; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_171 = type_field == 4'h3 ? _GEN_90 : mat_tab_sram_id_table_7; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_172 = type_field == 4'h3 ? _GEN_91 : mat_tab_sram_id_table_8; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_173 = type_field == 4'h3 ? _GEN_92 : mat_tab_sram_id_table_9; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_174 = type_field == 4'h3 ? _GEN_93 : mat_tab_sram_id_table_10; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_175 = type_field == 4'h3 ? _GEN_94 : mat_tab_sram_id_table_11; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_176 = type_field == 4'h3 ? _GEN_95 : mat_tab_sram_id_table_12; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_177 = type_field == 4'h3 ? _GEN_96 : mat_tab_sram_id_table_13; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_178 = type_field == 4'h3 ? _GEN_97 : mat_tab_sram_id_table_14; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_179 = type_field == 4'h3 ? _GEN_98 : mat_tab_sram_id_table_15; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_180 = type_field == 4'h3 ? _GEN_99 : mat_tab_sram_id_table_16; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_181 = type_field == 4'h3 ? _GEN_100 : mat_tab_sram_id_table_17; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_182 = type_field == 4'h3 ? _GEN_101 : mat_tab_sram_id_table_18; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_183 = type_field == 4'h3 ? _GEN_102 : mat_tab_sram_id_table_19; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_184 = type_field == 4'h3 ? _GEN_103 : mat_tab_sram_id_table_20; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_185 = type_field == 4'h3 ? _GEN_104 : mat_tab_sram_id_table_21; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_186 = type_field == 4'h3 ? _GEN_105 : mat_tab_sram_id_table_22; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_187 = type_field == 4'h3 ? _GEN_106 : mat_tab_sram_id_table_23; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_188 = type_field == 4'h3 ? _GEN_107 : mat_tab_sram_id_table_24; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_189 = type_field == 4'h3 ? _GEN_108 : mat_tab_sram_id_table_25; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_190 = type_field == 4'h3 ? _GEN_109 : mat_tab_sram_id_table_26; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_191 = type_field == 4'h3 ? _GEN_110 : mat_tab_sram_id_table_27; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_192 = type_field == 4'h3 ? _GEN_111 : mat_tab_sram_id_table_28; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_193 = type_field == 4'h3 ? _GEN_112 : mat_tab_sram_id_table_29; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_194 = type_field == 4'h3 ? _GEN_113 : mat_tab_sram_id_table_30; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_195 = type_field == 4'h3 ? _GEN_114 : mat_tab_sram_id_table_31; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_196 = type_field == 4'h3 ? _GEN_115 : mat_tab_sram_id_table_32; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_197 = type_field == 4'h3 ? _GEN_116 : mat_tab_sram_id_table_33; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_198 = type_field == 4'h3 ? _GEN_117 : mat_tab_sram_id_table_34; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_199 = type_field == 4'h3 ? _GEN_118 : mat_tab_sram_id_table_35; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_200 = type_field == 4'h3 ? _GEN_119 : mat_tab_sram_id_table_36; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_201 = type_field == 4'h3 ? _GEN_120 : mat_tab_sram_id_table_37; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_202 = type_field == 4'h3 ? _GEN_121 : mat_tab_sram_id_table_38; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_203 = type_field == 4'h3 ? _GEN_122 : mat_tab_sram_id_table_39; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_204 = type_field == 4'h3 ? _GEN_123 : mat_tab_sram_id_table_40; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_205 = type_field == 4'h3 ? _GEN_124 : mat_tab_sram_id_table_41; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_206 = type_field == 4'h3 ? _GEN_125 : mat_tab_sram_id_table_42; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_207 = type_field == 4'h3 ? _GEN_126 : mat_tab_sram_id_table_43; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_208 = type_field == 4'h3 ? _GEN_127 : mat_tab_sram_id_table_44; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_209 = type_field == 4'h3 ? _GEN_128 : mat_tab_sram_id_table_45; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_210 = type_field == 4'h3 ? _GEN_129 : mat_tab_sram_id_table_46; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_211 = type_field == 4'h3 ? _GEN_130 : mat_tab_sram_id_table_47; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_212 = type_field == 4'h3 ? _GEN_131 : mat_tab_sram_id_table_48; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_213 = type_field == 4'h3 ? _GEN_132 : mat_tab_sram_id_table_49; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_214 = type_field == 4'h3 ? _GEN_133 : mat_tab_sram_id_table_50; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_215 = type_field == 4'h3 ? _GEN_134 : mat_tab_sram_id_table_51; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_216 = type_field == 4'h3 ? _GEN_135 : mat_tab_sram_id_table_52; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_217 = type_field == 4'h3 ? _GEN_136 : mat_tab_sram_id_table_53; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_218 = type_field == 4'h3 ? _GEN_137 : mat_tab_sram_id_table_54; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_219 = type_field == 4'h3 ? _GEN_138 : mat_tab_sram_id_table_55; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_220 = type_field == 4'h3 ? _GEN_139 : mat_tab_sram_id_table_56; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_221 = type_field == 4'h3 ? _GEN_140 : mat_tab_sram_id_table_57; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_222 = type_field == 4'h3 ? _GEN_141 : mat_tab_sram_id_table_58; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_223 = type_field == 4'h3 ? _GEN_142 : mat_tab_sram_id_table_59; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_224 = type_field == 4'h3 ? _GEN_143 : mat_tab_sram_id_table_60; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_225 = type_field == 4'h3 ? _GEN_144 : mat_tab_sram_id_table_61; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_226 = type_field == 4'h3 ? _GEN_145 : mat_tab_sram_id_table_62; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [5:0] _GEN_227 = type_field == 4'h3 ? _GEN_146 : mat_tab_sram_id_table_63; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [63:0] _GEN_228 = type_field == 4'h3 ? _GEN_150 : {{57'd0}, mat_tab_table_width}; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [63:0] _GEN_229 = type_field == 4'h3 ? _GEN_151 : {{57'd0}, mat_tab_table_depth}; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire  _GEN_230 = type_field == 4'h3 & _GEN_152; // @[pcie_interface.scala 144:44 pcie_interface.scala 125:27]
  wire  _T_19 = sram_id_field == 4'h0; // @[pcie_interface.scala 195:41]
  wire [63:0] _GEN_232 = sram_id_field == 4'h0 ? io_pcie_w_data : 64'h0; // @[pcie_interface.scala 195:55 pcie_interface.scala 197:41 pcie_interface.scala 134:29]
  wire [63:0] _GEN_234 = _T_3 ? io_pcie_w_data : 64'h0; // @[pcie_interface.scala 195:55 pcie_interface.scala 197:41 pcie_interface.scala 134:29]
  wire [7:0] _GEN_235 = type_field == 4'h4 ? offset_field : 8'h0; // @[pcie_interface.scala 192:44 pcie_interface.scala 193:30 pcie_interface.scala 133:29]
  wire  _GEN_236 = type_field == 4'h4 & _T_19; // @[pcie_interface.scala 192:44 pcie_interface.scala 132:29]
  wire [63:0] _GEN_237 = type_field == 4'h4 ? _GEN_232 : 64'h0; // @[pcie_interface.scala 192:44 pcie_interface.scala 134:29]
  wire  _GEN_238 = type_field == 4'h4 & _T_3; // @[pcie_interface.scala 192:44 pcie_interface.scala 132:29]
  wire [63:0] _GEN_239 = type_field == 4'h4 ? _GEN_234 : 64'h0; // @[pcie_interface.scala 192:44 pcie_interface.scala 134:29]
  wire [3:0] _GEN_242 = cluster_id_field == 4'h0 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_243 = cluster_id_field == 4'h0 ? _GEN_154 : {{62'd0}, last_mau_id}; // @[pcie_interface.scala 137:43 pcie_interface.scala 102:26]
  wire [63:0] _GEN_244 = cluster_id_field == 4'h0 ? _GEN_155 : {{56'd0}, state_id}; // @[pcie_interface.scala 137:43 pcie_interface.scala 103:26]
  wire [3:0] _GEN_247 = cluster_id_field == 4'h0 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_248 = cluster_id_field == 4'h0 ? _GEN_160 : {{56'd0}, mat_key_header_id}; // @[pcie_interface.scala 137:43 pcie_interface.scala 104:22]
  wire [63:0] _GEN_249 = cluster_id_field == 4'h0 ? _GEN_161 : {{56'd0}, mat_key_internal_offset}; // @[pcie_interface.scala 137:43 pcie_interface.scala 104:22]
  wire [63:0] _GEN_250 = cluster_id_field == 4'h0 ? _GEN_162 : {{56'd0}, mat_key_key_length}; // @[pcie_interface.scala 137:43 pcie_interface.scala 104:22]
  wire [5:0] _GEN_252 = cluster_id_field == 4'h0 ? _GEN_164 : mat_tab_sram_id_table_0; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_253 = cluster_id_field == 4'h0 ? _GEN_165 : mat_tab_sram_id_table_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_254 = cluster_id_field == 4'h0 ? _GEN_166 : mat_tab_sram_id_table_2; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_255 = cluster_id_field == 4'h0 ? _GEN_167 : mat_tab_sram_id_table_3; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_256 = cluster_id_field == 4'h0 ? _GEN_168 : mat_tab_sram_id_table_4; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_257 = cluster_id_field == 4'h0 ? _GEN_169 : mat_tab_sram_id_table_5; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_258 = cluster_id_field == 4'h0 ? _GEN_170 : mat_tab_sram_id_table_6; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_259 = cluster_id_field == 4'h0 ? _GEN_171 : mat_tab_sram_id_table_7; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_260 = cluster_id_field == 4'h0 ? _GEN_172 : mat_tab_sram_id_table_8; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_261 = cluster_id_field == 4'h0 ? _GEN_173 : mat_tab_sram_id_table_9; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_262 = cluster_id_field == 4'h0 ? _GEN_174 : mat_tab_sram_id_table_10; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_263 = cluster_id_field == 4'h0 ? _GEN_175 : mat_tab_sram_id_table_11; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_264 = cluster_id_field == 4'h0 ? _GEN_176 : mat_tab_sram_id_table_12; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_265 = cluster_id_field == 4'h0 ? _GEN_177 : mat_tab_sram_id_table_13; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_266 = cluster_id_field == 4'h0 ? _GEN_178 : mat_tab_sram_id_table_14; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_267 = cluster_id_field == 4'h0 ? _GEN_179 : mat_tab_sram_id_table_15; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_268 = cluster_id_field == 4'h0 ? _GEN_180 : mat_tab_sram_id_table_16; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_269 = cluster_id_field == 4'h0 ? _GEN_181 : mat_tab_sram_id_table_17; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_270 = cluster_id_field == 4'h0 ? _GEN_182 : mat_tab_sram_id_table_18; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_271 = cluster_id_field == 4'h0 ? _GEN_183 : mat_tab_sram_id_table_19; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_272 = cluster_id_field == 4'h0 ? _GEN_184 : mat_tab_sram_id_table_20; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_273 = cluster_id_field == 4'h0 ? _GEN_185 : mat_tab_sram_id_table_21; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_274 = cluster_id_field == 4'h0 ? _GEN_186 : mat_tab_sram_id_table_22; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_275 = cluster_id_field == 4'h0 ? _GEN_187 : mat_tab_sram_id_table_23; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_276 = cluster_id_field == 4'h0 ? _GEN_188 : mat_tab_sram_id_table_24; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_277 = cluster_id_field == 4'h0 ? _GEN_189 : mat_tab_sram_id_table_25; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_278 = cluster_id_field == 4'h0 ? _GEN_190 : mat_tab_sram_id_table_26; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_279 = cluster_id_field == 4'h0 ? _GEN_191 : mat_tab_sram_id_table_27; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_280 = cluster_id_field == 4'h0 ? _GEN_192 : mat_tab_sram_id_table_28; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_281 = cluster_id_field == 4'h0 ? _GEN_193 : mat_tab_sram_id_table_29; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_282 = cluster_id_field == 4'h0 ? _GEN_194 : mat_tab_sram_id_table_30; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_283 = cluster_id_field == 4'h0 ? _GEN_195 : mat_tab_sram_id_table_31; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_284 = cluster_id_field == 4'h0 ? _GEN_196 : mat_tab_sram_id_table_32; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_285 = cluster_id_field == 4'h0 ? _GEN_197 : mat_tab_sram_id_table_33; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_286 = cluster_id_field == 4'h0 ? _GEN_198 : mat_tab_sram_id_table_34; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_287 = cluster_id_field == 4'h0 ? _GEN_199 : mat_tab_sram_id_table_35; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_288 = cluster_id_field == 4'h0 ? _GEN_200 : mat_tab_sram_id_table_36; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_289 = cluster_id_field == 4'h0 ? _GEN_201 : mat_tab_sram_id_table_37; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_290 = cluster_id_field == 4'h0 ? _GEN_202 : mat_tab_sram_id_table_38; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_291 = cluster_id_field == 4'h0 ? _GEN_203 : mat_tab_sram_id_table_39; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_292 = cluster_id_field == 4'h0 ? _GEN_204 : mat_tab_sram_id_table_40; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_293 = cluster_id_field == 4'h0 ? _GEN_205 : mat_tab_sram_id_table_41; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_294 = cluster_id_field == 4'h0 ? _GEN_206 : mat_tab_sram_id_table_42; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_295 = cluster_id_field == 4'h0 ? _GEN_207 : mat_tab_sram_id_table_43; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_296 = cluster_id_field == 4'h0 ? _GEN_208 : mat_tab_sram_id_table_44; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_297 = cluster_id_field == 4'h0 ? _GEN_209 : mat_tab_sram_id_table_45; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_298 = cluster_id_field == 4'h0 ? _GEN_210 : mat_tab_sram_id_table_46; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_299 = cluster_id_field == 4'h0 ? _GEN_211 : mat_tab_sram_id_table_47; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_300 = cluster_id_field == 4'h0 ? _GEN_212 : mat_tab_sram_id_table_48; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_301 = cluster_id_field == 4'h0 ? _GEN_213 : mat_tab_sram_id_table_49; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_302 = cluster_id_field == 4'h0 ? _GEN_214 : mat_tab_sram_id_table_50; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_303 = cluster_id_field == 4'h0 ? _GEN_215 : mat_tab_sram_id_table_51; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_304 = cluster_id_field == 4'h0 ? _GEN_216 : mat_tab_sram_id_table_52; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_305 = cluster_id_field == 4'h0 ? _GEN_217 : mat_tab_sram_id_table_53; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_306 = cluster_id_field == 4'h0 ? _GEN_218 : mat_tab_sram_id_table_54; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_307 = cluster_id_field == 4'h0 ? _GEN_219 : mat_tab_sram_id_table_55; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_308 = cluster_id_field == 4'h0 ? _GEN_220 : mat_tab_sram_id_table_56; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_309 = cluster_id_field == 4'h0 ? _GEN_221 : mat_tab_sram_id_table_57; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_310 = cluster_id_field == 4'h0 ? _GEN_222 : mat_tab_sram_id_table_58; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_311 = cluster_id_field == 4'h0 ? _GEN_223 : mat_tab_sram_id_table_59; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_312 = cluster_id_field == 4'h0 ? _GEN_224 : mat_tab_sram_id_table_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_313 = cluster_id_field == 4'h0 ? _GEN_225 : mat_tab_sram_id_table_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_314 = cluster_id_field == 4'h0 ? _GEN_226 : mat_tab_sram_id_table_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [5:0] _GEN_315 = cluster_id_field == 4'h0 ? _GEN_227 : mat_tab_sram_id_table_63; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [63:0] _GEN_316 = cluster_id_field == 4'h0 ? _GEN_228 : {{57'd0}, mat_tab_table_width}; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [63:0] _GEN_317 = cluster_id_field == 4'h0 ? _GEN_229 : {{57'd0}, mat_tab_table_depth}; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [63:0] _GEN_325 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_243; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_326 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_244; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_330 = sram_id_field == 4'h2 ? _GEN_326 : _GEN_244; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_334 = _T_5 ? io_pcie_w_data : _GEN_248; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_335 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_249; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_336 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_250; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_339 = sram_id_field == 4'h3 ? _GEN_334 : _GEN_248; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_340 = sram_id_field == 4'h3 ? _GEN_335 : _GEN_249; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_341 = sram_id_field == 4'h3 ? _GEN_336 : _GEN_250; // @[pcie_interface.scala 161:52]
  wire [5:0] _GEN_343 = 6'h0 == _T_13 ? io_pcie_w_data[5:0] : _GEN_252; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_344 = 6'h1 == _T_13 ? io_pcie_w_data[5:0] : _GEN_253; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_345 = 6'h2 == _T_13 ? io_pcie_w_data[5:0] : _GEN_254; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_346 = 6'h3 == _T_13 ? io_pcie_w_data[5:0] : _GEN_255; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_347 = 6'h4 == _T_13 ? io_pcie_w_data[5:0] : _GEN_256; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_348 = 6'h5 == _T_13 ? io_pcie_w_data[5:0] : _GEN_257; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_349 = 6'h6 == _T_13 ? io_pcie_w_data[5:0] : _GEN_258; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_350 = 6'h7 == _T_13 ? io_pcie_w_data[5:0] : _GEN_259; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_351 = 6'h8 == _T_13 ? io_pcie_w_data[5:0] : _GEN_260; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_352 = 6'h9 == _T_13 ? io_pcie_w_data[5:0] : _GEN_261; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_353 = 6'ha == _T_13 ? io_pcie_w_data[5:0] : _GEN_262; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_354 = 6'hb == _T_13 ? io_pcie_w_data[5:0] : _GEN_263; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_355 = 6'hc == _T_13 ? io_pcie_w_data[5:0] : _GEN_264; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_356 = 6'hd == _T_13 ? io_pcie_w_data[5:0] : _GEN_265; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_357 = 6'he == _T_13 ? io_pcie_w_data[5:0] : _GEN_266; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_358 = 6'hf == _T_13 ? io_pcie_w_data[5:0] : _GEN_267; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_359 = 6'h10 == _T_13 ? io_pcie_w_data[5:0] : _GEN_268; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_360 = 6'h11 == _T_13 ? io_pcie_w_data[5:0] : _GEN_269; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_361 = 6'h12 == _T_13 ? io_pcie_w_data[5:0] : _GEN_270; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_362 = 6'h13 == _T_13 ? io_pcie_w_data[5:0] : _GEN_271; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_363 = 6'h14 == _T_13 ? io_pcie_w_data[5:0] : _GEN_272; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_364 = 6'h15 == _T_13 ? io_pcie_w_data[5:0] : _GEN_273; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_365 = 6'h16 == _T_13 ? io_pcie_w_data[5:0] : _GEN_274; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_366 = 6'h17 == _T_13 ? io_pcie_w_data[5:0] : _GEN_275; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_367 = 6'h18 == _T_13 ? io_pcie_w_data[5:0] : _GEN_276; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_368 = 6'h19 == _T_13 ? io_pcie_w_data[5:0] : _GEN_277; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_369 = 6'h1a == _T_13 ? io_pcie_w_data[5:0] : _GEN_278; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_370 = 6'h1b == _T_13 ? io_pcie_w_data[5:0] : _GEN_279; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_371 = 6'h1c == _T_13 ? io_pcie_w_data[5:0] : _GEN_280; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_372 = 6'h1d == _T_13 ? io_pcie_w_data[5:0] : _GEN_281; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_373 = 6'h1e == _T_13 ? io_pcie_w_data[5:0] : _GEN_282; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_374 = 6'h1f == _T_13 ? io_pcie_w_data[5:0] : _GEN_283; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_375 = 6'h20 == _T_13 ? io_pcie_w_data[5:0] : _GEN_284; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_376 = 6'h21 == _T_13 ? io_pcie_w_data[5:0] : _GEN_285; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_377 = 6'h22 == _T_13 ? io_pcie_w_data[5:0] : _GEN_286; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_378 = 6'h23 == _T_13 ? io_pcie_w_data[5:0] : _GEN_287; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_379 = 6'h24 == _T_13 ? io_pcie_w_data[5:0] : _GEN_288; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_380 = 6'h25 == _T_13 ? io_pcie_w_data[5:0] : _GEN_289; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_381 = 6'h26 == _T_13 ? io_pcie_w_data[5:0] : _GEN_290; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_382 = 6'h27 == _T_13 ? io_pcie_w_data[5:0] : _GEN_291; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_383 = 6'h28 == _T_13 ? io_pcie_w_data[5:0] : _GEN_292; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_384 = 6'h29 == _T_13 ? io_pcie_w_data[5:0] : _GEN_293; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_385 = 6'h2a == _T_13 ? io_pcie_w_data[5:0] : _GEN_294; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_386 = 6'h2b == _T_13 ? io_pcie_w_data[5:0] : _GEN_295; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_387 = 6'h2c == _T_13 ? io_pcie_w_data[5:0] : _GEN_296; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_388 = 6'h2d == _T_13 ? io_pcie_w_data[5:0] : _GEN_297; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_389 = 6'h2e == _T_13 ? io_pcie_w_data[5:0] : _GEN_298; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_390 = 6'h2f == _T_13 ? io_pcie_w_data[5:0] : _GEN_299; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_391 = 6'h30 == _T_13 ? io_pcie_w_data[5:0] : _GEN_300; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_392 = 6'h31 == _T_13 ? io_pcie_w_data[5:0] : _GEN_301; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_393 = 6'h32 == _T_13 ? io_pcie_w_data[5:0] : _GEN_302; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_394 = 6'h33 == _T_13 ? io_pcie_w_data[5:0] : _GEN_303; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_395 = 6'h34 == _T_13 ? io_pcie_w_data[5:0] : _GEN_304; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_396 = 6'h35 == _T_13 ? io_pcie_w_data[5:0] : _GEN_305; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_397 = 6'h36 == _T_13 ? io_pcie_w_data[5:0] : _GEN_306; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_398 = 6'h37 == _T_13 ? io_pcie_w_data[5:0] : _GEN_307; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_399 = 6'h38 == _T_13 ? io_pcie_w_data[5:0] : _GEN_308; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_400 = 6'h39 == _T_13 ? io_pcie_w_data[5:0] : _GEN_309; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_401 = 6'h3a == _T_13 ? io_pcie_w_data[5:0] : _GEN_310; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_402 = 6'h3b == _T_13 ? io_pcie_w_data[5:0] : _GEN_311; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_403 = 6'h3c == _T_13 ? io_pcie_w_data[5:0] : _GEN_312; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_404 = 6'h3d == _T_13 ? io_pcie_w_data[5:0] : _GEN_313; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_405 = 6'h3e == _T_13 ? io_pcie_w_data[5:0] : _GEN_314; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_406 = 6'h3f == _T_13 ? io_pcie_w_data[5:0] : _GEN_315; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_407 = sram_id_field == 4'h4 ? _GEN_343 : _GEN_252; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_408 = sram_id_field == 4'h4 ? _GEN_344 : _GEN_253; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_409 = sram_id_field == 4'h4 ? _GEN_345 : _GEN_254; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_410 = sram_id_field == 4'h4 ? _GEN_346 : _GEN_255; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_411 = sram_id_field == 4'h4 ? _GEN_347 : _GEN_256; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_412 = sram_id_field == 4'h4 ? _GEN_348 : _GEN_257; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_413 = sram_id_field == 4'h4 ? _GEN_349 : _GEN_258; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_414 = sram_id_field == 4'h4 ? _GEN_350 : _GEN_259; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_415 = sram_id_field == 4'h4 ? _GEN_351 : _GEN_260; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_416 = sram_id_field == 4'h4 ? _GEN_352 : _GEN_261; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_417 = sram_id_field == 4'h4 ? _GEN_353 : _GEN_262; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_418 = sram_id_field == 4'h4 ? _GEN_354 : _GEN_263; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_419 = sram_id_field == 4'h4 ? _GEN_355 : _GEN_264; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_420 = sram_id_field == 4'h4 ? _GEN_356 : _GEN_265; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_421 = sram_id_field == 4'h4 ? _GEN_357 : _GEN_266; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_422 = sram_id_field == 4'h4 ? _GEN_358 : _GEN_267; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_423 = sram_id_field == 4'h4 ? _GEN_359 : _GEN_268; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_424 = sram_id_field == 4'h4 ? _GEN_360 : _GEN_269; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_425 = sram_id_field == 4'h4 ? _GEN_361 : _GEN_270; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_426 = sram_id_field == 4'h4 ? _GEN_362 : _GEN_271; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_427 = sram_id_field == 4'h4 ? _GEN_363 : _GEN_272; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_428 = sram_id_field == 4'h4 ? _GEN_364 : _GEN_273; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_429 = sram_id_field == 4'h4 ? _GEN_365 : _GEN_274; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_430 = sram_id_field == 4'h4 ? _GEN_366 : _GEN_275; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_431 = sram_id_field == 4'h4 ? _GEN_367 : _GEN_276; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_432 = sram_id_field == 4'h4 ? _GEN_368 : _GEN_277; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_433 = sram_id_field == 4'h4 ? _GEN_369 : _GEN_278; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_434 = sram_id_field == 4'h4 ? _GEN_370 : _GEN_279; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_435 = sram_id_field == 4'h4 ? _GEN_371 : _GEN_280; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_436 = sram_id_field == 4'h4 ? _GEN_372 : _GEN_281; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_437 = sram_id_field == 4'h4 ? _GEN_373 : _GEN_282; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_438 = sram_id_field == 4'h4 ? _GEN_374 : _GEN_283; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_439 = sram_id_field == 4'h4 ? _GEN_375 : _GEN_284; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_440 = sram_id_field == 4'h4 ? _GEN_376 : _GEN_285; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_441 = sram_id_field == 4'h4 ? _GEN_377 : _GEN_286; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_442 = sram_id_field == 4'h4 ? _GEN_378 : _GEN_287; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_443 = sram_id_field == 4'h4 ? _GEN_379 : _GEN_288; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_444 = sram_id_field == 4'h4 ? _GEN_380 : _GEN_289; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_445 = sram_id_field == 4'h4 ? _GEN_381 : _GEN_290; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_446 = sram_id_field == 4'h4 ? _GEN_382 : _GEN_291; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_447 = sram_id_field == 4'h4 ? _GEN_383 : _GEN_292; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_448 = sram_id_field == 4'h4 ? _GEN_384 : _GEN_293; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_449 = sram_id_field == 4'h4 ? _GEN_385 : _GEN_294; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_450 = sram_id_field == 4'h4 ? _GEN_386 : _GEN_295; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_451 = sram_id_field == 4'h4 ? _GEN_387 : _GEN_296; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_452 = sram_id_field == 4'h4 ? _GEN_388 : _GEN_297; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_453 = sram_id_field == 4'h4 ? _GEN_389 : _GEN_298; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_454 = sram_id_field == 4'h4 ? _GEN_390 : _GEN_299; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_455 = sram_id_field == 4'h4 ? _GEN_391 : _GEN_300; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_456 = sram_id_field == 4'h4 ? _GEN_392 : _GEN_301; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_457 = sram_id_field == 4'h4 ? _GEN_393 : _GEN_302; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_458 = sram_id_field == 4'h4 ? _GEN_394 : _GEN_303; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_459 = sram_id_field == 4'h4 ? _GEN_395 : _GEN_304; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_460 = sram_id_field == 4'h4 ? _GEN_396 : _GEN_305; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_461 = sram_id_field == 4'h4 ? _GEN_397 : _GEN_306; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_462 = sram_id_field == 4'h4 ? _GEN_398 : _GEN_307; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_463 = sram_id_field == 4'h4 ? _GEN_399 : _GEN_308; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_464 = sram_id_field == 4'h4 ? _GEN_400 : _GEN_309; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_465 = sram_id_field == 4'h4 ? _GEN_401 : _GEN_310; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_466 = sram_id_field == 4'h4 ? _GEN_402 : _GEN_311; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_467 = sram_id_field == 4'h4 ? _GEN_403 : _GEN_312; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_468 = sram_id_field == 4'h4 ? _GEN_404 : _GEN_313; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_469 = sram_id_field == 4'h4 ? _GEN_405 : _GEN_314; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_470 = sram_id_field == 4'h4 ? _GEN_406 : _GEN_315; // @[pcie_interface.scala 176:52]
  wire [63:0] _GEN_471 = _T_5 ? io_pcie_w_data : _GEN_316; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_472 = _T_9 ? io_pcie_w_data : _GEN_317; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_474 = sram_id_field == 4'h5 ? _GEN_471 : _GEN_316; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_475 = sram_id_field == 4'h5 ? _GEN_472 : _GEN_317; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_478 = type_field == 4'h3 ? _GEN_325 : _GEN_243; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_479 = type_field == 4'h3 ? _GEN_330 : _GEN_244; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_484 = type_field == 4'h3 ? _GEN_339 : _GEN_248; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_485 = type_field == 4'h3 ? _GEN_340 : _GEN_249; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_486 = type_field == 4'h3 ? _GEN_341 : _GEN_250; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_488 = type_field == 4'h3 ? _GEN_407 : _GEN_252; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_489 = type_field == 4'h3 ? _GEN_408 : _GEN_253; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_490 = type_field == 4'h3 ? _GEN_409 : _GEN_254; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_491 = type_field == 4'h3 ? _GEN_410 : _GEN_255; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_492 = type_field == 4'h3 ? _GEN_411 : _GEN_256; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_493 = type_field == 4'h3 ? _GEN_412 : _GEN_257; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_494 = type_field == 4'h3 ? _GEN_413 : _GEN_258; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_495 = type_field == 4'h3 ? _GEN_414 : _GEN_259; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_496 = type_field == 4'h3 ? _GEN_415 : _GEN_260; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_497 = type_field == 4'h3 ? _GEN_416 : _GEN_261; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_498 = type_field == 4'h3 ? _GEN_417 : _GEN_262; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_499 = type_field == 4'h3 ? _GEN_418 : _GEN_263; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_500 = type_field == 4'h3 ? _GEN_419 : _GEN_264; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_501 = type_field == 4'h3 ? _GEN_420 : _GEN_265; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_502 = type_field == 4'h3 ? _GEN_421 : _GEN_266; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_503 = type_field == 4'h3 ? _GEN_422 : _GEN_267; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_504 = type_field == 4'h3 ? _GEN_423 : _GEN_268; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_505 = type_field == 4'h3 ? _GEN_424 : _GEN_269; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_506 = type_field == 4'h3 ? _GEN_425 : _GEN_270; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_507 = type_field == 4'h3 ? _GEN_426 : _GEN_271; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_508 = type_field == 4'h3 ? _GEN_427 : _GEN_272; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_509 = type_field == 4'h3 ? _GEN_428 : _GEN_273; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_510 = type_field == 4'h3 ? _GEN_429 : _GEN_274; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_511 = type_field == 4'h3 ? _GEN_430 : _GEN_275; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_512 = type_field == 4'h3 ? _GEN_431 : _GEN_276; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_513 = type_field == 4'h3 ? _GEN_432 : _GEN_277; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_514 = type_field == 4'h3 ? _GEN_433 : _GEN_278; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_515 = type_field == 4'h3 ? _GEN_434 : _GEN_279; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_516 = type_field == 4'h3 ? _GEN_435 : _GEN_280; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_517 = type_field == 4'h3 ? _GEN_436 : _GEN_281; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_518 = type_field == 4'h3 ? _GEN_437 : _GEN_282; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_519 = type_field == 4'h3 ? _GEN_438 : _GEN_283; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_520 = type_field == 4'h3 ? _GEN_439 : _GEN_284; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_521 = type_field == 4'h3 ? _GEN_440 : _GEN_285; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_522 = type_field == 4'h3 ? _GEN_441 : _GEN_286; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_523 = type_field == 4'h3 ? _GEN_442 : _GEN_287; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_524 = type_field == 4'h3 ? _GEN_443 : _GEN_288; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_525 = type_field == 4'h3 ? _GEN_444 : _GEN_289; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_526 = type_field == 4'h3 ? _GEN_445 : _GEN_290; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_527 = type_field == 4'h3 ? _GEN_446 : _GEN_291; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_528 = type_field == 4'h3 ? _GEN_447 : _GEN_292; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_529 = type_field == 4'h3 ? _GEN_448 : _GEN_293; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_530 = type_field == 4'h3 ? _GEN_449 : _GEN_294; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_531 = type_field == 4'h3 ? _GEN_450 : _GEN_295; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_532 = type_field == 4'h3 ? _GEN_451 : _GEN_296; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_533 = type_field == 4'h3 ? _GEN_452 : _GEN_297; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_534 = type_field == 4'h3 ? _GEN_453 : _GEN_298; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_535 = type_field == 4'h3 ? _GEN_454 : _GEN_299; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_536 = type_field == 4'h3 ? _GEN_455 : _GEN_300; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_537 = type_field == 4'h3 ? _GEN_456 : _GEN_301; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_538 = type_field == 4'h3 ? _GEN_457 : _GEN_302; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_539 = type_field == 4'h3 ? _GEN_458 : _GEN_303; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_540 = type_field == 4'h3 ? _GEN_459 : _GEN_304; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_541 = type_field == 4'h3 ? _GEN_460 : _GEN_305; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_542 = type_field == 4'h3 ? _GEN_461 : _GEN_306; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_543 = type_field == 4'h3 ? _GEN_462 : _GEN_307; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_544 = type_field == 4'h3 ? _GEN_463 : _GEN_308; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_545 = type_field == 4'h3 ? _GEN_464 : _GEN_309; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_546 = type_field == 4'h3 ? _GEN_465 : _GEN_310; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_547 = type_field == 4'h3 ? _GEN_466 : _GEN_311; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_548 = type_field == 4'h3 ? _GEN_467 : _GEN_312; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_549 = type_field == 4'h3 ? _GEN_468 : _GEN_313; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_550 = type_field == 4'h3 ? _GEN_469 : _GEN_314; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_551 = type_field == 4'h3 ? _GEN_470 : _GEN_315; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_552 = type_field == 4'h3 ? _GEN_474 : _GEN_316; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_553 = type_field == 4'h3 ? _GEN_475 : _GEN_317; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_566 = cluster_id_field == 4'h1 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_567 = cluster_id_field == 4'h1 ? _GEN_478 : _GEN_243; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_568 = cluster_id_field == 4'h1 ? _GEN_479 : _GEN_244; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_571 = cluster_id_field == 4'h1 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_572 = cluster_id_field == 4'h1 ? _GEN_484 : _GEN_248; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_573 = cluster_id_field == 4'h1 ? _GEN_485 : _GEN_249; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_574 = cluster_id_field == 4'h1 ? _GEN_486 : _GEN_250; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_576 = cluster_id_field == 4'h1 ? _GEN_488 : _GEN_252; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_577 = cluster_id_field == 4'h1 ? _GEN_489 : _GEN_253; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_578 = cluster_id_field == 4'h1 ? _GEN_490 : _GEN_254; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_579 = cluster_id_field == 4'h1 ? _GEN_491 : _GEN_255; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_580 = cluster_id_field == 4'h1 ? _GEN_492 : _GEN_256; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_581 = cluster_id_field == 4'h1 ? _GEN_493 : _GEN_257; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_582 = cluster_id_field == 4'h1 ? _GEN_494 : _GEN_258; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_583 = cluster_id_field == 4'h1 ? _GEN_495 : _GEN_259; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_584 = cluster_id_field == 4'h1 ? _GEN_496 : _GEN_260; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_585 = cluster_id_field == 4'h1 ? _GEN_497 : _GEN_261; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_586 = cluster_id_field == 4'h1 ? _GEN_498 : _GEN_262; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_587 = cluster_id_field == 4'h1 ? _GEN_499 : _GEN_263; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_588 = cluster_id_field == 4'h1 ? _GEN_500 : _GEN_264; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_589 = cluster_id_field == 4'h1 ? _GEN_501 : _GEN_265; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_590 = cluster_id_field == 4'h1 ? _GEN_502 : _GEN_266; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_591 = cluster_id_field == 4'h1 ? _GEN_503 : _GEN_267; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_592 = cluster_id_field == 4'h1 ? _GEN_504 : _GEN_268; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_593 = cluster_id_field == 4'h1 ? _GEN_505 : _GEN_269; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_594 = cluster_id_field == 4'h1 ? _GEN_506 : _GEN_270; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_595 = cluster_id_field == 4'h1 ? _GEN_507 : _GEN_271; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_596 = cluster_id_field == 4'h1 ? _GEN_508 : _GEN_272; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_597 = cluster_id_field == 4'h1 ? _GEN_509 : _GEN_273; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_598 = cluster_id_field == 4'h1 ? _GEN_510 : _GEN_274; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_599 = cluster_id_field == 4'h1 ? _GEN_511 : _GEN_275; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_600 = cluster_id_field == 4'h1 ? _GEN_512 : _GEN_276; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_601 = cluster_id_field == 4'h1 ? _GEN_513 : _GEN_277; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_602 = cluster_id_field == 4'h1 ? _GEN_514 : _GEN_278; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_603 = cluster_id_field == 4'h1 ? _GEN_515 : _GEN_279; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_604 = cluster_id_field == 4'h1 ? _GEN_516 : _GEN_280; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_605 = cluster_id_field == 4'h1 ? _GEN_517 : _GEN_281; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_606 = cluster_id_field == 4'h1 ? _GEN_518 : _GEN_282; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_607 = cluster_id_field == 4'h1 ? _GEN_519 : _GEN_283; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_608 = cluster_id_field == 4'h1 ? _GEN_520 : _GEN_284; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_609 = cluster_id_field == 4'h1 ? _GEN_521 : _GEN_285; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_610 = cluster_id_field == 4'h1 ? _GEN_522 : _GEN_286; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_611 = cluster_id_field == 4'h1 ? _GEN_523 : _GEN_287; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_612 = cluster_id_field == 4'h1 ? _GEN_524 : _GEN_288; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_613 = cluster_id_field == 4'h1 ? _GEN_525 : _GEN_289; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_614 = cluster_id_field == 4'h1 ? _GEN_526 : _GEN_290; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_615 = cluster_id_field == 4'h1 ? _GEN_527 : _GEN_291; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_616 = cluster_id_field == 4'h1 ? _GEN_528 : _GEN_292; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_617 = cluster_id_field == 4'h1 ? _GEN_529 : _GEN_293; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_618 = cluster_id_field == 4'h1 ? _GEN_530 : _GEN_294; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_619 = cluster_id_field == 4'h1 ? _GEN_531 : _GEN_295; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_620 = cluster_id_field == 4'h1 ? _GEN_532 : _GEN_296; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_621 = cluster_id_field == 4'h1 ? _GEN_533 : _GEN_297; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_622 = cluster_id_field == 4'h1 ? _GEN_534 : _GEN_298; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_623 = cluster_id_field == 4'h1 ? _GEN_535 : _GEN_299; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_624 = cluster_id_field == 4'h1 ? _GEN_536 : _GEN_300; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_625 = cluster_id_field == 4'h1 ? _GEN_537 : _GEN_301; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_626 = cluster_id_field == 4'h1 ? _GEN_538 : _GEN_302; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_627 = cluster_id_field == 4'h1 ? _GEN_539 : _GEN_303; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_628 = cluster_id_field == 4'h1 ? _GEN_540 : _GEN_304; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_629 = cluster_id_field == 4'h1 ? _GEN_541 : _GEN_305; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_630 = cluster_id_field == 4'h1 ? _GEN_542 : _GEN_306; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_631 = cluster_id_field == 4'h1 ? _GEN_543 : _GEN_307; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_632 = cluster_id_field == 4'h1 ? _GEN_544 : _GEN_308; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_633 = cluster_id_field == 4'h1 ? _GEN_545 : _GEN_309; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_634 = cluster_id_field == 4'h1 ? _GEN_546 : _GEN_310; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_635 = cluster_id_field == 4'h1 ? _GEN_547 : _GEN_311; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_636 = cluster_id_field == 4'h1 ? _GEN_548 : _GEN_312; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_637 = cluster_id_field == 4'h1 ? _GEN_549 : _GEN_313; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_638 = cluster_id_field == 4'h1 ? _GEN_550 : _GEN_314; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_639 = cluster_id_field == 4'h1 ? _GEN_551 : _GEN_315; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_640 = cluster_id_field == 4'h1 ? _GEN_552 : _GEN_316; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_641 = cluster_id_field == 4'h1 ? _GEN_553 : _GEN_317; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_649 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_567; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_650 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_568; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_654 = sram_id_field == 4'h2 ? _GEN_650 : _GEN_568; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_658 = _T_5 ? io_pcie_w_data : _GEN_572; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_659 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_573; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_660 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_574; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_663 = sram_id_field == 4'h3 ? _GEN_658 : _GEN_572; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_664 = sram_id_field == 4'h3 ? _GEN_659 : _GEN_573; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_665 = sram_id_field == 4'h3 ? _GEN_660 : _GEN_574; // @[pcie_interface.scala 161:52]
  wire [5:0] _GEN_667 = 6'h0 == _T_13 ? io_pcie_w_data[5:0] : _GEN_576; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_668 = 6'h1 == _T_13 ? io_pcie_w_data[5:0] : _GEN_577; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_669 = 6'h2 == _T_13 ? io_pcie_w_data[5:0] : _GEN_578; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_670 = 6'h3 == _T_13 ? io_pcie_w_data[5:0] : _GEN_579; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_671 = 6'h4 == _T_13 ? io_pcie_w_data[5:0] : _GEN_580; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_672 = 6'h5 == _T_13 ? io_pcie_w_data[5:0] : _GEN_581; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_673 = 6'h6 == _T_13 ? io_pcie_w_data[5:0] : _GEN_582; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_674 = 6'h7 == _T_13 ? io_pcie_w_data[5:0] : _GEN_583; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_675 = 6'h8 == _T_13 ? io_pcie_w_data[5:0] : _GEN_584; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_676 = 6'h9 == _T_13 ? io_pcie_w_data[5:0] : _GEN_585; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_677 = 6'ha == _T_13 ? io_pcie_w_data[5:0] : _GEN_586; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_678 = 6'hb == _T_13 ? io_pcie_w_data[5:0] : _GEN_587; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_679 = 6'hc == _T_13 ? io_pcie_w_data[5:0] : _GEN_588; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_680 = 6'hd == _T_13 ? io_pcie_w_data[5:0] : _GEN_589; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_681 = 6'he == _T_13 ? io_pcie_w_data[5:0] : _GEN_590; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_682 = 6'hf == _T_13 ? io_pcie_w_data[5:0] : _GEN_591; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_683 = 6'h10 == _T_13 ? io_pcie_w_data[5:0] : _GEN_592; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_684 = 6'h11 == _T_13 ? io_pcie_w_data[5:0] : _GEN_593; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_685 = 6'h12 == _T_13 ? io_pcie_w_data[5:0] : _GEN_594; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_686 = 6'h13 == _T_13 ? io_pcie_w_data[5:0] : _GEN_595; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_687 = 6'h14 == _T_13 ? io_pcie_w_data[5:0] : _GEN_596; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_688 = 6'h15 == _T_13 ? io_pcie_w_data[5:0] : _GEN_597; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_689 = 6'h16 == _T_13 ? io_pcie_w_data[5:0] : _GEN_598; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_690 = 6'h17 == _T_13 ? io_pcie_w_data[5:0] : _GEN_599; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_691 = 6'h18 == _T_13 ? io_pcie_w_data[5:0] : _GEN_600; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_692 = 6'h19 == _T_13 ? io_pcie_w_data[5:0] : _GEN_601; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_693 = 6'h1a == _T_13 ? io_pcie_w_data[5:0] : _GEN_602; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_694 = 6'h1b == _T_13 ? io_pcie_w_data[5:0] : _GEN_603; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_695 = 6'h1c == _T_13 ? io_pcie_w_data[5:0] : _GEN_604; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_696 = 6'h1d == _T_13 ? io_pcie_w_data[5:0] : _GEN_605; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_697 = 6'h1e == _T_13 ? io_pcie_w_data[5:0] : _GEN_606; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_698 = 6'h1f == _T_13 ? io_pcie_w_data[5:0] : _GEN_607; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_699 = 6'h20 == _T_13 ? io_pcie_w_data[5:0] : _GEN_608; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_700 = 6'h21 == _T_13 ? io_pcie_w_data[5:0] : _GEN_609; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_701 = 6'h22 == _T_13 ? io_pcie_w_data[5:0] : _GEN_610; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_702 = 6'h23 == _T_13 ? io_pcie_w_data[5:0] : _GEN_611; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_703 = 6'h24 == _T_13 ? io_pcie_w_data[5:0] : _GEN_612; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_704 = 6'h25 == _T_13 ? io_pcie_w_data[5:0] : _GEN_613; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_705 = 6'h26 == _T_13 ? io_pcie_w_data[5:0] : _GEN_614; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_706 = 6'h27 == _T_13 ? io_pcie_w_data[5:0] : _GEN_615; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_707 = 6'h28 == _T_13 ? io_pcie_w_data[5:0] : _GEN_616; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_708 = 6'h29 == _T_13 ? io_pcie_w_data[5:0] : _GEN_617; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_709 = 6'h2a == _T_13 ? io_pcie_w_data[5:0] : _GEN_618; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_710 = 6'h2b == _T_13 ? io_pcie_w_data[5:0] : _GEN_619; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_711 = 6'h2c == _T_13 ? io_pcie_w_data[5:0] : _GEN_620; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_712 = 6'h2d == _T_13 ? io_pcie_w_data[5:0] : _GEN_621; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_713 = 6'h2e == _T_13 ? io_pcie_w_data[5:0] : _GEN_622; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_714 = 6'h2f == _T_13 ? io_pcie_w_data[5:0] : _GEN_623; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_715 = 6'h30 == _T_13 ? io_pcie_w_data[5:0] : _GEN_624; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_716 = 6'h31 == _T_13 ? io_pcie_w_data[5:0] : _GEN_625; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_717 = 6'h32 == _T_13 ? io_pcie_w_data[5:0] : _GEN_626; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_718 = 6'h33 == _T_13 ? io_pcie_w_data[5:0] : _GEN_627; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_719 = 6'h34 == _T_13 ? io_pcie_w_data[5:0] : _GEN_628; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_720 = 6'h35 == _T_13 ? io_pcie_w_data[5:0] : _GEN_629; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_721 = 6'h36 == _T_13 ? io_pcie_w_data[5:0] : _GEN_630; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_722 = 6'h37 == _T_13 ? io_pcie_w_data[5:0] : _GEN_631; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_723 = 6'h38 == _T_13 ? io_pcie_w_data[5:0] : _GEN_632; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_724 = 6'h39 == _T_13 ? io_pcie_w_data[5:0] : _GEN_633; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_725 = 6'h3a == _T_13 ? io_pcie_w_data[5:0] : _GEN_634; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_726 = 6'h3b == _T_13 ? io_pcie_w_data[5:0] : _GEN_635; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_727 = 6'h3c == _T_13 ? io_pcie_w_data[5:0] : _GEN_636; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_728 = 6'h3d == _T_13 ? io_pcie_w_data[5:0] : _GEN_637; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_729 = 6'h3e == _T_13 ? io_pcie_w_data[5:0] : _GEN_638; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_730 = 6'h3f == _T_13 ? io_pcie_w_data[5:0] : _GEN_639; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_731 = sram_id_field == 4'h4 ? _GEN_667 : _GEN_576; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_732 = sram_id_field == 4'h4 ? _GEN_668 : _GEN_577; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_733 = sram_id_field == 4'h4 ? _GEN_669 : _GEN_578; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_734 = sram_id_field == 4'h4 ? _GEN_670 : _GEN_579; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_735 = sram_id_field == 4'h4 ? _GEN_671 : _GEN_580; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_736 = sram_id_field == 4'h4 ? _GEN_672 : _GEN_581; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_737 = sram_id_field == 4'h4 ? _GEN_673 : _GEN_582; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_738 = sram_id_field == 4'h4 ? _GEN_674 : _GEN_583; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_739 = sram_id_field == 4'h4 ? _GEN_675 : _GEN_584; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_740 = sram_id_field == 4'h4 ? _GEN_676 : _GEN_585; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_741 = sram_id_field == 4'h4 ? _GEN_677 : _GEN_586; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_742 = sram_id_field == 4'h4 ? _GEN_678 : _GEN_587; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_743 = sram_id_field == 4'h4 ? _GEN_679 : _GEN_588; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_744 = sram_id_field == 4'h4 ? _GEN_680 : _GEN_589; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_745 = sram_id_field == 4'h4 ? _GEN_681 : _GEN_590; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_746 = sram_id_field == 4'h4 ? _GEN_682 : _GEN_591; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_747 = sram_id_field == 4'h4 ? _GEN_683 : _GEN_592; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_748 = sram_id_field == 4'h4 ? _GEN_684 : _GEN_593; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_749 = sram_id_field == 4'h4 ? _GEN_685 : _GEN_594; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_750 = sram_id_field == 4'h4 ? _GEN_686 : _GEN_595; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_751 = sram_id_field == 4'h4 ? _GEN_687 : _GEN_596; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_752 = sram_id_field == 4'h4 ? _GEN_688 : _GEN_597; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_753 = sram_id_field == 4'h4 ? _GEN_689 : _GEN_598; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_754 = sram_id_field == 4'h4 ? _GEN_690 : _GEN_599; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_755 = sram_id_field == 4'h4 ? _GEN_691 : _GEN_600; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_756 = sram_id_field == 4'h4 ? _GEN_692 : _GEN_601; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_757 = sram_id_field == 4'h4 ? _GEN_693 : _GEN_602; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_758 = sram_id_field == 4'h4 ? _GEN_694 : _GEN_603; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_759 = sram_id_field == 4'h4 ? _GEN_695 : _GEN_604; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_760 = sram_id_field == 4'h4 ? _GEN_696 : _GEN_605; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_761 = sram_id_field == 4'h4 ? _GEN_697 : _GEN_606; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_762 = sram_id_field == 4'h4 ? _GEN_698 : _GEN_607; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_763 = sram_id_field == 4'h4 ? _GEN_699 : _GEN_608; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_764 = sram_id_field == 4'h4 ? _GEN_700 : _GEN_609; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_765 = sram_id_field == 4'h4 ? _GEN_701 : _GEN_610; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_766 = sram_id_field == 4'h4 ? _GEN_702 : _GEN_611; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_767 = sram_id_field == 4'h4 ? _GEN_703 : _GEN_612; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_768 = sram_id_field == 4'h4 ? _GEN_704 : _GEN_613; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_769 = sram_id_field == 4'h4 ? _GEN_705 : _GEN_614; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_770 = sram_id_field == 4'h4 ? _GEN_706 : _GEN_615; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_771 = sram_id_field == 4'h4 ? _GEN_707 : _GEN_616; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_772 = sram_id_field == 4'h4 ? _GEN_708 : _GEN_617; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_773 = sram_id_field == 4'h4 ? _GEN_709 : _GEN_618; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_774 = sram_id_field == 4'h4 ? _GEN_710 : _GEN_619; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_775 = sram_id_field == 4'h4 ? _GEN_711 : _GEN_620; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_776 = sram_id_field == 4'h4 ? _GEN_712 : _GEN_621; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_777 = sram_id_field == 4'h4 ? _GEN_713 : _GEN_622; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_778 = sram_id_field == 4'h4 ? _GEN_714 : _GEN_623; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_779 = sram_id_field == 4'h4 ? _GEN_715 : _GEN_624; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_780 = sram_id_field == 4'h4 ? _GEN_716 : _GEN_625; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_781 = sram_id_field == 4'h4 ? _GEN_717 : _GEN_626; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_782 = sram_id_field == 4'h4 ? _GEN_718 : _GEN_627; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_783 = sram_id_field == 4'h4 ? _GEN_719 : _GEN_628; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_784 = sram_id_field == 4'h4 ? _GEN_720 : _GEN_629; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_785 = sram_id_field == 4'h4 ? _GEN_721 : _GEN_630; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_786 = sram_id_field == 4'h4 ? _GEN_722 : _GEN_631; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_787 = sram_id_field == 4'h4 ? _GEN_723 : _GEN_632; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_788 = sram_id_field == 4'h4 ? _GEN_724 : _GEN_633; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_789 = sram_id_field == 4'h4 ? _GEN_725 : _GEN_634; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_790 = sram_id_field == 4'h4 ? _GEN_726 : _GEN_635; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_791 = sram_id_field == 4'h4 ? _GEN_727 : _GEN_636; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_792 = sram_id_field == 4'h4 ? _GEN_728 : _GEN_637; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_793 = sram_id_field == 4'h4 ? _GEN_729 : _GEN_638; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_794 = sram_id_field == 4'h4 ? _GEN_730 : _GEN_639; // @[pcie_interface.scala 176:52]
  wire [63:0] _GEN_795 = _T_5 ? io_pcie_w_data : _GEN_640; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_796 = _T_9 ? io_pcie_w_data : _GEN_641; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_798 = sram_id_field == 4'h5 ? _GEN_795 : _GEN_640; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_799 = sram_id_field == 4'h5 ? _GEN_796 : _GEN_641; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_802 = type_field == 4'h3 ? _GEN_649 : _GEN_567; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_803 = type_field == 4'h3 ? _GEN_654 : _GEN_568; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_808 = type_field == 4'h3 ? _GEN_663 : _GEN_572; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_809 = type_field == 4'h3 ? _GEN_664 : _GEN_573; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_810 = type_field == 4'h3 ? _GEN_665 : _GEN_574; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_812 = type_field == 4'h3 ? _GEN_731 : _GEN_576; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_813 = type_field == 4'h3 ? _GEN_732 : _GEN_577; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_814 = type_field == 4'h3 ? _GEN_733 : _GEN_578; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_815 = type_field == 4'h3 ? _GEN_734 : _GEN_579; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_816 = type_field == 4'h3 ? _GEN_735 : _GEN_580; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_817 = type_field == 4'h3 ? _GEN_736 : _GEN_581; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_818 = type_field == 4'h3 ? _GEN_737 : _GEN_582; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_819 = type_field == 4'h3 ? _GEN_738 : _GEN_583; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_820 = type_field == 4'h3 ? _GEN_739 : _GEN_584; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_821 = type_field == 4'h3 ? _GEN_740 : _GEN_585; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_822 = type_field == 4'h3 ? _GEN_741 : _GEN_586; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_823 = type_field == 4'h3 ? _GEN_742 : _GEN_587; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_824 = type_field == 4'h3 ? _GEN_743 : _GEN_588; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_825 = type_field == 4'h3 ? _GEN_744 : _GEN_589; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_826 = type_field == 4'h3 ? _GEN_745 : _GEN_590; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_827 = type_field == 4'h3 ? _GEN_746 : _GEN_591; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_828 = type_field == 4'h3 ? _GEN_747 : _GEN_592; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_829 = type_field == 4'h3 ? _GEN_748 : _GEN_593; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_830 = type_field == 4'h3 ? _GEN_749 : _GEN_594; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_831 = type_field == 4'h3 ? _GEN_750 : _GEN_595; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_832 = type_field == 4'h3 ? _GEN_751 : _GEN_596; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_833 = type_field == 4'h3 ? _GEN_752 : _GEN_597; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_834 = type_field == 4'h3 ? _GEN_753 : _GEN_598; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_835 = type_field == 4'h3 ? _GEN_754 : _GEN_599; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_836 = type_field == 4'h3 ? _GEN_755 : _GEN_600; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_837 = type_field == 4'h3 ? _GEN_756 : _GEN_601; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_838 = type_field == 4'h3 ? _GEN_757 : _GEN_602; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_839 = type_field == 4'h3 ? _GEN_758 : _GEN_603; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_840 = type_field == 4'h3 ? _GEN_759 : _GEN_604; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_841 = type_field == 4'h3 ? _GEN_760 : _GEN_605; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_842 = type_field == 4'h3 ? _GEN_761 : _GEN_606; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_843 = type_field == 4'h3 ? _GEN_762 : _GEN_607; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_844 = type_field == 4'h3 ? _GEN_763 : _GEN_608; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_845 = type_field == 4'h3 ? _GEN_764 : _GEN_609; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_846 = type_field == 4'h3 ? _GEN_765 : _GEN_610; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_847 = type_field == 4'h3 ? _GEN_766 : _GEN_611; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_848 = type_field == 4'h3 ? _GEN_767 : _GEN_612; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_849 = type_field == 4'h3 ? _GEN_768 : _GEN_613; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_850 = type_field == 4'h3 ? _GEN_769 : _GEN_614; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_851 = type_field == 4'h3 ? _GEN_770 : _GEN_615; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_852 = type_field == 4'h3 ? _GEN_771 : _GEN_616; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_853 = type_field == 4'h3 ? _GEN_772 : _GEN_617; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_854 = type_field == 4'h3 ? _GEN_773 : _GEN_618; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_855 = type_field == 4'h3 ? _GEN_774 : _GEN_619; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_856 = type_field == 4'h3 ? _GEN_775 : _GEN_620; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_857 = type_field == 4'h3 ? _GEN_776 : _GEN_621; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_858 = type_field == 4'h3 ? _GEN_777 : _GEN_622; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_859 = type_field == 4'h3 ? _GEN_778 : _GEN_623; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_860 = type_field == 4'h3 ? _GEN_779 : _GEN_624; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_861 = type_field == 4'h3 ? _GEN_780 : _GEN_625; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_862 = type_field == 4'h3 ? _GEN_781 : _GEN_626; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_863 = type_field == 4'h3 ? _GEN_782 : _GEN_627; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_864 = type_field == 4'h3 ? _GEN_783 : _GEN_628; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_865 = type_field == 4'h3 ? _GEN_784 : _GEN_629; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_866 = type_field == 4'h3 ? _GEN_785 : _GEN_630; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_867 = type_field == 4'h3 ? _GEN_786 : _GEN_631; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_868 = type_field == 4'h3 ? _GEN_787 : _GEN_632; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_869 = type_field == 4'h3 ? _GEN_788 : _GEN_633; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_870 = type_field == 4'h3 ? _GEN_789 : _GEN_634; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_871 = type_field == 4'h3 ? _GEN_790 : _GEN_635; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_872 = type_field == 4'h3 ? _GEN_791 : _GEN_636; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_873 = type_field == 4'h3 ? _GEN_792 : _GEN_637; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_874 = type_field == 4'h3 ? _GEN_793 : _GEN_638; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_875 = type_field == 4'h3 ? _GEN_794 : _GEN_639; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_876 = type_field == 4'h3 ? _GEN_798 : _GEN_640; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_877 = type_field == 4'h3 ? _GEN_799 : _GEN_641; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_890 = cluster_id_field == 4'h2 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_891 = cluster_id_field == 4'h2 ? _GEN_802 : _GEN_567; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_892 = cluster_id_field == 4'h2 ? _GEN_803 : _GEN_568; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_895 = cluster_id_field == 4'h2 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_896 = cluster_id_field == 4'h2 ? _GEN_808 : _GEN_572; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_897 = cluster_id_field == 4'h2 ? _GEN_809 : _GEN_573; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_898 = cluster_id_field == 4'h2 ? _GEN_810 : _GEN_574; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_900 = cluster_id_field == 4'h2 ? _GEN_812 : _GEN_576; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_901 = cluster_id_field == 4'h2 ? _GEN_813 : _GEN_577; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_902 = cluster_id_field == 4'h2 ? _GEN_814 : _GEN_578; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_903 = cluster_id_field == 4'h2 ? _GEN_815 : _GEN_579; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_904 = cluster_id_field == 4'h2 ? _GEN_816 : _GEN_580; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_905 = cluster_id_field == 4'h2 ? _GEN_817 : _GEN_581; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_906 = cluster_id_field == 4'h2 ? _GEN_818 : _GEN_582; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_907 = cluster_id_field == 4'h2 ? _GEN_819 : _GEN_583; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_908 = cluster_id_field == 4'h2 ? _GEN_820 : _GEN_584; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_909 = cluster_id_field == 4'h2 ? _GEN_821 : _GEN_585; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_910 = cluster_id_field == 4'h2 ? _GEN_822 : _GEN_586; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_911 = cluster_id_field == 4'h2 ? _GEN_823 : _GEN_587; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_912 = cluster_id_field == 4'h2 ? _GEN_824 : _GEN_588; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_913 = cluster_id_field == 4'h2 ? _GEN_825 : _GEN_589; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_914 = cluster_id_field == 4'h2 ? _GEN_826 : _GEN_590; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_915 = cluster_id_field == 4'h2 ? _GEN_827 : _GEN_591; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_916 = cluster_id_field == 4'h2 ? _GEN_828 : _GEN_592; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_917 = cluster_id_field == 4'h2 ? _GEN_829 : _GEN_593; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_918 = cluster_id_field == 4'h2 ? _GEN_830 : _GEN_594; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_919 = cluster_id_field == 4'h2 ? _GEN_831 : _GEN_595; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_920 = cluster_id_field == 4'h2 ? _GEN_832 : _GEN_596; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_921 = cluster_id_field == 4'h2 ? _GEN_833 : _GEN_597; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_922 = cluster_id_field == 4'h2 ? _GEN_834 : _GEN_598; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_923 = cluster_id_field == 4'h2 ? _GEN_835 : _GEN_599; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_924 = cluster_id_field == 4'h2 ? _GEN_836 : _GEN_600; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_925 = cluster_id_field == 4'h2 ? _GEN_837 : _GEN_601; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_926 = cluster_id_field == 4'h2 ? _GEN_838 : _GEN_602; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_927 = cluster_id_field == 4'h2 ? _GEN_839 : _GEN_603; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_928 = cluster_id_field == 4'h2 ? _GEN_840 : _GEN_604; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_929 = cluster_id_field == 4'h2 ? _GEN_841 : _GEN_605; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_930 = cluster_id_field == 4'h2 ? _GEN_842 : _GEN_606; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_931 = cluster_id_field == 4'h2 ? _GEN_843 : _GEN_607; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_932 = cluster_id_field == 4'h2 ? _GEN_844 : _GEN_608; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_933 = cluster_id_field == 4'h2 ? _GEN_845 : _GEN_609; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_934 = cluster_id_field == 4'h2 ? _GEN_846 : _GEN_610; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_935 = cluster_id_field == 4'h2 ? _GEN_847 : _GEN_611; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_936 = cluster_id_field == 4'h2 ? _GEN_848 : _GEN_612; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_937 = cluster_id_field == 4'h2 ? _GEN_849 : _GEN_613; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_938 = cluster_id_field == 4'h2 ? _GEN_850 : _GEN_614; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_939 = cluster_id_field == 4'h2 ? _GEN_851 : _GEN_615; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_940 = cluster_id_field == 4'h2 ? _GEN_852 : _GEN_616; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_941 = cluster_id_field == 4'h2 ? _GEN_853 : _GEN_617; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_942 = cluster_id_field == 4'h2 ? _GEN_854 : _GEN_618; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_943 = cluster_id_field == 4'h2 ? _GEN_855 : _GEN_619; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_944 = cluster_id_field == 4'h2 ? _GEN_856 : _GEN_620; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_945 = cluster_id_field == 4'h2 ? _GEN_857 : _GEN_621; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_946 = cluster_id_field == 4'h2 ? _GEN_858 : _GEN_622; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_947 = cluster_id_field == 4'h2 ? _GEN_859 : _GEN_623; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_948 = cluster_id_field == 4'h2 ? _GEN_860 : _GEN_624; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_949 = cluster_id_field == 4'h2 ? _GEN_861 : _GEN_625; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_950 = cluster_id_field == 4'h2 ? _GEN_862 : _GEN_626; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_951 = cluster_id_field == 4'h2 ? _GEN_863 : _GEN_627; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_952 = cluster_id_field == 4'h2 ? _GEN_864 : _GEN_628; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_953 = cluster_id_field == 4'h2 ? _GEN_865 : _GEN_629; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_954 = cluster_id_field == 4'h2 ? _GEN_866 : _GEN_630; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_955 = cluster_id_field == 4'h2 ? _GEN_867 : _GEN_631; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_956 = cluster_id_field == 4'h2 ? _GEN_868 : _GEN_632; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_957 = cluster_id_field == 4'h2 ? _GEN_869 : _GEN_633; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_958 = cluster_id_field == 4'h2 ? _GEN_870 : _GEN_634; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_959 = cluster_id_field == 4'h2 ? _GEN_871 : _GEN_635; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_960 = cluster_id_field == 4'h2 ? _GEN_872 : _GEN_636; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_961 = cluster_id_field == 4'h2 ? _GEN_873 : _GEN_637; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_962 = cluster_id_field == 4'h2 ? _GEN_874 : _GEN_638; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_963 = cluster_id_field == 4'h2 ? _GEN_875 : _GEN_639; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_964 = cluster_id_field == 4'h2 ? _GEN_876 : _GEN_640; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_965 = cluster_id_field == 4'h2 ? _GEN_877 : _GEN_641; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_973 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_891; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_974 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_892; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_978 = sram_id_field == 4'h2 ? _GEN_974 : _GEN_892; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_982 = _T_5 ? io_pcie_w_data : _GEN_896; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_983 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_897; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_984 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_898; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_987 = sram_id_field == 4'h3 ? _GEN_982 : _GEN_896; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_988 = sram_id_field == 4'h3 ? _GEN_983 : _GEN_897; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_989 = sram_id_field == 4'h3 ? _GEN_984 : _GEN_898; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1119 = _T_5 ? io_pcie_w_data : _GEN_964; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_1120 = _T_9 ? io_pcie_w_data : _GEN_965; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_1122 = sram_id_field == 4'h5 ? _GEN_1119 : _GEN_964; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1123 = sram_id_field == 4'h5 ? _GEN_1120 : _GEN_965; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1126 = type_field == 4'h3 ? _GEN_973 : _GEN_891; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1127 = type_field == 4'h3 ? _GEN_978 : _GEN_892; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1132 = type_field == 4'h3 ? _GEN_987 : _GEN_896; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1133 = type_field == 4'h3 ? _GEN_988 : _GEN_897; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1134 = type_field == 4'h3 ? _GEN_989 : _GEN_898; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1200 = type_field == 4'h3 ? _GEN_1122 : _GEN_964; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1201 = type_field == 4'h3 ? _GEN_1123 : _GEN_965; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_1214 = cluster_id_field == 4'h3 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_1215 = cluster_id_field == 4'h3 ? _GEN_1126 : _GEN_891; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1216 = cluster_id_field == 4'h3 ? _GEN_1127 : _GEN_892; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_1219 = cluster_id_field == 4'h3 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_1220 = cluster_id_field == 4'h3 ? _GEN_1132 : _GEN_896; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1221 = cluster_id_field == 4'h3 ? _GEN_1133 : _GEN_897; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1222 = cluster_id_field == 4'h3 ? _GEN_1134 : _GEN_898; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1288 = cluster_id_field == 4'h3 ? _GEN_1200 : _GEN_964; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1289 = cluster_id_field == 4'h3 ? _GEN_1201 : _GEN_965; // @[pcie_interface.scala 137:43]
  reg [1:0] first_proc_id; // @[pcie_interface.scala 205:28]
  reg [1:0] last_proc_id; // @[pcie_interface.scala 206:28]
  reg [1:0] next_proc_id_0; // @[pcie_interface.scala 207:28]
  reg [1:0] next_proc_id_1; // @[pcie_interface.scala 207:28]
  reg [1:0] next_proc_id_2; // @[pcie_interface.scala 207:28]
  reg [1:0] next_proc_id_3; // @[pcie_interface.scala 207:28]
  wire [63:0] _GEN_1296 = offset_field == 8'h0 ? io_pcie_w_data : {{62'd0}, first_proc_id}; // @[pcie_interface.scala 210:42 pcie_interface.scala 211:27 pcie_interface.scala 205:28]
  wire [63:0] _GEN_1297 = offset_field == 8'h1 ? io_pcie_w_data : {{62'd0}, last_proc_id}; // @[pcie_interface.scala 213:42 pcie_interface.scala 214:27 pcie_interface.scala 206:28]
  wire [63:0] _GEN_1298 = type_field == 4'h8 ? _GEN_1296 : {{62'd0}, first_proc_id}; // @[pcie_interface.scala 209:36 pcie_interface.scala 205:28]
  wire [63:0] _GEN_1299 = type_field == 4'h8 ? _GEN_1297 : {{62'd0}, last_proc_id}; // @[pcie_interface.scala 209:36 pcie_interface.scala 206:28]
  assign io_pcie_r_data = io_pcie_o_r_data; // @[pcie_interface.scala 75:22]
  assign io_pcie_o_cs = io_pcie_r_addr[12:8]; // @[pcie_interface.scala 72:39]
  assign io_pcie_o_r_en = io_pcie_r_en; // @[pcie_interface.scala 73:22]
  assign io_pcie_o_r_addr = io_pcie_r_addr[7:0]; // @[pcie_interface.scala 74:39]
  assign io_mod_proc_mod_0_par_mod_en = cluster_id_field == 4'h0 & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_0_par_mod_last_mau_id_mod = cluster_id_field == 4'h0 & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_0_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_0_par_mod_cs = _GEN_242[1:0];
  assign io_mod_proc_mod_0_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h0 & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_0_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_0_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_0_par_mod_module_mod_sram_w_en = cluster_id_field == 4'h0 & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_0_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_0_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_0_mat_mod_en = cluster_id_field == 4'h0 & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_0_mat_mod_config_id = _GEN_247[0];
  assign io_mod_proc_mod_0_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_0_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_0_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_0 = mat_tab_sram_id_table_0; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_1 = mat_tab_sram_id_table_1; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_2 = mat_tab_sram_id_table_2; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_3 = mat_tab_sram_id_table_3; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_4 = mat_tab_sram_id_table_4; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_5 = mat_tab_sram_id_table_5; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_6 = mat_tab_sram_id_table_6; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_7 = mat_tab_sram_id_table_7; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_8 = mat_tab_sram_id_table_8; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_9 = mat_tab_sram_id_table_9; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_10 = mat_tab_sram_id_table_10; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_11 = mat_tab_sram_id_table_11; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_12 = mat_tab_sram_id_table_12; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_13 = mat_tab_sram_id_table_13; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_14 = mat_tab_sram_id_table_14; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_15 = mat_tab_sram_id_table_15; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_16 = mat_tab_sram_id_table_16; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_17 = mat_tab_sram_id_table_17; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_18 = mat_tab_sram_id_table_18; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_19 = mat_tab_sram_id_table_19; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_20 = mat_tab_sram_id_table_20; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_21 = mat_tab_sram_id_table_21; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_22 = mat_tab_sram_id_table_22; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_23 = mat_tab_sram_id_table_23; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_24 = mat_tab_sram_id_table_24; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_25 = mat_tab_sram_id_table_25; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_26 = mat_tab_sram_id_table_26; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_27 = mat_tab_sram_id_table_27; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_28 = mat_tab_sram_id_table_28; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_29 = mat_tab_sram_id_table_29; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_30 = mat_tab_sram_id_table_30; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_31 = mat_tab_sram_id_table_31; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_32 = mat_tab_sram_id_table_32; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_33 = mat_tab_sram_id_table_33; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_34 = mat_tab_sram_id_table_34; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_35 = mat_tab_sram_id_table_35; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_36 = mat_tab_sram_id_table_36; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_37 = mat_tab_sram_id_table_37; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_38 = mat_tab_sram_id_table_38; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_39 = mat_tab_sram_id_table_39; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_40 = mat_tab_sram_id_table_40; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_41 = mat_tab_sram_id_table_41; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_42 = mat_tab_sram_id_table_42; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_43 = mat_tab_sram_id_table_43; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_44 = mat_tab_sram_id_table_44; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_45 = mat_tab_sram_id_table_45; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_46 = mat_tab_sram_id_table_46; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_47 = mat_tab_sram_id_table_47; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_48 = mat_tab_sram_id_table_48; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_49 = mat_tab_sram_id_table_49; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_50 = mat_tab_sram_id_table_50; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_51 = mat_tab_sram_id_table_51; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_52 = mat_tab_sram_id_table_52; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_53 = mat_tab_sram_id_table_53; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_54 = mat_tab_sram_id_table_54; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_55 = mat_tab_sram_id_table_55; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_56 = mat_tab_sram_id_table_56; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_57 = mat_tab_sram_id_table_57; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_58 = mat_tab_sram_id_table_58; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_59 = mat_tab_sram_id_table_59; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_60 = mat_tab_sram_id_table_60; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_61 = mat_tab_sram_id_table_61; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_62 = mat_tab_sram_id_table_62; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_sram_id_table_63 = mat_tab_sram_id_table_63; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_act_mod_en_0 = cluster_id_field == 4'h0 & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_0_act_mod_en_1 = cluster_id_field == 4'h0 & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_0_act_mod_addr = cluster_id_field == 4'h0 ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_0_act_mod_data_0 = cluster_id_field == 4'h0 ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_0_act_mod_data_1 = cluster_id_field == 4'h0 ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_1_par_mod_en = cluster_id_field == 4'h1 & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_1_par_mod_last_mau_id_mod = cluster_id_field == 4'h1 & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_1_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_1_par_mod_cs = _GEN_566[1:0];
  assign io_mod_proc_mod_1_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h1 & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_1_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_1_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_1_par_mod_module_mod_sram_w_en = cluster_id_field == 4'h1 & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_1_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_1_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_1_mat_mod_en = cluster_id_field == 4'h1 & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_1_mat_mod_config_id = _GEN_571[0];
  assign io_mod_proc_mod_1_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_1_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_1_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_0 = mat_tab_sram_id_table_0; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_1 = mat_tab_sram_id_table_1; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_2 = mat_tab_sram_id_table_2; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_3 = mat_tab_sram_id_table_3; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_4 = mat_tab_sram_id_table_4; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_5 = mat_tab_sram_id_table_5; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_6 = mat_tab_sram_id_table_6; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_7 = mat_tab_sram_id_table_7; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_8 = mat_tab_sram_id_table_8; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_9 = mat_tab_sram_id_table_9; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_10 = mat_tab_sram_id_table_10; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_11 = mat_tab_sram_id_table_11; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_12 = mat_tab_sram_id_table_12; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_13 = mat_tab_sram_id_table_13; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_14 = mat_tab_sram_id_table_14; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_15 = mat_tab_sram_id_table_15; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_16 = mat_tab_sram_id_table_16; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_17 = mat_tab_sram_id_table_17; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_18 = mat_tab_sram_id_table_18; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_19 = mat_tab_sram_id_table_19; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_20 = mat_tab_sram_id_table_20; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_21 = mat_tab_sram_id_table_21; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_22 = mat_tab_sram_id_table_22; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_23 = mat_tab_sram_id_table_23; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_24 = mat_tab_sram_id_table_24; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_25 = mat_tab_sram_id_table_25; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_26 = mat_tab_sram_id_table_26; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_27 = mat_tab_sram_id_table_27; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_28 = mat_tab_sram_id_table_28; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_29 = mat_tab_sram_id_table_29; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_30 = mat_tab_sram_id_table_30; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_31 = mat_tab_sram_id_table_31; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_32 = mat_tab_sram_id_table_32; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_33 = mat_tab_sram_id_table_33; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_34 = mat_tab_sram_id_table_34; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_35 = mat_tab_sram_id_table_35; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_36 = mat_tab_sram_id_table_36; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_37 = mat_tab_sram_id_table_37; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_38 = mat_tab_sram_id_table_38; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_39 = mat_tab_sram_id_table_39; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_40 = mat_tab_sram_id_table_40; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_41 = mat_tab_sram_id_table_41; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_42 = mat_tab_sram_id_table_42; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_43 = mat_tab_sram_id_table_43; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_44 = mat_tab_sram_id_table_44; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_45 = mat_tab_sram_id_table_45; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_46 = mat_tab_sram_id_table_46; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_47 = mat_tab_sram_id_table_47; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_48 = mat_tab_sram_id_table_48; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_49 = mat_tab_sram_id_table_49; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_50 = mat_tab_sram_id_table_50; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_51 = mat_tab_sram_id_table_51; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_52 = mat_tab_sram_id_table_52; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_53 = mat_tab_sram_id_table_53; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_54 = mat_tab_sram_id_table_54; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_55 = mat_tab_sram_id_table_55; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_56 = mat_tab_sram_id_table_56; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_57 = mat_tab_sram_id_table_57; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_58 = mat_tab_sram_id_table_58; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_59 = mat_tab_sram_id_table_59; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_60 = mat_tab_sram_id_table_60; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_61 = mat_tab_sram_id_table_61; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_62 = mat_tab_sram_id_table_62; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_sram_id_table_63 = mat_tab_sram_id_table_63; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_act_mod_en_0 = cluster_id_field == 4'h1 & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_1_act_mod_en_1 = cluster_id_field == 4'h1 & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_1_act_mod_addr = cluster_id_field == 4'h1 ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_1_act_mod_data_0 = cluster_id_field == 4'h1 ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_1_act_mod_data_1 = cluster_id_field == 4'h1 ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_2_par_mod_en = cluster_id_field == 4'h2 & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_2_par_mod_last_mau_id_mod = cluster_id_field == 4'h2 & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_2_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_2_par_mod_cs = _GEN_890[1:0];
  assign io_mod_proc_mod_2_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h2 & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_2_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_2_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_2_par_mod_module_mod_sram_w_en = cluster_id_field == 4'h2 & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_2_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_2_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_2_mat_mod_en = cluster_id_field == 4'h2 & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_2_mat_mod_config_id = _GEN_895[0];
  assign io_mod_proc_mod_2_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_2_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_2_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_0 = mat_tab_sram_id_table_0; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_1 = mat_tab_sram_id_table_1; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_2 = mat_tab_sram_id_table_2; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_3 = mat_tab_sram_id_table_3; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_4 = mat_tab_sram_id_table_4; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_5 = mat_tab_sram_id_table_5; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_6 = mat_tab_sram_id_table_6; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_7 = mat_tab_sram_id_table_7; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_8 = mat_tab_sram_id_table_8; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_9 = mat_tab_sram_id_table_9; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_10 = mat_tab_sram_id_table_10; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_11 = mat_tab_sram_id_table_11; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_12 = mat_tab_sram_id_table_12; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_13 = mat_tab_sram_id_table_13; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_14 = mat_tab_sram_id_table_14; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_15 = mat_tab_sram_id_table_15; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_16 = mat_tab_sram_id_table_16; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_17 = mat_tab_sram_id_table_17; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_18 = mat_tab_sram_id_table_18; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_19 = mat_tab_sram_id_table_19; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_20 = mat_tab_sram_id_table_20; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_21 = mat_tab_sram_id_table_21; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_22 = mat_tab_sram_id_table_22; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_23 = mat_tab_sram_id_table_23; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_24 = mat_tab_sram_id_table_24; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_25 = mat_tab_sram_id_table_25; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_26 = mat_tab_sram_id_table_26; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_27 = mat_tab_sram_id_table_27; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_28 = mat_tab_sram_id_table_28; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_29 = mat_tab_sram_id_table_29; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_30 = mat_tab_sram_id_table_30; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_31 = mat_tab_sram_id_table_31; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_32 = mat_tab_sram_id_table_32; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_33 = mat_tab_sram_id_table_33; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_34 = mat_tab_sram_id_table_34; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_35 = mat_tab_sram_id_table_35; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_36 = mat_tab_sram_id_table_36; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_37 = mat_tab_sram_id_table_37; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_38 = mat_tab_sram_id_table_38; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_39 = mat_tab_sram_id_table_39; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_40 = mat_tab_sram_id_table_40; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_41 = mat_tab_sram_id_table_41; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_42 = mat_tab_sram_id_table_42; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_43 = mat_tab_sram_id_table_43; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_44 = mat_tab_sram_id_table_44; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_45 = mat_tab_sram_id_table_45; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_46 = mat_tab_sram_id_table_46; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_47 = mat_tab_sram_id_table_47; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_48 = mat_tab_sram_id_table_48; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_49 = mat_tab_sram_id_table_49; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_50 = mat_tab_sram_id_table_50; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_51 = mat_tab_sram_id_table_51; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_52 = mat_tab_sram_id_table_52; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_53 = mat_tab_sram_id_table_53; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_54 = mat_tab_sram_id_table_54; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_55 = mat_tab_sram_id_table_55; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_56 = mat_tab_sram_id_table_56; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_57 = mat_tab_sram_id_table_57; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_58 = mat_tab_sram_id_table_58; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_59 = mat_tab_sram_id_table_59; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_60 = mat_tab_sram_id_table_60; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_61 = mat_tab_sram_id_table_61; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_62 = mat_tab_sram_id_table_62; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_sram_id_table_63 = mat_tab_sram_id_table_63; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_act_mod_en_0 = cluster_id_field == 4'h2 & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_2_act_mod_en_1 = cluster_id_field == 4'h2 & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_2_act_mod_addr = cluster_id_field == 4'h2 ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_2_act_mod_data_0 = cluster_id_field == 4'h2 ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_2_act_mod_data_1 = cluster_id_field == 4'h2 ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_3_par_mod_en = cluster_id_field == 4'h3 & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_3_par_mod_last_mau_id_mod = cluster_id_field == 4'h3 & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_3_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_3_par_mod_cs = _GEN_1214[1:0];
  assign io_mod_proc_mod_3_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h3 & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_3_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_3_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_3_par_mod_module_mod_sram_w_en = cluster_id_field == 4'h3 & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_3_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_3_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_3_mat_mod_en = cluster_id_field == 4'h3 & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_3_mat_mod_config_id = _GEN_1219[0];
  assign io_mod_proc_mod_3_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_3_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_3_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_0 = mat_tab_sram_id_table_0; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_1 = mat_tab_sram_id_table_1; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_2 = mat_tab_sram_id_table_2; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_3 = mat_tab_sram_id_table_3; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_4 = mat_tab_sram_id_table_4; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_5 = mat_tab_sram_id_table_5; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_6 = mat_tab_sram_id_table_6; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_7 = mat_tab_sram_id_table_7; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_8 = mat_tab_sram_id_table_8; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_9 = mat_tab_sram_id_table_9; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_10 = mat_tab_sram_id_table_10; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_11 = mat_tab_sram_id_table_11; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_12 = mat_tab_sram_id_table_12; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_13 = mat_tab_sram_id_table_13; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_14 = mat_tab_sram_id_table_14; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_15 = mat_tab_sram_id_table_15; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_16 = mat_tab_sram_id_table_16; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_17 = mat_tab_sram_id_table_17; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_18 = mat_tab_sram_id_table_18; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_19 = mat_tab_sram_id_table_19; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_20 = mat_tab_sram_id_table_20; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_21 = mat_tab_sram_id_table_21; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_22 = mat_tab_sram_id_table_22; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_23 = mat_tab_sram_id_table_23; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_24 = mat_tab_sram_id_table_24; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_25 = mat_tab_sram_id_table_25; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_26 = mat_tab_sram_id_table_26; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_27 = mat_tab_sram_id_table_27; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_28 = mat_tab_sram_id_table_28; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_29 = mat_tab_sram_id_table_29; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_30 = mat_tab_sram_id_table_30; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_31 = mat_tab_sram_id_table_31; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_32 = mat_tab_sram_id_table_32; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_33 = mat_tab_sram_id_table_33; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_34 = mat_tab_sram_id_table_34; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_35 = mat_tab_sram_id_table_35; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_36 = mat_tab_sram_id_table_36; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_37 = mat_tab_sram_id_table_37; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_38 = mat_tab_sram_id_table_38; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_39 = mat_tab_sram_id_table_39; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_40 = mat_tab_sram_id_table_40; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_41 = mat_tab_sram_id_table_41; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_42 = mat_tab_sram_id_table_42; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_43 = mat_tab_sram_id_table_43; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_44 = mat_tab_sram_id_table_44; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_45 = mat_tab_sram_id_table_45; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_46 = mat_tab_sram_id_table_46; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_47 = mat_tab_sram_id_table_47; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_48 = mat_tab_sram_id_table_48; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_49 = mat_tab_sram_id_table_49; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_50 = mat_tab_sram_id_table_50; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_51 = mat_tab_sram_id_table_51; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_52 = mat_tab_sram_id_table_52; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_53 = mat_tab_sram_id_table_53; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_54 = mat_tab_sram_id_table_54; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_55 = mat_tab_sram_id_table_55; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_56 = mat_tab_sram_id_table_56; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_57 = mat_tab_sram_id_table_57; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_58 = mat_tab_sram_id_table_58; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_59 = mat_tab_sram_id_table_59; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_60 = mat_tab_sram_id_table_60; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_61 = mat_tab_sram_id_table_61; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_62 = mat_tab_sram_id_table_62; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_sram_id_table_63 = mat_tab_sram_id_table_63; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_act_mod_en_0 = cluster_id_field == 4'h3 & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_3_act_mod_en_1 = cluster_id_field == 4'h3 & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_3_act_mod_addr = cluster_id_field == 4'h3 ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_3_act_mod_data_0 = cluster_id_field == 4'h3 ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_3_act_mod_data_1 = cluster_id_field == 4'h3 ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_xbar_mod_en = type_field == 4'hf; // @[pcie_interface.scala 220:42]
  assign io_mod_xbar_mod_first_proc_id = first_proc_id; // @[pcie_interface.scala 221:28]
  assign io_mod_xbar_mod_last_proc_id = last_proc_id; // @[pcie_interface.scala 222:28]
  assign io_mod_xbar_mod_next_proc_id_0 = next_proc_id_0; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_1 = next_proc_id_1; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_2 = next_proc_id_2; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_3 = next_proc_id_3; // @[pcie_interface.scala 223:28]
  assign io_w_0_wcs = {{5'd0}, _GEN_1308 == sram_id_field}; // @[pcie_interface.scala 96:57]
  assign io_w_0_w_en = cluster_id_field[3:2] == 2'h0 & sram_resource_pool; // @[pcie_interface.scala 97:66]
  assign io_w_0_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_w_0_w_data = io_pcie_w_data; // @[pcie_interface.scala 99:28]
  always @(posedge clock) begin
    last_mau_id <= _GEN_1215[1:0];
    state_id <= _GEN_1216[7:0];
    mat_key_header_id <= _GEN_1220[7:0];
    mat_key_internal_offset <= _GEN_1221[7:0];
    mat_key_key_length <= _GEN_1222[7:0];
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h0 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_0 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_0 <= _GEN_900;
          end
        end else begin
          mat_tab_sram_id_table_0 <= _GEN_900;
        end
      end else begin
        mat_tab_sram_id_table_0 <= _GEN_900;
      end
    end else begin
      mat_tab_sram_id_table_0 <= _GEN_900;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h1 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_1 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_1 <= _GEN_901;
          end
        end else begin
          mat_tab_sram_id_table_1 <= _GEN_901;
        end
      end else begin
        mat_tab_sram_id_table_1 <= _GEN_901;
      end
    end else begin
      mat_tab_sram_id_table_1 <= _GEN_901;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h2 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_2 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_2 <= _GEN_902;
          end
        end else begin
          mat_tab_sram_id_table_2 <= _GEN_902;
        end
      end else begin
        mat_tab_sram_id_table_2 <= _GEN_902;
      end
    end else begin
      mat_tab_sram_id_table_2 <= _GEN_902;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h3 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_3 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_3 <= _GEN_903;
          end
        end else begin
          mat_tab_sram_id_table_3 <= _GEN_903;
        end
      end else begin
        mat_tab_sram_id_table_3 <= _GEN_903;
      end
    end else begin
      mat_tab_sram_id_table_3 <= _GEN_903;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h4 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_4 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_4 <= _GEN_904;
          end
        end else begin
          mat_tab_sram_id_table_4 <= _GEN_904;
        end
      end else begin
        mat_tab_sram_id_table_4 <= _GEN_904;
      end
    end else begin
      mat_tab_sram_id_table_4 <= _GEN_904;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h5 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_5 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_5 <= _GEN_905;
          end
        end else begin
          mat_tab_sram_id_table_5 <= _GEN_905;
        end
      end else begin
        mat_tab_sram_id_table_5 <= _GEN_905;
      end
    end else begin
      mat_tab_sram_id_table_5 <= _GEN_905;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h6 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_6 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_6 <= _GEN_906;
          end
        end else begin
          mat_tab_sram_id_table_6 <= _GEN_906;
        end
      end else begin
        mat_tab_sram_id_table_6 <= _GEN_906;
      end
    end else begin
      mat_tab_sram_id_table_6 <= _GEN_906;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h7 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_7 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_7 <= _GEN_907;
          end
        end else begin
          mat_tab_sram_id_table_7 <= _GEN_907;
        end
      end else begin
        mat_tab_sram_id_table_7 <= _GEN_907;
      end
    end else begin
      mat_tab_sram_id_table_7 <= _GEN_907;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h8 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_8 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_8 <= _GEN_908;
          end
        end else begin
          mat_tab_sram_id_table_8 <= _GEN_908;
        end
      end else begin
        mat_tab_sram_id_table_8 <= _GEN_908;
      end
    end else begin
      mat_tab_sram_id_table_8 <= _GEN_908;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h9 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_9 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_9 <= _GEN_909;
          end
        end else begin
          mat_tab_sram_id_table_9 <= _GEN_909;
        end
      end else begin
        mat_tab_sram_id_table_9 <= _GEN_909;
      end
    end else begin
      mat_tab_sram_id_table_9 <= _GEN_909;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'ha == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_10 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_10 <= _GEN_910;
          end
        end else begin
          mat_tab_sram_id_table_10 <= _GEN_910;
        end
      end else begin
        mat_tab_sram_id_table_10 <= _GEN_910;
      end
    end else begin
      mat_tab_sram_id_table_10 <= _GEN_910;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'hb == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_11 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_11 <= _GEN_911;
          end
        end else begin
          mat_tab_sram_id_table_11 <= _GEN_911;
        end
      end else begin
        mat_tab_sram_id_table_11 <= _GEN_911;
      end
    end else begin
      mat_tab_sram_id_table_11 <= _GEN_911;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'hc == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_12 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_12 <= _GEN_912;
          end
        end else begin
          mat_tab_sram_id_table_12 <= _GEN_912;
        end
      end else begin
        mat_tab_sram_id_table_12 <= _GEN_912;
      end
    end else begin
      mat_tab_sram_id_table_12 <= _GEN_912;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'hd == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_13 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_13 <= _GEN_913;
          end
        end else begin
          mat_tab_sram_id_table_13 <= _GEN_913;
        end
      end else begin
        mat_tab_sram_id_table_13 <= _GEN_913;
      end
    end else begin
      mat_tab_sram_id_table_13 <= _GEN_913;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'he == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_14 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_14 <= _GEN_914;
          end
        end else begin
          mat_tab_sram_id_table_14 <= _GEN_914;
        end
      end else begin
        mat_tab_sram_id_table_14 <= _GEN_914;
      end
    end else begin
      mat_tab_sram_id_table_14 <= _GEN_914;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'hf == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_15 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_15 <= _GEN_915;
          end
        end else begin
          mat_tab_sram_id_table_15 <= _GEN_915;
        end
      end else begin
        mat_tab_sram_id_table_15 <= _GEN_915;
      end
    end else begin
      mat_tab_sram_id_table_15 <= _GEN_915;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h10 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_16 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_16 <= _GEN_916;
          end
        end else begin
          mat_tab_sram_id_table_16 <= _GEN_916;
        end
      end else begin
        mat_tab_sram_id_table_16 <= _GEN_916;
      end
    end else begin
      mat_tab_sram_id_table_16 <= _GEN_916;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h11 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_17 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_17 <= _GEN_917;
          end
        end else begin
          mat_tab_sram_id_table_17 <= _GEN_917;
        end
      end else begin
        mat_tab_sram_id_table_17 <= _GEN_917;
      end
    end else begin
      mat_tab_sram_id_table_17 <= _GEN_917;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h12 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_18 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_18 <= _GEN_918;
          end
        end else begin
          mat_tab_sram_id_table_18 <= _GEN_918;
        end
      end else begin
        mat_tab_sram_id_table_18 <= _GEN_918;
      end
    end else begin
      mat_tab_sram_id_table_18 <= _GEN_918;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h13 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_19 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_19 <= _GEN_919;
          end
        end else begin
          mat_tab_sram_id_table_19 <= _GEN_919;
        end
      end else begin
        mat_tab_sram_id_table_19 <= _GEN_919;
      end
    end else begin
      mat_tab_sram_id_table_19 <= _GEN_919;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h14 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_20 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_20 <= _GEN_920;
          end
        end else begin
          mat_tab_sram_id_table_20 <= _GEN_920;
        end
      end else begin
        mat_tab_sram_id_table_20 <= _GEN_920;
      end
    end else begin
      mat_tab_sram_id_table_20 <= _GEN_920;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h15 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_21 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_21 <= _GEN_921;
          end
        end else begin
          mat_tab_sram_id_table_21 <= _GEN_921;
        end
      end else begin
        mat_tab_sram_id_table_21 <= _GEN_921;
      end
    end else begin
      mat_tab_sram_id_table_21 <= _GEN_921;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h16 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_22 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_22 <= _GEN_922;
          end
        end else begin
          mat_tab_sram_id_table_22 <= _GEN_922;
        end
      end else begin
        mat_tab_sram_id_table_22 <= _GEN_922;
      end
    end else begin
      mat_tab_sram_id_table_22 <= _GEN_922;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h17 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_23 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_23 <= _GEN_923;
          end
        end else begin
          mat_tab_sram_id_table_23 <= _GEN_923;
        end
      end else begin
        mat_tab_sram_id_table_23 <= _GEN_923;
      end
    end else begin
      mat_tab_sram_id_table_23 <= _GEN_923;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h18 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_24 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_24 <= _GEN_924;
          end
        end else begin
          mat_tab_sram_id_table_24 <= _GEN_924;
        end
      end else begin
        mat_tab_sram_id_table_24 <= _GEN_924;
      end
    end else begin
      mat_tab_sram_id_table_24 <= _GEN_924;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h19 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_25 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_25 <= _GEN_925;
          end
        end else begin
          mat_tab_sram_id_table_25 <= _GEN_925;
        end
      end else begin
        mat_tab_sram_id_table_25 <= _GEN_925;
      end
    end else begin
      mat_tab_sram_id_table_25 <= _GEN_925;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h1a == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_26 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_26 <= _GEN_926;
          end
        end else begin
          mat_tab_sram_id_table_26 <= _GEN_926;
        end
      end else begin
        mat_tab_sram_id_table_26 <= _GEN_926;
      end
    end else begin
      mat_tab_sram_id_table_26 <= _GEN_926;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h1b == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_27 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_27 <= _GEN_927;
          end
        end else begin
          mat_tab_sram_id_table_27 <= _GEN_927;
        end
      end else begin
        mat_tab_sram_id_table_27 <= _GEN_927;
      end
    end else begin
      mat_tab_sram_id_table_27 <= _GEN_927;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h1c == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_28 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_28 <= _GEN_928;
          end
        end else begin
          mat_tab_sram_id_table_28 <= _GEN_928;
        end
      end else begin
        mat_tab_sram_id_table_28 <= _GEN_928;
      end
    end else begin
      mat_tab_sram_id_table_28 <= _GEN_928;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h1d == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_29 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_29 <= _GEN_929;
          end
        end else begin
          mat_tab_sram_id_table_29 <= _GEN_929;
        end
      end else begin
        mat_tab_sram_id_table_29 <= _GEN_929;
      end
    end else begin
      mat_tab_sram_id_table_29 <= _GEN_929;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h1e == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_30 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_30 <= _GEN_930;
          end
        end else begin
          mat_tab_sram_id_table_30 <= _GEN_930;
        end
      end else begin
        mat_tab_sram_id_table_30 <= _GEN_930;
      end
    end else begin
      mat_tab_sram_id_table_30 <= _GEN_930;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h1f == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_31 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_31 <= _GEN_931;
          end
        end else begin
          mat_tab_sram_id_table_31 <= _GEN_931;
        end
      end else begin
        mat_tab_sram_id_table_31 <= _GEN_931;
      end
    end else begin
      mat_tab_sram_id_table_31 <= _GEN_931;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h20 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_32 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_32 <= _GEN_932;
          end
        end else begin
          mat_tab_sram_id_table_32 <= _GEN_932;
        end
      end else begin
        mat_tab_sram_id_table_32 <= _GEN_932;
      end
    end else begin
      mat_tab_sram_id_table_32 <= _GEN_932;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h21 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_33 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_33 <= _GEN_933;
          end
        end else begin
          mat_tab_sram_id_table_33 <= _GEN_933;
        end
      end else begin
        mat_tab_sram_id_table_33 <= _GEN_933;
      end
    end else begin
      mat_tab_sram_id_table_33 <= _GEN_933;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h22 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_34 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_34 <= _GEN_934;
          end
        end else begin
          mat_tab_sram_id_table_34 <= _GEN_934;
        end
      end else begin
        mat_tab_sram_id_table_34 <= _GEN_934;
      end
    end else begin
      mat_tab_sram_id_table_34 <= _GEN_934;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h23 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_35 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_35 <= _GEN_935;
          end
        end else begin
          mat_tab_sram_id_table_35 <= _GEN_935;
        end
      end else begin
        mat_tab_sram_id_table_35 <= _GEN_935;
      end
    end else begin
      mat_tab_sram_id_table_35 <= _GEN_935;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h24 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_36 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_36 <= _GEN_936;
          end
        end else begin
          mat_tab_sram_id_table_36 <= _GEN_936;
        end
      end else begin
        mat_tab_sram_id_table_36 <= _GEN_936;
      end
    end else begin
      mat_tab_sram_id_table_36 <= _GEN_936;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h25 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_37 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_37 <= _GEN_937;
          end
        end else begin
          mat_tab_sram_id_table_37 <= _GEN_937;
        end
      end else begin
        mat_tab_sram_id_table_37 <= _GEN_937;
      end
    end else begin
      mat_tab_sram_id_table_37 <= _GEN_937;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h26 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_38 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_38 <= _GEN_938;
          end
        end else begin
          mat_tab_sram_id_table_38 <= _GEN_938;
        end
      end else begin
        mat_tab_sram_id_table_38 <= _GEN_938;
      end
    end else begin
      mat_tab_sram_id_table_38 <= _GEN_938;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h27 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_39 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_39 <= _GEN_939;
          end
        end else begin
          mat_tab_sram_id_table_39 <= _GEN_939;
        end
      end else begin
        mat_tab_sram_id_table_39 <= _GEN_939;
      end
    end else begin
      mat_tab_sram_id_table_39 <= _GEN_939;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h28 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_40 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_40 <= _GEN_940;
          end
        end else begin
          mat_tab_sram_id_table_40 <= _GEN_940;
        end
      end else begin
        mat_tab_sram_id_table_40 <= _GEN_940;
      end
    end else begin
      mat_tab_sram_id_table_40 <= _GEN_940;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h29 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_41 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_41 <= _GEN_941;
          end
        end else begin
          mat_tab_sram_id_table_41 <= _GEN_941;
        end
      end else begin
        mat_tab_sram_id_table_41 <= _GEN_941;
      end
    end else begin
      mat_tab_sram_id_table_41 <= _GEN_941;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h2a == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_42 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_42 <= _GEN_942;
          end
        end else begin
          mat_tab_sram_id_table_42 <= _GEN_942;
        end
      end else begin
        mat_tab_sram_id_table_42 <= _GEN_942;
      end
    end else begin
      mat_tab_sram_id_table_42 <= _GEN_942;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h2b == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_43 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_43 <= _GEN_943;
          end
        end else begin
          mat_tab_sram_id_table_43 <= _GEN_943;
        end
      end else begin
        mat_tab_sram_id_table_43 <= _GEN_943;
      end
    end else begin
      mat_tab_sram_id_table_43 <= _GEN_943;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h2c == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_44 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_44 <= _GEN_944;
          end
        end else begin
          mat_tab_sram_id_table_44 <= _GEN_944;
        end
      end else begin
        mat_tab_sram_id_table_44 <= _GEN_944;
      end
    end else begin
      mat_tab_sram_id_table_44 <= _GEN_944;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h2d == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_45 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_45 <= _GEN_945;
          end
        end else begin
          mat_tab_sram_id_table_45 <= _GEN_945;
        end
      end else begin
        mat_tab_sram_id_table_45 <= _GEN_945;
      end
    end else begin
      mat_tab_sram_id_table_45 <= _GEN_945;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h2e == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_46 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_46 <= _GEN_946;
          end
        end else begin
          mat_tab_sram_id_table_46 <= _GEN_946;
        end
      end else begin
        mat_tab_sram_id_table_46 <= _GEN_946;
      end
    end else begin
      mat_tab_sram_id_table_46 <= _GEN_946;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h2f == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_47 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_47 <= _GEN_947;
          end
        end else begin
          mat_tab_sram_id_table_47 <= _GEN_947;
        end
      end else begin
        mat_tab_sram_id_table_47 <= _GEN_947;
      end
    end else begin
      mat_tab_sram_id_table_47 <= _GEN_947;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h30 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_48 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_48 <= _GEN_948;
          end
        end else begin
          mat_tab_sram_id_table_48 <= _GEN_948;
        end
      end else begin
        mat_tab_sram_id_table_48 <= _GEN_948;
      end
    end else begin
      mat_tab_sram_id_table_48 <= _GEN_948;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h31 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_49 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_49 <= _GEN_949;
          end
        end else begin
          mat_tab_sram_id_table_49 <= _GEN_949;
        end
      end else begin
        mat_tab_sram_id_table_49 <= _GEN_949;
      end
    end else begin
      mat_tab_sram_id_table_49 <= _GEN_949;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h32 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_50 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_50 <= _GEN_950;
          end
        end else begin
          mat_tab_sram_id_table_50 <= _GEN_950;
        end
      end else begin
        mat_tab_sram_id_table_50 <= _GEN_950;
      end
    end else begin
      mat_tab_sram_id_table_50 <= _GEN_950;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h33 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_51 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_51 <= _GEN_951;
          end
        end else begin
          mat_tab_sram_id_table_51 <= _GEN_951;
        end
      end else begin
        mat_tab_sram_id_table_51 <= _GEN_951;
      end
    end else begin
      mat_tab_sram_id_table_51 <= _GEN_951;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h34 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_52 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_52 <= _GEN_952;
          end
        end else begin
          mat_tab_sram_id_table_52 <= _GEN_952;
        end
      end else begin
        mat_tab_sram_id_table_52 <= _GEN_952;
      end
    end else begin
      mat_tab_sram_id_table_52 <= _GEN_952;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h35 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_53 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_53 <= _GEN_953;
          end
        end else begin
          mat_tab_sram_id_table_53 <= _GEN_953;
        end
      end else begin
        mat_tab_sram_id_table_53 <= _GEN_953;
      end
    end else begin
      mat_tab_sram_id_table_53 <= _GEN_953;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h36 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_54 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_54 <= _GEN_954;
          end
        end else begin
          mat_tab_sram_id_table_54 <= _GEN_954;
        end
      end else begin
        mat_tab_sram_id_table_54 <= _GEN_954;
      end
    end else begin
      mat_tab_sram_id_table_54 <= _GEN_954;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h37 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_55 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_55 <= _GEN_955;
          end
        end else begin
          mat_tab_sram_id_table_55 <= _GEN_955;
        end
      end else begin
        mat_tab_sram_id_table_55 <= _GEN_955;
      end
    end else begin
      mat_tab_sram_id_table_55 <= _GEN_955;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h38 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_56 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_56 <= _GEN_956;
          end
        end else begin
          mat_tab_sram_id_table_56 <= _GEN_956;
        end
      end else begin
        mat_tab_sram_id_table_56 <= _GEN_956;
      end
    end else begin
      mat_tab_sram_id_table_56 <= _GEN_956;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h39 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_57 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_57 <= _GEN_957;
          end
        end else begin
          mat_tab_sram_id_table_57 <= _GEN_957;
        end
      end else begin
        mat_tab_sram_id_table_57 <= _GEN_957;
      end
    end else begin
      mat_tab_sram_id_table_57 <= _GEN_957;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h3a == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_58 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_58 <= _GEN_958;
          end
        end else begin
          mat_tab_sram_id_table_58 <= _GEN_958;
        end
      end else begin
        mat_tab_sram_id_table_58 <= _GEN_958;
      end
    end else begin
      mat_tab_sram_id_table_58 <= _GEN_958;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h3b == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_59 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_59 <= _GEN_959;
          end
        end else begin
          mat_tab_sram_id_table_59 <= _GEN_959;
        end
      end else begin
        mat_tab_sram_id_table_59 <= _GEN_959;
      end
    end else begin
      mat_tab_sram_id_table_59 <= _GEN_959;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h3c == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_60 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_60 <= _GEN_960;
          end
        end else begin
          mat_tab_sram_id_table_60 <= _GEN_960;
        end
      end else begin
        mat_tab_sram_id_table_60 <= _GEN_960;
      end
    end else begin
      mat_tab_sram_id_table_60 <= _GEN_960;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h3d == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_61 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_61 <= _GEN_961;
          end
        end else begin
          mat_tab_sram_id_table_61 <= _GEN_961;
        end
      end else begin
        mat_tab_sram_id_table_61 <= _GEN_961;
      end
    end else begin
      mat_tab_sram_id_table_61 <= _GEN_961;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h3e == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_62 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_62 <= _GEN_962;
          end
        end else begin
          mat_tab_sram_id_table_62 <= _GEN_962;
        end
      end else begin
        mat_tab_sram_id_table_62 <= _GEN_962;
      end
    end else begin
      mat_tab_sram_id_table_62 <= _GEN_962;
    end
    if (cluster_id_field == 4'h3) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h3f == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_63 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_63 <= _GEN_963;
          end
        end else begin
          mat_tab_sram_id_table_63 <= _GEN_963;
        end
      end else begin
        mat_tab_sram_id_table_63 <= _GEN_963;
      end
    end else begin
      mat_tab_sram_id_table_63 <= _GEN_963;
    end
    mat_tab_table_width <= _GEN_1288[6:0];
    mat_tab_table_depth <= _GEN_1289[6:0];
    first_proc_id <= _GEN_1298[1:0];
    last_proc_id <= _GEN_1299[1:0];
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (2'h0 == cluster_id_field[1:0]) begin // @[pcie_interface.scala 218:37]
        next_proc_id_0 <= io_pcie_w_data[1:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (2'h1 == cluster_id_field[1:0]) begin // @[pcie_interface.scala 218:37]
        next_proc_id_1 <= io_pcie_w_data[1:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (2'h2 == cluster_id_field[1:0]) begin // @[pcie_interface.scala 218:37]
        next_proc_id_2 <= io_pcie_w_data[1:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (2'h3 == cluster_id_field[1:0]) begin // @[pcie_interface.scala 218:37]
        next_proc_id_3 <= io_pcie_w_data[1:0]; // @[pcie_interface.scala 218:37]
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  last_mau_id = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  state_id = _RAND_1[7:0];
  _RAND_2 = {1{`RANDOM}};
  mat_key_header_id = _RAND_2[7:0];
  _RAND_3 = {1{`RANDOM}};
  mat_key_internal_offset = _RAND_3[7:0];
  _RAND_4 = {1{`RANDOM}};
  mat_key_key_length = _RAND_4[7:0];
  _RAND_5 = {1{`RANDOM}};
  mat_tab_sram_id_table_0 = _RAND_5[5:0];
  _RAND_6 = {1{`RANDOM}};
  mat_tab_sram_id_table_1 = _RAND_6[5:0];
  _RAND_7 = {1{`RANDOM}};
  mat_tab_sram_id_table_2 = _RAND_7[5:0];
  _RAND_8 = {1{`RANDOM}};
  mat_tab_sram_id_table_3 = _RAND_8[5:0];
  _RAND_9 = {1{`RANDOM}};
  mat_tab_sram_id_table_4 = _RAND_9[5:0];
  _RAND_10 = {1{`RANDOM}};
  mat_tab_sram_id_table_5 = _RAND_10[5:0];
  _RAND_11 = {1{`RANDOM}};
  mat_tab_sram_id_table_6 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  mat_tab_sram_id_table_7 = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  mat_tab_sram_id_table_8 = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  mat_tab_sram_id_table_9 = _RAND_14[5:0];
  _RAND_15 = {1{`RANDOM}};
  mat_tab_sram_id_table_10 = _RAND_15[5:0];
  _RAND_16 = {1{`RANDOM}};
  mat_tab_sram_id_table_11 = _RAND_16[5:0];
  _RAND_17 = {1{`RANDOM}};
  mat_tab_sram_id_table_12 = _RAND_17[5:0];
  _RAND_18 = {1{`RANDOM}};
  mat_tab_sram_id_table_13 = _RAND_18[5:0];
  _RAND_19 = {1{`RANDOM}};
  mat_tab_sram_id_table_14 = _RAND_19[5:0];
  _RAND_20 = {1{`RANDOM}};
  mat_tab_sram_id_table_15 = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  mat_tab_sram_id_table_16 = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  mat_tab_sram_id_table_17 = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  mat_tab_sram_id_table_18 = _RAND_23[5:0];
  _RAND_24 = {1{`RANDOM}};
  mat_tab_sram_id_table_19 = _RAND_24[5:0];
  _RAND_25 = {1{`RANDOM}};
  mat_tab_sram_id_table_20 = _RAND_25[5:0];
  _RAND_26 = {1{`RANDOM}};
  mat_tab_sram_id_table_21 = _RAND_26[5:0];
  _RAND_27 = {1{`RANDOM}};
  mat_tab_sram_id_table_22 = _RAND_27[5:0];
  _RAND_28 = {1{`RANDOM}};
  mat_tab_sram_id_table_23 = _RAND_28[5:0];
  _RAND_29 = {1{`RANDOM}};
  mat_tab_sram_id_table_24 = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  mat_tab_sram_id_table_25 = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  mat_tab_sram_id_table_26 = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  mat_tab_sram_id_table_27 = _RAND_32[5:0];
  _RAND_33 = {1{`RANDOM}};
  mat_tab_sram_id_table_28 = _RAND_33[5:0];
  _RAND_34 = {1{`RANDOM}};
  mat_tab_sram_id_table_29 = _RAND_34[5:0];
  _RAND_35 = {1{`RANDOM}};
  mat_tab_sram_id_table_30 = _RAND_35[5:0];
  _RAND_36 = {1{`RANDOM}};
  mat_tab_sram_id_table_31 = _RAND_36[5:0];
  _RAND_37 = {1{`RANDOM}};
  mat_tab_sram_id_table_32 = _RAND_37[5:0];
  _RAND_38 = {1{`RANDOM}};
  mat_tab_sram_id_table_33 = _RAND_38[5:0];
  _RAND_39 = {1{`RANDOM}};
  mat_tab_sram_id_table_34 = _RAND_39[5:0];
  _RAND_40 = {1{`RANDOM}};
  mat_tab_sram_id_table_35 = _RAND_40[5:0];
  _RAND_41 = {1{`RANDOM}};
  mat_tab_sram_id_table_36 = _RAND_41[5:0];
  _RAND_42 = {1{`RANDOM}};
  mat_tab_sram_id_table_37 = _RAND_42[5:0];
  _RAND_43 = {1{`RANDOM}};
  mat_tab_sram_id_table_38 = _RAND_43[5:0];
  _RAND_44 = {1{`RANDOM}};
  mat_tab_sram_id_table_39 = _RAND_44[5:0];
  _RAND_45 = {1{`RANDOM}};
  mat_tab_sram_id_table_40 = _RAND_45[5:0];
  _RAND_46 = {1{`RANDOM}};
  mat_tab_sram_id_table_41 = _RAND_46[5:0];
  _RAND_47 = {1{`RANDOM}};
  mat_tab_sram_id_table_42 = _RAND_47[5:0];
  _RAND_48 = {1{`RANDOM}};
  mat_tab_sram_id_table_43 = _RAND_48[5:0];
  _RAND_49 = {1{`RANDOM}};
  mat_tab_sram_id_table_44 = _RAND_49[5:0];
  _RAND_50 = {1{`RANDOM}};
  mat_tab_sram_id_table_45 = _RAND_50[5:0];
  _RAND_51 = {1{`RANDOM}};
  mat_tab_sram_id_table_46 = _RAND_51[5:0];
  _RAND_52 = {1{`RANDOM}};
  mat_tab_sram_id_table_47 = _RAND_52[5:0];
  _RAND_53 = {1{`RANDOM}};
  mat_tab_sram_id_table_48 = _RAND_53[5:0];
  _RAND_54 = {1{`RANDOM}};
  mat_tab_sram_id_table_49 = _RAND_54[5:0];
  _RAND_55 = {1{`RANDOM}};
  mat_tab_sram_id_table_50 = _RAND_55[5:0];
  _RAND_56 = {1{`RANDOM}};
  mat_tab_sram_id_table_51 = _RAND_56[5:0];
  _RAND_57 = {1{`RANDOM}};
  mat_tab_sram_id_table_52 = _RAND_57[5:0];
  _RAND_58 = {1{`RANDOM}};
  mat_tab_sram_id_table_53 = _RAND_58[5:0];
  _RAND_59 = {1{`RANDOM}};
  mat_tab_sram_id_table_54 = _RAND_59[5:0];
  _RAND_60 = {1{`RANDOM}};
  mat_tab_sram_id_table_55 = _RAND_60[5:0];
  _RAND_61 = {1{`RANDOM}};
  mat_tab_sram_id_table_56 = _RAND_61[5:0];
  _RAND_62 = {1{`RANDOM}};
  mat_tab_sram_id_table_57 = _RAND_62[5:0];
  _RAND_63 = {1{`RANDOM}};
  mat_tab_sram_id_table_58 = _RAND_63[5:0];
  _RAND_64 = {1{`RANDOM}};
  mat_tab_sram_id_table_59 = _RAND_64[5:0];
  _RAND_65 = {1{`RANDOM}};
  mat_tab_sram_id_table_60 = _RAND_65[5:0];
  _RAND_66 = {1{`RANDOM}};
  mat_tab_sram_id_table_61 = _RAND_66[5:0];
  _RAND_67 = {1{`RANDOM}};
  mat_tab_sram_id_table_62 = _RAND_67[5:0];
  _RAND_68 = {1{`RANDOM}};
  mat_tab_sram_id_table_63 = _RAND_68[5:0];
  _RAND_69 = {1{`RANDOM}};
  mat_tab_table_width = _RAND_69[6:0];
  _RAND_70 = {1{`RANDOM}};
  mat_tab_table_depth = _RAND_70[6:0];
  _RAND_71 = {1{`RANDOM}};
  first_proc_id = _RAND_71[1:0];
  _RAND_72 = {1{`RANDOM}};
  last_proc_id = _RAND_72[1:0];
  _RAND_73 = {1{`RANDOM}};
  next_proc_id_0 = _RAND_73[1:0];
  _RAND_74 = {1{`RANDOM}};
  next_proc_id_1 = _RAND_74[1:0];
  _RAND_75 = {1{`RANDOM}};
  next_proc_id_2 = _RAND_75[1:0];
  _RAND_76 = {1{`RANDOM}};
  next_proc_id_3 = _RAND_76[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
