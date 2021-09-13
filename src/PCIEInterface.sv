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
  output        io_mod_proc_mod_4_par_mod_en,
  output        io_mod_proc_mod_4_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_4_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_4_par_mod_cs,
  output        io_mod_proc_mod_4_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_4_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_4_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_4_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_4_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_4_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_4_mat_mod_en,
  output        io_mod_proc_mod_4_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_4_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_4_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_4_mat_mod_key_mod_key_length,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_0,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_1,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_2,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_3,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_4,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_5,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_6,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_7,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_8,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_9,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_10,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_11,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_12,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_13,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_14,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_15,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_16,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_17,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_18,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_19,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_20,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_21,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_22,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_23,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_24,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_25,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_26,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_27,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_28,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_29,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_30,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_31,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_32,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_33,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_34,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_35,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_36,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_37,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_38,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_39,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_40,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_41,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_42,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_43,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_44,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_45,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_46,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_47,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_48,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_49,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_50,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_51,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_52,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_53,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_54,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_55,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_56,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_57,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_58,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_59,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_60,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_61,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_62,
  output [5:0]  io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_63,
  output [6:0]  io_mod_proc_mod_4_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_4_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_4_act_mod_en_0,
  output        io_mod_proc_mod_4_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_4_act_mod_addr,
  output [63:0] io_mod_proc_mod_4_act_mod_data_0,
  output [63:0] io_mod_proc_mod_4_act_mod_data_1,
  output        io_mod_proc_mod_5_par_mod_en,
  output        io_mod_proc_mod_5_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_5_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_5_par_mod_cs,
  output        io_mod_proc_mod_5_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_5_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_5_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_5_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_5_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_5_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_5_mat_mod_en,
  output        io_mod_proc_mod_5_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_5_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_5_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_5_mat_mod_key_mod_key_length,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_0,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_1,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_2,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_3,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_4,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_5,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_6,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_7,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_8,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_9,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_10,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_11,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_12,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_13,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_14,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_15,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_16,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_17,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_18,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_19,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_20,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_21,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_22,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_23,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_24,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_25,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_26,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_27,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_28,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_29,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_30,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_31,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_32,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_33,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_34,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_35,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_36,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_37,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_38,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_39,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_40,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_41,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_42,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_43,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_44,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_45,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_46,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_47,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_48,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_49,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_50,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_51,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_52,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_53,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_54,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_55,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_56,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_57,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_58,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_59,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_60,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_61,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_62,
  output [5:0]  io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_63,
  output [6:0]  io_mod_proc_mod_5_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_5_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_5_act_mod_en_0,
  output        io_mod_proc_mod_5_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_5_act_mod_addr,
  output [63:0] io_mod_proc_mod_5_act_mod_data_0,
  output [63:0] io_mod_proc_mod_5_act_mod_data_1,
  output        io_mod_proc_mod_6_par_mod_en,
  output        io_mod_proc_mod_6_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_6_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_6_par_mod_cs,
  output        io_mod_proc_mod_6_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_6_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_6_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_6_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_6_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_6_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_6_mat_mod_en,
  output        io_mod_proc_mod_6_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_6_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_6_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_6_mat_mod_key_mod_key_length,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_0,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_1,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_2,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_3,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_4,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_5,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_6,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_7,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_8,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_9,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_10,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_11,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_12,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_13,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_14,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_15,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_16,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_17,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_18,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_19,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_20,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_21,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_22,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_23,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_24,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_25,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_26,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_27,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_28,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_29,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_30,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_31,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_32,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_33,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_34,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_35,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_36,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_37,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_38,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_39,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_40,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_41,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_42,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_43,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_44,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_45,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_46,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_47,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_48,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_49,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_50,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_51,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_52,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_53,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_54,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_55,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_56,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_57,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_58,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_59,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_60,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_61,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_62,
  output [5:0]  io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_63,
  output [6:0]  io_mod_proc_mod_6_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_6_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_6_act_mod_en_0,
  output        io_mod_proc_mod_6_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_6_act_mod_addr,
  output [63:0] io_mod_proc_mod_6_act_mod_data_0,
  output [63:0] io_mod_proc_mod_6_act_mod_data_1,
  output        io_mod_proc_mod_7_par_mod_en,
  output        io_mod_proc_mod_7_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_7_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_7_par_mod_cs,
  output        io_mod_proc_mod_7_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_7_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_7_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_7_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_7_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_7_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_7_mat_mod_en,
  output        io_mod_proc_mod_7_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_7_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_7_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_7_mat_mod_key_mod_key_length,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_0,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_1,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_2,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_3,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_4,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_5,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_6,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_7,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_8,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_9,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_10,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_11,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_12,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_13,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_14,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_15,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_16,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_17,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_18,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_19,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_20,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_21,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_22,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_23,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_24,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_25,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_26,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_27,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_28,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_29,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_30,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_31,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_32,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_33,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_34,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_35,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_36,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_37,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_38,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_39,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_40,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_41,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_42,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_43,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_44,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_45,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_46,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_47,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_48,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_49,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_50,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_51,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_52,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_53,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_54,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_55,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_56,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_57,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_58,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_59,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_60,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_61,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_62,
  output [5:0]  io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_63,
  output [6:0]  io_mod_proc_mod_7_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_7_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_7_act_mod_en_0,
  output        io_mod_proc_mod_7_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_7_act_mod_addr,
  output [63:0] io_mod_proc_mod_7_act_mod_data_0,
  output [63:0] io_mod_proc_mod_7_act_mod_data_1,
  output        io_mod_proc_mod_8_par_mod_en,
  output        io_mod_proc_mod_8_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_8_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_8_par_mod_cs,
  output        io_mod_proc_mod_8_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_8_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_8_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_8_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_8_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_8_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_8_mat_mod_en,
  output        io_mod_proc_mod_8_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_8_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_8_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_8_mat_mod_key_mod_key_length,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_0,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_1,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_2,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_3,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_4,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_5,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_6,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_7,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_8,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_9,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_10,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_11,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_12,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_13,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_14,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_15,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_16,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_17,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_18,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_19,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_20,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_21,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_22,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_23,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_24,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_25,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_26,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_27,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_28,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_29,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_30,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_31,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_32,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_33,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_34,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_35,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_36,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_37,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_38,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_39,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_40,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_41,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_42,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_43,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_44,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_45,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_46,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_47,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_48,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_49,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_50,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_51,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_52,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_53,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_54,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_55,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_56,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_57,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_58,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_59,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_60,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_61,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_62,
  output [5:0]  io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_63,
  output [6:0]  io_mod_proc_mod_8_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_8_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_8_act_mod_en_0,
  output        io_mod_proc_mod_8_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_8_act_mod_addr,
  output [63:0] io_mod_proc_mod_8_act_mod_data_0,
  output [63:0] io_mod_proc_mod_8_act_mod_data_1,
  output        io_mod_proc_mod_9_par_mod_en,
  output        io_mod_proc_mod_9_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_9_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_9_par_mod_cs,
  output        io_mod_proc_mod_9_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_9_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_9_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_9_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_9_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_9_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_9_mat_mod_en,
  output        io_mod_proc_mod_9_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_9_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_9_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_9_mat_mod_key_mod_key_length,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_0,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_1,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_2,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_3,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_4,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_5,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_6,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_7,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_8,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_9,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_10,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_11,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_12,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_13,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_14,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_15,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_16,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_17,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_18,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_19,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_20,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_21,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_22,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_23,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_24,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_25,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_26,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_27,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_28,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_29,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_30,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_31,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_32,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_33,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_34,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_35,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_36,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_37,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_38,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_39,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_40,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_41,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_42,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_43,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_44,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_45,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_46,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_47,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_48,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_49,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_50,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_51,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_52,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_53,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_54,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_55,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_56,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_57,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_58,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_59,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_60,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_61,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_62,
  output [5:0]  io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_63,
  output [6:0]  io_mod_proc_mod_9_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_9_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_9_act_mod_en_0,
  output        io_mod_proc_mod_9_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_9_act_mod_addr,
  output [63:0] io_mod_proc_mod_9_act_mod_data_0,
  output [63:0] io_mod_proc_mod_9_act_mod_data_1,
  output        io_mod_proc_mod_10_par_mod_en,
  output        io_mod_proc_mod_10_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_10_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_10_par_mod_cs,
  output        io_mod_proc_mod_10_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_10_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_10_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_10_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_10_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_10_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_10_mat_mod_en,
  output        io_mod_proc_mod_10_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_10_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_10_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_10_mat_mod_key_mod_key_length,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_0,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_1,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_2,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_3,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_4,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_5,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_6,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_7,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_8,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_9,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_10,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_11,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_12,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_13,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_14,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_15,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_16,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_17,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_18,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_19,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_20,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_21,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_22,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_23,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_24,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_25,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_26,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_27,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_28,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_29,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_30,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_31,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_32,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_33,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_34,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_35,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_36,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_37,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_38,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_39,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_40,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_41,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_42,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_43,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_44,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_45,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_46,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_47,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_48,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_49,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_50,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_51,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_52,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_53,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_54,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_55,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_56,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_57,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_58,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_59,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_60,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_61,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_62,
  output [5:0]  io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_63,
  output [6:0]  io_mod_proc_mod_10_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_10_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_10_act_mod_en_0,
  output        io_mod_proc_mod_10_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_10_act_mod_addr,
  output [63:0] io_mod_proc_mod_10_act_mod_data_0,
  output [63:0] io_mod_proc_mod_10_act_mod_data_1,
  output        io_mod_proc_mod_11_par_mod_en,
  output        io_mod_proc_mod_11_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_11_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_11_par_mod_cs,
  output        io_mod_proc_mod_11_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_11_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_11_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_11_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_11_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_11_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_11_mat_mod_en,
  output        io_mod_proc_mod_11_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_11_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_11_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_11_mat_mod_key_mod_key_length,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_0,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_1,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_2,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_3,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_4,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_5,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_6,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_7,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_8,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_9,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_10,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_11,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_12,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_13,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_14,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_15,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_16,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_17,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_18,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_19,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_20,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_21,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_22,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_23,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_24,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_25,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_26,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_27,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_28,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_29,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_30,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_31,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_32,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_33,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_34,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_35,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_36,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_37,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_38,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_39,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_40,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_41,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_42,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_43,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_44,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_45,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_46,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_47,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_48,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_49,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_50,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_51,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_52,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_53,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_54,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_55,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_56,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_57,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_58,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_59,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_60,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_61,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_62,
  output [5:0]  io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_63,
  output [6:0]  io_mod_proc_mod_11_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_11_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_11_act_mod_en_0,
  output        io_mod_proc_mod_11_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_11_act_mod_addr,
  output [63:0] io_mod_proc_mod_11_act_mod_data_0,
  output [63:0] io_mod_proc_mod_11_act_mod_data_1,
  output        io_mod_xbar_mod_en,
  output [3:0]  io_mod_xbar_mod_first_proc_id,
  output [3:0]  io_mod_xbar_mod_last_proc_id,
  output [3:0]  io_mod_xbar_mod_next_proc_id_0,
  output [3:0]  io_mod_xbar_mod_next_proc_id_1,
  output [3:0]  io_mod_xbar_mod_next_proc_id_2,
  output [3:0]  io_mod_xbar_mod_next_proc_id_3,
  output [3:0]  io_mod_xbar_mod_next_proc_id_4,
  output [3:0]  io_mod_xbar_mod_next_proc_id_5,
  output [3:0]  io_mod_xbar_mod_next_proc_id_6,
  output [3:0]  io_mod_xbar_mod_next_proc_id_7,
  output [3:0]  io_mod_xbar_mod_next_proc_id_8,
  output [3:0]  io_mod_xbar_mod_next_proc_id_9,
  output [3:0]  io_mod_xbar_mod_next_proc_id_10,
  output [3:0]  io_mod_xbar_mod_next_proc_id_11,
  output [5:0]  io_w_0_wcs,
  output        io_w_0_w_en,
  output [7:0]  io_w_0_w_addr,
  output [63:0] io_w_0_w_data,
  output [5:0]  io_w_1_wcs,
  output        io_w_1_w_en,
  output [7:0]  io_w_1_w_addr,
  output [63:0] io_w_1_w_data,
  output [5:0]  io_w_2_wcs,
  output        io_w_2_w_en,
  output [7:0]  io_w_2_w_addr,
  output [63:0] io_w_2_w_data,
  output [5:0]  io_w_3_wcs,
  output        io_w_3_w_en,
  output [7:0]  io_w_3_w_addr,
  output [63:0] io_w_3_w_data
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
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
  reg [31:0] _RAND_82;
  reg [31:0] _RAND_83;
  reg [31:0] _RAND_84;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] type_field = io_pcie_w_en ? io_pcie_w_addr[19:16] : 4'h0; // @[pcie_interface.scala 80:29]
  wire [3:0] cluster_id_field = io_pcie_w_addr[15:12]; // @[pcie_interface.scala 81:35]
  wire [3:0] sram_id_field = io_pcie_w_addr[11:8]; // @[pcie_interface.scala 82:35]
  wire [3:0] config_field = io_pcie_w_addr[7:4]; // @[pcie_interface.scala 83:35]
  wire [3:0] bias_field = io_pcie_w_addr[3:0]; // @[pcie_interface.scala 84:35]
  wire [7:0] offset_field = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  wire  sram_resource_pool = type_field == 4'h1; // @[pcie_interface.scala 92:41]
  wire [3:0] _GEN_3916 = {{2'd0}, cluster_id_field[1:0]}; // @[pcie_interface.scala 96:57]
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
  wire [5:0] _GEN_991 = 6'h0 == _T_13 ? io_pcie_w_data[5:0] : _GEN_900; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_992 = 6'h1 == _T_13 ? io_pcie_w_data[5:0] : _GEN_901; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_993 = 6'h2 == _T_13 ? io_pcie_w_data[5:0] : _GEN_902; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_994 = 6'h3 == _T_13 ? io_pcie_w_data[5:0] : _GEN_903; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_995 = 6'h4 == _T_13 ? io_pcie_w_data[5:0] : _GEN_904; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_996 = 6'h5 == _T_13 ? io_pcie_w_data[5:0] : _GEN_905; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_997 = 6'h6 == _T_13 ? io_pcie_w_data[5:0] : _GEN_906; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_998 = 6'h7 == _T_13 ? io_pcie_w_data[5:0] : _GEN_907; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_999 = 6'h8 == _T_13 ? io_pcie_w_data[5:0] : _GEN_908; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1000 = 6'h9 == _T_13 ? io_pcie_w_data[5:0] : _GEN_909; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1001 = 6'ha == _T_13 ? io_pcie_w_data[5:0] : _GEN_910; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1002 = 6'hb == _T_13 ? io_pcie_w_data[5:0] : _GEN_911; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1003 = 6'hc == _T_13 ? io_pcie_w_data[5:0] : _GEN_912; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1004 = 6'hd == _T_13 ? io_pcie_w_data[5:0] : _GEN_913; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1005 = 6'he == _T_13 ? io_pcie_w_data[5:0] : _GEN_914; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1006 = 6'hf == _T_13 ? io_pcie_w_data[5:0] : _GEN_915; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1007 = 6'h10 == _T_13 ? io_pcie_w_data[5:0] : _GEN_916; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1008 = 6'h11 == _T_13 ? io_pcie_w_data[5:0] : _GEN_917; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1009 = 6'h12 == _T_13 ? io_pcie_w_data[5:0] : _GEN_918; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1010 = 6'h13 == _T_13 ? io_pcie_w_data[5:0] : _GEN_919; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1011 = 6'h14 == _T_13 ? io_pcie_w_data[5:0] : _GEN_920; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1012 = 6'h15 == _T_13 ? io_pcie_w_data[5:0] : _GEN_921; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1013 = 6'h16 == _T_13 ? io_pcie_w_data[5:0] : _GEN_922; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1014 = 6'h17 == _T_13 ? io_pcie_w_data[5:0] : _GEN_923; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1015 = 6'h18 == _T_13 ? io_pcie_w_data[5:0] : _GEN_924; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1016 = 6'h19 == _T_13 ? io_pcie_w_data[5:0] : _GEN_925; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1017 = 6'h1a == _T_13 ? io_pcie_w_data[5:0] : _GEN_926; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1018 = 6'h1b == _T_13 ? io_pcie_w_data[5:0] : _GEN_927; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1019 = 6'h1c == _T_13 ? io_pcie_w_data[5:0] : _GEN_928; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1020 = 6'h1d == _T_13 ? io_pcie_w_data[5:0] : _GEN_929; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1021 = 6'h1e == _T_13 ? io_pcie_w_data[5:0] : _GEN_930; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1022 = 6'h1f == _T_13 ? io_pcie_w_data[5:0] : _GEN_931; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1023 = 6'h20 == _T_13 ? io_pcie_w_data[5:0] : _GEN_932; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1024 = 6'h21 == _T_13 ? io_pcie_w_data[5:0] : _GEN_933; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1025 = 6'h22 == _T_13 ? io_pcie_w_data[5:0] : _GEN_934; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1026 = 6'h23 == _T_13 ? io_pcie_w_data[5:0] : _GEN_935; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1027 = 6'h24 == _T_13 ? io_pcie_w_data[5:0] : _GEN_936; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1028 = 6'h25 == _T_13 ? io_pcie_w_data[5:0] : _GEN_937; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1029 = 6'h26 == _T_13 ? io_pcie_w_data[5:0] : _GEN_938; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1030 = 6'h27 == _T_13 ? io_pcie_w_data[5:0] : _GEN_939; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1031 = 6'h28 == _T_13 ? io_pcie_w_data[5:0] : _GEN_940; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1032 = 6'h29 == _T_13 ? io_pcie_w_data[5:0] : _GEN_941; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1033 = 6'h2a == _T_13 ? io_pcie_w_data[5:0] : _GEN_942; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1034 = 6'h2b == _T_13 ? io_pcie_w_data[5:0] : _GEN_943; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1035 = 6'h2c == _T_13 ? io_pcie_w_data[5:0] : _GEN_944; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1036 = 6'h2d == _T_13 ? io_pcie_w_data[5:0] : _GEN_945; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1037 = 6'h2e == _T_13 ? io_pcie_w_data[5:0] : _GEN_946; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1038 = 6'h2f == _T_13 ? io_pcie_w_data[5:0] : _GEN_947; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1039 = 6'h30 == _T_13 ? io_pcie_w_data[5:0] : _GEN_948; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1040 = 6'h31 == _T_13 ? io_pcie_w_data[5:0] : _GEN_949; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1041 = 6'h32 == _T_13 ? io_pcie_w_data[5:0] : _GEN_950; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1042 = 6'h33 == _T_13 ? io_pcie_w_data[5:0] : _GEN_951; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1043 = 6'h34 == _T_13 ? io_pcie_w_data[5:0] : _GEN_952; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1044 = 6'h35 == _T_13 ? io_pcie_w_data[5:0] : _GEN_953; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1045 = 6'h36 == _T_13 ? io_pcie_w_data[5:0] : _GEN_954; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1046 = 6'h37 == _T_13 ? io_pcie_w_data[5:0] : _GEN_955; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1047 = 6'h38 == _T_13 ? io_pcie_w_data[5:0] : _GEN_956; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1048 = 6'h39 == _T_13 ? io_pcie_w_data[5:0] : _GEN_957; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1049 = 6'h3a == _T_13 ? io_pcie_w_data[5:0] : _GEN_958; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1050 = 6'h3b == _T_13 ? io_pcie_w_data[5:0] : _GEN_959; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1051 = 6'h3c == _T_13 ? io_pcie_w_data[5:0] : _GEN_960; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1052 = 6'h3d == _T_13 ? io_pcie_w_data[5:0] : _GEN_961; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1053 = 6'h3e == _T_13 ? io_pcie_w_data[5:0] : _GEN_962; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1054 = 6'h3f == _T_13 ? io_pcie_w_data[5:0] : _GEN_963; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1055 = sram_id_field == 4'h4 ? _GEN_991 : _GEN_900; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1056 = sram_id_field == 4'h4 ? _GEN_992 : _GEN_901; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1057 = sram_id_field == 4'h4 ? _GEN_993 : _GEN_902; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1058 = sram_id_field == 4'h4 ? _GEN_994 : _GEN_903; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1059 = sram_id_field == 4'h4 ? _GEN_995 : _GEN_904; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1060 = sram_id_field == 4'h4 ? _GEN_996 : _GEN_905; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1061 = sram_id_field == 4'h4 ? _GEN_997 : _GEN_906; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1062 = sram_id_field == 4'h4 ? _GEN_998 : _GEN_907; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1063 = sram_id_field == 4'h4 ? _GEN_999 : _GEN_908; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1064 = sram_id_field == 4'h4 ? _GEN_1000 : _GEN_909; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1065 = sram_id_field == 4'h4 ? _GEN_1001 : _GEN_910; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1066 = sram_id_field == 4'h4 ? _GEN_1002 : _GEN_911; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1067 = sram_id_field == 4'h4 ? _GEN_1003 : _GEN_912; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1068 = sram_id_field == 4'h4 ? _GEN_1004 : _GEN_913; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1069 = sram_id_field == 4'h4 ? _GEN_1005 : _GEN_914; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1070 = sram_id_field == 4'h4 ? _GEN_1006 : _GEN_915; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1071 = sram_id_field == 4'h4 ? _GEN_1007 : _GEN_916; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1072 = sram_id_field == 4'h4 ? _GEN_1008 : _GEN_917; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1073 = sram_id_field == 4'h4 ? _GEN_1009 : _GEN_918; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1074 = sram_id_field == 4'h4 ? _GEN_1010 : _GEN_919; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1075 = sram_id_field == 4'h4 ? _GEN_1011 : _GEN_920; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1076 = sram_id_field == 4'h4 ? _GEN_1012 : _GEN_921; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1077 = sram_id_field == 4'h4 ? _GEN_1013 : _GEN_922; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1078 = sram_id_field == 4'h4 ? _GEN_1014 : _GEN_923; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1079 = sram_id_field == 4'h4 ? _GEN_1015 : _GEN_924; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1080 = sram_id_field == 4'h4 ? _GEN_1016 : _GEN_925; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1081 = sram_id_field == 4'h4 ? _GEN_1017 : _GEN_926; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1082 = sram_id_field == 4'h4 ? _GEN_1018 : _GEN_927; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1083 = sram_id_field == 4'h4 ? _GEN_1019 : _GEN_928; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1084 = sram_id_field == 4'h4 ? _GEN_1020 : _GEN_929; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1085 = sram_id_field == 4'h4 ? _GEN_1021 : _GEN_930; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1086 = sram_id_field == 4'h4 ? _GEN_1022 : _GEN_931; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1087 = sram_id_field == 4'h4 ? _GEN_1023 : _GEN_932; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1088 = sram_id_field == 4'h4 ? _GEN_1024 : _GEN_933; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1089 = sram_id_field == 4'h4 ? _GEN_1025 : _GEN_934; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1090 = sram_id_field == 4'h4 ? _GEN_1026 : _GEN_935; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1091 = sram_id_field == 4'h4 ? _GEN_1027 : _GEN_936; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1092 = sram_id_field == 4'h4 ? _GEN_1028 : _GEN_937; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1093 = sram_id_field == 4'h4 ? _GEN_1029 : _GEN_938; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1094 = sram_id_field == 4'h4 ? _GEN_1030 : _GEN_939; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1095 = sram_id_field == 4'h4 ? _GEN_1031 : _GEN_940; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1096 = sram_id_field == 4'h4 ? _GEN_1032 : _GEN_941; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1097 = sram_id_field == 4'h4 ? _GEN_1033 : _GEN_942; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1098 = sram_id_field == 4'h4 ? _GEN_1034 : _GEN_943; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1099 = sram_id_field == 4'h4 ? _GEN_1035 : _GEN_944; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1100 = sram_id_field == 4'h4 ? _GEN_1036 : _GEN_945; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1101 = sram_id_field == 4'h4 ? _GEN_1037 : _GEN_946; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1102 = sram_id_field == 4'h4 ? _GEN_1038 : _GEN_947; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1103 = sram_id_field == 4'h4 ? _GEN_1039 : _GEN_948; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1104 = sram_id_field == 4'h4 ? _GEN_1040 : _GEN_949; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1105 = sram_id_field == 4'h4 ? _GEN_1041 : _GEN_950; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1106 = sram_id_field == 4'h4 ? _GEN_1042 : _GEN_951; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1107 = sram_id_field == 4'h4 ? _GEN_1043 : _GEN_952; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1108 = sram_id_field == 4'h4 ? _GEN_1044 : _GEN_953; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1109 = sram_id_field == 4'h4 ? _GEN_1045 : _GEN_954; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1110 = sram_id_field == 4'h4 ? _GEN_1046 : _GEN_955; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1111 = sram_id_field == 4'h4 ? _GEN_1047 : _GEN_956; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1112 = sram_id_field == 4'h4 ? _GEN_1048 : _GEN_957; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1113 = sram_id_field == 4'h4 ? _GEN_1049 : _GEN_958; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1114 = sram_id_field == 4'h4 ? _GEN_1050 : _GEN_959; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1115 = sram_id_field == 4'h4 ? _GEN_1051 : _GEN_960; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1116 = sram_id_field == 4'h4 ? _GEN_1052 : _GEN_961; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1117 = sram_id_field == 4'h4 ? _GEN_1053 : _GEN_962; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1118 = sram_id_field == 4'h4 ? _GEN_1054 : _GEN_963; // @[pcie_interface.scala 176:52]
  wire [63:0] _GEN_1119 = _T_5 ? io_pcie_w_data : _GEN_964; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_1120 = _T_9 ? io_pcie_w_data : _GEN_965; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_1122 = sram_id_field == 4'h5 ? _GEN_1119 : _GEN_964; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1123 = sram_id_field == 4'h5 ? _GEN_1120 : _GEN_965; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1126 = type_field == 4'h3 ? _GEN_973 : _GEN_891; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1127 = type_field == 4'h3 ? _GEN_978 : _GEN_892; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1132 = type_field == 4'h3 ? _GEN_987 : _GEN_896; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1133 = type_field == 4'h3 ? _GEN_988 : _GEN_897; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1134 = type_field == 4'h3 ? _GEN_989 : _GEN_898; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1136 = type_field == 4'h3 ? _GEN_1055 : _GEN_900; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1137 = type_field == 4'h3 ? _GEN_1056 : _GEN_901; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1138 = type_field == 4'h3 ? _GEN_1057 : _GEN_902; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1139 = type_field == 4'h3 ? _GEN_1058 : _GEN_903; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1140 = type_field == 4'h3 ? _GEN_1059 : _GEN_904; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1141 = type_field == 4'h3 ? _GEN_1060 : _GEN_905; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1142 = type_field == 4'h3 ? _GEN_1061 : _GEN_906; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1143 = type_field == 4'h3 ? _GEN_1062 : _GEN_907; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1144 = type_field == 4'h3 ? _GEN_1063 : _GEN_908; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1145 = type_field == 4'h3 ? _GEN_1064 : _GEN_909; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1146 = type_field == 4'h3 ? _GEN_1065 : _GEN_910; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1147 = type_field == 4'h3 ? _GEN_1066 : _GEN_911; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1148 = type_field == 4'h3 ? _GEN_1067 : _GEN_912; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1149 = type_field == 4'h3 ? _GEN_1068 : _GEN_913; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1150 = type_field == 4'h3 ? _GEN_1069 : _GEN_914; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1151 = type_field == 4'h3 ? _GEN_1070 : _GEN_915; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1152 = type_field == 4'h3 ? _GEN_1071 : _GEN_916; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1153 = type_field == 4'h3 ? _GEN_1072 : _GEN_917; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1154 = type_field == 4'h3 ? _GEN_1073 : _GEN_918; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1155 = type_field == 4'h3 ? _GEN_1074 : _GEN_919; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1156 = type_field == 4'h3 ? _GEN_1075 : _GEN_920; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1157 = type_field == 4'h3 ? _GEN_1076 : _GEN_921; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1158 = type_field == 4'h3 ? _GEN_1077 : _GEN_922; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1159 = type_field == 4'h3 ? _GEN_1078 : _GEN_923; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1160 = type_field == 4'h3 ? _GEN_1079 : _GEN_924; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1161 = type_field == 4'h3 ? _GEN_1080 : _GEN_925; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1162 = type_field == 4'h3 ? _GEN_1081 : _GEN_926; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1163 = type_field == 4'h3 ? _GEN_1082 : _GEN_927; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1164 = type_field == 4'h3 ? _GEN_1083 : _GEN_928; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1165 = type_field == 4'h3 ? _GEN_1084 : _GEN_929; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1166 = type_field == 4'h3 ? _GEN_1085 : _GEN_930; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1167 = type_field == 4'h3 ? _GEN_1086 : _GEN_931; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1168 = type_field == 4'h3 ? _GEN_1087 : _GEN_932; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1169 = type_field == 4'h3 ? _GEN_1088 : _GEN_933; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1170 = type_field == 4'h3 ? _GEN_1089 : _GEN_934; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1171 = type_field == 4'h3 ? _GEN_1090 : _GEN_935; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1172 = type_field == 4'h3 ? _GEN_1091 : _GEN_936; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1173 = type_field == 4'h3 ? _GEN_1092 : _GEN_937; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1174 = type_field == 4'h3 ? _GEN_1093 : _GEN_938; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1175 = type_field == 4'h3 ? _GEN_1094 : _GEN_939; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1176 = type_field == 4'h3 ? _GEN_1095 : _GEN_940; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1177 = type_field == 4'h3 ? _GEN_1096 : _GEN_941; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1178 = type_field == 4'h3 ? _GEN_1097 : _GEN_942; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1179 = type_field == 4'h3 ? _GEN_1098 : _GEN_943; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1180 = type_field == 4'h3 ? _GEN_1099 : _GEN_944; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1181 = type_field == 4'h3 ? _GEN_1100 : _GEN_945; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1182 = type_field == 4'h3 ? _GEN_1101 : _GEN_946; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1183 = type_field == 4'h3 ? _GEN_1102 : _GEN_947; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1184 = type_field == 4'h3 ? _GEN_1103 : _GEN_948; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1185 = type_field == 4'h3 ? _GEN_1104 : _GEN_949; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1186 = type_field == 4'h3 ? _GEN_1105 : _GEN_950; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1187 = type_field == 4'h3 ? _GEN_1106 : _GEN_951; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1188 = type_field == 4'h3 ? _GEN_1107 : _GEN_952; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1189 = type_field == 4'h3 ? _GEN_1108 : _GEN_953; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1190 = type_field == 4'h3 ? _GEN_1109 : _GEN_954; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1191 = type_field == 4'h3 ? _GEN_1110 : _GEN_955; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1192 = type_field == 4'h3 ? _GEN_1111 : _GEN_956; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1193 = type_field == 4'h3 ? _GEN_1112 : _GEN_957; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1194 = type_field == 4'h3 ? _GEN_1113 : _GEN_958; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1195 = type_field == 4'h3 ? _GEN_1114 : _GEN_959; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1196 = type_field == 4'h3 ? _GEN_1115 : _GEN_960; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1197 = type_field == 4'h3 ? _GEN_1116 : _GEN_961; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1198 = type_field == 4'h3 ? _GEN_1117 : _GEN_962; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1199 = type_field == 4'h3 ? _GEN_1118 : _GEN_963; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1200 = type_field == 4'h3 ? _GEN_1122 : _GEN_964; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1201 = type_field == 4'h3 ? _GEN_1123 : _GEN_965; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_1214 = cluster_id_field == 4'h3 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_1215 = cluster_id_field == 4'h3 ? _GEN_1126 : _GEN_891; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1216 = cluster_id_field == 4'h3 ? _GEN_1127 : _GEN_892; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_1219 = cluster_id_field == 4'h3 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_1220 = cluster_id_field == 4'h3 ? _GEN_1132 : _GEN_896; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1221 = cluster_id_field == 4'h3 ? _GEN_1133 : _GEN_897; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1222 = cluster_id_field == 4'h3 ? _GEN_1134 : _GEN_898; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1224 = cluster_id_field == 4'h3 ? _GEN_1136 : _GEN_900; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1225 = cluster_id_field == 4'h3 ? _GEN_1137 : _GEN_901; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1226 = cluster_id_field == 4'h3 ? _GEN_1138 : _GEN_902; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1227 = cluster_id_field == 4'h3 ? _GEN_1139 : _GEN_903; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1228 = cluster_id_field == 4'h3 ? _GEN_1140 : _GEN_904; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1229 = cluster_id_field == 4'h3 ? _GEN_1141 : _GEN_905; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1230 = cluster_id_field == 4'h3 ? _GEN_1142 : _GEN_906; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1231 = cluster_id_field == 4'h3 ? _GEN_1143 : _GEN_907; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1232 = cluster_id_field == 4'h3 ? _GEN_1144 : _GEN_908; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1233 = cluster_id_field == 4'h3 ? _GEN_1145 : _GEN_909; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1234 = cluster_id_field == 4'h3 ? _GEN_1146 : _GEN_910; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1235 = cluster_id_field == 4'h3 ? _GEN_1147 : _GEN_911; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1236 = cluster_id_field == 4'h3 ? _GEN_1148 : _GEN_912; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1237 = cluster_id_field == 4'h3 ? _GEN_1149 : _GEN_913; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1238 = cluster_id_field == 4'h3 ? _GEN_1150 : _GEN_914; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1239 = cluster_id_field == 4'h3 ? _GEN_1151 : _GEN_915; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1240 = cluster_id_field == 4'h3 ? _GEN_1152 : _GEN_916; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1241 = cluster_id_field == 4'h3 ? _GEN_1153 : _GEN_917; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1242 = cluster_id_field == 4'h3 ? _GEN_1154 : _GEN_918; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1243 = cluster_id_field == 4'h3 ? _GEN_1155 : _GEN_919; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1244 = cluster_id_field == 4'h3 ? _GEN_1156 : _GEN_920; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1245 = cluster_id_field == 4'h3 ? _GEN_1157 : _GEN_921; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1246 = cluster_id_field == 4'h3 ? _GEN_1158 : _GEN_922; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1247 = cluster_id_field == 4'h3 ? _GEN_1159 : _GEN_923; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1248 = cluster_id_field == 4'h3 ? _GEN_1160 : _GEN_924; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1249 = cluster_id_field == 4'h3 ? _GEN_1161 : _GEN_925; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1250 = cluster_id_field == 4'h3 ? _GEN_1162 : _GEN_926; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1251 = cluster_id_field == 4'h3 ? _GEN_1163 : _GEN_927; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1252 = cluster_id_field == 4'h3 ? _GEN_1164 : _GEN_928; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1253 = cluster_id_field == 4'h3 ? _GEN_1165 : _GEN_929; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1254 = cluster_id_field == 4'h3 ? _GEN_1166 : _GEN_930; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1255 = cluster_id_field == 4'h3 ? _GEN_1167 : _GEN_931; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1256 = cluster_id_field == 4'h3 ? _GEN_1168 : _GEN_932; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1257 = cluster_id_field == 4'h3 ? _GEN_1169 : _GEN_933; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1258 = cluster_id_field == 4'h3 ? _GEN_1170 : _GEN_934; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1259 = cluster_id_field == 4'h3 ? _GEN_1171 : _GEN_935; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1260 = cluster_id_field == 4'h3 ? _GEN_1172 : _GEN_936; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1261 = cluster_id_field == 4'h3 ? _GEN_1173 : _GEN_937; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1262 = cluster_id_field == 4'h3 ? _GEN_1174 : _GEN_938; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1263 = cluster_id_field == 4'h3 ? _GEN_1175 : _GEN_939; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1264 = cluster_id_field == 4'h3 ? _GEN_1176 : _GEN_940; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1265 = cluster_id_field == 4'h3 ? _GEN_1177 : _GEN_941; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1266 = cluster_id_field == 4'h3 ? _GEN_1178 : _GEN_942; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1267 = cluster_id_field == 4'h3 ? _GEN_1179 : _GEN_943; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1268 = cluster_id_field == 4'h3 ? _GEN_1180 : _GEN_944; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1269 = cluster_id_field == 4'h3 ? _GEN_1181 : _GEN_945; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1270 = cluster_id_field == 4'h3 ? _GEN_1182 : _GEN_946; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1271 = cluster_id_field == 4'h3 ? _GEN_1183 : _GEN_947; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1272 = cluster_id_field == 4'h3 ? _GEN_1184 : _GEN_948; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1273 = cluster_id_field == 4'h3 ? _GEN_1185 : _GEN_949; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1274 = cluster_id_field == 4'h3 ? _GEN_1186 : _GEN_950; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1275 = cluster_id_field == 4'h3 ? _GEN_1187 : _GEN_951; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1276 = cluster_id_field == 4'h3 ? _GEN_1188 : _GEN_952; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1277 = cluster_id_field == 4'h3 ? _GEN_1189 : _GEN_953; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1278 = cluster_id_field == 4'h3 ? _GEN_1190 : _GEN_954; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1279 = cluster_id_field == 4'h3 ? _GEN_1191 : _GEN_955; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1280 = cluster_id_field == 4'h3 ? _GEN_1192 : _GEN_956; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1281 = cluster_id_field == 4'h3 ? _GEN_1193 : _GEN_957; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1282 = cluster_id_field == 4'h3 ? _GEN_1194 : _GEN_958; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1283 = cluster_id_field == 4'h3 ? _GEN_1195 : _GEN_959; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1284 = cluster_id_field == 4'h3 ? _GEN_1196 : _GEN_960; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1285 = cluster_id_field == 4'h3 ? _GEN_1197 : _GEN_961; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1286 = cluster_id_field == 4'h3 ? _GEN_1198 : _GEN_962; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1287 = cluster_id_field == 4'h3 ? _GEN_1199 : _GEN_963; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1288 = cluster_id_field == 4'h3 ? _GEN_1200 : _GEN_964; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1289 = cluster_id_field == 4'h3 ? _GEN_1201 : _GEN_965; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1297 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_1215; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_1298 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_1216; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_1302 = sram_id_field == 4'h2 ? _GEN_1298 : _GEN_1216; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_1306 = _T_5 ? io_pcie_w_data : _GEN_1220; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_1307 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_1221; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_1308 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_1222; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_1311 = sram_id_field == 4'h3 ? _GEN_1306 : _GEN_1220; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1312 = sram_id_field == 4'h3 ? _GEN_1307 : _GEN_1221; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1313 = sram_id_field == 4'h3 ? _GEN_1308 : _GEN_1222; // @[pcie_interface.scala 161:52]
  wire [5:0] _GEN_1315 = 6'h0 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1224; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1316 = 6'h1 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1225; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1317 = 6'h2 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1226; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1318 = 6'h3 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1227; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1319 = 6'h4 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1228; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1320 = 6'h5 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1229; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1321 = 6'h6 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1230; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1322 = 6'h7 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1231; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1323 = 6'h8 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1232; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1324 = 6'h9 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1233; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1325 = 6'ha == _T_13 ? io_pcie_w_data[5:0] : _GEN_1234; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1326 = 6'hb == _T_13 ? io_pcie_w_data[5:0] : _GEN_1235; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1327 = 6'hc == _T_13 ? io_pcie_w_data[5:0] : _GEN_1236; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1328 = 6'hd == _T_13 ? io_pcie_w_data[5:0] : _GEN_1237; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1329 = 6'he == _T_13 ? io_pcie_w_data[5:0] : _GEN_1238; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1330 = 6'hf == _T_13 ? io_pcie_w_data[5:0] : _GEN_1239; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1331 = 6'h10 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1240; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1332 = 6'h11 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1241; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1333 = 6'h12 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1242; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1334 = 6'h13 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1243; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1335 = 6'h14 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1244; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1336 = 6'h15 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1245; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1337 = 6'h16 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1246; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1338 = 6'h17 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1247; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1339 = 6'h18 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1248; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1340 = 6'h19 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1249; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1341 = 6'h1a == _T_13 ? io_pcie_w_data[5:0] : _GEN_1250; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1342 = 6'h1b == _T_13 ? io_pcie_w_data[5:0] : _GEN_1251; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1343 = 6'h1c == _T_13 ? io_pcie_w_data[5:0] : _GEN_1252; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1344 = 6'h1d == _T_13 ? io_pcie_w_data[5:0] : _GEN_1253; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1345 = 6'h1e == _T_13 ? io_pcie_w_data[5:0] : _GEN_1254; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1346 = 6'h1f == _T_13 ? io_pcie_w_data[5:0] : _GEN_1255; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1347 = 6'h20 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1256; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1348 = 6'h21 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1257; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1349 = 6'h22 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1258; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1350 = 6'h23 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1259; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1351 = 6'h24 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1260; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1352 = 6'h25 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1261; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1353 = 6'h26 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1262; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1354 = 6'h27 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1263; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1355 = 6'h28 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1264; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1356 = 6'h29 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1265; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1357 = 6'h2a == _T_13 ? io_pcie_w_data[5:0] : _GEN_1266; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1358 = 6'h2b == _T_13 ? io_pcie_w_data[5:0] : _GEN_1267; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1359 = 6'h2c == _T_13 ? io_pcie_w_data[5:0] : _GEN_1268; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1360 = 6'h2d == _T_13 ? io_pcie_w_data[5:0] : _GEN_1269; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1361 = 6'h2e == _T_13 ? io_pcie_w_data[5:0] : _GEN_1270; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1362 = 6'h2f == _T_13 ? io_pcie_w_data[5:0] : _GEN_1271; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1363 = 6'h30 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1272; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1364 = 6'h31 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1273; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1365 = 6'h32 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1274; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1366 = 6'h33 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1275; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1367 = 6'h34 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1276; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1368 = 6'h35 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1277; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1369 = 6'h36 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1278; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1370 = 6'h37 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1279; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1371 = 6'h38 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1280; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1372 = 6'h39 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1281; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1373 = 6'h3a == _T_13 ? io_pcie_w_data[5:0] : _GEN_1282; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1374 = 6'h3b == _T_13 ? io_pcie_w_data[5:0] : _GEN_1283; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1375 = 6'h3c == _T_13 ? io_pcie_w_data[5:0] : _GEN_1284; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1376 = 6'h3d == _T_13 ? io_pcie_w_data[5:0] : _GEN_1285; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1377 = 6'h3e == _T_13 ? io_pcie_w_data[5:0] : _GEN_1286; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1378 = 6'h3f == _T_13 ? io_pcie_w_data[5:0] : _GEN_1287; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1379 = sram_id_field == 4'h4 ? _GEN_1315 : _GEN_1224; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1380 = sram_id_field == 4'h4 ? _GEN_1316 : _GEN_1225; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1381 = sram_id_field == 4'h4 ? _GEN_1317 : _GEN_1226; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1382 = sram_id_field == 4'h4 ? _GEN_1318 : _GEN_1227; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1383 = sram_id_field == 4'h4 ? _GEN_1319 : _GEN_1228; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1384 = sram_id_field == 4'h4 ? _GEN_1320 : _GEN_1229; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1385 = sram_id_field == 4'h4 ? _GEN_1321 : _GEN_1230; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1386 = sram_id_field == 4'h4 ? _GEN_1322 : _GEN_1231; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1387 = sram_id_field == 4'h4 ? _GEN_1323 : _GEN_1232; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1388 = sram_id_field == 4'h4 ? _GEN_1324 : _GEN_1233; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1389 = sram_id_field == 4'h4 ? _GEN_1325 : _GEN_1234; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1390 = sram_id_field == 4'h4 ? _GEN_1326 : _GEN_1235; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1391 = sram_id_field == 4'h4 ? _GEN_1327 : _GEN_1236; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1392 = sram_id_field == 4'h4 ? _GEN_1328 : _GEN_1237; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1393 = sram_id_field == 4'h4 ? _GEN_1329 : _GEN_1238; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1394 = sram_id_field == 4'h4 ? _GEN_1330 : _GEN_1239; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1395 = sram_id_field == 4'h4 ? _GEN_1331 : _GEN_1240; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1396 = sram_id_field == 4'h4 ? _GEN_1332 : _GEN_1241; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1397 = sram_id_field == 4'h4 ? _GEN_1333 : _GEN_1242; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1398 = sram_id_field == 4'h4 ? _GEN_1334 : _GEN_1243; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1399 = sram_id_field == 4'h4 ? _GEN_1335 : _GEN_1244; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1400 = sram_id_field == 4'h4 ? _GEN_1336 : _GEN_1245; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1401 = sram_id_field == 4'h4 ? _GEN_1337 : _GEN_1246; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1402 = sram_id_field == 4'h4 ? _GEN_1338 : _GEN_1247; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1403 = sram_id_field == 4'h4 ? _GEN_1339 : _GEN_1248; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1404 = sram_id_field == 4'h4 ? _GEN_1340 : _GEN_1249; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1405 = sram_id_field == 4'h4 ? _GEN_1341 : _GEN_1250; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1406 = sram_id_field == 4'h4 ? _GEN_1342 : _GEN_1251; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1407 = sram_id_field == 4'h4 ? _GEN_1343 : _GEN_1252; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1408 = sram_id_field == 4'h4 ? _GEN_1344 : _GEN_1253; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1409 = sram_id_field == 4'h4 ? _GEN_1345 : _GEN_1254; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1410 = sram_id_field == 4'h4 ? _GEN_1346 : _GEN_1255; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1411 = sram_id_field == 4'h4 ? _GEN_1347 : _GEN_1256; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1412 = sram_id_field == 4'h4 ? _GEN_1348 : _GEN_1257; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1413 = sram_id_field == 4'h4 ? _GEN_1349 : _GEN_1258; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1414 = sram_id_field == 4'h4 ? _GEN_1350 : _GEN_1259; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1415 = sram_id_field == 4'h4 ? _GEN_1351 : _GEN_1260; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1416 = sram_id_field == 4'h4 ? _GEN_1352 : _GEN_1261; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1417 = sram_id_field == 4'h4 ? _GEN_1353 : _GEN_1262; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1418 = sram_id_field == 4'h4 ? _GEN_1354 : _GEN_1263; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1419 = sram_id_field == 4'h4 ? _GEN_1355 : _GEN_1264; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1420 = sram_id_field == 4'h4 ? _GEN_1356 : _GEN_1265; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1421 = sram_id_field == 4'h4 ? _GEN_1357 : _GEN_1266; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1422 = sram_id_field == 4'h4 ? _GEN_1358 : _GEN_1267; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1423 = sram_id_field == 4'h4 ? _GEN_1359 : _GEN_1268; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1424 = sram_id_field == 4'h4 ? _GEN_1360 : _GEN_1269; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1425 = sram_id_field == 4'h4 ? _GEN_1361 : _GEN_1270; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1426 = sram_id_field == 4'h4 ? _GEN_1362 : _GEN_1271; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1427 = sram_id_field == 4'h4 ? _GEN_1363 : _GEN_1272; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1428 = sram_id_field == 4'h4 ? _GEN_1364 : _GEN_1273; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1429 = sram_id_field == 4'h4 ? _GEN_1365 : _GEN_1274; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1430 = sram_id_field == 4'h4 ? _GEN_1366 : _GEN_1275; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1431 = sram_id_field == 4'h4 ? _GEN_1367 : _GEN_1276; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1432 = sram_id_field == 4'h4 ? _GEN_1368 : _GEN_1277; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1433 = sram_id_field == 4'h4 ? _GEN_1369 : _GEN_1278; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1434 = sram_id_field == 4'h4 ? _GEN_1370 : _GEN_1279; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1435 = sram_id_field == 4'h4 ? _GEN_1371 : _GEN_1280; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1436 = sram_id_field == 4'h4 ? _GEN_1372 : _GEN_1281; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1437 = sram_id_field == 4'h4 ? _GEN_1373 : _GEN_1282; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1438 = sram_id_field == 4'h4 ? _GEN_1374 : _GEN_1283; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1439 = sram_id_field == 4'h4 ? _GEN_1375 : _GEN_1284; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1440 = sram_id_field == 4'h4 ? _GEN_1376 : _GEN_1285; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1441 = sram_id_field == 4'h4 ? _GEN_1377 : _GEN_1286; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1442 = sram_id_field == 4'h4 ? _GEN_1378 : _GEN_1287; // @[pcie_interface.scala 176:52]
  wire [63:0] _GEN_1443 = _T_5 ? io_pcie_w_data : _GEN_1288; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_1444 = _T_9 ? io_pcie_w_data : _GEN_1289; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_1446 = sram_id_field == 4'h5 ? _GEN_1443 : _GEN_1288; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1447 = sram_id_field == 4'h5 ? _GEN_1444 : _GEN_1289; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1450 = type_field == 4'h3 ? _GEN_1297 : _GEN_1215; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1451 = type_field == 4'h3 ? _GEN_1302 : _GEN_1216; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1456 = type_field == 4'h3 ? _GEN_1311 : _GEN_1220; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1457 = type_field == 4'h3 ? _GEN_1312 : _GEN_1221; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1458 = type_field == 4'h3 ? _GEN_1313 : _GEN_1222; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1460 = type_field == 4'h3 ? _GEN_1379 : _GEN_1224; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1461 = type_field == 4'h3 ? _GEN_1380 : _GEN_1225; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1462 = type_field == 4'h3 ? _GEN_1381 : _GEN_1226; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1463 = type_field == 4'h3 ? _GEN_1382 : _GEN_1227; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1464 = type_field == 4'h3 ? _GEN_1383 : _GEN_1228; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1465 = type_field == 4'h3 ? _GEN_1384 : _GEN_1229; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1466 = type_field == 4'h3 ? _GEN_1385 : _GEN_1230; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1467 = type_field == 4'h3 ? _GEN_1386 : _GEN_1231; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1468 = type_field == 4'h3 ? _GEN_1387 : _GEN_1232; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1469 = type_field == 4'h3 ? _GEN_1388 : _GEN_1233; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1470 = type_field == 4'h3 ? _GEN_1389 : _GEN_1234; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1471 = type_field == 4'h3 ? _GEN_1390 : _GEN_1235; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1472 = type_field == 4'h3 ? _GEN_1391 : _GEN_1236; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1473 = type_field == 4'h3 ? _GEN_1392 : _GEN_1237; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1474 = type_field == 4'h3 ? _GEN_1393 : _GEN_1238; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1475 = type_field == 4'h3 ? _GEN_1394 : _GEN_1239; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1476 = type_field == 4'h3 ? _GEN_1395 : _GEN_1240; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1477 = type_field == 4'h3 ? _GEN_1396 : _GEN_1241; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1478 = type_field == 4'h3 ? _GEN_1397 : _GEN_1242; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1479 = type_field == 4'h3 ? _GEN_1398 : _GEN_1243; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1480 = type_field == 4'h3 ? _GEN_1399 : _GEN_1244; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1481 = type_field == 4'h3 ? _GEN_1400 : _GEN_1245; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1482 = type_field == 4'h3 ? _GEN_1401 : _GEN_1246; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1483 = type_field == 4'h3 ? _GEN_1402 : _GEN_1247; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1484 = type_field == 4'h3 ? _GEN_1403 : _GEN_1248; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1485 = type_field == 4'h3 ? _GEN_1404 : _GEN_1249; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1486 = type_field == 4'h3 ? _GEN_1405 : _GEN_1250; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1487 = type_field == 4'h3 ? _GEN_1406 : _GEN_1251; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1488 = type_field == 4'h3 ? _GEN_1407 : _GEN_1252; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1489 = type_field == 4'h3 ? _GEN_1408 : _GEN_1253; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1490 = type_field == 4'h3 ? _GEN_1409 : _GEN_1254; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1491 = type_field == 4'h3 ? _GEN_1410 : _GEN_1255; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1492 = type_field == 4'h3 ? _GEN_1411 : _GEN_1256; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1493 = type_field == 4'h3 ? _GEN_1412 : _GEN_1257; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1494 = type_field == 4'h3 ? _GEN_1413 : _GEN_1258; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1495 = type_field == 4'h3 ? _GEN_1414 : _GEN_1259; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1496 = type_field == 4'h3 ? _GEN_1415 : _GEN_1260; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1497 = type_field == 4'h3 ? _GEN_1416 : _GEN_1261; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1498 = type_field == 4'h3 ? _GEN_1417 : _GEN_1262; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1499 = type_field == 4'h3 ? _GEN_1418 : _GEN_1263; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1500 = type_field == 4'h3 ? _GEN_1419 : _GEN_1264; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1501 = type_field == 4'h3 ? _GEN_1420 : _GEN_1265; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1502 = type_field == 4'h3 ? _GEN_1421 : _GEN_1266; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1503 = type_field == 4'h3 ? _GEN_1422 : _GEN_1267; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1504 = type_field == 4'h3 ? _GEN_1423 : _GEN_1268; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1505 = type_field == 4'h3 ? _GEN_1424 : _GEN_1269; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1506 = type_field == 4'h3 ? _GEN_1425 : _GEN_1270; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1507 = type_field == 4'h3 ? _GEN_1426 : _GEN_1271; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1508 = type_field == 4'h3 ? _GEN_1427 : _GEN_1272; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1509 = type_field == 4'h3 ? _GEN_1428 : _GEN_1273; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1510 = type_field == 4'h3 ? _GEN_1429 : _GEN_1274; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1511 = type_field == 4'h3 ? _GEN_1430 : _GEN_1275; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1512 = type_field == 4'h3 ? _GEN_1431 : _GEN_1276; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1513 = type_field == 4'h3 ? _GEN_1432 : _GEN_1277; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1514 = type_field == 4'h3 ? _GEN_1433 : _GEN_1278; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1515 = type_field == 4'h3 ? _GEN_1434 : _GEN_1279; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1516 = type_field == 4'h3 ? _GEN_1435 : _GEN_1280; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1517 = type_field == 4'h3 ? _GEN_1436 : _GEN_1281; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1518 = type_field == 4'h3 ? _GEN_1437 : _GEN_1282; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1519 = type_field == 4'h3 ? _GEN_1438 : _GEN_1283; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1520 = type_field == 4'h3 ? _GEN_1439 : _GEN_1284; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1521 = type_field == 4'h3 ? _GEN_1440 : _GEN_1285; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1522 = type_field == 4'h3 ? _GEN_1441 : _GEN_1286; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1523 = type_field == 4'h3 ? _GEN_1442 : _GEN_1287; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1524 = type_field == 4'h3 ? _GEN_1446 : _GEN_1288; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1525 = type_field == 4'h3 ? _GEN_1447 : _GEN_1289; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_1538 = cluster_id_field == 4'h4 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_1539 = cluster_id_field == 4'h4 ? _GEN_1450 : _GEN_1215; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1540 = cluster_id_field == 4'h4 ? _GEN_1451 : _GEN_1216; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_1543 = cluster_id_field == 4'h4 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_1544 = cluster_id_field == 4'h4 ? _GEN_1456 : _GEN_1220; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1545 = cluster_id_field == 4'h4 ? _GEN_1457 : _GEN_1221; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1546 = cluster_id_field == 4'h4 ? _GEN_1458 : _GEN_1222; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1548 = cluster_id_field == 4'h4 ? _GEN_1460 : _GEN_1224; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1549 = cluster_id_field == 4'h4 ? _GEN_1461 : _GEN_1225; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1550 = cluster_id_field == 4'h4 ? _GEN_1462 : _GEN_1226; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1551 = cluster_id_field == 4'h4 ? _GEN_1463 : _GEN_1227; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1552 = cluster_id_field == 4'h4 ? _GEN_1464 : _GEN_1228; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1553 = cluster_id_field == 4'h4 ? _GEN_1465 : _GEN_1229; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1554 = cluster_id_field == 4'h4 ? _GEN_1466 : _GEN_1230; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1555 = cluster_id_field == 4'h4 ? _GEN_1467 : _GEN_1231; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1556 = cluster_id_field == 4'h4 ? _GEN_1468 : _GEN_1232; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1557 = cluster_id_field == 4'h4 ? _GEN_1469 : _GEN_1233; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1558 = cluster_id_field == 4'h4 ? _GEN_1470 : _GEN_1234; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1559 = cluster_id_field == 4'h4 ? _GEN_1471 : _GEN_1235; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1560 = cluster_id_field == 4'h4 ? _GEN_1472 : _GEN_1236; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1561 = cluster_id_field == 4'h4 ? _GEN_1473 : _GEN_1237; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1562 = cluster_id_field == 4'h4 ? _GEN_1474 : _GEN_1238; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1563 = cluster_id_field == 4'h4 ? _GEN_1475 : _GEN_1239; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1564 = cluster_id_field == 4'h4 ? _GEN_1476 : _GEN_1240; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1565 = cluster_id_field == 4'h4 ? _GEN_1477 : _GEN_1241; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1566 = cluster_id_field == 4'h4 ? _GEN_1478 : _GEN_1242; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1567 = cluster_id_field == 4'h4 ? _GEN_1479 : _GEN_1243; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1568 = cluster_id_field == 4'h4 ? _GEN_1480 : _GEN_1244; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1569 = cluster_id_field == 4'h4 ? _GEN_1481 : _GEN_1245; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1570 = cluster_id_field == 4'h4 ? _GEN_1482 : _GEN_1246; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1571 = cluster_id_field == 4'h4 ? _GEN_1483 : _GEN_1247; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1572 = cluster_id_field == 4'h4 ? _GEN_1484 : _GEN_1248; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1573 = cluster_id_field == 4'h4 ? _GEN_1485 : _GEN_1249; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1574 = cluster_id_field == 4'h4 ? _GEN_1486 : _GEN_1250; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1575 = cluster_id_field == 4'h4 ? _GEN_1487 : _GEN_1251; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1576 = cluster_id_field == 4'h4 ? _GEN_1488 : _GEN_1252; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1577 = cluster_id_field == 4'h4 ? _GEN_1489 : _GEN_1253; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1578 = cluster_id_field == 4'h4 ? _GEN_1490 : _GEN_1254; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1579 = cluster_id_field == 4'h4 ? _GEN_1491 : _GEN_1255; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1580 = cluster_id_field == 4'h4 ? _GEN_1492 : _GEN_1256; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1581 = cluster_id_field == 4'h4 ? _GEN_1493 : _GEN_1257; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1582 = cluster_id_field == 4'h4 ? _GEN_1494 : _GEN_1258; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1583 = cluster_id_field == 4'h4 ? _GEN_1495 : _GEN_1259; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1584 = cluster_id_field == 4'h4 ? _GEN_1496 : _GEN_1260; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1585 = cluster_id_field == 4'h4 ? _GEN_1497 : _GEN_1261; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1586 = cluster_id_field == 4'h4 ? _GEN_1498 : _GEN_1262; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1587 = cluster_id_field == 4'h4 ? _GEN_1499 : _GEN_1263; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1588 = cluster_id_field == 4'h4 ? _GEN_1500 : _GEN_1264; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1589 = cluster_id_field == 4'h4 ? _GEN_1501 : _GEN_1265; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1590 = cluster_id_field == 4'h4 ? _GEN_1502 : _GEN_1266; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1591 = cluster_id_field == 4'h4 ? _GEN_1503 : _GEN_1267; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1592 = cluster_id_field == 4'h4 ? _GEN_1504 : _GEN_1268; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1593 = cluster_id_field == 4'h4 ? _GEN_1505 : _GEN_1269; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1594 = cluster_id_field == 4'h4 ? _GEN_1506 : _GEN_1270; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1595 = cluster_id_field == 4'h4 ? _GEN_1507 : _GEN_1271; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1596 = cluster_id_field == 4'h4 ? _GEN_1508 : _GEN_1272; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1597 = cluster_id_field == 4'h4 ? _GEN_1509 : _GEN_1273; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1598 = cluster_id_field == 4'h4 ? _GEN_1510 : _GEN_1274; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1599 = cluster_id_field == 4'h4 ? _GEN_1511 : _GEN_1275; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1600 = cluster_id_field == 4'h4 ? _GEN_1512 : _GEN_1276; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1601 = cluster_id_field == 4'h4 ? _GEN_1513 : _GEN_1277; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1602 = cluster_id_field == 4'h4 ? _GEN_1514 : _GEN_1278; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1603 = cluster_id_field == 4'h4 ? _GEN_1515 : _GEN_1279; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1604 = cluster_id_field == 4'h4 ? _GEN_1516 : _GEN_1280; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1605 = cluster_id_field == 4'h4 ? _GEN_1517 : _GEN_1281; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1606 = cluster_id_field == 4'h4 ? _GEN_1518 : _GEN_1282; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1607 = cluster_id_field == 4'h4 ? _GEN_1519 : _GEN_1283; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1608 = cluster_id_field == 4'h4 ? _GEN_1520 : _GEN_1284; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1609 = cluster_id_field == 4'h4 ? _GEN_1521 : _GEN_1285; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1610 = cluster_id_field == 4'h4 ? _GEN_1522 : _GEN_1286; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1611 = cluster_id_field == 4'h4 ? _GEN_1523 : _GEN_1287; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1612 = cluster_id_field == 4'h4 ? _GEN_1524 : _GEN_1288; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1613 = cluster_id_field == 4'h4 ? _GEN_1525 : _GEN_1289; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1621 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_1539; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_1622 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_1540; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_1626 = sram_id_field == 4'h2 ? _GEN_1622 : _GEN_1540; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_1630 = _T_5 ? io_pcie_w_data : _GEN_1544; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_1631 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_1545; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_1632 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_1546; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_1635 = sram_id_field == 4'h3 ? _GEN_1630 : _GEN_1544; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1636 = sram_id_field == 4'h3 ? _GEN_1631 : _GEN_1545; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1637 = sram_id_field == 4'h3 ? _GEN_1632 : _GEN_1546; // @[pcie_interface.scala 161:52]
  wire [5:0] _GEN_1639 = 6'h0 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1548; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1640 = 6'h1 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1549; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1641 = 6'h2 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1550; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1642 = 6'h3 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1551; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1643 = 6'h4 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1552; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1644 = 6'h5 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1553; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1645 = 6'h6 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1554; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1646 = 6'h7 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1555; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1647 = 6'h8 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1556; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1648 = 6'h9 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1557; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1649 = 6'ha == _T_13 ? io_pcie_w_data[5:0] : _GEN_1558; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1650 = 6'hb == _T_13 ? io_pcie_w_data[5:0] : _GEN_1559; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1651 = 6'hc == _T_13 ? io_pcie_w_data[5:0] : _GEN_1560; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1652 = 6'hd == _T_13 ? io_pcie_w_data[5:0] : _GEN_1561; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1653 = 6'he == _T_13 ? io_pcie_w_data[5:0] : _GEN_1562; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1654 = 6'hf == _T_13 ? io_pcie_w_data[5:0] : _GEN_1563; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1655 = 6'h10 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1564; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1656 = 6'h11 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1565; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1657 = 6'h12 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1566; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1658 = 6'h13 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1567; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1659 = 6'h14 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1568; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1660 = 6'h15 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1569; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1661 = 6'h16 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1570; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1662 = 6'h17 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1571; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1663 = 6'h18 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1572; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1664 = 6'h19 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1573; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1665 = 6'h1a == _T_13 ? io_pcie_w_data[5:0] : _GEN_1574; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1666 = 6'h1b == _T_13 ? io_pcie_w_data[5:0] : _GEN_1575; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1667 = 6'h1c == _T_13 ? io_pcie_w_data[5:0] : _GEN_1576; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1668 = 6'h1d == _T_13 ? io_pcie_w_data[5:0] : _GEN_1577; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1669 = 6'h1e == _T_13 ? io_pcie_w_data[5:0] : _GEN_1578; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1670 = 6'h1f == _T_13 ? io_pcie_w_data[5:0] : _GEN_1579; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1671 = 6'h20 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1580; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1672 = 6'h21 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1581; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1673 = 6'h22 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1582; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1674 = 6'h23 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1583; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1675 = 6'h24 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1584; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1676 = 6'h25 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1585; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1677 = 6'h26 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1586; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1678 = 6'h27 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1587; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1679 = 6'h28 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1588; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1680 = 6'h29 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1589; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1681 = 6'h2a == _T_13 ? io_pcie_w_data[5:0] : _GEN_1590; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1682 = 6'h2b == _T_13 ? io_pcie_w_data[5:0] : _GEN_1591; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1683 = 6'h2c == _T_13 ? io_pcie_w_data[5:0] : _GEN_1592; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1684 = 6'h2d == _T_13 ? io_pcie_w_data[5:0] : _GEN_1593; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1685 = 6'h2e == _T_13 ? io_pcie_w_data[5:0] : _GEN_1594; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1686 = 6'h2f == _T_13 ? io_pcie_w_data[5:0] : _GEN_1595; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1687 = 6'h30 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1596; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1688 = 6'h31 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1597; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1689 = 6'h32 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1598; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1690 = 6'h33 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1599; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1691 = 6'h34 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1600; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1692 = 6'h35 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1601; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1693 = 6'h36 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1602; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1694 = 6'h37 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1603; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1695 = 6'h38 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1604; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1696 = 6'h39 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1605; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1697 = 6'h3a == _T_13 ? io_pcie_w_data[5:0] : _GEN_1606; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1698 = 6'h3b == _T_13 ? io_pcie_w_data[5:0] : _GEN_1607; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1699 = 6'h3c == _T_13 ? io_pcie_w_data[5:0] : _GEN_1608; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1700 = 6'h3d == _T_13 ? io_pcie_w_data[5:0] : _GEN_1609; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1701 = 6'h3e == _T_13 ? io_pcie_w_data[5:0] : _GEN_1610; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1702 = 6'h3f == _T_13 ? io_pcie_w_data[5:0] : _GEN_1611; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1703 = sram_id_field == 4'h4 ? _GEN_1639 : _GEN_1548; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1704 = sram_id_field == 4'h4 ? _GEN_1640 : _GEN_1549; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1705 = sram_id_field == 4'h4 ? _GEN_1641 : _GEN_1550; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1706 = sram_id_field == 4'h4 ? _GEN_1642 : _GEN_1551; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1707 = sram_id_field == 4'h4 ? _GEN_1643 : _GEN_1552; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1708 = sram_id_field == 4'h4 ? _GEN_1644 : _GEN_1553; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1709 = sram_id_field == 4'h4 ? _GEN_1645 : _GEN_1554; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1710 = sram_id_field == 4'h4 ? _GEN_1646 : _GEN_1555; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1711 = sram_id_field == 4'h4 ? _GEN_1647 : _GEN_1556; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1712 = sram_id_field == 4'h4 ? _GEN_1648 : _GEN_1557; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1713 = sram_id_field == 4'h4 ? _GEN_1649 : _GEN_1558; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1714 = sram_id_field == 4'h4 ? _GEN_1650 : _GEN_1559; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1715 = sram_id_field == 4'h4 ? _GEN_1651 : _GEN_1560; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1716 = sram_id_field == 4'h4 ? _GEN_1652 : _GEN_1561; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1717 = sram_id_field == 4'h4 ? _GEN_1653 : _GEN_1562; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1718 = sram_id_field == 4'h4 ? _GEN_1654 : _GEN_1563; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1719 = sram_id_field == 4'h4 ? _GEN_1655 : _GEN_1564; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1720 = sram_id_field == 4'h4 ? _GEN_1656 : _GEN_1565; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1721 = sram_id_field == 4'h4 ? _GEN_1657 : _GEN_1566; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1722 = sram_id_field == 4'h4 ? _GEN_1658 : _GEN_1567; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1723 = sram_id_field == 4'h4 ? _GEN_1659 : _GEN_1568; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1724 = sram_id_field == 4'h4 ? _GEN_1660 : _GEN_1569; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1725 = sram_id_field == 4'h4 ? _GEN_1661 : _GEN_1570; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1726 = sram_id_field == 4'h4 ? _GEN_1662 : _GEN_1571; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1727 = sram_id_field == 4'h4 ? _GEN_1663 : _GEN_1572; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1728 = sram_id_field == 4'h4 ? _GEN_1664 : _GEN_1573; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1729 = sram_id_field == 4'h4 ? _GEN_1665 : _GEN_1574; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1730 = sram_id_field == 4'h4 ? _GEN_1666 : _GEN_1575; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1731 = sram_id_field == 4'h4 ? _GEN_1667 : _GEN_1576; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1732 = sram_id_field == 4'h4 ? _GEN_1668 : _GEN_1577; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1733 = sram_id_field == 4'h4 ? _GEN_1669 : _GEN_1578; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1734 = sram_id_field == 4'h4 ? _GEN_1670 : _GEN_1579; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1735 = sram_id_field == 4'h4 ? _GEN_1671 : _GEN_1580; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1736 = sram_id_field == 4'h4 ? _GEN_1672 : _GEN_1581; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1737 = sram_id_field == 4'h4 ? _GEN_1673 : _GEN_1582; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1738 = sram_id_field == 4'h4 ? _GEN_1674 : _GEN_1583; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1739 = sram_id_field == 4'h4 ? _GEN_1675 : _GEN_1584; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1740 = sram_id_field == 4'h4 ? _GEN_1676 : _GEN_1585; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1741 = sram_id_field == 4'h4 ? _GEN_1677 : _GEN_1586; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1742 = sram_id_field == 4'h4 ? _GEN_1678 : _GEN_1587; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1743 = sram_id_field == 4'h4 ? _GEN_1679 : _GEN_1588; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1744 = sram_id_field == 4'h4 ? _GEN_1680 : _GEN_1589; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1745 = sram_id_field == 4'h4 ? _GEN_1681 : _GEN_1590; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1746 = sram_id_field == 4'h4 ? _GEN_1682 : _GEN_1591; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1747 = sram_id_field == 4'h4 ? _GEN_1683 : _GEN_1592; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1748 = sram_id_field == 4'h4 ? _GEN_1684 : _GEN_1593; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1749 = sram_id_field == 4'h4 ? _GEN_1685 : _GEN_1594; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1750 = sram_id_field == 4'h4 ? _GEN_1686 : _GEN_1595; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1751 = sram_id_field == 4'h4 ? _GEN_1687 : _GEN_1596; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1752 = sram_id_field == 4'h4 ? _GEN_1688 : _GEN_1597; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1753 = sram_id_field == 4'h4 ? _GEN_1689 : _GEN_1598; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1754 = sram_id_field == 4'h4 ? _GEN_1690 : _GEN_1599; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1755 = sram_id_field == 4'h4 ? _GEN_1691 : _GEN_1600; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1756 = sram_id_field == 4'h4 ? _GEN_1692 : _GEN_1601; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1757 = sram_id_field == 4'h4 ? _GEN_1693 : _GEN_1602; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1758 = sram_id_field == 4'h4 ? _GEN_1694 : _GEN_1603; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1759 = sram_id_field == 4'h4 ? _GEN_1695 : _GEN_1604; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1760 = sram_id_field == 4'h4 ? _GEN_1696 : _GEN_1605; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1761 = sram_id_field == 4'h4 ? _GEN_1697 : _GEN_1606; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1762 = sram_id_field == 4'h4 ? _GEN_1698 : _GEN_1607; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1763 = sram_id_field == 4'h4 ? _GEN_1699 : _GEN_1608; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1764 = sram_id_field == 4'h4 ? _GEN_1700 : _GEN_1609; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1765 = sram_id_field == 4'h4 ? _GEN_1701 : _GEN_1610; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_1766 = sram_id_field == 4'h4 ? _GEN_1702 : _GEN_1611; // @[pcie_interface.scala 176:52]
  wire [63:0] _GEN_1767 = _T_5 ? io_pcie_w_data : _GEN_1612; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_1768 = _T_9 ? io_pcie_w_data : _GEN_1613; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_1770 = sram_id_field == 4'h5 ? _GEN_1767 : _GEN_1612; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1771 = sram_id_field == 4'h5 ? _GEN_1768 : _GEN_1613; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1774 = type_field == 4'h3 ? _GEN_1621 : _GEN_1539; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1775 = type_field == 4'h3 ? _GEN_1626 : _GEN_1540; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1780 = type_field == 4'h3 ? _GEN_1635 : _GEN_1544; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1781 = type_field == 4'h3 ? _GEN_1636 : _GEN_1545; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1782 = type_field == 4'h3 ? _GEN_1637 : _GEN_1546; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1784 = type_field == 4'h3 ? _GEN_1703 : _GEN_1548; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1785 = type_field == 4'h3 ? _GEN_1704 : _GEN_1549; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1786 = type_field == 4'h3 ? _GEN_1705 : _GEN_1550; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1787 = type_field == 4'h3 ? _GEN_1706 : _GEN_1551; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1788 = type_field == 4'h3 ? _GEN_1707 : _GEN_1552; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1789 = type_field == 4'h3 ? _GEN_1708 : _GEN_1553; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1790 = type_field == 4'h3 ? _GEN_1709 : _GEN_1554; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1791 = type_field == 4'h3 ? _GEN_1710 : _GEN_1555; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1792 = type_field == 4'h3 ? _GEN_1711 : _GEN_1556; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1793 = type_field == 4'h3 ? _GEN_1712 : _GEN_1557; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1794 = type_field == 4'h3 ? _GEN_1713 : _GEN_1558; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1795 = type_field == 4'h3 ? _GEN_1714 : _GEN_1559; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1796 = type_field == 4'h3 ? _GEN_1715 : _GEN_1560; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1797 = type_field == 4'h3 ? _GEN_1716 : _GEN_1561; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1798 = type_field == 4'h3 ? _GEN_1717 : _GEN_1562; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1799 = type_field == 4'h3 ? _GEN_1718 : _GEN_1563; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1800 = type_field == 4'h3 ? _GEN_1719 : _GEN_1564; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1801 = type_field == 4'h3 ? _GEN_1720 : _GEN_1565; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1802 = type_field == 4'h3 ? _GEN_1721 : _GEN_1566; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1803 = type_field == 4'h3 ? _GEN_1722 : _GEN_1567; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1804 = type_field == 4'h3 ? _GEN_1723 : _GEN_1568; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1805 = type_field == 4'h3 ? _GEN_1724 : _GEN_1569; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1806 = type_field == 4'h3 ? _GEN_1725 : _GEN_1570; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1807 = type_field == 4'h3 ? _GEN_1726 : _GEN_1571; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1808 = type_field == 4'h3 ? _GEN_1727 : _GEN_1572; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1809 = type_field == 4'h3 ? _GEN_1728 : _GEN_1573; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1810 = type_field == 4'h3 ? _GEN_1729 : _GEN_1574; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1811 = type_field == 4'h3 ? _GEN_1730 : _GEN_1575; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1812 = type_field == 4'h3 ? _GEN_1731 : _GEN_1576; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1813 = type_field == 4'h3 ? _GEN_1732 : _GEN_1577; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1814 = type_field == 4'h3 ? _GEN_1733 : _GEN_1578; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1815 = type_field == 4'h3 ? _GEN_1734 : _GEN_1579; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1816 = type_field == 4'h3 ? _GEN_1735 : _GEN_1580; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1817 = type_field == 4'h3 ? _GEN_1736 : _GEN_1581; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1818 = type_field == 4'h3 ? _GEN_1737 : _GEN_1582; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1819 = type_field == 4'h3 ? _GEN_1738 : _GEN_1583; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1820 = type_field == 4'h3 ? _GEN_1739 : _GEN_1584; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1821 = type_field == 4'h3 ? _GEN_1740 : _GEN_1585; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1822 = type_field == 4'h3 ? _GEN_1741 : _GEN_1586; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1823 = type_field == 4'h3 ? _GEN_1742 : _GEN_1587; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1824 = type_field == 4'h3 ? _GEN_1743 : _GEN_1588; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1825 = type_field == 4'h3 ? _GEN_1744 : _GEN_1589; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1826 = type_field == 4'h3 ? _GEN_1745 : _GEN_1590; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1827 = type_field == 4'h3 ? _GEN_1746 : _GEN_1591; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1828 = type_field == 4'h3 ? _GEN_1747 : _GEN_1592; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1829 = type_field == 4'h3 ? _GEN_1748 : _GEN_1593; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1830 = type_field == 4'h3 ? _GEN_1749 : _GEN_1594; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1831 = type_field == 4'h3 ? _GEN_1750 : _GEN_1595; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1832 = type_field == 4'h3 ? _GEN_1751 : _GEN_1596; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1833 = type_field == 4'h3 ? _GEN_1752 : _GEN_1597; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1834 = type_field == 4'h3 ? _GEN_1753 : _GEN_1598; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1835 = type_field == 4'h3 ? _GEN_1754 : _GEN_1599; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1836 = type_field == 4'h3 ? _GEN_1755 : _GEN_1600; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1837 = type_field == 4'h3 ? _GEN_1756 : _GEN_1601; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1838 = type_field == 4'h3 ? _GEN_1757 : _GEN_1602; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1839 = type_field == 4'h3 ? _GEN_1758 : _GEN_1603; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1840 = type_field == 4'h3 ? _GEN_1759 : _GEN_1604; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1841 = type_field == 4'h3 ? _GEN_1760 : _GEN_1605; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1842 = type_field == 4'h3 ? _GEN_1761 : _GEN_1606; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1843 = type_field == 4'h3 ? _GEN_1762 : _GEN_1607; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1844 = type_field == 4'h3 ? _GEN_1763 : _GEN_1608; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1845 = type_field == 4'h3 ? _GEN_1764 : _GEN_1609; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1846 = type_field == 4'h3 ? _GEN_1765 : _GEN_1610; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_1847 = type_field == 4'h3 ? _GEN_1766 : _GEN_1611; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1848 = type_field == 4'h3 ? _GEN_1770 : _GEN_1612; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1849 = type_field == 4'h3 ? _GEN_1771 : _GEN_1613; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_1862 = cluster_id_field == 4'h5 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_1863 = cluster_id_field == 4'h5 ? _GEN_1774 : _GEN_1539; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1864 = cluster_id_field == 4'h5 ? _GEN_1775 : _GEN_1540; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_1867 = cluster_id_field == 4'h5 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_1868 = cluster_id_field == 4'h5 ? _GEN_1780 : _GEN_1544; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1869 = cluster_id_field == 4'h5 ? _GEN_1781 : _GEN_1545; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1870 = cluster_id_field == 4'h5 ? _GEN_1782 : _GEN_1546; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1872 = cluster_id_field == 4'h5 ? _GEN_1784 : _GEN_1548; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1873 = cluster_id_field == 4'h5 ? _GEN_1785 : _GEN_1549; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1874 = cluster_id_field == 4'h5 ? _GEN_1786 : _GEN_1550; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1875 = cluster_id_field == 4'h5 ? _GEN_1787 : _GEN_1551; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1876 = cluster_id_field == 4'h5 ? _GEN_1788 : _GEN_1552; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1877 = cluster_id_field == 4'h5 ? _GEN_1789 : _GEN_1553; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1878 = cluster_id_field == 4'h5 ? _GEN_1790 : _GEN_1554; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1879 = cluster_id_field == 4'h5 ? _GEN_1791 : _GEN_1555; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1880 = cluster_id_field == 4'h5 ? _GEN_1792 : _GEN_1556; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1881 = cluster_id_field == 4'h5 ? _GEN_1793 : _GEN_1557; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1882 = cluster_id_field == 4'h5 ? _GEN_1794 : _GEN_1558; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1883 = cluster_id_field == 4'h5 ? _GEN_1795 : _GEN_1559; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1884 = cluster_id_field == 4'h5 ? _GEN_1796 : _GEN_1560; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1885 = cluster_id_field == 4'h5 ? _GEN_1797 : _GEN_1561; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1886 = cluster_id_field == 4'h5 ? _GEN_1798 : _GEN_1562; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1887 = cluster_id_field == 4'h5 ? _GEN_1799 : _GEN_1563; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1888 = cluster_id_field == 4'h5 ? _GEN_1800 : _GEN_1564; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1889 = cluster_id_field == 4'h5 ? _GEN_1801 : _GEN_1565; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1890 = cluster_id_field == 4'h5 ? _GEN_1802 : _GEN_1566; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1891 = cluster_id_field == 4'h5 ? _GEN_1803 : _GEN_1567; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1892 = cluster_id_field == 4'h5 ? _GEN_1804 : _GEN_1568; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1893 = cluster_id_field == 4'h5 ? _GEN_1805 : _GEN_1569; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1894 = cluster_id_field == 4'h5 ? _GEN_1806 : _GEN_1570; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1895 = cluster_id_field == 4'h5 ? _GEN_1807 : _GEN_1571; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1896 = cluster_id_field == 4'h5 ? _GEN_1808 : _GEN_1572; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1897 = cluster_id_field == 4'h5 ? _GEN_1809 : _GEN_1573; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1898 = cluster_id_field == 4'h5 ? _GEN_1810 : _GEN_1574; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1899 = cluster_id_field == 4'h5 ? _GEN_1811 : _GEN_1575; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1900 = cluster_id_field == 4'h5 ? _GEN_1812 : _GEN_1576; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1901 = cluster_id_field == 4'h5 ? _GEN_1813 : _GEN_1577; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1902 = cluster_id_field == 4'h5 ? _GEN_1814 : _GEN_1578; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1903 = cluster_id_field == 4'h5 ? _GEN_1815 : _GEN_1579; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1904 = cluster_id_field == 4'h5 ? _GEN_1816 : _GEN_1580; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1905 = cluster_id_field == 4'h5 ? _GEN_1817 : _GEN_1581; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1906 = cluster_id_field == 4'h5 ? _GEN_1818 : _GEN_1582; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1907 = cluster_id_field == 4'h5 ? _GEN_1819 : _GEN_1583; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1908 = cluster_id_field == 4'h5 ? _GEN_1820 : _GEN_1584; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1909 = cluster_id_field == 4'h5 ? _GEN_1821 : _GEN_1585; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1910 = cluster_id_field == 4'h5 ? _GEN_1822 : _GEN_1586; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1911 = cluster_id_field == 4'h5 ? _GEN_1823 : _GEN_1587; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1912 = cluster_id_field == 4'h5 ? _GEN_1824 : _GEN_1588; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1913 = cluster_id_field == 4'h5 ? _GEN_1825 : _GEN_1589; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1914 = cluster_id_field == 4'h5 ? _GEN_1826 : _GEN_1590; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1915 = cluster_id_field == 4'h5 ? _GEN_1827 : _GEN_1591; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1916 = cluster_id_field == 4'h5 ? _GEN_1828 : _GEN_1592; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1917 = cluster_id_field == 4'h5 ? _GEN_1829 : _GEN_1593; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1918 = cluster_id_field == 4'h5 ? _GEN_1830 : _GEN_1594; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1919 = cluster_id_field == 4'h5 ? _GEN_1831 : _GEN_1595; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1920 = cluster_id_field == 4'h5 ? _GEN_1832 : _GEN_1596; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1921 = cluster_id_field == 4'h5 ? _GEN_1833 : _GEN_1597; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1922 = cluster_id_field == 4'h5 ? _GEN_1834 : _GEN_1598; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1923 = cluster_id_field == 4'h5 ? _GEN_1835 : _GEN_1599; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1924 = cluster_id_field == 4'h5 ? _GEN_1836 : _GEN_1600; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1925 = cluster_id_field == 4'h5 ? _GEN_1837 : _GEN_1601; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1926 = cluster_id_field == 4'h5 ? _GEN_1838 : _GEN_1602; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1927 = cluster_id_field == 4'h5 ? _GEN_1839 : _GEN_1603; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1928 = cluster_id_field == 4'h5 ? _GEN_1840 : _GEN_1604; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1929 = cluster_id_field == 4'h5 ? _GEN_1841 : _GEN_1605; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1930 = cluster_id_field == 4'h5 ? _GEN_1842 : _GEN_1606; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1931 = cluster_id_field == 4'h5 ? _GEN_1843 : _GEN_1607; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1932 = cluster_id_field == 4'h5 ? _GEN_1844 : _GEN_1608; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1933 = cluster_id_field == 4'h5 ? _GEN_1845 : _GEN_1609; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1934 = cluster_id_field == 4'h5 ? _GEN_1846 : _GEN_1610; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_1935 = cluster_id_field == 4'h5 ? _GEN_1847 : _GEN_1611; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1936 = cluster_id_field == 4'h5 ? _GEN_1848 : _GEN_1612; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1937 = cluster_id_field == 4'h5 ? _GEN_1849 : _GEN_1613; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1945 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_1863; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_1946 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_1864; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_1950 = sram_id_field == 4'h2 ? _GEN_1946 : _GEN_1864; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_1954 = _T_5 ? io_pcie_w_data : _GEN_1868; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_1955 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_1869; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_1956 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_1870; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_1959 = sram_id_field == 4'h3 ? _GEN_1954 : _GEN_1868; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1960 = sram_id_field == 4'h3 ? _GEN_1955 : _GEN_1869; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1961 = sram_id_field == 4'h3 ? _GEN_1956 : _GEN_1870; // @[pcie_interface.scala 161:52]
  wire [5:0] _GEN_1963 = 6'h0 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1872; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1964 = 6'h1 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1873; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1965 = 6'h2 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1874; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1966 = 6'h3 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1875; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1967 = 6'h4 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1876; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1968 = 6'h5 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1877; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1969 = 6'h6 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1878; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1970 = 6'h7 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1879; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1971 = 6'h8 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1880; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1972 = 6'h9 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1881; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1973 = 6'ha == _T_13 ? io_pcie_w_data[5:0] : _GEN_1882; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1974 = 6'hb == _T_13 ? io_pcie_w_data[5:0] : _GEN_1883; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1975 = 6'hc == _T_13 ? io_pcie_w_data[5:0] : _GEN_1884; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1976 = 6'hd == _T_13 ? io_pcie_w_data[5:0] : _GEN_1885; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1977 = 6'he == _T_13 ? io_pcie_w_data[5:0] : _GEN_1886; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1978 = 6'hf == _T_13 ? io_pcie_w_data[5:0] : _GEN_1887; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1979 = 6'h10 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1888; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1980 = 6'h11 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1889; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1981 = 6'h12 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1890; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1982 = 6'h13 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1891; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1983 = 6'h14 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1892; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1984 = 6'h15 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1893; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1985 = 6'h16 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1894; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1986 = 6'h17 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1895; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1987 = 6'h18 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1896; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1988 = 6'h19 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1897; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1989 = 6'h1a == _T_13 ? io_pcie_w_data[5:0] : _GEN_1898; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1990 = 6'h1b == _T_13 ? io_pcie_w_data[5:0] : _GEN_1899; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1991 = 6'h1c == _T_13 ? io_pcie_w_data[5:0] : _GEN_1900; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1992 = 6'h1d == _T_13 ? io_pcie_w_data[5:0] : _GEN_1901; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1993 = 6'h1e == _T_13 ? io_pcie_w_data[5:0] : _GEN_1902; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1994 = 6'h1f == _T_13 ? io_pcie_w_data[5:0] : _GEN_1903; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1995 = 6'h20 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1904; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1996 = 6'h21 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1905; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1997 = 6'h22 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1906; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1998 = 6'h23 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1907; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_1999 = 6'h24 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1908; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2000 = 6'h25 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1909; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2001 = 6'h26 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1910; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2002 = 6'h27 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1911; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2003 = 6'h28 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1912; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2004 = 6'h29 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1913; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2005 = 6'h2a == _T_13 ? io_pcie_w_data[5:0] : _GEN_1914; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2006 = 6'h2b == _T_13 ? io_pcie_w_data[5:0] : _GEN_1915; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2007 = 6'h2c == _T_13 ? io_pcie_w_data[5:0] : _GEN_1916; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2008 = 6'h2d == _T_13 ? io_pcie_w_data[5:0] : _GEN_1917; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2009 = 6'h2e == _T_13 ? io_pcie_w_data[5:0] : _GEN_1918; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2010 = 6'h2f == _T_13 ? io_pcie_w_data[5:0] : _GEN_1919; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2011 = 6'h30 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1920; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2012 = 6'h31 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1921; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2013 = 6'h32 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1922; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2014 = 6'h33 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1923; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2015 = 6'h34 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1924; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2016 = 6'h35 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1925; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2017 = 6'h36 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1926; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2018 = 6'h37 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1927; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2019 = 6'h38 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1928; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2020 = 6'h39 == _T_13 ? io_pcie_w_data[5:0] : _GEN_1929; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2021 = 6'h3a == _T_13 ? io_pcie_w_data[5:0] : _GEN_1930; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2022 = 6'h3b == _T_13 ? io_pcie_w_data[5:0] : _GEN_1931; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2023 = 6'h3c == _T_13 ? io_pcie_w_data[5:0] : _GEN_1932; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2024 = 6'h3d == _T_13 ? io_pcie_w_data[5:0] : _GEN_1933; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2025 = 6'h3e == _T_13 ? io_pcie_w_data[5:0] : _GEN_1934; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2026 = 6'h3f == _T_13 ? io_pcie_w_data[5:0] : _GEN_1935; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2027 = sram_id_field == 4'h4 ? _GEN_1963 : _GEN_1872; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2028 = sram_id_field == 4'h4 ? _GEN_1964 : _GEN_1873; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2029 = sram_id_field == 4'h4 ? _GEN_1965 : _GEN_1874; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2030 = sram_id_field == 4'h4 ? _GEN_1966 : _GEN_1875; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2031 = sram_id_field == 4'h4 ? _GEN_1967 : _GEN_1876; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2032 = sram_id_field == 4'h4 ? _GEN_1968 : _GEN_1877; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2033 = sram_id_field == 4'h4 ? _GEN_1969 : _GEN_1878; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2034 = sram_id_field == 4'h4 ? _GEN_1970 : _GEN_1879; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2035 = sram_id_field == 4'h4 ? _GEN_1971 : _GEN_1880; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2036 = sram_id_field == 4'h4 ? _GEN_1972 : _GEN_1881; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2037 = sram_id_field == 4'h4 ? _GEN_1973 : _GEN_1882; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2038 = sram_id_field == 4'h4 ? _GEN_1974 : _GEN_1883; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2039 = sram_id_field == 4'h4 ? _GEN_1975 : _GEN_1884; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2040 = sram_id_field == 4'h4 ? _GEN_1976 : _GEN_1885; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2041 = sram_id_field == 4'h4 ? _GEN_1977 : _GEN_1886; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2042 = sram_id_field == 4'h4 ? _GEN_1978 : _GEN_1887; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2043 = sram_id_field == 4'h4 ? _GEN_1979 : _GEN_1888; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2044 = sram_id_field == 4'h4 ? _GEN_1980 : _GEN_1889; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2045 = sram_id_field == 4'h4 ? _GEN_1981 : _GEN_1890; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2046 = sram_id_field == 4'h4 ? _GEN_1982 : _GEN_1891; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2047 = sram_id_field == 4'h4 ? _GEN_1983 : _GEN_1892; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2048 = sram_id_field == 4'h4 ? _GEN_1984 : _GEN_1893; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2049 = sram_id_field == 4'h4 ? _GEN_1985 : _GEN_1894; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2050 = sram_id_field == 4'h4 ? _GEN_1986 : _GEN_1895; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2051 = sram_id_field == 4'h4 ? _GEN_1987 : _GEN_1896; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2052 = sram_id_field == 4'h4 ? _GEN_1988 : _GEN_1897; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2053 = sram_id_field == 4'h4 ? _GEN_1989 : _GEN_1898; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2054 = sram_id_field == 4'h4 ? _GEN_1990 : _GEN_1899; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2055 = sram_id_field == 4'h4 ? _GEN_1991 : _GEN_1900; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2056 = sram_id_field == 4'h4 ? _GEN_1992 : _GEN_1901; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2057 = sram_id_field == 4'h4 ? _GEN_1993 : _GEN_1902; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2058 = sram_id_field == 4'h4 ? _GEN_1994 : _GEN_1903; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2059 = sram_id_field == 4'h4 ? _GEN_1995 : _GEN_1904; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2060 = sram_id_field == 4'h4 ? _GEN_1996 : _GEN_1905; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2061 = sram_id_field == 4'h4 ? _GEN_1997 : _GEN_1906; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2062 = sram_id_field == 4'h4 ? _GEN_1998 : _GEN_1907; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2063 = sram_id_field == 4'h4 ? _GEN_1999 : _GEN_1908; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2064 = sram_id_field == 4'h4 ? _GEN_2000 : _GEN_1909; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2065 = sram_id_field == 4'h4 ? _GEN_2001 : _GEN_1910; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2066 = sram_id_field == 4'h4 ? _GEN_2002 : _GEN_1911; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2067 = sram_id_field == 4'h4 ? _GEN_2003 : _GEN_1912; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2068 = sram_id_field == 4'h4 ? _GEN_2004 : _GEN_1913; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2069 = sram_id_field == 4'h4 ? _GEN_2005 : _GEN_1914; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2070 = sram_id_field == 4'h4 ? _GEN_2006 : _GEN_1915; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2071 = sram_id_field == 4'h4 ? _GEN_2007 : _GEN_1916; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2072 = sram_id_field == 4'h4 ? _GEN_2008 : _GEN_1917; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2073 = sram_id_field == 4'h4 ? _GEN_2009 : _GEN_1918; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2074 = sram_id_field == 4'h4 ? _GEN_2010 : _GEN_1919; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2075 = sram_id_field == 4'h4 ? _GEN_2011 : _GEN_1920; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2076 = sram_id_field == 4'h4 ? _GEN_2012 : _GEN_1921; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2077 = sram_id_field == 4'h4 ? _GEN_2013 : _GEN_1922; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2078 = sram_id_field == 4'h4 ? _GEN_2014 : _GEN_1923; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2079 = sram_id_field == 4'h4 ? _GEN_2015 : _GEN_1924; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2080 = sram_id_field == 4'h4 ? _GEN_2016 : _GEN_1925; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2081 = sram_id_field == 4'h4 ? _GEN_2017 : _GEN_1926; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2082 = sram_id_field == 4'h4 ? _GEN_2018 : _GEN_1927; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2083 = sram_id_field == 4'h4 ? _GEN_2019 : _GEN_1928; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2084 = sram_id_field == 4'h4 ? _GEN_2020 : _GEN_1929; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2085 = sram_id_field == 4'h4 ? _GEN_2021 : _GEN_1930; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2086 = sram_id_field == 4'h4 ? _GEN_2022 : _GEN_1931; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2087 = sram_id_field == 4'h4 ? _GEN_2023 : _GEN_1932; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2088 = sram_id_field == 4'h4 ? _GEN_2024 : _GEN_1933; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2089 = sram_id_field == 4'h4 ? _GEN_2025 : _GEN_1934; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2090 = sram_id_field == 4'h4 ? _GEN_2026 : _GEN_1935; // @[pcie_interface.scala 176:52]
  wire [63:0] _GEN_2091 = _T_5 ? io_pcie_w_data : _GEN_1936; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_2092 = _T_9 ? io_pcie_w_data : _GEN_1937; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_2094 = sram_id_field == 4'h5 ? _GEN_2091 : _GEN_1936; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_2095 = sram_id_field == 4'h5 ? _GEN_2092 : _GEN_1937; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_2098 = type_field == 4'h3 ? _GEN_1945 : _GEN_1863; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2099 = type_field == 4'h3 ? _GEN_1950 : _GEN_1864; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2104 = type_field == 4'h3 ? _GEN_1959 : _GEN_1868; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2105 = type_field == 4'h3 ? _GEN_1960 : _GEN_1869; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2106 = type_field == 4'h3 ? _GEN_1961 : _GEN_1870; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2108 = type_field == 4'h3 ? _GEN_2027 : _GEN_1872; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2109 = type_field == 4'h3 ? _GEN_2028 : _GEN_1873; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2110 = type_field == 4'h3 ? _GEN_2029 : _GEN_1874; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2111 = type_field == 4'h3 ? _GEN_2030 : _GEN_1875; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2112 = type_field == 4'h3 ? _GEN_2031 : _GEN_1876; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2113 = type_field == 4'h3 ? _GEN_2032 : _GEN_1877; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2114 = type_field == 4'h3 ? _GEN_2033 : _GEN_1878; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2115 = type_field == 4'h3 ? _GEN_2034 : _GEN_1879; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2116 = type_field == 4'h3 ? _GEN_2035 : _GEN_1880; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2117 = type_field == 4'h3 ? _GEN_2036 : _GEN_1881; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2118 = type_field == 4'h3 ? _GEN_2037 : _GEN_1882; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2119 = type_field == 4'h3 ? _GEN_2038 : _GEN_1883; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2120 = type_field == 4'h3 ? _GEN_2039 : _GEN_1884; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2121 = type_field == 4'h3 ? _GEN_2040 : _GEN_1885; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2122 = type_field == 4'h3 ? _GEN_2041 : _GEN_1886; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2123 = type_field == 4'h3 ? _GEN_2042 : _GEN_1887; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2124 = type_field == 4'h3 ? _GEN_2043 : _GEN_1888; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2125 = type_field == 4'h3 ? _GEN_2044 : _GEN_1889; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2126 = type_field == 4'h3 ? _GEN_2045 : _GEN_1890; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2127 = type_field == 4'h3 ? _GEN_2046 : _GEN_1891; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2128 = type_field == 4'h3 ? _GEN_2047 : _GEN_1892; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2129 = type_field == 4'h3 ? _GEN_2048 : _GEN_1893; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2130 = type_field == 4'h3 ? _GEN_2049 : _GEN_1894; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2131 = type_field == 4'h3 ? _GEN_2050 : _GEN_1895; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2132 = type_field == 4'h3 ? _GEN_2051 : _GEN_1896; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2133 = type_field == 4'h3 ? _GEN_2052 : _GEN_1897; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2134 = type_field == 4'h3 ? _GEN_2053 : _GEN_1898; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2135 = type_field == 4'h3 ? _GEN_2054 : _GEN_1899; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2136 = type_field == 4'h3 ? _GEN_2055 : _GEN_1900; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2137 = type_field == 4'h3 ? _GEN_2056 : _GEN_1901; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2138 = type_field == 4'h3 ? _GEN_2057 : _GEN_1902; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2139 = type_field == 4'h3 ? _GEN_2058 : _GEN_1903; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2140 = type_field == 4'h3 ? _GEN_2059 : _GEN_1904; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2141 = type_field == 4'h3 ? _GEN_2060 : _GEN_1905; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2142 = type_field == 4'h3 ? _GEN_2061 : _GEN_1906; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2143 = type_field == 4'h3 ? _GEN_2062 : _GEN_1907; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2144 = type_field == 4'h3 ? _GEN_2063 : _GEN_1908; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2145 = type_field == 4'h3 ? _GEN_2064 : _GEN_1909; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2146 = type_field == 4'h3 ? _GEN_2065 : _GEN_1910; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2147 = type_field == 4'h3 ? _GEN_2066 : _GEN_1911; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2148 = type_field == 4'h3 ? _GEN_2067 : _GEN_1912; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2149 = type_field == 4'h3 ? _GEN_2068 : _GEN_1913; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2150 = type_field == 4'h3 ? _GEN_2069 : _GEN_1914; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2151 = type_field == 4'h3 ? _GEN_2070 : _GEN_1915; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2152 = type_field == 4'h3 ? _GEN_2071 : _GEN_1916; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2153 = type_field == 4'h3 ? _GEN_2072 : _GEN_1917; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2154 = type_field == 4'h3 ? _GEN_2073 : _GEN_1918; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2155 = type_field == 4'h3 ? _GEN_2074 : _GEN_1919; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2156 = type_field == 4'h3 ? _GEN_2075 : _GEN_1920; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2157 = type_field == 4'h3 ? _GEN_2076 : _GEN_1921; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2158 = type_field == 4'h3 ? _GEN_2077 : _GEN_1922; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2159 = type_field == 4'h3 ? _GEN_2078 : _GEN_1923; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2160 = type_field == 4'h3 ? _GEN_2079 : _GEN_1924; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2161 = type_field == 4'h3 ? _GEN_2080 : _GEN_1925; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2162 = type_field == 4'h3 ? _GEN_2081 : _GEN_1926; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2163 = type_field == 4'h3 ? _GEN_2082 : _GEN_1927; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2164 = type_field == 4'h3 ? _GEN_2083 : _GEN_1928; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2165 = type_field == 4'h3 ? _GEN_2084 : _GEN_1929; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2166 = type_field == 4'h3 ? _GEN_2085 : _GEN_1930; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2167 = type_field == 4'h3 ? _GEN_2086 : _GEN_1931; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2168 = type_field == 4'h3 ? _GEN_2087 : _GEN_1932; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2169 = type_field == 4'h3 ? _GEN_2088 : _GEN_1933; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2170 = type_field == 4'h3 ? _GEN_2089 : _GEN_1934; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2171 = type_field == 4'h3 ? _GEN_2090 : _GEN_1935; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2172 = type_field == 4'h3 ? _GEN_2094 : _GEN_1936; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2173 = type_field == 4'h3 ? _GEN_2095 : _GEN_1937; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_2186 = cluster_id_field == 4'h6 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_2187 = cluster_id_field == 4'h6 ? _GEN_2098 : _GEN_1863; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2188 = cluster_id_field == 4'h6 ? _GEN_2099 : _GEN_1864; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_2191 = cluster_id_field == 4'h6 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_2192 = cluster_id_field == 4'h6 ? _GEN_2104 : _GEN_1868; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2193 = cluster_id_field == 4'h6 ? _GEN_2105 : _GEN_1869; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2194 = cluster_id_field == 4'h6 ? _GEN_2106 : _GEN_1870; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2196 = cluster_id_field == 4'h6 ? _GEN_2108 : _GEN_1872; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2197 = cluster_id_field == 4'h6 ? _GEN_2109 : _GEN_1873; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2198 = cluster_id_field == 4'h6 ? _GEN_2110 : _GEN_1874; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2199 = cluster_id_field == 4'h6 ? _GEN_2111 : _GEN_1875; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2200 = cluster_id_field == 4'h6 ? _GEN_2112 : _GEN_1876; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2201 = cluster_id_field == 4'h6 ? _GEN_2113 : _GEN_1877; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2202 = cluster_id_field == 4'h6 ? _GEN_2114 : _GEN_1878; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2203 = cluster_id_field == 4'h6 ? _GEN_2115 : _GEN_1879; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2204 = cluster_id_field == 4'h6 ? _GEN_2116 : _GEN_1880; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2205 = cluster_id_field == 4'h6 ? _GEN_2117 : _GEN_1881; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2206 = cluster_id_field == 4'h6 ? _GEN_2118 : _GEN_1882; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2207 = cluster_id_field == 4'h6 ? _GEN_2119 : _GEN_1883; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2208 = cluster_id_field == 4'h6 ? _GEN_2120 : _GEN_1884; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2209 = cluster_id_field == 4'h6 ? _GEN_2121 : _GEN_1885; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2210 = cluster_id_field == 4'h6 ? _GEN_2122 : _GEN_1886; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2211 = cluster_id_field == 4'h6 ? _GEN_2123 : _GEN_1887; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2212 = cluster_id_field == 4'h6 ? _GEN_2124 : _GEN_1888; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2213 = cluster_id_field == 4'h6 ? _GEN_2125 : _GEN_1889; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2214 = cluster_id_field == 4'h6 ? _GEN_2126 : _GEN_1890; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2215 = cluster_id_field == 4'h6 ? _GEN_2127 : _GEN_1891; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2216 = cluster_id_field == 4'h6 ? _GEN_2128 : _GEN_1892; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2217 = cluster_id_field == 4'h6 ? _GEN_2129 : _GEN_1893; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2218 = cluster_id_field == 4'h6 ? _GEN_2130 : _GEN_1894; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2219 = cluster_id_field == 4'h6 ? _GEN_2131 : _GEN_1895; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2220 = cluster_id_field == 4'h6 ? _GEN_2132 : _GEN_1896; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2221 = cluster_id_field == 4'h6 ? _GEN_2133 : _GEN_1897; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2222 = cluster_id_field == 4'h6 ? _GEN_2134 : _GEN_1898; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2223 = cluster_id_field == 4'h6 ? _GEN_2135 : _GEN_1899; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2224 = cluster_id_field == 4'h6 ? _GEN_2136 : _GEN_1900; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2225 = cluster_id_field == 4'h6 ? _GEN_2137 : _GEN_1901; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2226 = cluster_id_field == 4'h6 ? _GEN_2138 : _GEN_1902; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2227 = cluster_id_field == 4'h6 ? _GEN_2139 : _GEN_1903; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2228 = cluster_id_field == 4'h6 ? _GEN_2140 : _GEN_1904; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2229 = cluster_id_field == 4'h6 ? _GEN_2141 : _GEN_1905; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2230 = cluster_id_field == 4'h6 ? _GEN_2142 : _GEN_1906; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2231 = cluster_id_field == 4'h6 ? _GEN_2143 : _GEN_1907; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2232 = cluster_id_field == 4'h6 ? _GEN_2144 : _GEN_1908; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2233 = cluster_id_field == 4'h6 ? _GEN_2145 : _GEN_1909; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2234 = cluster_id_field == 4'h6 ? _GEN_2146 : _GEN_1910; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2235 = cluster_id_field == 4'h6 ? _GEN_2147 : _GEN_1911; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2236 = cluster_id_field == 4'h6 ? _GEN_2148 : _GEN_1912; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2237 = cluster_id_field == 4'h6 ? _GEN_2149 : _GEN_1913; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2238 = cluster_id_field == 4'h6 ? _GEN_2150 : _GEN_1914; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2239 = cluster_id_field == 4'h6 ? _GEN_2151 : _GEN_1915; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2240 = cluster_id_field == 4'h6 ? _GEN_2152 : _GEN_1916; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2241 = cluster_id_field == 4'h6 ? _GEN_2153 : _GEN_1917; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2242 = cluster_id_field == 4'h6 ? _GEN_2154 : _GEN_1918; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2243 = cluster_id_field == 4'h6 ? _GEN_2155 : _GEN_1919; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2244 = cluster_id_field == 4'h6 ? _GEN_2156 : _GEN_1920; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2245 = cluster_id_field == 4'h6 ? _GEN_2157 : _GEN_1921; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2246 = cluster_id_field == 4'h6 ? _GEN_2158 : _GEN_1922; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2247 = cluster_id_field == 4'h6 ? _GEN_2159 : _GEN_1923; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2248 = cluster_id_field == 4'h6 ? _GEN_2160 : _GEN_1924; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2249 = cluster_id_field == 4'h6 ? _GEN_2161 : _GEN_1925; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2250 = cluster_id_field == 4'h6 ? _GEN_2162 : _GEN_1926; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2251 = cluster_id_field == 4'h6 ? _GEN_2163 : _GEN_1927; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2252 = cluster_id_field == 4'h6 ? _GEN_2164 : _GEN_1928; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2253 = cluster_id_field == 4'h6 ? _GEN_2165 : _GEN_1929; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2254 = cluster_id_field == 4'h6 ? _GEN_2166 : _GEN_1930; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2255 = cluster_id_field == 4'h6 ? _GEN_2167 : _GEN_1931; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2256 = cluster_id_field == 4'h6 ? _GEN_2168 : _GEN_1932; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2257 = cluster_id_field == 4'h6 ? _GEN_2169 : _GEN_1933; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2258 = cluster_id_field == 4'h6 ? _GEN_2170 : _GEN_1934; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2259 = cluster_id_field == 4'h6 ? _GEN_2171 : _GEN_1935; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2260 = cluster_id_field == 4'h6 ? _GEN_2172 : _GEN_1936; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2261 = cluster_id_field == 4'h6 ? _GEN_2173 : _GEN_1937; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2269 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_2187; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_2270 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_2188; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_2274 = sram_id_field == 4'h2 ? _GEN_2270 : _GEN_2188; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_2278 = _T_5 ? io_pcie_w_data : _GEN_2192; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_2279 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_2193; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_2280 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_2194; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_2283 = sram_id_field == 4'h3 ? _GEN_2278 : _GEN_2192; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_2284 = sram_id_field == 4'h3 ? _GEN_2279 : _GEN_2193; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_2285 = sram_id_field == 4'h3 ? _GEN_2280 : _GEN_2194; // @[pcie_interface.scala 161:52]
  wire [5:0] _GEN_2287 = 6'h0 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2196; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2288 = 6'h1 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2197; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2289 = 6'h2 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2198; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2290 = 6'h3 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2199; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2291 = 6'h4 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2200; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2292 = 6'h5 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2201; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2293 = 6'h6 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2202; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2294 = 6'h7 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2203; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2295 = 6'h8 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2204; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2296 = 6'h9 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2205; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2297 = 6'ha == _T_13 ? io_pcie_w_data[5:0] : _GEN_2206; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2298 = 6'hb == _T_13 ? io_pcie_w_data[5:0] : _GEN_2207; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2299 = 6'hc == _T_13 ? io_pcie_w_data[5:0] : _GEN_2208; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2300 = 6'hd == _T_13 ? io_pcie_w_data[5:0] : _GEN_2209; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2301 = 6'he == _T_13 ? io_pcie_w_data[5:0] : _GEN_2210; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2302 = 6'hf == _T_13 ? io_pcie_w_data[5:0] : _GEN_2211; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2303 = 6'h10 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2212; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2304 = 6'h11 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2213; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2305 = 6'h12 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2214; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2306 = 6'h13 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2215; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2307 = 6'h14 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2216; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2308 = 6'h15 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2217; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2309 = 6'h16 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2218; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2310 = 6'h17 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2219; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2311 = 6'h18 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2220; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2312 = 6'h19 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2221; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2313 = 6'h1a == _T_13 ? io_pcie_w_data[5:0] : _GEN_2222; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2314 = 6'h1b == _T_13 ? io_pcie_w_data[5:0] : _GEN_2223; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2315 = 6'h1c == _T_13 ? io_pcie_w_data[5:0] : _GEN_2224; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2316 = 6'h1d == _T_13 ? io_pcie_w_data[5:0] : _GEN_2225; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2317 = 6'h1e == _T_13 ? io_pcie_w_data[5:0] : _GEN_2226; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2318 = 6'h1f == _T_13 ? io_pcie_w_data[5:0] : _GEN_2227; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2319 = 6'h20 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2228; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2320 = 6'h21 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2229; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2321 = 6'h22 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2230; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2322 = 6'h23 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2231; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2323 = 6'h24 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2232; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2324 = 6'h25 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2233; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2325 = 6'h26 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2234; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2326 = 6'h27 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2235; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2327 = 6'h28 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2236; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2328 = 6'h29 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2237; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2329 = 6'h2a == _T_13 ? io_pcie_w_data[5:0] : _GEN_2238; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2330 = 6'h2b == _T_13 ? io_pcie_w_data[5:0] : _GEN_2239; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2331 = 6'h2c == _T_13 ? io_pcie_w_data[5:0] : _GEN_2240; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2332 = 6'h2d == _T_13 ? io_pcie_w_data[5:0] : _GEN_2241; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2333 = 6'h2e == _T_13 ? io_pcie_w_data[5:0] : _GEN_2242; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2334 = 6'h2f == _T_13 ? io_pcie_w_data[5:0] : _GEN_2243; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2335 = 6'h30 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2244; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2336 = 6'h31 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2245; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2337 = 6'h32 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2246; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2338 = 6'h33 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2247; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2339 = 6'h34 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2248; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2340 = 6'h35 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2249; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2341 = 6'h36 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2250; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2342 = 6'h37 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2251; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2343 = 6'h38 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2252; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2344 = 6'h39 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2253; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2345 = 6'h3a == _T_13 ? io_pcie_w_data[5:0] : _GEN_2254; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2346 = 6'h3b == _T_13 ? io_pcie_w_data[5:0] : _GEN_2255; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2347 = 6'h3c == _T_13 ? io_pcie_w_data[5:0] : _GEN_2256; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2348 = 6'h3d == _T_13 ? io_pcie_w_data[5:0] : _GEN_2257; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2349 = 6'h3e == _T_13 ? io_pcie_w_data[5:0] : _GEN_2258; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2350 = 6'h3f == _T_13 ? io_pcie_w_data[5:0] : _GEN_2259; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2351 = sram_id_field == 4'h4 ? _GEN_2287 : _GEN_2196; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2352 = sram_id_field == 4'h4 ? _GEN_2288 : _GEN_2197; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2353 = sram_id_field == 4'h4 ? _GEN_2289 : _GEN_2198; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2354 = sram_id_field == 4'h4 ? _GEN_2290 : _GEN_2199; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2355 = sram_id_field == 4'h4 ? _GEN_2291 : _GEN_2200; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2356 = sram_id_field == 4'h4 ? _GEN_2292 : _GEN_2201; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2357 = sram_id_field == 4'h4 ? _GEN_2293 : _GEN_2202; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2358 = sram_id_field == 4'h4 ? _GEN_2294 : _GEN_2203; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2359 = sram_id_field == 4'h4 ? _GEN_2295 : _GEN_2204; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2360 = sram_id_field == 4'h4 ? _GEN_2296 : _GEN_2205; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2361 = sram_id_field == 4'h4 ? _GEN_2297 : _GEN_2206; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2362 = sram_id_field == 4'h4 ? _GEN_2298 : _GEN_2207; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2363 = sram_id_field == 4'h4 ? _GEN_2299 : _GEN_2208; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2364 = sram_id_field == 4'h4 ? _GEN_2300 : _GEN_2209; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2365 = sram_id_field == 4'h4 ? _GEN_2301 : _GEN_2210; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2366 = sram_id_field == 4'h4 ? _GEN_2302 : _GEN_2211; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2367 = sram_id_field == 4'h4 ? _GEN_2303 : _GEN_2212; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2368 = sram_id_field == 4'h4 ? _GEN_2304 : _GEN_2213; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2369 = sram_id_field == 4'h4 ? _GEN_2305 : _GEN_2214; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2370 = sram_id_field == 4'h4 ? _GEN_2306 : _GEN_2215; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2371 = sram_id_field == 4'h4 ? _GEN_2307 : _GEN_2216; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2372 = sram_id_field == 4'h4 ? _GEN_2308 : _GEN_2217; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2373 = sram_id_field == 4'h4 ? _GEN_2309 : _GEN_2218; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2374 = sram_id_field == 4'h4 ? _GEN_2310 : _GEN_2219; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2375 = sram_id_field == 4'h4 ? _GEN_2311 : _GEN_2220; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2376 = sram_id_field == 4'h4 ? _GEN_2312 : _GEN_2221; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2377 = sram_id_field == 4'h4 ? _GEN_2313 : _GEN_2222; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2378 = sram_id_field == 4'h4 ? _GEN_2314 : _GEN_2223; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2379 = sram_id_field == 4'h4 ? _GEN_2315 : _GEN_2224; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2380 = sram_id_field == 4'h4 ? _GEN_2316 : _GEN_2225; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2381 = sram_id_field == 4'h4 ? _GEN_2317 : _GEN_2226; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2382 = sram_id_field == 4'h4 ? _GEN_2318 : _GEN_2227; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2383 = sram_id_field == 4'h4 ? _GEN_2319 : _GEN_2228; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2384 = sram_id_field == 4'h4 ? _GEN_2320 : _GEN_2229; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2385 = sram_id_field == 4'h4 ? _GEN_2321 : _GEN_2230; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2386 = sram_id_field == 4'h4 ? _GEN_2322 : _GEN_2231; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2387 = sram_id_field == 4'h4 ? _GEN_2323 : _GEN_2232; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2388 = sram_id_field == 4'h4 ? _GEN_2324 : _GEN_2233; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2389 = sram_id_field == 4'h4 ? _GEN_2325 : _GEN_2234; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2390 = sram_id_field == 4'h4 ? _GEN_2326 : _GEN_2235; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2391 = sram_id_field == 4'h4 ? _GEN_2327 : _GEN_2236; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2392 = sram_id_field == 4'h4 ? _GEN_2328 : _GEN_2237; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2393 = sram_id_field == 4'h4 ? _GEN_2329 : _GEN_2238; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2394 = sram_id_field == 4'h4 ? _GEN_2330 : _GEN_2239; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2395 = sram_id_field == 4'h4 ? _GEN_2331 : _GEN_2240; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2396 = sram_id_field == 4'h4 ? _GEN_2332 : _GEN_2241; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2397 = sram_id_field == 4'h4 ? _GEN_2333 : _GEN_2242; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2398 = sram_id_field == 4'h4 ? _GEN_2334 : _GEN_2243; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2399 = sram_id_field == 4'h4 ? _GEN_2335 : _GEN_2244; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2400 = sram_id_field == 4'h4 ? _GEN_2336 : _GEN_2245; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2401 = sram_id_field == 4'h4 ? _GEN_2337 : _GEN_2246; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2402 = sram_id_field == 4'h4 ? _GEN_2338 : _GEN_2247; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2403 = sram_id_field == 4'h4 ? _GEN_2339 : _GEN_2248; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2404 = sram_id_field == 4'h4 ? _GEN_2340 : _GEN_2249; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2405 = sram_id_field == 4'h4 ? _GEN_2341 : _GEN_2250; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2406 = sram_id_field == 4'h4 ? _GEN_2342 : _GEN_2251; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2407 = sram_id_field == 4'h4 ? _GEN_2343 : _GEN_2252; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2408 = sram_id_field == 4'h4 ? _GEN_2344 : _GEN_2253; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2409 = sram_id_field == 4'h4 ? _GEN_2345 : _GEN_2254; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2410 = sram_id_field == 4'h4 ? _GEN_2346 : _GEN_2255; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2411 = sram_id_field == 4'h4 ? _GEN_2347 : _GEN_2256; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2412 = sram_id_field == 4'h4 ? _GEN_2348 : _GEN_2257; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2413 = sram_id_field == 4'h4 ? _GEN_2349 : _GEN_2258; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2414 = sram_id_field == 4'h4 ? _GEN_2350 : _GEN_2259; // @[pcie_interface.scala 176:52]
  wire [63:0] _GEN_2415 = _T_5 ? io_pcie_w_data : _GEN_2260; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_2416 = _T_9 ? io_pcie_w_data : _GEN_2261; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_2418 = sram_id_field == 4'h5 ? _GEN_2415 : _GEN_2260; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_2419 = sram_id_field == 4'h5 ? _GEN_2416 : _GEN_2261; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_2422 = type_field == 4'h3 ? _GEN_2269 : _GEN_2187; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2423 = type_field == 4'h3 ? _GEN_2274 : _GEN_2188; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2428 = type_field == 4'h3 ? _GEN_2283 : _GEN_2192; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2429 = type_field == 4'h3 ? _GEN_2284 : _GEN_2193; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2430 = type_field == 4'h3 ? _GEN_2285 : _GEN_2194; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2432 = type_field == 4'h3 ? _GEN_2351 : _GEN_2196; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2433 = type_field == 4'h3 ? _GEN_2352 : _GEN_2197; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2434 = type_field == 4'h3 ? _GEN_2353 : _GEN_2198; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2435 = type_field == 4'h3 ? _GEN_2354 : _GEN_2199; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2436 = type_field == 4'h3 ? _GEN_2355 : _GEN_2200; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2437 = type_field == 4'h3 ? _GEN_2356 : _GEN_2201; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2438 = type_field == 4'h3 ? _GEN_2357 : _GEN_2202; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2439 = type_field == 4'h3 ? _GEN_2358 : _GEN_2203; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2440 = type_field == 4'h3 ? _GEN_2359 : _GEN_2204; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2441 = type_field == 4'h3 ? _GEN_2360 : _GEN_2205; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2442 = type_field == 4'h3 ? _GEN_2361 : _GEN_2206; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2443 = type_field == 4'h3 ? _GEN_2362 : _GEN_2207; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2444 = type_field == 4'h3 ? _GEN_2363 : _GEN_2208; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2445 = type_field == 4'h3 ? _GEN_2364 : _GEN_2209; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2446 = type_field == 4'h3 ? _GEN_2365 : _GEN_2210; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2447 = type_field == 4'h3 ? _GEN_2366 : _GEN_2211; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2448 = type_field == 4'h3 ? _GEN_2367 : _GEN_2212; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2449 = type_field == 4'h3 ? _GEN_2368 : _GEN_2213; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2450 = type_field == 4'h3 ? _GEN_2369 : _GEN_2214; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2451 = type_field == 4'h3 ? _GEN_2370 : _GEN_2215; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2452 = type_field == 4'h3 ? _GEN_2371 : _GEN_2216; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2453 = type_field == 4'h3 ? _GEN_2372 : _GEN_2217; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2454 = type_field == 4'h3 ? _GEN_2373 : _GEN_2218; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2455 = type_field == 4'h3 ? _GEN_2374 : _GEN_2219; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2456 = type_field == 4'h3 ? _GEN_2375 : _GEN_2220; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2457 = type_field == 4'h3 ? _GEN_2376 : _GEN_2221; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2458 = type_field == 4'h3 ? _GEN_2377 : _GEN_2222; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2459 = type_field == 4'h3 ? _GEN_2378 : _GEN_2223; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2460 = type_field == 4'h3 ? _GEN_2379 : _GEN_2224; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2461 = type_field == 4'h3 ? _GEN_2380 : _GEN_2225; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2462 = type_field == 4'h3 ? _GEN_2381 : _GEN_2226; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2463 = type_field == 4'h3 ? _GEN_2382 : _GEN_2227; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2464 = type_field == 4'h3 ? _GEN_2383 : _GEN_2228; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2465 = type_field == 4'h3 ? _GEN_2384 : _GEN_2229; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2466 = type_field == 4'h3 ? _GEN_2385 : _GEN_2230; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2467 = type_field == 4'h3 ? _GEN_2386 : _GEN_2231; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2468 = type_field == 4'h3 ? _GEN_2387 : _GEN_2232; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2469 = type_field == 4'h3 ? _GEN_2388 : _GEN_2233; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2470 = type_field == 4'h3 ? _GEN_2389 : _GEN_2234; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2471 = type_field == 4'h3 ? _GEN_2390 : _GEN_2235; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2472 = type_field == 4'h3 ? _GEN_2391 : _GEN_2236; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2473 = type_field == 4'h3 ? _GEN_2392 : _GEN_2237; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2474 = type_field == 4'h3 ? _GEN_2393 : _GEN_2238; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2475 = type_field == 4'h3 ? _GEN_2394 : _GEN_2239; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2476 = type_field == 4'h3 ? _GEN_2395 : _GEN_2240; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2477 = type_field == 4'h3 ? _GEN_2396 : _GEN_2241; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2478 = type_field == 4'h3 ? _GEN_2397 : _GEN_2242; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2479 = type_field == 4'h3 ? _GEN_2398 : _GEN_2243; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2480 = type_field == 4'h3 ? _GEN_2399 : _GEN_2244; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2481 = type_field == 4'h3 ? _GEN_2400 : _GEN_2245; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2482 = type_field == 4'h3 ? _GEN_2401 : _GEN_2246; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2483 = type_field == 4'h3 ? _GEN_2402 : _GEN_2247; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2484 = type_field == 4'h3 ? _GEN_2403 : _GEN_2248; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2485 = type_field == 4'h3 ? _GEN_2404 : _GEN_2249; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2486 = type_field == 4'h3 ? _GEN_2405 : _GEN_2250; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2487 = type_field == 4'h3 ? _GEN_2406 : _GEN_2251; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2488 = type_field == 4'h3 ? _GEN_2407 : _GEN_2252; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2489 = type_field == 4'h3 ? _GEN_2408 : _GEN_2253; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2490 = type_field == 4'h3 ? _GEN_2409 : _GEN_2254; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2491 = type_field == 4'h3 ? _GEN_2410 : _GEN_2255; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2492 = type_field == 4'h3 ? _GEN_2411 : _GEN_2256; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2493 = type_field == 4'h3 ? _GEN_2412 : _GEN_2257; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2494 = type_field == 4'h3 ? _GEN_2413 : _GEN_2258; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2495 = type_field == 4'h3 ? _GEN_2414 : _GEN_2259; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2496 = type_field == 4'h3 ? _GEN_2418 : _GEN_2260; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2497 = type_field == 4'h3 ? _GEN_2419 : _GEN_2261; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_2510 = cluster_id_field == 4'h7 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_2511 = cluster_id_field == 4'h7 ? _GEN_2422 : _GEN_2187; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2512 = cluster_id_field == 4'h7 ? _GEN_2423 : _GEN_2188; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_2515 = cluster_id_field == 4'h7 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_2516 = cluster_id_field == 4'h7 ? _GEN_2428 : _GEN_2192; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2517 = cluster_id_field == 4'h7 ? _GEN_2429 : _GEN_2193; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2518 = cluster_id_field == 4'h7 ? _GEN_2430 : _GEN_2194; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2520 = cluster_id_field == 4'h7 ? _GEN_2432 : _GEN_2196; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2521 = cluster_id_field == 4'h7 ? _GEN_2433 : _GEN_2197; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2522 = cluster_id_field == 4'h7 ? _GEN_2434 : _GEN_2198; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2523 = cluster_id_field == 4'h7 ? _GEN_2435 : _GEN_2199; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2524 = cluster_id_field == 4'h7 ? _GEN_2436 : _GEN_2200; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2525 = cluster_id_field == 4'h7 ? _GEN_2437 : _GEN_2201; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2526 = cluster_id_field == 4'h7 ? _GEN_2438 : _GEN_2202; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2527 = cluster_id_field == 4'h7 ? _GEN_2439 : _GEN_2203; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2528 = cluster_id_field == 4'h7 ? _GEN_2440 : _GEN_2204; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2529 = cluster_id_field == 4'h7 ? _GEN_2441 : _GEN_2205; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2530 = cluster_id_field == 4'h7 ? _GEN_2442 : _GEN_2206; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2531 = cluster_id_field == 4'h7 ? _GEN_2443 : _GEN_2207; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2532 = cluster_id_field == 4'h7 ? _GEN_2444 : _GEN_2208; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2533 = cluster_id_field == 4'h7 ? _GEN_2445 : _GEN_2209; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2534 = cluster_id_field == 4'h7 ? _GEN_2446 : _GEN_2210; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2535 = cluster_id_field == 4'h7 ? _GEN_2447 : _GEN_2211; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2536 = cluster_id_field == 4'h7 ? _GEN_2448 : _GEN_2212; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2537 = cluster_id_field == 4'h7 ? _GEN_2449 : _GEN_2213; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2538 = cluster_id_field == 4'h7 ? _GEN_2450 : _GEN_2214; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2539 = cluster_id_field == 4'h7 ? _GEN_2451 : _GEN_2215; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2540 = cluster_id_field == 4'h7 ? _GEN_2452 : _GEN_2216; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2541 = cluster_id_field == 4'h7 ? _GEN_2453 : _GEN_2217; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2542 = cluster_id_field == 4'h7 ? _GEN_2454 : _GEN_2218; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2543 = cluster_id_field == 4'h7 ? _GEN_2455 : _GEN_2219; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2544 = cluster_id_field == 4'h7 ? _GEN_2456 : _GEN_2220; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2545 = cluster_id_field == 4'h7 ? _GEN_2457 : _GEN_2221; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2546 = cluster_id_field == 4'h7 ? _GEN_2458 : _GEN_2222; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2547 = cluster_id_field == 4'h7 ? _GEN_2459 : _GEN_2223; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2548 = cluster_id_field == 4'h7 ? _GEN_2460 : _GEN_2224; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2549 = cluster_id_field == 4'h7 ? _GEN_2461 : _GEN_2225; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2550 = cluster_id_field == 4'h7 ? _GEN_2462 : _GEN_2226; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2551 = cluster_id_field == 4'h7 ? _GEN_2463 : _GEN_2227; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2552 = cluster_id_field == 4'h7 ? _GEN_2464 : _GEN_2228; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2553 = cluster_id_field == 4'h7 ? _GEN_2465 : _GEN_2229; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2554 = cluster_id_field == 4'h7 ? _GEN_2466 : _GEN_2230; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2555 = cluster_id_field == 4'h7 ? _GEN_2467 : _GEN_2231; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2556 = cluster_id_field == 4'h7 ? _GEN_2468 : _GEN_2232; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2557 = cluster_id_field == 4'h7 ? _GEN_2469 : _GEN_2233; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2558 = cluster_id_field == 4'h7 ? _GEN_2470 : _GEN_2234; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2559 = cluster_id_field == 4'h7 ? _GEN_2471 : _GEN_2235; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2560 = cluster_id_field == 4'h7 ? _GEN_2472 : _GEN_2236; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2561 = cluster_id_field == 4'h7 ? _GEN_2473 : _GEN_2237; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2562 = cluster_id_field == 4'h7 ? _GEN_2474 : _GEN_2238; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2563 = cluster_id_field == 4'h7 ? _GEN_2475 : _GEN_2239; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2564 = cluster_id_field == 4'h7 ? _GEN_2476 : _GEN_2240; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2565 = cluster_id_field == 4'h7 ? _GEN_2477 : _GEN_2241; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2566 = cluster_id_field == 4'h7 ? _GEN_2478 : _GEN_2242; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2567 = cluster_id_field == 4'h7 ? _GEN_2479 : _GEN_2243; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2568 = cluster_id_field == 4'h7 ? _GEN_2480 : _GEN_2244; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2569 = cluster_id_field == 4'h7 ? _GEN_2481 : _GEN_2245; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2570 = cluster_id_field == 4'h7 ? _GEN_2482 : _GEN_2246; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2571 = cluster_id_field == 4'h7 ? _GEN_2483 : _GEN_2247; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2572 = cluster_id_field == 4'h7 ? _GEN_2484 : _GEN_2248; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2573 = cluster_id_field == 4'h7 ? _GEN_2485 : _GEN_2249; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2574 = cluster_id_field == 4'h7 ? _GEN_2486 : _GEN_2250; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2575 = cluster_id_field == 4'h7 ? _GEN_2487 : _GEN_2251; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2576 = cluster_id_field == 4'h7 ? _GEN_2488 : _GEN_2252; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2577 = cluster_id_field == 4'h7 ? _GEN_2489 : _GEN_2253; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2578 = cluster_id_field == 4'h7 ? _GEN_2490 : _GEN_2254; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2579 = cluster_id_field == 4'h7 ? _GEN_2491 : _GEN_2255; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2580 = cluster_id_field == 4'h7 ? _GEN_2492 : _GEN_2256; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2581 = cluster_id_field == 4'h7 ? _GEN_2493 : _GEN_2257; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2582 = cluster_id_field == 4'h7 ? _GEN_2494 : _GEN_2258; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2583 = cluster_id_field == 4'h7 ? _GEN_2495 : _GEN_2259; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2584 = cluster_id_field == 4'h7 ? _GEN_2496 : _GEN_2260; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2585 = cluster_id_field == 4'h7 ? _GEN_2497 : _GEN_2261; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2593 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_2511; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_2594 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_2512; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_2598 = sram_id_field == 4'h2 ? _GEN_2594 : _GEN_2512; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_2602 = _T_5 ? io_pcie_w_data : _GEN_2516; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_2603 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_2517; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_2604 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_2518; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_2607 = sram_id_field == 4'h3 ? _GEN_2602 : _GEN_2516; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_2608 = sram_id_field == 4'h3 ? _GEN_2603 : _GEN_2517; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_2609 = sram_id_field == 4'h3 ? _GEN_2604 : _GEN_2518; // @[pcie_interface.scala 161:52]
  wire [5:0] _GEN_2611 = 6'h0 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2520; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2612 = 6'h1 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2521; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2613 = 6'h2 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2522; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2614 = 6'h3 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2523; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2615 = 6'h4 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2524; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2616 = 6'h5 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2525; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2617 = 6'h6 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2526; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2618 = 6'h7 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2527; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2619 = 6'h8 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2528; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2620 = 6'h9 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2529; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2621 = 6'ha == _T_13 ? io_pcie_w_data[5:0] : _GEN_2530; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2622 = 6'hb == _T_13 ? io_pcie_w_data[5:0] : _GEN_2531; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2623 = 6'hc == _T_13 ? io_pcie_w_data[5:0] : _GEN_2532; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2624 = 6'hd == _T_13 ? io_pcie_w_data[5:0] : _GEN_2533; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2625 = 6'he == _T_13 ? io_pcie_w_data[5:0] : _GEN_2534; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2626 = 6'hf == _T_13 ? io_pcie_w_data[5:0] : _GEN_2535; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2627 = 6'h10 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2536; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2628 = 6'h11 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2537; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2629 = 6'h12 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2538; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2630 = 6'h13 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2539; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2631 = 6'h14 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2540; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2632 = 6'h15 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2541; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2633 = 6'h16 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2542; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2634 = 6'h17 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2543; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2635 = 6'h18 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2544; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2636 = 6'h19 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2545; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2637 = 6'h1a == _T_13 ? io_pcie_w_data[5:0] : _GEN_2546; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2638 = 6'h1b == _T_13 ? io_pcie_w_data[5:0] : _GEN_2547; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2639 = 6'h1c == _T_13 ? io_pcie_w_data[5:0] : _GEN_2548; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2640 = 6'h1d == _T_13 ? io_pcie_w_data[5:0] : _GEN_2549; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2641 = 6'h1e == _T_13 ? io_pcie_w_data[5:0] : _GEN_2550; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2642 = 6'h1f == _T_13 ? io_pcie_w_data[5:0] : _GEN_2551; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2643 = 6'h20 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2552; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2644 = 6'h21 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2553; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2645 = 6'h22 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2554; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2646 = 6'h23 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2555; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2647 = 6'h24 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2556; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2648 = 6'h25 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2557; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2649 = 6'h26 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2558; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2650 = 6'h27 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2559; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2651 = 6'h28 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2560; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2652 = 6'h29 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2561; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2653 = 6'h2a == _T_13 ? io_pcie_w_data[5:0] : _GEN_2562; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2654 = 6'h2b == _T_13 ? io_pcie_w_data[5:0] : _GEN_2563; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2655 = 6'h2c == _T_13 ? io_pcie_w_data[5:0] : _GEN_2564; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2656 = 6'h2d == _T_13 ? io_pcie_w_data[5:0] : _GEN_2565; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2657 = 6'h2e == _T_13 ? io_pcie_w_data[5:0] : _GEN_2566; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2658 = 6'h2f == _T_13 ? io_pcie_w_data[5:0] : _GEN_2567; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2659 = 6'h30 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2568; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2660 = 6'h31 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2569; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2661 = 6'h32 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2570; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2662 = 6'h33 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2571; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2663 = 6'h34 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2572; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2664 = 6'h35 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2573; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2665 = 6'h36 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2574; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2666 = 6'h37 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2575; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2667 = 6'h38 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2576; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2668 = 6'h39 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2577; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2669 = 6'h3a == _T_13 ? io_pcie_w_data[5:0] : _GEN_2578; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2670 = 6'h3b == _T_13 ? io_pcie_w_data[5:0] : _GEN_2579; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2671 = 6'h3c == _T_13 ? io_pcie_w_data[5:0] : _GEN_2580; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2672 = 6'h3d == _T_13 ? io_pcie_w_data[5:0] : _GEN_2581; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2673 = 6'h3e == _T_13 ? io_pcie_w_data[5:0] : _GEN_2582; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2674 = 6'h3f == _T_13 ? io_pcie_w_data[5:0] : _GEN_2583; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2675 = sram_id_field == 4'h4 ? _GEN_2611 : _GEN_2520; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2676 = sram_id_field == 4'h4 ? _GEN_2612 : _GEN_2521; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2677 = sram_id_field == 4'h4 ? _GEN_2613 : _GEN_2522; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2678 = sram_id_field == 4'h4 ? _GEN_2614 : _GEN_2523; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2679 = sram_id_field == 4'h4 ? _GEN_2615 : _GEN_2524; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2680 = sram_id_field == 4'h4 ? _GEN_2616 : _GEN_2525; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2681 = sram_id_field == 4'h4 ? _GEN_2617 : _GEN_2526; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2682 = sram_id_field == 4'h4 ? _GEN_2618 : _GEN_2527; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2683 = sram_id_field == 4'h4 ? _GEN_2619 : _GEN_2528; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2684 = sram_id_field == 4'h4 ? _GEN_2620 : _GEN_2529; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2685 = sram_id_field == 4'h4 ? _GEN_2621 : _GEN_2530; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2686 = sram_id_field == 4'h4 ? _GEN_2622 : _GEN_2531; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2687 = sram_id_field == 4'h4 ? _GEN_2623 : _GEN_2532; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2688 = sram_id_field == 4'h4 ? _GEN_2624 : _GEN_2533; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2689 = sram_id_field == 4'h4 ? _GEN_2625 : _GEN_2534; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2690 = sram_id_field == 4'h4 ? _GEN_2626 : _GEN_2535; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2691 = sram_id_field == 4'h4 ? _GEN_2627 : _GEN_2536; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2692 = sram_id_field == 4'h4 ? _GEN_2628 : _GEN_2537; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2693 = sram_id_field == 4'h4 ? _GEN_2629 : _GEN_2538; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2694 = sram_id_field == 4'h4 ? _GEN_2630 : _GEN_2539; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2695 = sram_id_field == 4'h4 ? _GEN_2631 : _GEN_2540; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2696 = sram_id_field == 4'h4 ? _GEN_2632 : _GEN_2541; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2697 = sram_id_field == 4'h4 ? _GEN_2633 : _GEN_2542; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2698 = sram_id_field == 4'h4 ? _GEN_2634 : _GEN_2543; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2699 = sram_id_field == 4'h4 ? _GEN_2635 : _GEN_2544; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2700 = sram_id_field == 4'h4 ? _GEN_2636 : _GEN_2545; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2701 = sram_id_field == 4'h4 ? _GEN_2637 : _GEN_2546; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2702 = sram_id_field == 4'h4 ? _GEN_2638 : _GEN_2547; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2703 = sram_id_field == 4'h4 ? _GEN_2639 : _GEN_2548; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2704 = sram_id_field == 4'h4 ? _GEN_2640 : _GEN_2549; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2705 = sram_id_field == 4'h4 ? _GEN_2641 : _GEN_2550; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2706 = sram_id_field == 4'h4 ? _GEN_2642 : _GEN_2551; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2707 = sram_id_field == 4'h4 ? _GEN_2643 : _GEN_2552; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2708 = sram_id_field == 4'h4 ? _GEN_2644 : _GEN_2553; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2709 = sram_id_field == 4'h4 ? _GEN_2645 : _GEN_2554; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2710 = sram_id_field == 4'h4 ? _GEN_2646 : _GEN_2555; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2711 = sram_id_field == 4'h4 ? _GEN_2647 : _GEN_2556; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2712 = sram_id_field == 4'h4 ? _GEN_2648 : _GEN_2557; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2713 = sram_id_field == 4'h4 ? _GEN_2649 : _GEN_2558; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2714 = sram_id_field == 4'h4 ? _GEN_2650 : _GEN_2559; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2715 = sram_id_field == 4'h4 ? _GEN_2651 : _GEN_2560; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2716 = sram_id_field == 4'h4 ? _GEN_2652 : _GEN_2561; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2717 = sram_id_field == 4'h4 ? _GEN_2653 : _GEN_2562; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2718 = sram_id_field == 4'h4 ? _GEN_2654 : _GEN_2563; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2719 = sram_id_field == 4'h4 ? _GEN_2655 : _GEN_2564; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2720 = sram_id_field == 4'h4 ? _GEN_2656 : _GEN_2565; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2721 = sram_id_field == 4'h4 ? _GEN_2657 : _GEN_2566; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2722 = sram_id_field == 4'h4 ? _GEN_2658 : _GEN_2567; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2723 = sram_id_field == 4'h4 ? _GEN_2659 : _GEN_2568; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2724 = sram_id_field == 4'h4 ? _GEN_2660 : _GEN_2569; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2725 = sram_id_field == 4'h4 ? _GEN_2661 : _GEN_2570; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2726 = sram_id_field == 4'h4 ? _GEN_2662 : _GEN_2571; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2727 = sram_id_field == 4'h4 ? _GEN_2663 : _GEN_2572; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2728 = sram_id_field == 4'h4 ? _GEN_2664 : _GEN_2573; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2729 = sram_id_field == 4'h4 ? _GEN_2665 : _GEN_2574; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2730 = sram_id_field == 4'h4 ? _GEN_2666 : _GEN_2575; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2731 = sram_id_field == 4'h4 ? _GEN_2667 : _GEN_2576; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2732 = sram_id_field == 4'h4 ? _GEN_2668 : _GEN_2577; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2733 = sram_id_field == 4'h4 ? _GEN_2669 : _GEN_2578; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2734 = sram_id_field == 4'h4 ? _GEN_2670 : _GEN_2579; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2735 = sram_id_field == 4'h4 ? _GEN_2671 : _GEN_2580; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2736 = sram_id_field == 4'h4 ? _GEN_2672 : _GEN_2581; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2737 = sram_id_field == 4'h4 ? _GEN_2673 : _GEN_2582; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_2738 = sram_id_field == 4'h4 ? _GEN_2674 : _GEN_2583; // @[pcie_interface.scala 176:52]
  wire [63:0] _GEN_2739 = _T_5 ? io_pcie_w_data : _GEN_2584; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_2740 = _T_9 ? io_pcie_w_data : _GEN_2585; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_2742 = sram_id_field == 4'h5 ? _GEN_2739 : _GEN_2584; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_2743 = sram_id_field == 4'h5 ? _GEN_2740 : _GEN_2585; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_2746 = type_field == 4'h3 ? _GEN_2593 : _GEN_2511; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2747 = type_field == 4'h3 ? _GEN_2598 : _GEN_2512; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2752 = type_field == 4'h3 ? _GEN_2607 : _GEN_2516; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2753 = type_field == 4'h3 ? _GEN_2608 : _GEN_2517; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2754 = type_field == 4'h3 ? _GEN_2609 : _GEN_2518; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2756 = type_field == 4'h3 ? _GEN_2675 : _GEN_2520; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2757 = type_field == 4'h3 ? _GEN_2676 : _GEN_2521; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2758 = type_field == 4'h3 ? _GEN_2677 : _GEN_2522; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2759 = type_field == 4'h3 ? _GEN_2678 : _GEN_2523; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2760 = type_field == 4'h3 ? _GEN_2679 : _GEN_2524; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2761 = type_field == 4'h3 ? _GEN_2680 : _GEN_2525; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2762 = type_field == 4'h3 ? _GEN_2681 : _GEN_2526; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2763 = type_field == 4'h3 ? _GEN_2682 : _GEN_2527; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2764 = type_field == 4'h3 ? _GEN_2683 : _GEN_2528; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2765 = type_field == 4'h3 ? _GEN_2684 : _GEN_2529; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2766 = type_field == 4'h3 ? _GEN_2685 : _GEN_2530; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2767 = type_field == 4'h3 ? _GEN_2686 : _GEN_2531; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2768 = type_field == 4'h3 ? _GEN_2687 : _GEN_2532; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2769 = type_field == 4'h3 ? _GEN_2688 : _GEN_2533; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2770 = type_field == 4'h3 ? _GEN_2689 : _GEN_2534; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2771 = type_field == 4'h3 ? _GEN_2690 : _GEN_2535; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2772 = type_field == 4'h3 ? _GEN_2691 : _GEN_2536; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2773 = type_field == 4'h3 ? _GEN_2692 : _GEN_2537; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2774 = type_field == 4'h3 ? _GEN_2693 : _GEN_2538; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2775 = type_field == 4'h3 ? _GEN_2694 : _GEN_2539; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2776 = type_field == 4'h3 ? _GEN_2695 : _GEN_2540; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2777 = type_field == 4'h3 ? _GEN_2696 : _GEN_2541; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2778 = type_field == 4'h3 ? _GEN_2697 : _GEN_2542; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2779 = type_field == 4'h3 ? _GEN_2698 : _GEN_2543; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2780 = type_field == 4'h3 ? _GEN_2699 : _GEN_2544; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2781 = type_field == 4'h3 ? _GEN_2700 : _GEN_2545; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2782 = type_field == 4'h3 ? _GEN_2701 : _GEN_2546; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2783 = type_field == 4'h3 ? _GEN_2702 : _GEN_2547; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2784 = type_field == 4'h3 ? _GEN_2703 : _GEN_2548; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2785 = type_field == 4'h3 ? _GEN_2704 : _GEN_2549; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2786 = type_field == 4'h3 ? _GEN_2705 : _GEN_2550; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2787 = type_field == 4'h3 ? _GEN_2706 : _GEN_2551; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2788 = type_field == 4'h3 ? _GEN_2707 : _GEN_2552; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2789 = type_field == 4'h3 ? _GEN_2708 : _GEN_2553; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2790 = type_field == 4'h3 ? _GEN_2709 : _GEN_2554; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2791 = type_field == 4'h3 ? _GEN_2710 : _GEN_2555; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2792 = type_field == 4'h3 ? _GEN_2711 : _GEN_2556; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2793 = type_field == 4'h3 ? _GEN_2712 : _GEN_2557; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2794 = type_field == 4'h3 ? _GEN_2713 : _GEN_2558; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2795 = type_field == 4'h3 ? _GEN_2714 : _GEN_2559; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2796 = type_field == 4'h3 ? _GEN_2715 : _GEN_2560; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2797 = type_field == 4'h3 ? _GEN_2716 : _GEN_2561; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2798 = type_field == 4'h3 ? _GEN_2717 : _GEN_2562; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2799 = type_field == 4'h3 ? _GEN_2718 : _GEN_2563; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2800 = type_field == 4'h3 ? _GEN_2719 : _GEN_2564; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2801 = type_field == 4'h3 ? _GEN_2720 : _GEN_2565; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2802 = type_field == 4'h3 ? _GEN_2721 : _GEN_2566; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2803 = type_field == 4'h3 ? _GEN_2722 : _GEN_2567; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2804 = type_field == 4'h3 ? _GEN_2723 : _GEN_2568; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2805 = type_field == 4'h3 ? _GEN_2724 : _GEN_2569; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2806 = type_field == 4'h3 ? _GEN_2725 : _GEN_2570; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2807 = type_field == 4'h3 ? _GEN_2726 : _GEN_2571; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2808 = type_field == 4'h3 ? _GEN_2727 : _GEN_2572; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2809 = type_field == 4'h3 ? _GEN_2728 : _GEN_2573; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2810 = type_field == 4'h3 ? _GEN_2729 : _GEN_2574; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2811 = type_field == 4'h3 ? _GEN_2730 : _GEN_2575; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2812 = type_field == 4'h3 ? _GEN_2731 : _GEN_2576; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2813 = type_field == 4'h3 ? _GEN_2732 : _GEN_2577; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2814 = type_field == 4'h3 ? _GEN_2733 : _GEN_2578; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2815 = type_field == 4'h3 ? _GEN_2734 : _GEN_2579; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2816 = type_field == 4'h3 ? _GEN_2735 : _GEN_2580; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2817 = type_field == 4'h3 ? _GEN_2736 : _GEN_2581; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2818 = type_field == 4'h3 ? _GEN_2737 : _GEN_2582; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_2819 = type_field == 4'h3 ? _GEN_2738 : _GEN_2583; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2820 = type_field == 4'h3 ? _GEN_2742 : _GEN_2584; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2821 = type_field == 4'h3 ? _GEN_2743 : _GEN_2585; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_2834 = cluster_id_field == 4'h8 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_2835 = cluster_id_field == 4'h8 ? _GEN_2746 : _GEN_2511; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2836 = cluster_id_field == 4'h8 ? _GEN_2747 : _GEN_2512; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_2839 = cluster_id_field == 4'h8 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_2840 = cluster_id_field == 4'h8 ? _GEN_2752 : _GEN_2516; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2841 = cluster_id_field == 4'h8 ? _GEN_2753 : _GEN_2517; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2842 = cluster_id_field == 4'h8 ? _GEN_2754 : _GEN_2518; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2844 = cluster_id_field == 4'h8 ? _GEN_2756 : _GEN_2520; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2845 = cluster_id_field == 4'h8 ? _GEN_2757 : _GEN_2521; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2846 = cluster_id_field == 4'h8 ? _GEN_2758 : _GEN_2522; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2847 = cluster_id_field == 4'h8 ? _GEN_2759 : _GEN_2523; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2848 = cluster_id_field == 4'h8 ? _GEN_2760 : _GEN_2524; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2849 = cluster_id_field == 4'h8 ? _GEN_2761 : _GEN_2525; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2850 = cluster_id_field == 4'h8 ? _GEN_2762 : _GEN_2526; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2851 = cluster_id_field == 4'h8 ? _GEN_2763 : _GEN_2527; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2852 = cluster_id_field == 4'h8 ? _GEN_2764 : _GEN_2528; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2853 = cluster_id_field == 4'h8 ? _GEN_2765 : _GEN_2529; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2854 = cluster_id_field == 4'h8 ? _GEN_2766 : _GEN_2530; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2855 = cluster_id_field == 4'h8 ? _GEN_2767 : _GEN_2531; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2856 = cluster_id_field == 4'h8 ? _GEN_2768 : _GEN_2532; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2857 = cluster_id_field == 4'h8 ? _GEN_2769 : _GEN_2533; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2858 = cluster_id_field == 4'h8 ? _GEN_2770 : _GEN_2534; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2859 = cluster_id_field == 4'h8 ? _GEN_2771 : _GEN_2535; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2860 = cluster_id_field == 4'h8 ? _GEN_2772 : _GEN_2536; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2861 = cluster_id_field == 4'h8 ? _GEN_2773 : _GEN_2537; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2862 = cluster_id_field == 4'h8 ? _GEN_2774 : _GEN_2538; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2863 = cluster_id_field == 4'h8 ? _GEN_2775 : _GEN_2539; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2864 = cluster_id_field == 4'h8 ? _GEN_2776 : _GEN_2540; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2865 = cluster_id_field == 4'h8 ? _GEN_2777 : _GEN_2541; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2866 = cluster_id_field == 4'h8 ? _GEN_2778 : _GEN_2542; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2867 = cluster_id_field == 4'h8 ? _GEN_2779 : _GEN_2543; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2868 = cluster_id_field == 4'h8 ? _GEN_2780 : _GEN_2544; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2869 = cluster_id_field == 4'h8 ? _GEN_2781 : _GEN_2545; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2870 = cluster_id_field == 4'h8 ? _GEN_2782 : _GEN_2546; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2871 = cluster_id_field == 4'h8 ? _GEN_2783 : _GEN_2547; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2872 = cluster_id_field == 4'h8 ? _GEN_2784 : _GEN_2548; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2873 = cluster_id_field == 4'h8 ? _GEN_2785 : _GEN_2549; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2874 = cluster_id_field == 4'h8 ? _GEN_2786 : _GEN_2550; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2875 = cluster_id_field == 4'h8 ? _GEN_2787 : _GEN_2551; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2876 = cluster_id_field == 4'h8 ? _GEN_2788 : _GEN_2552; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2877 = cluster_id_field == 4'h8 ? _GEN_2789 : _GEN_2553; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2878 = cluster_id_field == 4'h8 ? _GEN_2790 : _GEN_2554; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2879 = cluster_id_field == 4'h8 ? _GEN_2791 : _GEN_2555; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2880 = cluster_id_field == 4'h8 ? _GEN_2792 : _GEN_2556; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2881 = cluster_id_field == 4'h8 ? _GEN_2793 : _GEN_2557; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2882 = cluster_id_field == 4'h8 ? _GEN_2794 : _GEN_2558; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2883 = cluster_id_field == 4'h8 ? _GEN_2795 : _GEN_2559; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2884 = cluster_id_field == 4'h8 ? _GEN_2796 : _GEN_2560; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2885 = cluster_id_field == 4'h8 ? _GEN_2797 : _GEN_2561; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2886 = cluster_id_field == 4'h8 ? _GEN_2798 : _GEN_2562; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2887 = cluster_id_field == 4'h8 ? _GEN_2799 : _GEN_2563; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2888 = cluster_id_field == 4'h8 ? _GEN_2800 : _GEN_2564; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2889 = cluster_id_field == 4'h8 ? _GEN_2801 : _GEN_2565; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2890 = cluster_id_field == 4'h8 ? _GEN_2802 : _GEN_2566; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2891 = cluster_id_field == 4'h8 ? _GEN_2803 : _GEN_2567; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2892 = cluster_id_field == 4'h8 ? _GEN_2804 : _GEN_2568; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2893 = cluster_id_field == 4'h8 ? _GEN_2805 : _GEN_2569; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2894 = cluster_id_field == 4'h8 ? _GEN_2806 : _GEN_2570; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2895 = cluster_id_field == 4'h8 ? _GEN_2807 : _GEN_2571; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2896 = cluster_id_field == 4'h8 ? _GEN_2808 : _GEN_2572; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2897 = cluster_id_field == 4'h8 ? _GEN_2809 : _GEN_2573; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2898 = cluster_id_field == 4'h8 ? _GEN_2810 : _GEN_2574; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2899 = cluster_id_field == 4'h8 ? _GEN_2811 : _GEN_2575; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2900 = cluster_id_field == 4'h8 ? _GEN_2812 : _GEN_2576; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2901 = cluster_id_field == 4'h8 ? _GEN_2813 : _GEN_2577; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2902 = cluster_id_field == 4'h8 ? _GEN_2814 : _GEN_2578; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2903 = cluster_id_field == 4'h8 ? _GEN_2815 : _GEN_2579; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2904 = cluster_id_field == 4'h8 ? _GEN_2816 : _GEN_2580; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2905 = cluster_id_field == 4'h8 ? _GEN_2817 : _GEN_2581; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2906 = cluster_id_field == 4'h8 ? _GEN_2818 : _GEN_2582; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_2907 = cluster_id_field == 4'h8 ? _GEN_2819 : _GEN_2583; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2908 = cluster_id_field == 4'h8 ? _GEN_2820 : _GEN_2584; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2909 = cluster_id_field == 4'h8 ? _GEN_2821 : _GEN_2585; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2917 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_2835; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_2918 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_2836; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_2922 = sram_id_field == 4'h2 ? _GEN_2918 : _GEN_2836; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_2926 = _T_5 ? io_pcie_w_data : _GEN_2840; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_2927 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_2841; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_2928 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_2842; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_2931 = sram_id_field == 4'h3 ? _GEN_2926 : _GEN_2840; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_2932 = sram_id_field == 4'h3 ? _GEN_2927 : _GEN_2841; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_2933 = sram_id_field == 4'h3 ? _GEN_2928 : _GEN_2842; // @[pcie_interface.scala 161:52]
  wire [5:0] _GEN_2935 = 6'h0 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2844; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2936 = 6'h1 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2845; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2937 = 6'h2 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2846; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2938 = 6'h3 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2847; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2939 = 6'h4 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2848; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2940 = 6'h5 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2849; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2941 = 6'h6 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2850; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2942 = 6'h7 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2851; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2943 = 6'h8 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2852; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2944 = 6'h9 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2853; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2945 = 6'ha == _T_13 ? io_pcie_w_data[5:0] : _GEN_2854; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2946 = 6'hb == _T_13 ? io_pcie_w_data[5:0] : _GEN_2855; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2947 = 6'hc == _T_13 ? io_pcie_w_data[5:0] : _GEN_2856; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2948 = 6'hd == _T_13 ? io_pcie_w_data[5:0] : _GEN_2857; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2949 = 6'he == _T_13 ? io_pcie_w_data[5:0] : _GEN_2858; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2950 = 6'hf == _T_13 ? io_pcie_w_data[5:0] : _GEN_2859; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2951 = 6'h10 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2860; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2952 = 6'h11 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2861; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2953 = 6'h12 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2862; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2954 = 6'h13 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2863; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2955 = 6'h14 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2864; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2956 = 6'h15 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2865; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2957 = 6'h16 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2866; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2958 = 6'h17 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2867; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2959 = 6'h18 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2868; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2960 = 6'h19 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2869; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2961 = 6'h1a == _T_13 ? io_pcie_w_data[5:0] : _GEN_2870; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2962 = 6'h1b == _T_13 ? io_pcie_w_data[5:0] : _GEN_2871; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2963 = 6'h1c == _T_13 ? io_pcie_w_data[5:0] : _GEN_2872; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2964 = 6'h1d == _T_13 ? io_pcie_w_data[5:0] : _GEN_2873; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2965 = 6'h1e == _T_13 ? io_pcie_w_data[5:0] : _GEN_2874; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2966 = 6'h1f == _T_13 ? io_pcie_w_data[5:0] : _GEN_2875; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2967 = 6'h20 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2876; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2968 = 6'h21 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2877; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2969 = 6'h22 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2878; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2970 = 6'h23 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2879; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2971 = 6'h24 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2880; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2972 = 6'h25 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2881; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2973 = 6'h26 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2882; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2974 = 6'h27 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2883; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2975 = 6'h28 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2884; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2976 = 6'h29 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2885; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2977 = 6'h2a == _T_13 ? io_pcie_w_data[5:0] : _GEN_2886; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2978 = 6'h2b == _T_13 ? io_pcie_w_data[5:0] : _GEN_2887; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2979 = 6'h2c == _T_13 ? io_pcie_w_data[5:0] : _GEN_2888; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2980 = 6'h2d == _T_13 ? io_pcie_w_data[5:0] : _GEN_2889; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2981 = 6'h2e == _T_13 ? io_pcie_w_data[5:0] : _GEN_2890; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2982 = 6'h2f == _T_13 ? io_pcie_w_data[5:0] : _GEN_2891; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2983 = 6'h30 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2892; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2984 = 6'h31 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2893; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2985 = 6'h32 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2894; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2986 = 6'h33 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2895; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2987 = 6'h34 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2896; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2988 = 6'h35 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2897; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2989 = 6'h36 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2898; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2990 = 6'h37 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2899; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2991 = 6'h38 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2900; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2992 = 6'h39 == _T_13 ? io_pcie_w_data[5:0] : _GEN_2901; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2993 = 6'h3a == _T_13 ? io_pcie_w_data[5:0] : _GEN_2902; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2994 = 6'h3b == _T_13 ? io_pcie_w_data[5:0] : _GEN_2903; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2995 = 6'h3c == _T_13 ? io_pcie_w_data[5:0] : _GEN_2904; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2996 = 6'h3d == _T_13 ? io_pcie_w_data[5:0] : _GEN_2905; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2997 = 6'h3e == _T_13 ? io_pcie_w_data[5:0] : _GEN_2906; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2998 = 6'h3f == _T_13 ? io_pcie_w_data[5:0] : _GEN_2907; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_2999 = sram_id_field == 4'h4 ? _GEN_2935 : _GEN_2844; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3000 = sram_id_field == 4'h4 ? _GEN_2936 : _GEN_2845; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3001 = sram_id_field == 4'h4 ? _GEN_2937 : _GEN_2846; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3002 = sram_id_field == 4'h4 ? _GEN_2938 : _GEN_2847; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3003 = sram_id_field == 4'h4 ? _GEN_2939 : _GEN_2848; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3004 = sram_id_field == 4'h4 ? _GEN_2940 : _GEN_2849; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3005 = sram_id_field == 4'h4 ? _GEN_2941 : _GEN_2850; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3006 = sram_id_field == 4'h4 ? _GEN_2942 : _GEN_2851; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3007 = sram_id_field == 4'h4 ? _GEN_2943 : _GEN_2852; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3008 = sram_id_field == 4'h4 ? _GEN_2944 : _GEN_2853; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3009 = sram_id_field == 4'h4 ? _GEN_2945 : _GEN_2854; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3010 = sram_id_field == 4'h4 ? _GEN_2946 : _GEN_2855; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3011 = sram_id_field == 4'h4 ? _GEN_2947 : _GEN_2856; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3012 = sram_id_field == 4'h4 ? _GEN_2948 : _GEN_2857; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3013 = sram_id_field == 4'h4 ? _GEN_2949 : _GEN_2858; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3014 = sram_id_field == 4'h4 ? _GEN_2950 : _GEN_2859; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3015 = sram_id_field == 4'h4 ? _GEN_2951 : _GEN_2860; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3016 = sram_id_field == 4'h4 ? _GEN_2952 : _GEN_2861; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3017 = sram_id_field == 4'h4 ? _GEN_2953 : _GEN_2862; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3018 = sram_id_field == 4'h4 ? _GEN_2954 : _GEN_2863; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3019 = sram_id_field == 4'h4 ? _GEN_2955 : _GEN_2864; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3020 = sram_id_field == 4'h4 ? _GEN_2956 : _GEN_2865; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3021 = sram_id_field == 4'h4 ? _GEN_2957 : _GEN_2866; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3022 = sram_id_field == 4'h4 ? _GEN_2958 : _GEN_2867; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3023 = sram_id_field == 4'h4 ? _GEN_2959 : _GEN_2868; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3024 = sram_id_field == 4'h4 ? _GEN_2960 : _GEN_2869; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3025 = sram_id_field == 4'h4 ? _GEN_2961 : _GEN_2870; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3026 = sram_id_field == 4'h4 ? _GEN_2962 : _GEN_2871; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3027 = sram_id_field == 4'h4 ? _GEN_2963 : _GEN_2872; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3028 = sram_id_field == 4'h4 ? _GEN_2964 : _GEN_2873; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3029 = sram_id_field == 4'h4 ? _GEN_2965 : _GEN_2874; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3030 = sram_id_field == 4'h4 ? _GEN_2966 : _GEN_2875; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3031 = sram_id_field == 4'h4 ? _GEN_2967 : _GEN_2876; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3032 = sram_id_field == 4'h4 ? _GEN_2968 : _GEN_2877; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3033 = sram_id_field == 4'h4 ? _GEN_2969 : _GEN_2878; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3034 = sram_id_field == 4'h4 ? _GEN_2970 : _GEN_2879; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3035 = sram_id_field == 4'h4 ? _GEN_2971 : _GEN_2880; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3036 = sram_id_field == 4'h4 ? _GEN_2972 : _GEN_2881; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3037 = sram_id_field == 4'h4 ? _GEN_2973 : _GEN_2882; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3038 = sram_id_field == 4'h4 ? _GEN_2974 : _GEN_2883; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3039 = sram_id_field == 4'h4 ? _GEN_2975 : _GEN_2884; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3040 = sram_id_field == 4'h4 ? _GEN_2976 : _GEN_2885; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3041 = sram_id_field == 4'h4 ? _GEN_2977 : _GEN_2886; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3042 = sram_id_field == 4'h4 ? _GEN_2978 : _GEN_2887; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3043 = sram_id_field == 4'h4 ? _GEN_2979 : _GEN_2888; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3044 = sram_id_field == 4'h4 ? _GEN_2980 : _GEN_2889; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3045 = sram_id_field == 4'h4 ? _GEN_2981 : _GEN_2890; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3046 = sram_id_field == 4'h4 ? _GEN_2982 : _GEN_2891; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3047 = sram_id_field == 4'h4 ? _GEN_2983 : _GEN_2892; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3048 = sram_id_field == 4'h4 ? _GEN_2984 : _GEN_2893; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3049 = sram_id_field == 4'h4 ? _GEN_2985 : _GEN_2894; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3050 = sram_id_field == 4'h4 ? _GEN_2986 : _GEN_2895; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3051 = sram_id_field == 4'h4 ? _GEN_2987 : _GEN_2896; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3052 = sram_id_field == 4'h4 ? _GEN_2988 : _GEN_2897; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3053 = sram_id_field == 4'h4 ? _GEN_2989 : _GEN_2898; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3054 = sram_id_field == 4'h4 ? _GEN_2990 : _GEN_2899; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3055 = sram_id_field == 4'h4 ? _GEN_2991 : _GEN_2900; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3056 = sram_id_field == 4'h4 ? _GEN_2992 : _GEN_2901; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3057 = sram_id_field == 4'h4 ? _GEN_2993 : _GEN_2902; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3058 = sram_id_field == 4'h4 ? _GEN_2994 : _GEN_2903; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3059 = sram_id_field == 4'h4 ? _GEN_2995 : _GEN_2904; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3060 = sram_id_field == 4'h4 ? _GEN_2996 : _GEN_2905; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3061 = sram_id_field == 4'h4 ? _GEN_2997 : _GEN_2906; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3062 = sram_id_field == 4'h4 ? _GEN_2998 : _GEN_2907; // @[pcie_interface.scala 176:52]
  wire [63:0] _GEN_3063 = _T_5 ? io_pcie_w_data : _GEN_2908; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_3064 = _T_9 ? io_pcie_w_data : _GEN_2909; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_3066 = sram_id_field == 4'h5 ? _GEN_3063 : _GEN_2908; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_3067 = sram_id_field == 4'h5 ? _GEN_3064 : _GEN_2909; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_3070 = type_field == 4'h3 ? _GEN_2917 : _GEN_2835; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3071 = type_field == 4'h3 ? _GEN_2922 : _GEN_2836; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3076 = type_field == 4'h3 ? _GEN_2931 : _GEN_2840; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3077 = type_field == 4'h3 ? _GEN_2932 : _GEN_2841; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3078 = type_field == 4'h3 ? _GEN_2933 : _GEN_2842; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3080 = type_field == 4'h3 ? _GEN_2999 : _GEN_2844; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3081 = type_field == 4'h3 ? _GEN_3000 : _GEN_2845; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3082 = type_field == 4'h3 ? _GEN_3001 : _GEN_2846; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3083 = type_field == 4'h3 ? _GEN_3002 : _GEN_2847; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3084 = type_field == 4'h3 ? _GEN_3003 : _GEN_2848; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3085 = type_field == 4'h3 ? _GEN_3004 : _GEN_2849; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3086 = type_field == 4'h3 ? _GEN_3005 : _GEN_2850; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3087 = type_field == 4'h3 ? _GEN_3006 : _GEN_2851; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3088 = type_field == 4'h3 ? _GEN_3007 : _GEN_2852; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3089 = type_field == 4'h3 ? _GEN_3008 : _GEN_2853; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3090 = type_field == 4'h3 ? _GEN_3009 : _GEN_2854; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3091 = type_field == 4'h3 ? _GEN_3010 : _GEN_2855; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3092 = type_field == 4'h3 ? _GEN_3011 : _GEN_2856; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3093 = type_field == 4'h3 ? _GEN_3012 : _GEN_2857; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3094 = type_field == 4'h3 ? _GEN_3013 : _GEN_2858; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3095 = type_field == 4'h3 ? _GEN_3014 : _GEN_2859; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3096 = type_field == 4'h3 ? _GEN_3015 : _GEN_2860; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3097 = type_field == 4'h3 ? _GEN_3016 : _GEN_2861; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3098 = type_field == 4'h3 ? _GEN_3017 : _GEN_2862; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3099 = type_field == 4'h3 ? _GEN_3018 : _GEN_2863; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3100 = type_field == 4'h3 ? _GEN_3019 : _GEN_2864; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3101 = type_field == 4'h3 ? _GEN_3020 : _GEN_2865; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3102 = type_field == 4'h3 ? _GEN_3021 : _GEN_2866; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3103 = type_field == 4'h3 ? _GEN_3022 : _GEN_2867; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3104 = type_field == 4'h3 ? _GEN_3023 : _GEN_2868; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3105 = type_field == 4'h3 ? _GEN_3024 : _GEN_2869; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3106 = type_field == 4'h3 ? _GEN_3025 : _GEN_2870; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3107 = type_field == 4'h3 ? _GEN_3026 : _GEN_2871; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3108 = type_field == 4'h3 ? _GEN_3027 : _GEN_2872; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3109 = type_field == 4'h3 ? _GEN_3028 : _GEN_2873; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3110 = type_field == 4'h3 ? _GEN_3029 : _GEN_2874; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3111 = type_field == 4'h3 ? _GEN_3030 : _GEN_2875; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3112 = type_field == 4'h3 ? _GEN_3031 : _GEN_2876; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3113 = type_field == 4'h3 ? _GEN_3032 : _GEN_2877; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3114 = type_field == 4'h3 ? _GEN_3033 : _GEN_2878; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3115 = type_field == 4'h3 ? _GEN_3034 : _GEN_2879; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3116 = type_field == 4'h3 ? _GEN_3035 : _GEN_2880; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3117 = type_field == 4'h3 ? _GEN_3036 : _GEN_2881; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3118 = type_field == 4'h3 ? _GEN_3037 : _GEN_2882; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3119 = type_field == 4'h3 ? _GEN_3038 : _GEN_2883; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3120 = type_field == 4'h3 ? _GEN_3039 : _GEN_2884; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3121 = type_field == 4'h3 ? _GEN_3040 : _GEN_2885; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3122 = type_field == 4'h3 ? _GEN_3041 : _GEN_2886; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3123 = type_field == 4'h3 ? _GEN_3042 : _GEN_2887; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3124 = type_field == 4'h3 ? _GEN_3043 : _GEN_2888; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3125 = type_field == 4'h3 ? _GEN_3044 : _GEN_2889; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3126 = type_field == 4'h3 ? _GEN_3045 : _GEN_2890; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3127 = type_field == 4'h3 ? _GEN_3046 : _GEN_2891; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3128 = type_field == 4'h3 ? _GEN_3047 : _GEN_2892; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3129 = type_field == 4'h3 ? _GEN_3048 : _GEN_2893; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3130 = type_field == 4'h3 ? _GEN_3049 : _GEN_2894; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3131 = type_field == 4'h3 ? _GEN_3050 : _GEN_2895; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3132 = type_field == 4'h3 ? _GEN_3051 : _GEN_2896; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3133 = type_field == 4'h3 ? _GEN_3052 : _GEN_2897; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3134 = type_field == 4'h3 ? _GEN_3053 : _GEN_2898; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3135 = type_field == 4'h3 ? _GEN_3054 : _GEN_2899; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3136 = type_field == 4'h3 ? _GEN_3055 : _GEN_2900; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3137 = type_field == 4'h3 ? _GEN_3056 : _GEN_2901; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3138 = type_field == 4'h3 ? _GEN_3057 : _GEN_2902; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3139 = type_field == 4'h3 ? _GEN_3058 : _GEN_2903; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3140 = type_field == 4'h3 ? _GEN_3059 : _GEN_2904; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3141 = type_field == 4'h3 ? _GEN_3060 : _GEN_2905; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3142 = type_field == 4'h3 ? _GEN_3061 : _GEN_2906; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3143 = type_field == 4'h3 ? _GEN_3062 : _GEN_2907; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3144 = type_field == 4'h3 ? _GEN_3066 : _GEN_2908; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3145 = type_field == 4'h3 ? _GEN_3067 : _GEN_2909; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_3158 = cluster_id_field == 4'h9 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_3159 = cluster_id_field == 4'h9 ? _GEN_3070 : _GEN_2835; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3160 = cluster_id_field == 4'h9 ? _GEN_3071 : _GEN_2836; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_3163 = cluster_id_field == 4'h9 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_3164 = cluster_id_field == 4'h9 ? _GEN_3076 : _GEN_2840; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3165 = cluster_id_field == 4'h9 ? _GEN_3077 : _GEN_2841; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3166 = cluster_id_field == 4'h9 ? _GEN_3078 : _GEN_2842; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3168 = cluster_id_field == 4'h9 ? _GEN_3080 : _GEN_2844; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3169 = cluster_id_field == 4'h9 ? _GEN_3081 : _GEN_2845; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3170 = cluster_id_field == 4'h9 ? _GEN_3082 : _GEN_2846; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3171 = cluster_id_field == 4'h9 ? _GEN_3083 : _GEN_2847; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3172 = cluster_id_field == 4'h9 ? _GEN_3084 : _GEN_2848; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3173 = cluster_id_field == 4'h9 ? _GEN_3085 : _GEN_2849; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3174 = cluster_id_field == 4'h9 ? _GEN_3086 : _GEN_2850; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3175 = cluster_id_field == 4'h9 ? _GEN_3087 : _GEN_2851; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3176 = cluster_id_field == 4'h9 ? _GEN_3088 : _GEN_2852; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3177 = cluster_id_field == 4'h9 ? _GEN_3089 : _GEN_2853; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3178 = cluster_id_field == 4'h9 ? _GEN_3090 : _GEN_2854; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3179 = cluster_id_field == 4'h9 ? _GEN_3091 : _GEN_2855; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3180 = cluster_id_field == 4'h9 ? _GEN_3092 : _GEN_2856; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3181 = cluster_id_field == 4'h9 ? _GEN_3093 : _GEN_2857; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3182 = cluster_id_field == 4'h9 ? _GEN_3094 : _GEN_2858; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3183 = cluster_id_field == 4'h9 ? _GEN_3095 : _GEN_2859; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3184 = cluster_id_field == 4'h9 ? _GEN_3096 : _GEN_2860; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3185 = cluster_id_field == 4'h9 ? _GEN_3097 : _GEN_2861; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3186 = cluster_id_field == 4'h9 ? _GEN_3098 : _GEN_2862; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3187 = cluster_id_field == 4'h9 ? _GEN_3099 : _GEN_2863; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3188 = cluster_id_field == 4'h9 ? _GEN_3100 : _GEN_2864; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3189 = cluster_id_field == 4'h9 ? _GEN_3101 : _GEN_2865; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3190 = cluster_id_field == 4'h9 ? _GEN_3102 : _GEN_2866; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3191 = cluster_id_field == 4'h9 ? _GEN_3103 : _GEN_2867; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3192 = cluster_id_field == 4'h9 ? _GEN_3104 : _GEN_2868; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3193 = cluster_id_field == 4'h9 ? _GEN_3105 : _GEN_2869; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3194 = cluster_id_field == 4'h9 ? _GEN_3106 : _GEN_2870; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3195 = cluster_id_field == 4'h9 ? _GEN_3107 : _GEN_2871; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3196 = cluster_id_field == 4'h9 ? _GEN_3108 : _GEN_2872; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3197 = cluster_id_field == 4'h9 ? _GEN_3109 : _GEN_2873; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3198 = cluster_id_field == 4'h9 ? _GEN_3110 : _GEN_2874; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3199 = cluster_id_field == 4'h9 ? _GEN_3111 : _GEN_2875; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3200 = cluster_id_field == 4'h9 ? _GEN_3112 : _GEN_2876; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3201 = cluster_id_field == 4'h9 ? _GEN_3113 : _GEN_2877; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3202 = cluster_id_field == 4'h9 ? _GEN_3114 : _GEN_2878; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3203 = cluster_id_field == 4'h9 ? _GEN_3115 : _GEN_2879; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3204 = cluster_id_field == 4'h9 ? _GEN_3116 : _GEN_2880; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3205 = cluster_id_field == 4'h9 ? _GEN_3117 : _GEN_2881; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3206 = cluster_id_field == 4'h9 ? _GEN_3118 : _GEN_2882; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3207 = cluster_id_field == 4'h9 ? _GEN_3119 : _GEN_2883; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3208 = cluster_id_field == 4'h9 ? _GEN_3120 : _GEN_2884; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3209 = cluster_id_field == 4'h9 ? _GEN_3121 : _GEN_2885; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3210 = cluster_id_field == 4'h9 ? _GEN_3122 : _GEN_2886; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3211 = cluster_id_field == 4'h9 ? _GEN_3123 : _GEN_2887; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3212 = cluster_id_field == 4'h9 ? _GEN_3124 : _GEN_2888; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3213 = cluster_id_field == 4'h9 ? _GEN_3125 : _GEN_2889; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3214 = cluster_id_field == 4'h9 ? _GEN_3126 : _GEN_2890; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3215 = cluster_id_field == 4'h9 ? _GEN_3127 : _GEN_2891; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3216 = cluster_id_field == 4'h9 ? _GEN_3128 : _GEN_2892; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3217 = cluster_id_field == 4'h9 ? _GEN_3129 : _GEN_2893; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3218 = cluster_id_field == 4'h9 ? _GEN_3130 : _GEN_2894; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3219 = cluster_id_field == 4'h9 ? _GEN_3131 : _GEN_2895; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3220 = cluster_id_field == 4'h9 ? _GEN_3132 : _GEN_2896; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3221 = cluster_id_field == 4'h9 ? _GEN_3133 : _GEN_2897; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3222 = cluster_id_field == 4'h9 ? _GEN_3134 : _GEN_2898; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3223 = cluster_id_field == 4'h9 ? _GEN_3135 : _GEN_2899; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3224 = cluster_id_field == 4'h9 ? _GEN_3136 : _GEN_2900; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3225 = cluster_id_field == 4'h9 ? _GEN_3137 : _GEN_2901; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3226 = cluster_id_field == 4'h9 ? _GEN_3138 : _GEN_2902; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3227 = cluster_id_field == 4'h9 ? _GEN_3139 : _GEN_2903; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3228 = cluster_id_field == 4'h9 ? _GEN_3140 : _GEN_2904; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3229 = cluster_id_field == 4'h9 ? _GEN_3141 : _GEN_2905; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3230 = cluster_id_field == 4'h9 ? _GEN_3142 : _GEN_2906; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3231 = cluster_id_field == 4'h9 ? _GEN_3143 : _GEN_2907; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3232 = cluster_id_field == 4'h9 ? _GEN_3144 : _GEN_2908; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3233 = cluster_id_field == 4'h9 ? _GEN_3145 : _GEN_2909; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3241 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_3159; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_3242 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_3160; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_3246 = sram_id_field == 4'h2 ? _GEN_3242 : _GEN_3160; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_3250 = _T_5 ? io_pcie_w_data : _GEN_3164; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_3251 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_3165; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_3252 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_3166; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_3255 = sram_id_field == 4'h3 ? _GEN_3250 : _GEN_3164; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_3256 = sram_id_field == 4'h3 ? _GEN_3251 : _GEN_3165; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_3257 = sram_id_field == 4'h3 ? _GEN_3252 : _GEN_3166; // @[pcie_interface.scala 161:52]
  wire [5:0] _GEN_3259 = 6'h0 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3168; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3260 = 6'h1 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3169; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3261 = 6'h2 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3170; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3262 = 6'h3 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3171; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3263 = 6'h4 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3172; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3264 = 6'h5 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3173; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3265 = 6'h6 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3174; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3266 = 6'h7 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3175; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3267 = 6'h8 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3176; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3268 = 6'h9 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3177; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3269 = 6'ha == _T_13 ? io_pcie_w_data[5:0] : _GEN_3178; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3270 = 6'hb == _T_13 ? io_pcie_w_data[5:0] : _GEN_3179; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3271 = 6'hc == _T_13 ? io_pcie_w_data[5:0] : _GEN_3180; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3272 = 6'hd == _T_13 ? io_pcie_w_data[5:0] : _GEN_3181; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3273 = 6'he == _T_13 ? io_pcie_w_data[5:0] : _GEN_3182; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3274 = 6'hf == _T_13 ? io_pcie_w_data[5:0] : _GEN_3183; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3275 = 6'h10 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3184; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3276 = 6'h11 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3185; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3277 = 6'h12 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3186; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3278 = 6'h13 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3187; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3279 = 6'h14 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3188; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3280 = 6'h15 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3189; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3281 = 6'h16 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3190; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3282 = 6'h17 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3191; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3283 = 6'h18 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3192; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3284 = 6'h19 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3193; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3285 = 6'h1a == _T_13 ? io_pcie_w_data[5:0] : _GEN_3194; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3286 = 6'h1b == _T_13 ? io_pcie_w_data[5:0] : _GEN_3195; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3287 = 6'h1c == _T_13 ? io_pcie_w_data[5:0] : _GEN_3196; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3288 = 6'h1d == _T_13 ? io_pcie_w_data[5:0] : _GEN_3197; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3289 = 6'h1e == _T_13 ? io_pcie_w_data[5:0] : _GEN_3198; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3290 = 6'h1f == _T_13 ? io_pcie_w_data[5:0] : _GEN_3199; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3291 = 6'h20 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3200; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3292 = 6'h21 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3201; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3293 = 6'h22 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3202; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3294 = 6'h23 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3203; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3295 = 6'h24 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3204; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3296 = 6'h25 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3205; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3297 = 6'h26 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3206; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3298 = 6'h27 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3207; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3299 = 6'h28 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3208; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3300 = 6'h29 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3209; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3301 = 6'h2a == _T_13 ? io_pcie_w_data[5:0] : _GEN_3210; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3302 = 6'h2b == _T_13 ? io_pcie_w_data[5:0] : _GEN_3211; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3303 = 6'h2c == _T_13 ? io_pcie_w_data[5:0] : _GEN_3212; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3304 = 6'h2d == _T_13 ? io_pcie_w_data[5:0] : _GEN_3213; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3305 = 6'h2e == _T_13 ? io_pcie_w_data[5:0] : _GEN_3214; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3306 = 6'h2f == _T_13 ? io_pcie_w_data[5:0] : _GEN_3215; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3307 = 6'h30 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3216; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3308 = 6'h31 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3217; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3309 = 6'h32 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3218; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3310 = 6'h33 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3219; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3311 = 6'h34 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3220; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3312 = 6'h35 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3221; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3313 = 6'h36 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3222; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3314 = 6'h37 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3223; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3315 = 6'h38 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3224; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3316 = 6'h39 == _T_13 ? io_pcie_w_data[5:0] : _GEN_3225; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3317 = 6'h3a == _T_13 ? io_pcie_w_data[5:0] : _GEN_3226; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3318 = 6'h3b == _T_13 ? io_pcie_w_data[5:0] : _GEN_3227; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3319 = 6'h3c == _T_13 ? io_pcie_w_data[5:0] : _GEN_3228; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3320 = 6'h3d == _T_13 ? io_pcie_w_data[5:0] : _GEN_3229; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3321 = 6'h3e == _T_13 ? io_pcie_w_data[5:0] : _GEN_3230; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3322 = 6'h3f == _T_13 ? io_pcie_w_data[5:0] : _GEN_3231; // @[pcie_interface.scala 177:78 pcie_interface.scala 177:78]
  wire [5:0] _GEN_3323 = sram_id_field == 4'h4 ? _GEN_3259 : _GEN_3168; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3324 = sram_id_field == 4'h4 ? _GEN_3260 : _GEN_3169; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3325 = sram_id_field == 4'h4 ? _GEN_3261 : _GEN_3170; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3326 = sram_id_field == 4'h4 ? _GEN_3262 : _GEN_3171; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3327 = sram_id_field == 4'h4 ? _GEN_3263 : _GEN_3172; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3328 = sram_id_field == 4'h4 ? _GEN_3264 : _GEN_3173; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3329 = sram_id_field == 4'h4 ? _GEN_3265 : _GEN_3174; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3330 = sram_id_field == 4'h4 ? _GEN_3266 : _GEN_3175; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3331 = sram_id_field == 4'h4 ? _GEN_3267 : _GEN_3176; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3332 = sram_id_field == 4'h4 ? _GEN_3268 : _GEN_3177; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3333 = sram_id_field == 4'h4 ? _GEN_3269 : _GEN_3178; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3334 = sram_id_field == 4'h4 ? _GEN_3270 : _GEN_3179; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3335 = sram_id_field == 4'h4 ? _GEN_3271 : _GEN_3180; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3336 = sram_id_field == 4'h4 ? _GEN_3272 : _GEN_3181; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3337 = sram_id_field == 4'h4 ? _GEN_3273 : _GEN_3182; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3338 = sram_id_field == 4'h4 ? _GEN_3274 : _GEN_3183; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3339 = sram_id_field == 4'h4 ? _GEN_3275 : _GEN_3184; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3340 = sram_id_field == 4'h4 ? _GEN_3276 : _GEN_3185; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3341 = sram_id_field == 4'h4 ? _GEN_3277 : _GEN_3186; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3342 = sram_id_field == 4'h4 ? _GEN_3278 : _GEN_3187; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3343 = sram_id_field == 4'h4 ? _GEN_3279 : _GEN_3188; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3344 = sram_id_field == 4'h4 ? _GEN_3280 : _GEN_3189; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3345 = sram_id_field == 4'h4 ? _GEN_3281 : _GEN_3190; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3346 = sram_id_field == 4'h4 ? _GEN_3282 : _GEN_3191; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3347 = sram_id_field == 4'h4 ? _GEN_3283 : _GEN_3192; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3348 = sram_id_field == 4'h4 ? _GEN_3284 : _GEN_3193; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3349 = sram_id_field == 4'h4 ? _GEN_3285 : _GEN_3194; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3350 = sram_id_field == 4'h4 ? _GEN_3286 : _GEN_3195; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3351 = sram_id_field == 4'h4 ? _GEN_3287 : _GEN_3196; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3352 = sram_id_field == 4'h4 ? _GEN_3288 : _GEN_3197; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3353 = sram_id_field == 4'h4 ? _GEN_3289 : _GEN_3198; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3354 = sram_id_field == 4'h4 ? _GEN_3290 : _GEN_3199; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3355 = sram_id_field == 4'h4 ? _GEN_3291 : _GEN_3200; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3356 = sram_id_field == 4'h4 ? _GEN_3292 : _GEN_3201; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3357 = sram_id_field == 4'h4 ? _GEN_3293 : _GEN_3202; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3358 = sram_id_field == 4'h4 ? _GEN_3294 : _GEN_3203; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3359 = sram_id_field == 4'h4 ? _GEN_3295 : _GEN_3204; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3360 = sram_id_field == 4'h4 ? _GEN_3296 : _GEN_3205; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3361 = sram_id_field == 4'h4 ? _GEN_3297 : _GEN_3206; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3362 = sram_id_field == 4'h4 ? _GEN_3298 : _GEN_3207; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3363 = sram_id_field == 4'h4 ? _GEN_3299 : _GEN_3208; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3364 = sram_id_field == 4'h4 ? _GEN_3300 : _GEN_3209; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3365 = sram_id_field == 4'h4 ? _GEN_3301 : _GEN_3210; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3366 = sram_id_field == 4'h4 ? _GEN_3302 : _GEN_3211; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3367 = sram_id_field == 4'h4 ? _GEN_3303 : _GEN_3212; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3368 = sram_id_field == 4'h4 ? _GEN_3304 : _GEN_3213; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3369 = sram_id_field == 4'h4 ? _GEN_3305 : _GEN_3214; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3370 = sram_id_field == 4'h4 ? _GEN_3306 : _GEN_3215; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3371 = sram_id_field == 4'h4 ? _GEN_3307 : _GEN_3216; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3372 = sram_id_field == 4'h4 ? _GEN_3308 : _GEN_3217; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3373 = sram_id_field == 4'h4 ? _GEN_3309 : _GEN_3218; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3374 = sram_id_field == 4'h4 ? _GEN_3310 : _GEN_3219; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3375 = sram_id_field == 4'h4 ? _GEN_3311 : _GEN_3220; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3376 = sram_id_field == 4'h4 ? _GEN_3312 : _GEN_3221; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3377 = sram_id_field == 4'h4 ? _GEN_3313 : _GEN_3222; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3378 = sram_id_field == 4'h4 ? _GEN_3314 : _GEN_3223; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3379 = sram_id_field == 4'h4 ? _GEN_3315 : _GEN_3224; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3380 = sram_id_field == 4'h4 ? _GEN_3316 : _GEN_3225; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3381 = sram_id_field == 4'h4 ? _GEN_3317 : _GEN_3226; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3382 = sram_id_field == 4'h4 ? _GEN_3318 : _GEN_3227; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3383 = sram_id_field == 4'h4 ? _GEN_3319 : _GEN_3228; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3384 = sram_id_field == 4'h4 ? _GEN_3320 : _GEN_3229; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3385 = sram_id_field == 4'h4 ? _GEN_3321 : _GEN_3230; // @[pcie_interface.scala 176:52]
  wire [5:0] _GEN_3386 = sram_id_field == 4'h4 ? _GEN_3322 : _GEN_3231; // @[pcie_interface.scala 176:52]
  wire [63:0] _GEN_3387 = _T_5 ? io_pcie_w_data : _GEN_3232; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_3388 = _T_9 ? io_pcie_w_data : _GEN_3233; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_3390 = sram_id_field == 4'h5 ? _GEN_3387 : _GEN_3232; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_3391 = sram_id_field == 4'h5 ? _GEN_3388 : _GEN_3233; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_3394 = type_field == 4'h3 ? _GEN_3241 : _GEN_3159; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3395 = type_field == 4'h3 ? _GEN_3246 : _GEN_3160; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3400 = type_field == 4'h3 ? _GEN_3255 : _GEN_3164; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3401 = type_field == 4'h3 ? _GEN_3256 : _GEN_3165; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3402 = type_field == 4'h3 ? _GEN_3257 : _GEN_3166; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3404 = type_field == 4'h3 ? _GEN_3323 : _GEN_3168; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3405 = type_field == 4'h3 ? _GEN_3324 : _GEN_3169; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3406 = type_field == 4'h3 ? _GEN_3325 : _GEN_3170; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3407 = type_field == 4'h3 ? _GEN_3326 : _GEN_3171; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3408 = type_field == 4'h3 ? _GEN_3327 : _GEN_3172; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3409 = type_field == 4'h3 ? _GEN_3328 : _GEN_3173; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3410 = type_field == 4'h3 ? _GEN_3329 : _GEN_3174; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3411 = type_field == 4'h3 ? _GEN_3330 : _GEN_3175; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3412 = type_field == 4'h3 ? _GEN_3331 : _GEN_3176; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3413 = type_field == 4'h3 ? _GEN_3332 : _GEN_3177; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3414 = type_field == 4'h3 ? _GEN_3333 : _GEN_3178; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3415 = type_field == 4'h3 ? _GEN_3334 : _GEN_3179; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3416 = type_field == 4'h3 ? _GEN_3335 : _GEN_3180; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3417 = type_field == 4'h3 ? _GEN_3336 : _GEN_3181; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3418 = type_field == 4'h3 ? _GEN_3337 : _GEN_3182; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3419 = type_field == 4'h3 ? _GEN_3338 : _GEN_3183; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3420 = type_field == 4'h3 ? _GEN_3339 : _GEN_3184; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3421 = type_field == 4'h3 ? _GEN_3340 : _GEN_3185; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3422 = type_field == 4'h3 ? _GEN_3341 : _GEN_3186; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3423 = type_field == 4'h3 ? _GEN_3342 : _GEN_3187; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3424 = type_field == 4'h3 ? _GEN_3343 : _GEN_3188; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3425 = type_field == 4'h3 ? _GEN_3344 : _GEN_3189; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3426 = type_field == 4'h3 ? _GEN_3345 : _GEN_3190; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3427 = type_field == 4'h3 ? _GEN_3346 : _GEN_3191; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3428 = type_field == 4'h3 ? _GEN_3347 : _GEN_3192; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3429 = type_field == 4'h3 ? _GEN_3348 : _GEN_3193; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3430 = type_field == 4'h3 ? _GEN_3349 : _GEN_3194; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3431 = type_field == 4'h3 ? _GEN_3350 : _GEN_3195; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3432 = type_field == 4'h3 ? _GEN_3351 : _GEN_3196; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3433 = type_field == 4'h3 ? _GEN_3352 : _GEN_3197; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3434 = type_field == 4'h3 ? _GEN_3353 : _GEN_3198; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3435 = type_field == 4'h3 ? _GEN_3354 : _GEN_3199; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3436 = type_field == 4'h3 ? _GEN_3355 : _GEN_3200; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3437 = type_field == 4'h3 ? _GEN_3356 : _GEN_3201; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3438 = type_field == 4'h3 ? _GEN_3357 : _GEN_3202; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3439 = type_field == 4'h3 ? _GEN_3358 : _GEN_3203; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3440 = type_field == 4'h3 ? _GEN_3359 : _GEN_3204; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3441 = type_field == 4'h3 ? _GEN_3360 : _GEN_3205; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3442 = type_field == 4'h3 ? _GEN_3361 : _GEN_3206; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3443 = type_field == 4'h3 ? _GEN_3362 : _GEN_3207; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3444 = type_field == 4'h3 ? _GEN_3363 : _GEN_3208; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3445 = type_field == 4'h3 ? _GEN_3364 : _GEN_3209; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3446 = type_field == 4'h3 ? _GEN_3365 : _GEN_3210; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3447 = type_field == 4'h3 ? _GEN_3366 : _GEN_3211; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3448 = type_field == 4'h3 ? _GEN_3367 : _GEN_3212; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3449 = type_field == 4'h3 ? _GEN_3368 : _GEN_3213; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3450 = type_field == 4'h3 ? _GEN_3369 : _GEN_3214; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3451 = type_field == 4'h3 ? _GEN_3370 : _GEN_3215; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3452 = type_field == 4'h3 ? _GEN_3371 : _GEN_3216; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3453 = type_field == 4'h3 ? _GEN_3372 : _GEN_3217; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3454 = type_field == 4'h3 ? _GEN_3373 : _GEN_3218; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3455 = type_field == 4'h3 ? _GEN_3374 : _GEN_3219; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3456 = type_field == 4'h3 ? _GEN_3375 : _GEN_3220; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3457 = type_field == 4'h3 ? _GEN_3376 : _GEN_3221; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3458 = type_field == 4'h3 ? _GEN_3377 : _GEN_3222; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3459 = type_field == 4'h3 ? _GEN_3378 : _GEN_3223; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3460 = type_field == 4'h3 ? _GEN_3379 : _GEN_3224; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3461 = type_field == 4'h3 ? _GEN_3380 : _GEN_3225; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3462 = type_field == 4'h3 ? _GEN_3381 : _GEN_3226; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3463 = type_field == 4'h3 ? _GEN_3382 : _GEN_3227; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3464 = type_field == 4'h3 ? _GEN_3383 : _GEN_3228; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3465 = type_field == 4'h3 ? _GEN_3384 : _GEN_3229; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3466 = type_field == 4'h3 ? _GEN_3385 : _GEN_3230; // @[pcie_interface.scala 144:44]
  wire [5:0] _GEN_3467 = type_field == 4'h3 ? _GEN_3386 : _GEN_3231; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3468 = type_field == 4'h3 ? _GEN_3390 : _GEN_3232; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3469 = type_field == 4'h3 ? _GEN_3391 : _GEN_3233; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_3482 = cluster_id_field == 4'ha ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_3483 = cluster_id_field == 4'ha ? _GEN_3394 : _GEN_3159; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3484 = cluster_id_field == 4'ha ? _GEN_3395 : _GEN_3160; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_3487 = cluster_id_field == 4'ha ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_3488 = cluster_id_field == 4'ha ? _GEN_3400 : _GEN_3164; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3489 = cluster_id_field == 4'ha ? _GEN_3401 : _GEN_3165; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3490 = cluster_id_field == 4'ha ? _GEN_3402 : _GEN_3166; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3492 = cluster_id_field == 4'ha ? _GEN_3404 : _GEN_3168; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3493 = cluster_id_field == 4'ha ? _GEN_3405 : _GEN_3169; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3494 = cluster_id_field == 4'ha ? _GEN_3406 : _GEN_3170; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3495 = cluster_id_field == 4'ha ? _GEN_3407 : _GEN_3171; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3496 = cluster_id_field == 4'ha ? _GEN_3408 : _GEN_3172; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3497 = cluster_id_field == 4'ha ? _GEN_3409 : _GEN_3173; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3498 = cluster_id_field == 4'ha ? _GEN_3410 : _GEN_3174; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3499 = cluster_id_field == 4'ha ? _GEN_3411 : _GEN_3175; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3500 = cluster_id_field == 4'ha ? _GEN_3412 : _GEN_3176; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3501 = cluster_id_field == 4'ha ? _GEN_3413 : _GEN_3177; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3502 = cluster_id_field == 4'ha ? _GEN_3414 : _GEN_3178; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3503 = cluster_id_field == 4'ha ? _GEN_3415 : _GEN_3179; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3504 = cluster_id_field == 4'ha ? _GEN_3416 : _GEN_3180; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3505 = cluster_id_field == 4'ha ? _GEN_3417 : _GEN_3181; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3506 = cluster_id_field == 4'ha ? _GEN_3418 : _GEN_3182; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3507 = cluster_id_field == 4'ha ? _GEN_3419 : _GEN_3183; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3508 = cluster_id_field == 4'ha ? _GEN_3420 : _GEN_3184; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3509 = cluster_id_field == 4'ha ? _GEN_3421 : _GEN_3185; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3510 = cluster_id_field == 4'ha ? _GEN_3422 : _GEN_3186; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3511 = cluster_id_field == 4'ha ? _GEN_3423 : _GEN_3187; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3512 = cluster_id_field == 4'ha ? _GEN_3424 : _GEN_3188; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3513 = cluster_id_field == 4'ha ? _GEN_3425 : _GEN_3189; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3514 = cluster_id_field == 4'ha ? _GEN_3426 : _GEN_3190; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3515 = cluster_id_field == 4'ha ? _GEN_3427 : _GEN_3191; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3516 = cluster_id_field == 4'ha ? _GEN_3428 : _GEN_3192; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3517 = cluster_id_field == 4'ha ? _GEN_3429 : _GEN_3193; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3518 = cluster_id_field == 4'ha ? _GEN_3430 : _GEN_3194; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3519 = cluster_id_field == 4'ha ? _GEN_3431 : _GEN_3195; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3520 = cluster_id_field == 4'ha ? _GEN_3432 : _GEN_3196; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3521 = cluster_id_field == 4'ha ? _GEN_3433 : _GEN_3197; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3522 = cluster_id_field == 4'ha ? _GEN_3434 : _GEN_3198; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3523 = cluster_id_field == 4'ha ? _GEN_3435 : _GEN_3199; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3524 = cluster_id_field == 4'ha ? _GEN_3436 : _GEN_3200; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3525 = cluster_id_field == 4'ha ? _GEN_3437 : _GEN_3201; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3526 = cluster_id_field == 4'ha ? _GEN_3438 : _GEN_3202; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3527 = cluster_id_field == 4'ha ? _GEN_3439 : _GEN_3203; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3528 = cluster_id_field == 4'ha ? _GEN_3440 : _GEN_3204; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3529 = cluster_id_field == 4'ha ? _GEN_3441 : _GEN_3205; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3530 = cluster_id_field == 4'ha ? _GEN_3442 : _GEN_3206; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3531 = cluster_id_field == 4'ha ? _GEN_3443 : _GEN_3207; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3532 = cluster_id_field == 4'ha ? _GEN_3444 : _GEN_3208; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3533 = cluster_id_field == 4'ha ? _GEN_3445 : _GEN_3209; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3534 = cluster_id_field == 4'ha ? _GEN_3446 : _GEN_3210; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3535 = cluster_id_field == 4'ha ? _GEN_3447 : _GEN_3211; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3536 = cluster_id_field == 4'ha ? _GEN_3448 : _GEN_3212; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3537 = cluster_id_field == 4'ha ? _GEN_3449 : _GEN_3213; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3538 = cluster_id_field == 4'ha ? _GEN_3450 : _GEN_3214; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3539 = cluster_id_field == 4'ha ? _GEN_3451 : _GEN_3215; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3540 = cluster_id_field == 4'ha ? _GEN_3452 : _GEN_3216; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3541 = cluster_id_field == 4'ha ? _GEN_3453 : _GEN_3217; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3542 = cluster_id_field == 4'ha ? _GEN_3454 : _GEN_3218; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3543 = cluster_id_field == 4'ha ? _GEN_3455 : _GEN_3219; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3544 = cluster_id_field == 4'ha ? _GEN_3456 : _GEN_3220; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3545 = cluster_id_field == 4'ha ? _GEN_3457 : _GEN_3221; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3546 = cluster_id_field == 4'ha ? _GEN_3458 : _GEN_3222; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3547 = cluster_id_field == 4'ha ? _GEN_3459 : _GEN_3223; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3548 = cluster_id_field == 4'ha ? _GEN_3460 : _GEN_3224; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3549 = cluster_id_field == 4'ha ? _GEN_3461 : _GEN_3225; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3550 = cluster_id_field == 4'ha ? _GEN_3462 : _GEN_3226; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3551 = cluster_id_field == 4'ha ? _GEN_3463 : _GEN_3227; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3552 = cluster_id_field == 4'ha ? _GEN_3464 : _GEN_3228; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3553 = cluster_id_field == 4'ha ? _GEN_3465 : _GEN_3229; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3554 = cluster_id_field == 4'ha ? _GEN_3466 : _GEN_3230; // @[pcie_interface.scala 137:43]
  wire [5:0] _GEN_3555 = cluster_id_field == 4'ha ? _GEN_3467 : _GEN_3231; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3556 = cluster_id_field == 4'ha ? _GEN_3468 : _GEN_3232; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3557 = cluster_id_field == 4'ha ? _GEN_3469 : _GEN_3233; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3565 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_3483; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_3566 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_3484; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_3570 = sram_id_field == 4'h2 ? _GEN_3566 : _GEN_3484; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_3574 = _T_5 ? io_pcie_w_data : _GEN_3488; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_3575 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_3489; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_3576 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_3490; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_3579 = sram_id_field == 4'h3 ? _GEN_3574 : _GEN_3488; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_3580 = sram_id_field == 4'h3 ? _GEN_3575 : _GEN_3489; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_3581 = sram_id_field == 4'h3 ? _GEN_3576 : _GEN_3490; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_3711 = _T_5 ? io_pcie_w_data : _GEN_3556; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_3712 = _T_9 ? io_pcie_w_data : _GEN_3557; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_3714 = sram_id_field == 4'h5 ? _GEN_3711 : _GEN_3556; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_3715 = sram_id_field == 4'h5 ? _GEN_3712 : _GEN_3557; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_3718 = type_field == 4'h3 ? _GEN_3565 : _GEN_3483; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3719 = type_field == 4'h3 ? _GEN_3570 : _GEN_3484; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3724 = type_field == 4'h3 ? _GEN_3579 : _GEN_3488; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3725 = type_field == 4'h3 ? _GEN_3580 : _GEN_3489; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3726 = type_field == 4'h3 ? _GEN_3581 : _GEN_3490; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3792 = type_field == 4'h3 ? _GEN_3714 : _GEN_3556; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3793 = type_field == 4'h3 ? _GEN_3715 : _GEN_3557; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_3806 = cluster_id_field == 4'hb ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_3807 = cluster_id_field == 4'hb ? _GEN_3718 : _GEN_3483; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3808 = cluster_id_field == 4'hb ? _GEN_3719 : _GEN_3484; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_3811 = cluster_id_field == 4'hb ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_3812 = cluster_id_field == 4'hb ? _GEN_3724 : _GEN_3488; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3813 = cluster_id_field == 4'hb ? _GEN_3725 : _GEN_3489; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3814 = cluster_id_field == 4'hb ? _GEN_3726 : _GEN_3490; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3880 = cluster_id_field == 4'hb ? _GEN_3792 : _GEN_3556; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3881 = cluster_id_field == 4'hb ? _GEN_3793 : _GEN_3557; // @[pcie_interface.scala 137:43]
  reg [3:0] first_proc_id; // @[pcie_interface.scala 205:28]
  reg [3:0] last_proc_id; // @[pcie_interface.scala 206:28]
  reg [3:0] next_proc_id_0; // @[pcie_interface.scala 207:28]
  reg [3:0] next_proc_id_1; // @[pcie_interface.scala 207:28]
  reg [3:0] next_proc_id_2; // @[pcie_interface.scala 207:28]
  reg [3:0] next_proc_id_3; // @[pcie_interface.scala 207:28]
  reg [3:0] next_proc_id_4; // @[pcie_interface.scala 207:28]
  reg [3:0] next_proc_id_5; // @[pcie_interface.scala 207:28]
  reg [3:0] next_proc_id_6; // @[pcie_interface.scala 207:28]
  reg [3:0] next_proc_id_7; // @[pcie_interface.scala 207:28]
  reg [3:0] next_proc_id_8; // @[pcie_interface.scala 207:28]
  reg [3:0] next_proc_id_9; // @[pcie_interface.scala 207:28]
  reg [3:0] next_proc_id_10; // @[pcie_interface.scala 207:28]
  reg [3:0] next_proc_id_11; // @[pcie_interface.scala 207:28]
  wire [63:0] _GEN_3888 = offset_field == 8'h0 ? io_pcie_w_data : {{60'd0}, first_proc_id}; // @[pcie_interface.scala 210:42 pcie_interface.scala 211:27 pcie_interface.scala 205:28]
  wire [63:0] _GEN_3889 = offset_field == 8'h1 ? io_pcie_w_data : {{60'd0}, last_proc_id}; // @[pcie_interface.scala 213:42 pcie_interface.scala 214:27 pcie_interface.scala 206:28]
  wire [63:0] _GEN_3890 = type_field == 4'h8 ? _GEN_3888 : {{60'd0}, first_proc_id}; // @[pcie_interface.scala 209:36 pcie_interface.scala 205:28]
  wire [63:0] _GEN_3891 = type_field == 4'h8 ? _GEN_3889 : {{60'd0}, last_proc_id}; // @[pcie_interface.scala 209:36 pcie_interface.scala 206:28]
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
  assign io_mod_proc_mod_4_par_mod_en = cluster_id_field == 4'h4 & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_4_par_mod_last_mau_id_mod = cluster_id_field == 4'h4 & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_4_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_4_par_mod_cs = _GEN_1538[1:0];
  assign io_mod_proc_mod_4_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h4 & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_4_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_4_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_4_par_mod_module_mod_sram_w_en = cluster_id_field == 4'h4 & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_4_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_4_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_4_mat_mod_en = cluster_id_field == 4'h4 & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_4_mat_mod_config_id = _GEN_1543[0];
  assign io_mod_proc_mod_4_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_4_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_4_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_0 = mat_tab_sram_id_table_0; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_1 = mat_tab_sram_id_table_1; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_2 = mat_tab_sram_id_table_2; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_3 = mat_tab_sram_id_table_3; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_4 = mat_tab_sram_id_table_4; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_5 = mat_tab_sram_id_table_5; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_6 = mat_tab_sram_id_table_6; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_7 = mat_tab_sram_id_table_7; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_8 = mat_tab_sram_id_table_8; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_9 = mat_tab_sram_id_table_9; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_10 = mat_tab_sram_id_table_10; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_11 = mat_tab_sram_id_table_11; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_12 = mat_tab_sram_id_table_12; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_13 = mat_tab_sram_id_table_13; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_14 = mat_tab_sram_id_table_14; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_15 = mat_tab_sram_id_table_15; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_16 = mat_tab_sram_id_table_16; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_17 = mat_tab_sram_id_table_17; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_18 = mat_tab_sram_id_table_18; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_19 = mat_tab_sram_id_table_19; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_20 = mat_tab_sram_id_table_20; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_21 = mat_tab_sram_id_table_21; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_22 = mat_tab_sram_id_table_22; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_23 = mat_tab_sram_id_table_23; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_24 = mat_tab_sram_id_table_24; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_25 = mat_tab_sram_id_table_25; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_26 = mat_tab_sram_id_table_26; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_27 = mat_tab_sram_id_table_27; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_28 = mat_tab_sram_id_table_28; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_29 = mat_tab_sram_id_table_29; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_30 = mat_tab_sram_id_table_30; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_31 = mat_tab_sram_id_table_31; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_32 = mat_tab_sram_id_table_32; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_33 = mat_tab_sram_id_table_33; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_34 = mat_tab_sram_id_table_34; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_35 = mat_tab_sram_id_table_35; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_36 = mat_tab_sram_id_table_36; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_37 = mat_tab_sram_id_table_37; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_38 = mat_tab_sram_id_table_38; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_39 = mat_tab_sram_id_table_39; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_40 = mat_tab_sram_id_table_40; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_41 = mat_tab_sram_id_table_41; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_42 = mat_tab_sram_id_table_42; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_43 = mat_tab_sram_id_table_43; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_44 = mat_tab_sram_id_table_44; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_45 = mat_tab_sram_id_table_45; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_46 = mat_tab_sram_id_table_46; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_47 = mat_tab_sram_id_table_47; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_48 = mat_tab_sram_id_table_48; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_49 = mat_tab_sram_id_table_49; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_50 = mat_tab_sram_id_table_50; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_51 = mat_tab_sram_id_table_51; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_52 = mat_tab_sram_id_table_52; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_53 = mat_tab_sram_id_table_53; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_54 = mat_tab_sram_id_table_54; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_55 = mat_tab_sram_id_table_55; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_56 = mat_tab_sram_id_table_56; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_57 = mat_tab_sram_id_table_57; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_58 = mat_tab_sram_id_table_58; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_59 = mat_tab_sram_id_table_59; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_60 = mat_tab_sram_id_table_60; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_61 = mat_tab_sram_id_table_61; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_62 = mat_tab_sram_id_table_62; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_sram_id_table_63 = mat_tab_sram_id_table_63; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_act_mod_en_0 = cluster_id_field == 4'h4 & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_4_act_mod_en_1 = cluster_id_field == 4'h4 & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_4_act_mod_addr = cluster_id_field == 4'h4 ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_4_act_mod_data_0 = cluster_id_field == 4'h4 ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_4_act_mod_data_1 = cluster_id_field == 4'h4 ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_5_par_mod_en = cluster_id_field == 4'h5 & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_5_par_mod_last_mau_id_mod = cluster_id_field == 4'h5 & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_5_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_5_par_mod_cs = _GEN_1862[1:0];
  assign io_mod_proc_mod_5_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h5 & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_5_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_5_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_5_par_mod_module_mod_sram_w_en = cluster_id_field == 4'h5 & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_5_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_5_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_5_mat_mod_en = cluster_id_field == 4'h5 & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_5_mat_mod_config_id = _GEN_1867[0];
  assign io_mod_proc_mod_5_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_5_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_5_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_0 = mat_tab_sram_id_table_0; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_1 = mat_tab_sram_id_table_1; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_2 = mat_tab_sram_id_table_2; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_3 = mat_tab_sram_id_table_3; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_4 = mat_tab_sram_id_table_4; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_5 = mat_tab_sram_id_table_5; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_6 = mat_tab_sram_id_table_6; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_7 = mat_tab_sram_id_table_7; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_8 = mat_tab_sram_id_table_8; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_9 = mat_tab_sram_id_table_9; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_10 = mat_tab_sram_id_table_10; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_11 = mat_tab_sram_id_table_11; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_12 = mat_tab_sram_id_table_12; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_13 = mat_tab_sram_id_table_13; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_14 = mat_tab_sram_id_table_14; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_15 = mat_tab_sram_id_table_15; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_16 = mat_tab_sram_id_table_16; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_17 = mat_tab_sram_id_table_17; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_18 = mat_tab_sram_id_table_18; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_19 = mat_tab_sram_id_table_19; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_20 = mat_tab_sram_id_table_20; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_21 = mat_tab_sram_id_table_21; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_22 = mat_tab_sram_id_table_22; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_23 = mat_tab_sram_id_table_23; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_24 = mat_tab_sram_id_table_24; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_25 = mat_tab_sram_id_table_25; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_26 = mat_tab_sram_id_table_26; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_27 = mat_tab_sram_id_table_27; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_28 = mat_tab_sram_id_table_28; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_29 = mat_tab_sram_id_table_29; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_30 = mat_tab_sram_id_table_30; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_31 = mat_tab_sram_id_table_31; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_32 = mat_tab_sram_id_table_32; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_33 = mat_tab_sram_id_table_33; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_34 = mat_tab_sram_id_table_34; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_35 = mat_tab_sram_id_table_35; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_36 = mat_tab_sram_id_table_36; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_37 = mat_tab_sram_id_table_37; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_38 = mat_tab_sram_id_table_38; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_39 = mat_tab_sram_id_table_39; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_40 = mat_tab_sram_id_table_40; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_41 = mat_tab_sram_id_table_41; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_42 = mat_tab_sram_id_table_42; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_43 = mat_tab_sram_id_table_43; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_44 = mat_tab_sram_id_table_44; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_45 = mat_tab_sram_id_table_45; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_46 = mat_tab_sram_id_table_46; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_47 = mat_tab_sram_id_table_47; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_48 = mat_tab_sram_id_table_48; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_49 = mat_tab_sram_id_table_49; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_50 = mat_tab_sram_id_table_50; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_51 = mat_tab_sram_id_table_51; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_52 = mat_tab_sram_id_table_52; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_53 = mat_tab_sram_id_table_53; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_54 = mat_tab_sram_id_table_54; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_55 = mat_tab_sram_id_table_55; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_56 = mat_tab_sram_id_table_56; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_57 = mat_tab_sram_id_table_57; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_58 = mat_tab_sram_id_table_58; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_59 = mat_tab_sram_id_table_59; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_60 = mat_tab_sram_id_table_60; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_61 = mat_tab_sram_id_table_61; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_62 = mat_tab_sram_id_table_62; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_sram_id_table_63 = mat_tab_sram_id_table_63; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_act_mod_en_0 = cluster_id_field == 4'h5 & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_5_act_mod_en_1 = cluster_id_field == 4'h5 & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_5_act_mod_addr = cluster_id_field == 4'h5 ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_5_act_mod_data_0 = cluster_id_field == 4'h5 ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_5_act_mod_data_1 = cluster_id_field == 4'h5 ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_6_par_mod_en = cluster_id_field == 4'h6 & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_6_par_mod_last_mau_id_mod = cluster_id_field == 4'h6 & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_6_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_6_par_mod_cs = _GEN_2186[1:0];
  assign io_mod_proc_mod_6_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h6 & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_6_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_6_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_6_par_mod_module_mod_sram_w_en = cluster_id_field == 4'h6 & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_6_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_6_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_6_mat_mod_en = cluster_id_field == 4'h6 & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_6_mat_mod_config_id = _GEN_2191[0];
  assign io_mod_proc_mod_6_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_6_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_6_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_0 = mat_tab_sram_id_table_0; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_1 = mat_tab_sram_id_table_1; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_2 = mat_tab_sram_id_table_2; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_3 = mat_tab_sram_id_table_3; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_4 = mat_tab_sram_id_table_4; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_5 = mat_tab_sram_id_table_5; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_6 = mat_tab_sram_id_table_6; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_7 = mat_tab_sram_id_table_7; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_8 = mat_tab_sram_id_table_8; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_9 = mat_tab_sram_id_table_9; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_10 = mat_tab_sram_id_table_10; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_11 = mat_tab_sram_id_table_11; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_12 = mat_tab_sram_id_table_12; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_13 = mat_tab_sram_id_table_13; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_14 = mat_tab_sram_id_table_14; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_15 = mat_tab_sram_id_table_15; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_16 = mat_tab_sram_id_table_16; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_17 = mat_tab_sram_id_table_17; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_18 = mat_tab_sram_id_table_18; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_19 = mat_tab_sram_id_table_19; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_20 = mat_tab_sram_id_table_20; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_21 = mat_tab_sram_id_table_21; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_22 = mat_tab_sram_id_table_22; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_23 = mat_tab_sram_id_table_23; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_24 = mat_tab_sram_id_table_24; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_25 = mat_tab_sram_id_table_25; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_26 = mat_tab_sram_id_table_26; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_27 = mat_tab_sram_id_table_27; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_28 = mat_tab_sram_id_table_28; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_29 = mat_tab_sram_id_table_29; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_30 = mat_tab_sram_id_table_30; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_31 = mat_tab_sram_id_table_31; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_32 = mat_tab_sram_id_table_32; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_33 = mat_tab_sram_id_table_33; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_34 = mat_tab_sram_id_table_34; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_35 = mat_tab_sram_id_table_35; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_36 = mat_tab_sram_id_table_36; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_37 = mat_tab_sram_id_table_37; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_38 = mat_tab_sram_id_table_38; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_39 = mat_tab_sram_id_table_39; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_40 = mat_tab_sram_id_table_40; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_41 = mat_tab_sram_id_table_41; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_42 = mat_tab_sram_id_table_42; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_43 = mat_tab_sram_id_table_43; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_44 = mat_tab_sram_id_table_44; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_45 = mat_tab_sram_id_table_45; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_46 = mat_tab_sram_id_table_46; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_47 = mat_tab_sram_id_table_47; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_48 = mat_tab_sram_id_table_48; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_49 = mat_tab_sram_id_table_49; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_50 = mat_tab_sram_id_table_50; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_51 = mat_tab_sram_id_table_51; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_52 = mat_tab_sram_id_table_52; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_53 = mat_tab_sram_id_table_53; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_54 = mat_tab_sram_id_table_54; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_55 = mat_tab_sram_id_table_55; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_56 = mat_tab_sram_id_table_56; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_57 = mat_tab_sram_id_table_57; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_58 = mat_tab_sram_id_table_58; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_59 = mat_tab_sram_id_table_59; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_60 = mat_tab_sram_id_table_60; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_61 = mat_tab_sram_id_table_61; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_62 = mat_tab_sram_id_table_62; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_sram_id_table_63 = mat_tab_sram_id_table_63; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_act_mod_en_0 = cluster_id_field == 4'h6 & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_6_act_mod_en_1 = cluster_id_field == 4'h6 & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_6_act_mod_addr = cluster_id_field == 4'h6 ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_6_act_mod_data_0 = cluster_id_field == 4'h6 ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_6_act_mod_data_1 = cluster_id_field == 4'h6 ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_7_par_mod_en = cluster_id_field == 4'h7 & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_7_par_mod_last_mau_id_mod = cluster_id_field == 4'h7 & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_7_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_7_par_mod_cs = _GEN_2510[1:0];
  assign io_mod_proc_mod_7_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h7 & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_7_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_7_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_7_par_mod_module_mod_sram_w_en = cluster_id_field == 4'h7 & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_7_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_7_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_7_mat_mod_en = cluster_id_field == 4'h7 & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_7_mat_mod_config_id = _GEN_2515[0];
  assign io_mod_proc_mod_7_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_7_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_7_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_0 = mat_tab_sram_id_table_0; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_1 = mat_tab_sram_id_table_1; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_2 = mat_tab_sram_id_table_2; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_3 = mat_tab_sram_id_table_3; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_4 = mat_tab_sram_id_table_4; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_5 = mat_tab_sram_id_table_5; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_6 = mat_tab_sram_id_table_6; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_7 = mat_tab_sram_id_table_7; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_8 = mat_tab_sram_id_table_8; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_9 = mat_tab_sram_id_table_9; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_10 = mat_tab_sram_id_table_10; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_11 = mat_tab_sram_id_table_11; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_12 = mat_tab_sram_id_table_12; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_13 = mat_tab_sram_id_table_13; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_14 = mat_tab_sram_id_table_14; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_15 = mat_tab_sram_id_table_15; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_16 = mat_tab_sram_id_table_16; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_17 = mat_tab_sram_id_table_17; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_18 = mat_tab_sram_id_table_18; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_19 = mat_tab_sram_id_table_19; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_20 = mat_tab_sram_id_table_20; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_21 = mat_tab_sram_id_table_21; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_22 = mat_tab_sram_id_table_22; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_23 = mat_tab_sram_id_table_23; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_24 = mat_tab_sram_id_table_24; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_25 = mat_tab_sram_id_table_25; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_26 = mat_tab_sram_id_table_26; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_27 = mat_tab_sram_id_table_27; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_28 = mat_tab_sram_id_table_28; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_29 = mat_tab_sram_id_table_29; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_30 = mat_tab_sram_id_table_30; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_31 = mat_tab_sram_id_table_31; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_32 = mat_tab_sram_id_table_32; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_33 = mat_tab_sram_id_table_33; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_34 = mat_tab_sram_id_table_34; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_35 = mat_tab_sram_id_table_35; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_36 = mat_tab_sram_id_table_36; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_37 = mat_tab_sram_id_table_37; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_38 = mat_tab_sram_id_table_38; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_39 = mat_tab_sram_id_table_39; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_40 = mat_tab_sram_id_table_40; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_41 = mat_tab_sram_id_table_41; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_42 = mat_tab_sram_id_table_42; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_43 = mat_tab_sram_id_table_43; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_44 = mat_tab_sram_id_table_44; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_45 = mat_tab_sram_id_table_45; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_46 = mat_tab_sram_id_table_46; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_47 = mat_tab_sram_id_table_47; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_48 = mat_tab_sram_id_table_48; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_49 = mat_tab_sram_id_table_49; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_50 = mat_tab_sram_id_table_50; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_51 = mat_tab_sram_id_table_51; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_52 = mat_tab_sram_id_table_52; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_53 = mat_tab_sram_id_table_53; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_54 = mat_tab_sram_id_table_54; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_55 = mat_tab_sram_id_table_55; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_56 = mat_tab_sram_id_table_56; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_57 = mat_tab_sram_id_table_57; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_58 = mat_tab_sram_id_table_58; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_59 = mat_tab_sram_id_table_59; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_60 = mat_tab_sram_id_table_60; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_61 = mat_tab_sram_id_table_61; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_62 = mat_tab_sram_id_table_62; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_sram_id_table_63 = mat_tab_sram_id_table_63; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_act_mod_en_0 = cluster_id_field == 4'h7 & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_7_act_mod_en_1 = cluster_id_field == 4'h7 & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_7_act_mod_addr = cluster_id_field == 4'h7 ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_7_act_mod_data_0 = cluster_id_field == 4'h7 ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_7_act_mod_data_1 = cluster_id_field == 4'h7 ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_8_par_mod_en = cluster_id_field == 4'h8 & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_8_par_mod_last_mau_id_mod = cluster_id_field == 4'h8 & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_8_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_8_par_mod_cs = _GEN_2834[1:0];
  assign io_mod_proc_mod_8_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h8 & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_8_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_8_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_8_par_mod_module_mod_sram_w_en = cluster_id_field == 4'h8 & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_8_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_8_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_8_mat_mod_en = cluster_id_field == 4'h8 & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_8_mat_mod_config_id = _GEN_2839[0];
  assign io_mod_proc_mod_8_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_8_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_8_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_0 = mat_tab_sram_id_table_0; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_1 = mat_tab_sram_id_table_1; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_2 = mat_tab_sram_id_table_2; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_3 = mat_tab_sram_id_table_3; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_4 = mat_tab_sram_id_table_4; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_5 = mat_tab_sram_id_table_5; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_6 = mat_tab_sram_id_table_6; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_7 = mat_tab_sram_id_table_7; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_8 = mat_tab_sram_id_table_8; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_9 = mat_tab_sram_id_table_9; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_10 = mat_tab_sram_id_table_10; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_11 = mat_tab_sram_id_table_11; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_12 = mat_tab_sram_id_table_12; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_13 = mat_tab_sram_id_table_13; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_14 = mat_tab_sram_id_table_14; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_15 = mat_tab_sram_id_table_15; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_16 = mat_tab_sram_id_table_16; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_17 = mat_tab_sram_id_table_17; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_18 = mat_tab_sram_id_table_18; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_19 = mat_tab_sram_id_table_19; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_20 = mat_tab_sram_id_table_20; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_21 = mat_tab_sram_id_table_21; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_22 = mat_tab_sram_id_table_22; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_23 = mat_tab_sram_id_table_23; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_24 = mat_tab_sram_id_table_24; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_25 = mat_tab_sram_id_table_25; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_26 = mat_tab_sram_id_table_26; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_27 = mat_tab_sram_id_table_27; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_28 = mat_tab_sram_id_table_28; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_29 = mat_tab_sram_id_table_29; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_30 = mat_tab_sram_id_table_30; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_31 = mat_tab_sram_id_table_31; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_32 = mat_tab_sram_id_table_32; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_33 = mat_tab_sram_id_table_33; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_34 = mat_tab_sram_id_table_34; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_35 = mat_tab_sram_id_table_35; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_36 = mat_tab_sram_id_table_36; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_37 = mat_tab_sram_id_table_37; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_38 = mat_tab_sram_id_table_38; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_39 = mat_tab_sram_id_table_39; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_40 = mat_tab_sram_id_table_40; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_41 = mat_tab_sram_id_table_41; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_42 = mat_tab_sram_id_table_42; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_43 = mat_tab_sram_id_table_43; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_44 = mat_tab_sram_id_table_44; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_45 = mat_tab_sram_id_table_45; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_46 = mat_tab_sram_id_table_46; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_47 = mat_tab_sram_id_table_47; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_48 = mat_tab_sram_id_table_48; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_49 = mat_tab_sram_id_table_49; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_50 = mat_tab_sram_id_table_50; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_51 = mat_tab_sram_id_table_51; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_52 = mat_tab_sram_id_table_52; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_53 = mat_tab_sram_id_table_53; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_54 = mat_tab_sram_id_table_54; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_55 = mat_tab_sram_id_table_55; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_56 = mat_tab_sram_id_table_56; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_57 = mat_tab_sram_id_table_57; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_58 = mat_tab_sram_id_table_58; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_59 = mat_tab_sram_id_table_59; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_60 = mat_tab_sram_id_table_60; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_61 = mat_tab_sram_id_table_61; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_62 = mat_tab_sram_id_table_62; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_sram_id_table_63 = mat_tab_sram_id_table_63; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_act_mod_en_0 = cluster_id_field == 4'h8 & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_8_act_mod_en_1 = cluster_id_field == 4'h8 & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_8_act_mod_addr = cluster_id_field == 4'h8 ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_8_act_mod_data_0 = cluster_id_field == 4'h8 ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_8_act_mod_data_1 = cluster_id_field == 4'h8 ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_9_par_mod_en = cluster_id_field == 4'h9 & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_9_par_mod_last_mau_id_mod = cluster_id_field == 4'h9 & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_9_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_9_par_mod_cs = _GEN_3158[1:0];
  assign io_mod_proc_mod_9_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h9 & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_9_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_9_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_9_par_mod_module_mod_sram_w_en = cluster_id_field == 4'h9 & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_9_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_9_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_9_mat_mod_en = cluster_id_field == 4'h9 & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_9_mat_mod_config_id = _GEN_3163[0];
  assign io_mod_proc_mod_9_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_9_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_9_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_0 = mat_tab_sram_id_table_0; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_1 = mat_tab_sram_id_table_1; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_2 = mat_tab_sram_id_table_2; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_3 = mat_tab_sram_id_table_3; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_4 = mat_tab_sram_id_table_4; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_5 = mat_tab_sram_id_table_5; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_6 = mat_tab_sram_id_table_6; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_7 = mat_tab_sram_id_table_7; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_8 = mat_tab_sram_id_table_8; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_9 = mat_tab_sram_id_table_9; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_10 = mat_tab_sram_id_table_10; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_11 = mat_tab_sram_id_table_11; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_12 = mat_tab_sram_id_table_12; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_13 = mat_tab_sram_id_table_13; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_14 = mat_tab_sram_id_table_14; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_15 = mat_tab_sram_id_table_15; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_16 = mat_tab_sram_id_table_16; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_17 = mat_tab_sram_id_table_17; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_18 = mat_tab_sram_id_table_18; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_19 = mat_tab_sram_id_table_19; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_20 = mat_tab_sram_id_table_20; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_21 = mat_tab_sram_id_table_21; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_22 = mat_tab_sram_id_table_22; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_23 = mat_tab_sram_id_table_23; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_24 = mat_tab_sram_id_table_24; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_25 = mat_tab_sram_id_table_25; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_26 = mat_tab_sram_id_table_26; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_27 = mat_tab_sram_id_table_27; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_28 = mat_tab_sram_id_table_28; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_29 = mat_tab_sram_id_table_29; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_30 = mat_tab_sram_id_table_30; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_31 = mat_tab_sram_id_table_31; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_32 = mat_tab_sram_id_table_32; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_33 = mat_tab_sram_id_table_33; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_34 = mat_tab_sram_id_table_34; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_35 = mat_tab_sram_id_table_35; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_36 = mat_tab_sram_id_table_36; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_37 = mat_tab_sram_id_table_37; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_38 = mat_tab_sram_id_table_38; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_39 = mat_tab_sram_id_table_39; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_40 = mat_tab_sram_id_table_40; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_41 = mat_tab_sram_id_table_41; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_42 = mat_tab_sram_id_table_42; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_43 = mat_tab_sram_id_table_43; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_44 = mat_tab_sram_id_table_44; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_45 = mat_tab_sram_id_table_45; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_46 = mat_tab_sram_id_table_46; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_47 = mat_tab_sram_id_table_47; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_48 = mat_tab_sram_id_table_48; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_49 = mat_tab_sram_id_table_49; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_50 = mat_tab_sram_id_table_50; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_51 = mat_tab_sram_id_table_51; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_52 = mat_tab_sram_id_table_52; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_53 = mat_tab_sram_id_table_53; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_54 = mat_tab_sram_id_table_54; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_55 = mat_tab_sram_id_table_55; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_56 = mat_tab_sram_id_table_56; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_57 = mat_tab_sram_id_table_57; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_58 = mat_tab_sram_id_table_58; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_59 = mat_tab_sram_id_table_59; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_60 = mat_tab_sram_id_table_60; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_61 = mat_tab_sram_id_table_61; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_62 = mat_tab_sram_id_table_62; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_sram_id_table_63 = mat_tab_sram_id_table_63; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_act_mod_en_0 = cluster_id_field == 4'h9 & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_9_act_mod_en_1 = cluster_id_field == 4'h9 & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_9_act_mod_addr = cluster_id_field == 4'h9 ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_9_act_mod_data_0 = cluster_id_field == 4'h9 ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_9_act_mod_data_1 = cluster_id_field == 4'h9 ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_10_par_mod_en = cluster_id_field == 4'ha & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_10_par_mod_last_mau_id_mod = cluster_id_field == 4'ha & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_10_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_10_par_mod_cs = _GEN_3482[1:0];
  assign io_mod_proc_mod_10_par_mod_module_mod_state_id_mod = cluster_id_field == 4'ha & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_10_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_10_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_10_par_mod_module_mod_sram_w_en = cluster_id_field == 4'ha & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_10_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_10_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_10_mat_mod_en = cluster_id_field == 4'ha & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_10_mat_mod_config_id = _GEN_3487[0];
  assign io_mod_proc_mod_10_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_10_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_10_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_0 = mat_tab_sram_id_table_0; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_1 = mat_tab_sram_id_table_1; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_2 = mat_tab_sram_id_table_2; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_3 = mat_tab_sram_id_table_3; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_4 = mat_tab_sram_id_table_4; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_5 = mat_tab_sram_id_table_5; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_6 = mat_tab_sram_id_table_6; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_7 = mat_tab_sram_id_table_7; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_8 = mat_tab_sram_id_table_8; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_9 = mat_tab_sram_id_table_9; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_10 = mat_tab_sram_id_table_10; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_11 = mat_tab_sram_id_table_11; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_12 = mat_tab_sram_id_table_12; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_13 = mat_tab_sram_id_table_13; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_14 = mat_tab_sram_id_table_14; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_15 = mat_tab_sram_id_table_15; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_16 = mat_tab_sram_id_table_16; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_17 = mat_tab_sram_id_table_17; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_18 = mat_tab_sram_id_table_18; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_19 = mat_tab_sram_id_table_19; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_20 = mat_tab_sram_id_table_20; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_21 = mat_tab_sram_id_table_21; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_22 = mat_tab_sram_id_table_22; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_23 = mat_tab_sram_id_table_23; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_24 = mat_tab_sram_id_table_24; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_25 = mat_tab_sram_id_table_25; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_26 = mat_tab_sram_id_table_26; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_27 = mat_tab_sram_id_table_27; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_28 = mat_tab_sram_id_table_28; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_29 = mat_tab_sram_id_table_29; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_30 = mat_tab_sram_id_table_30; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_31 = mat_tab_sram_id_table_31; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_32 = mat_tab_sram_id_table_32; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_33 = mat_tab_sram_id_table_33; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_34 = mat_tab_sram_id_table_34; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_35 = mat_tab_sram_id_table_35; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_36 = mat_tab_sram_id_table_36; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_37 = mat_tab_sram_id_table_37; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_38 = mat_tab_sram_id_table_38; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_39 = mat_tab_sram_id_table_39; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_40 = mat_tab_sram_id_table_40; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_41 = mat_tab_sram_id_table_41; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_42 = mat_tab_sram_id_table_42; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_43 = mat_tab_sram_id_table_43; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_44 = mat_tab_sram_id_table_44; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_45 = mat_tab_sram_id_table_45; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_46 = mat_tab_sram_id_table_46; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_47 = mat_tab_sram_id_table_47; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_48 = mat_tab_sram_id_table_48; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_49 = mat_tab_sram_id_table_49; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_50 = mat_tab_sram_id_table_50; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_51 = mat_tab_sram_id_table_51; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_52 = mat_tab_sram_id_table_52; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_53 = mat_tab_sram_id_table_53; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_54 = mat_tab_sram_id_table_54; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_55 = mat_tab_sram_id_table_55; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_56 = mat_tab_sram_id_table_56; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_57 = mat_tab_sram_id_table_57; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_58 = mat_tab_sram_id_table_58; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_59 = mat_tab_sram_id_table_59; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_60 = mat_tab_sram_id_table_60; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_61 = mat_tab_sram_id_table_61; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_62 = mat_tab_sram_id_table_62; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_sram_id_table_63 = mat_tab_sram_id_table_63; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_act_mod_en_0 = cluster_id_field == 4'ha & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_10_act_mod_en_1 = cluster_id_field == 4'ha & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_10_act_mod_addr = cluster_id_field == 4'ha ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_10_act_mod_data_0 = cluster_id_field == 4'ha ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_10_act_mod_data_1 = cluster_id_field == 4'ha ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_11_par_mod_en = cluster_id_field == 4'hb & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_11_par_mod_last_mau_id_mod = cluster_id_field == 4'hb & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_11_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_11_par_mod_cs = _GEN_3806[1:0];
  assign io_mod_proc_mod_11_par_mod_module_mod_state_id_mod = cluster_id_field == 4'hb & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_11_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_11_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_11_par_mod_module_mod_sram_w_en = cluster_id_field == 4'hb & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_11_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_11_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_11_mat_mod_en = cluster_id_field == 4'hb & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_11_mat_mod_config_id = _GEN_3811[0];
  assign io_mod_proc_mod_11_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_11_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_11_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_0 = mat_tab_sram_id_table_0; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_1 = mat_tab_sram_id_table_1; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_2 = mat_tab_sram_id_table_2; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_3 = mat_tab_sram_id_table_3; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_4 = mat_tab_sram_id_table_4; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_5 = mat_tab_sram_id_table_5; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_6 = mat_tab_sram_id_table_6; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_7 = mat_tab_sram_id_table_7; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_8 = mat_tab_sram_id_table_8; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_9 = mat_tab_sram_id_table_9; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_10 = mat_tab_sram_id_table_10; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_11 = mat_tab_sram_id_table_11; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_12 = mat_tab_sram_id_table_12; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_13 = mat_tab_sram_id_table_13; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_14 = mat_tab_sram_id_table_14; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_15 = mat_tab_sram_id_table_15; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_16 = mat_tab_sram_id_table_16; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_17 = mat_tab_sram_id_table_17; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_18 = mat_tab_sram_id_table_18; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_19 = mat_tab_sram_id_table_19; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_20 = mat_tab_sram_id_table_20; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_21 = mat_tab_sram_id_table_21; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_22 = mat_tab_sram_id_table_22; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_23 = mat_tab_sram_id_table_23; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_24 = mat_tab_sram_id_table_24; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_25 = mat_tab_sram_id_table_25; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_26 = mat_tab_sram_id_table_26; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_27 = mat_tab_sram_id_table_27; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_28 = mat_tab_sram_id_table_28; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_29 = mat_tab_sram_id_table_29; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_30 = mat_tab_sram_id_table_30; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_31 = mat_tab_sram_id_table_31; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_32 = mat_tab_sram_id_table_32; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_33 = mat_tab_sram_id_table_33; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_34 = mat_tab_sram_id_table_34; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_35 = mat_tab_sram_id_table_35; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_36 = mat_tab_sram_id_table_36; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_37 = mat_tab_sram_id_table_37; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_38 = mat_tab_sram_id_table_38; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_39 = mat_tab_sram_id_table_39; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_40 = mat_tab_sram_id_table_40; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_41 = mat_tab_sram_id_table_41; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_42 = mat_tab_sram_id_table_42; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_43 = mat_tab_sram_id_table_43; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_44 = mat_tab_sram_id_table_44; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_45 = mat_tab_sram_id_table_45; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_46 = mat_tab_sram_id_table_46; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_47 = mat_tab_sram_id_table_47; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_48 = mat_tab_sram_id_table_48; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_49 = mat_tab_sram_id_table_49; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_50 = mat_tab_sram_id_table_50; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_51 = mat_tab_sram_id_table_51; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_52 = mat_tab_sram_id_table_52; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_53 = mat_tab_sram_id_table_53; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_54 = mat_tab_sram_id_table_54; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_55 = mat_tab_sram_id_table_55; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_56 = mat_tab_sram_id_table_56; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_57 = mat_tab_sram_id_table_57; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_58 = mat_tab_sram_id_table_58; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_59 = mat_tab_sram_id_table_59; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_60 = mat_tab_sram_id_table_60; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_61 = mat_tab_sram_id_table_61; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_62 = mat_tab_sram_id_table_62; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_sram_id_table_63 = mat_tab_sram_id_table_63; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_act_mod_en_0 = cluster_id_field == 4'hb & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_11_act_mod_en_1 = cluster_id_field == 4'hb & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_11_act_mod_addr = cluster_id_field == 4'hb ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_11_act_mod_data_0 = cluster_id_field == 4'hb ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_11_act_mod_data_1 = cluster_id_field == 4'hb ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_xbar_mod_en = type_field == 4'hf; // @[pcie_interface.scala 220:42]
  assign io_mod_xbar_mod_first_proc_id = first_proc_id; // @[pcie_interface.scala 221:28]
  assign io_mod_xbar_mod_last_proc_id = last_proc_id; // @[pcie_interface.scala 222:28]
  assign io_mod_xbar_mod_next_proc_id_0 = next_proc_id_0; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_1 = next_proc_id_1; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_2 = next_proc_id_2; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_3 = next_proc_id_3; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_4 = next_proc_id_4; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_5 = next_proc_id_5; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_6 = next_proc_id_6; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_7 = next_proc_id_7; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_8 = next_proc_id_8; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_9 = next_proc_id_9; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_10 = next_proc_id_10; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_11 = next_proc_id_11; // @[pcie_interface.scala 223:28]
  assign io_w_0_wcs = {{5'd0}, _GEN_3916 == sram_id_field}; // @[pcie_interface.scala 96:57]
  assign io_w_0_w_en = cluster_id_field[3:2] == 2'h0 & sram_resource_pool; // @[pcie_interface.scala 97:66]
  assign io_w_0_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_w_0_w_data = io_pcie_w_data; // @[pcie_interface.scala 99:28]
  assign io_w_1_wcs = {{5'd0}, _GEN_3916 == sram_id_field}; // @[pcie_interface.scala 96:57]
  assign io_w_1_w_en = cluster_id_field[3:2] == 2'h1 & sram_resource_pool; // @[pcie_interface.scala 97:66]
  assign io_w_1_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_w_1_w_data = io_pcie_w_data; // @[pcie_interface.scala 99:28]
  assign io_w_2_wcs = {{5'd0}, _GEN_3916 == sram_id_field}; // @[pcie_interface.scala 96:57]
  assign io_w_2_w_en = cluster_id_field[3:2] == 2'h2 & sram_resource_pool; // @[pcie_interface.scala 97:66]
  assign io_w_2_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_w_2_w_data = io_pcie_w_data; // @[pcie_interface.scala 99:28]
  assign io_w_3_wcs = {{5'd0}, _GEN_3916 == sram_id_field}; // @[pcie_interface.scala 96:57]
  assign io_w_3_w_en = cluster_id_field[3:2] == 2'h3 & sram_resource_pool; // @[pcie_interface.scala 97:66]
  assign io_w_3_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_w_3_w_data = io_pcie_w_data; // @[pcie_interface.scala 99:28]
  always @(posedge clock) begin
    last_mau_id <= _GEN_3807[1:0];
    state_id <= _GEN_3808[7:0];
    mat_key_header_id <= _GEN_3812[7:0];
    mat_key_internal_offset <= _GEN_3813[7:0];
    mat_key_key_length <= _GEN_3814[7:0];
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h0 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_0 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_0 <= _GEN_3492;
          end
        end else begin
          mat_tab_sram_id_table_0 <= _GEN_3492;
        end
      end else begin
        mat_tab_sram_id_table_0 <= _GEN_3492;
      end
    end else begin
      mat_tab_sram_id_table_0 <= _GEN_3492;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h1 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_1 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_1 <= _GEN_3493;
          end
        end else begin
          mat_tab_sram_id_table_1 <= _GEN_3493;
        end
      end else begin
        mat_tab_sram_id_table_1 <= _GEN_3493;
      end
    end else begin
      mat_tab_sram_id_table_1 <= _GEN_3493;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h2 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_2 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_2 <= _GEN_3494;
          end
        end else begin
          mat_tab_sram_id_table_2 <= _GEN_3494;
        end
      end else begin
        mat_tab_sram_id_table_2 <= _GEN_3494;
      end
    end else begin
      mat_tab_sram_id_table_2 <= _GEN_3494;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h3 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_3 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_3 <= _GEN_3495;
          end
        end else begin
          mat_tab_sram_id_table_3 <= _GEN_3495;
        end
      end else begin
        mat_tab_sram_id_table_3 <= _GEN_3495;
      end
    end else begin
      mat_tab_sram_id_table_3 <= _GEN_3495;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h4 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_4 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_4 <= _GEN_3496;
          end
        end else begin
          mat_tab_sram_id_table_4 <= _GEN_3496;
        end
      end else begin
        mat_tab_sram_id_table_4 <= _GEN_3496;
      end
    end else begin
      mat_tab_sram_id_table_4 <= _GEN_3496;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h5 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_5 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_5 <= _GEN_3497;
          end
        end else begin
          mat_tab_sram_id_table_5 <= _GEN_3497;
        end
      end else begin
        mat_tab_sram_id_table_5 <= _GEN_3497;
      end
    end else begin
      mat_tab_sram_id_table_5 <= _GEN_3497;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h6 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_6 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_6 <= _GEN_3498;
          end
        end else begin
          mat_tab_sram_id_table_6 <= _GEN_3498;
        end
      end else begin
        mat_tab_sram_id_table_6 <= _GEN_3498;
      end
    end else begin
      mat_tab_sram_id_table_6 <= _GEN_3498;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h7 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_7 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_7 <= _GEN_3499;
          end
        end else begin
          mat_tab_sram_id_table_7 <= _GEN_3499;
        end
      end else begin
        mat_tab_sram_id_table_7 <= _GEN_3499;
      end
    end else begin
      mat_tab_sram_id_table_7 <= _GEN_3499;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h8 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_8 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_8 <= _GEN_3500;
          end
        end else begin
          mat_tab_sram_id_table_8 <= _GEN_3500;
        end
      end else begin
        mat_tab_sram_id_table_8 <= _GEN_3500;
      end
    end else begin
      mat_tab_sram_id_table_8 <= _GEN_3500;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h9 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_9 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_9 <= _GEN_3501;
          end
        end else begin
          mat_tab_sram_id_table_9 <= _GEN_3501;
        end
      end else begin
        mat_tab_sram_id_table_9 <= _GEN_3501;
      end
    end else begin
      mat_tab_sram_id_table_9 <= _GEN_3501;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'ha == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_10 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_10 <= _GEN_3502;
          end
        end else begin
          mat_tab_sram_id_table_10 <= _GEN_3502;
        end
      end else begin
        mat_tab_sram_id_table_10 <= _GEN_3502;
      end
    end else begin
      mat_tab_sram_id_table_10 <= _GEN_3502;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'hb == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_11 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_11 <= _GEN_3503;
          end
        end else begin
          mat_tab_sram_id_table_11 <= _GEN_3503;
        end
      end else begin
        mat_tab_sram_id_table_11 <= _GEN_3503;
      end
    end else begin
      mat_tab_sram_id_table_11 <= _GEN_3503;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'hc == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_12 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_12 <= _GEN_3504;
          end
        end else begin
          mat_tab_sram_id_table_12 <= _GEN_3504;
        end
      end else begin
        mat_tab_sram_id_table_12 <= _GEN_3504;
      end
    end else begin
      mat_tab_sram_id_table_12 <= _GEN_3504;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'hd == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_13 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_13 <= _GEN_3505;
          end
        end else begin
          mat_tab_sram_id_table_13 <= _GEN_3505;
        end
      end else begin
        mat_tab_sram_id_table_13 <= _GEN_3505;
      end
    end else begin
      mat_tab_sram_id_table_13 <= _GEN_3505;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'he == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_14 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_14 <= _GEN_3506;
          end
        end else begin
          mat_tab_sram_id_table_14 <= _GEN_3506;
        end
      end else begin
        mat_tab_sram_id_table_14 <= _GEN_3506;
      end
    end else begin
      mat_tab_sram_id_table_14 <= _GEN_3506;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'hf == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_15 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_15 <= _GEN_3507;
          end
        end else begin
          mat_tab_sram_id_table_15 <= _GEN_3507;
        end
      end else begin
        mat_tab_sram_id_table_15 <= _GEN_3507;
      end
    end else begin
      mat_tab_sram_id_table_15 <= _GEN_3507;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h10 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_16 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_16 <= _GEN_3508;
          end
        end else begin
          mat_tab_sram_id_table_16 <= _GEN_3508;
        end
      end else begin
        mat_tab_sram_id_table_16 <= _GEN_3508;
      end
    end else begin
      mat_tab_sram_id_table_16 <= _GEN_3508;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h11 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_17 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_17 <= _GEN_3509;
          end
        end else begin
          mat_tab_sram_id_table_17 <= _GEN_3509;
        end
      end else begin
        mat_tab_sram_id_table_17 <= _GEN_3509;
      end
    end else begin
      mat_tab_sram_id_table_17 <= _GEN_3509;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h12 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_18 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_18 <= _GEN_3510;
          end
        end else begin
          mat_tab_sram_id_table_18 <= _GEN_3510;
        end
      end else begin
        mat_tab_sram_id_table_18 <= _GEN_3510;
      end
    end else begin
      mat_tab_sram_id_table_18 <= _GEN_3510;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h13 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_19 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_19 <= _GEN_3511;
          end
        end else begin
          mat_tab_sram_id_table_19 <= _GEN_3511;
        end
      end else begin
        mat_tab_sram_id_table_19 <= _GEN_3511;
      end
    end else begin
      mat_tab_sram_id_table_19 <= _GEN_3511;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h14 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_20 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_20 <= _GEN_3512;
          end
        end else begin
          mat_tab_sram_id_table_20 <= _GEN_3512;
        end
      end else begin
        mat_tab_sram_id_table_20 <= _GEN_3512;
      end
    end else begin
      mat_tab_sram_id_table_20 <= _GEN_3512;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h15 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_21 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_21 <= _GEN_3513;
          end
        end else begin
          mat_tab_sram_id_table_21 <= _GEN_3513;
        end
      end else begin
        mat_tab_sram_id_table_21 <= _GEN_3513;
      end
    end else begin
      mat_tab_sram_id_table_21 <= _GEN_3513;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h16 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_22 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_22 <= _GEN_3514;
          end
        end else begin
          mat_tab_sram_id_table_22 <= _GEN_3514;
        end
      end else begin
        mat_tab_sram_id_table_22 <= _GEN_3514;
      end
    end else begin
      mat_tab_sram_id_table_22 <= _GEN_3514;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h17 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_23 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_23 <= _GEN_3515;
          end
        end else begin
          mat_tab_sram_id_table_23 <= _GEN_3515;
        end
      end else begin
        mat_tab_sram_id_table_23 <= _GEN_3515;
      end
    end else begin
      mat_tab_sram_id_table_23 <= _GEN_3515;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h18 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_24 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_24 <= _GEN_3516;
          end
        end else begin
          mat_tab_sram_id_table_24 <= _GEN_3516;
        end
      end else begin
        mat_tab_sram_id_table_24 <= _GEN_3516;
      end
    end else begin
      mat_tab_sram_id_table_24 <= _GEN_3516;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h19 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_25 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_25 <= _GEN_3517;
          end
        end else begin
          mat_tab_sram_id_table_25 <= _GEN_3517;
        end
      end else begin
        mat_tab_sram_id_table_25 <= _GEN_3517;
      end
    end else begin
      mat_tab_sram_id_table_25 <= _GEN_3517;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h1a == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_26 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_26 <= _GEN_3518;
          end
        end else begin
          mat_tab_sram_id_table_26 <= _GEN_3518;
        end
      end else begin
        mat_tab_sram_id_table_26 <= _GEN_3518;
      end
    end else begin
      mat_tab_sram_id_table_26 <= _GEN_3518;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h1b == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_27 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_27 <= _GEN_3519;
          end
        end else begin
          mat_tab_sram_id_table_27 <= _GEN_3519;
        end
      end else begin
        mat_tab_sram_id_table_27 <= _GEN_3519;
      end
    end else begin
      mat_tab_sram_id_table_27 <= _GEN_3519;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h1c == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_28 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_28 <= _GEN_3520;
          end
        end else begin
          mat_tab_sram_id_table_28 <= _GEN_3520;
        end
      end else begin
        mat_tab_sram_id_table_28 <= _GEN_3520;
      end
    end else begin
      mat_tab_sram_id_table_28 <= _GEN_3520;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h1d == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_29 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_29 <= _GEN_3521;
          end
        end else begin
          mat_tab_sram_id_table_29 <= _GEN_3521;
        end
      end else begin
        mat_tab_sram_id_table_29 <= _GEN_3521;
      end
    end else begin
      mat_tab_sram_id_table_29 <= _GEN_3521;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h1e == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_30 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_30 <= _GEN_3522;
          end
        end else begin
          mat_tab_sram_id_table_30 <= _GEN_3522;
        end
      end else begin
        mat_tab_sram_id_table_30 <= _GEN_3522;
      end
    end else begin
      mat_tab_sram_id_table_30 <= _GEN_3522;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h1f == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_31 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_31 <= _GEN_3523;
          end
        end else begin
          mat_tab_sram_id_table_31 <= _GEN_3523;
        end
      end else begin
        mat_tab_sram_id_table_31 <= _GEN_3523;
      end
    end else begin
      mat_tab_sram_id_table_31 <= _GEN_3523;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h20 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_32 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_32 <= _GEN_3524;
          end
        end else begin
          mat_tab_sram_id_table_32 <= _GEN_3524;
        end
      end else begin
        mat_tab_sram_id_table_32 <= _GEN_3524;
      end
    end else begin
      mat_tab_sram_id_table_32 <= _GEN_3524;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h21 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_33 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_33 <= _GEN_3525;
          end
        end else begin
          mat_tab_sram_id_table_33 <= _GEN_3525;
        end
      end else begin
        mat_tab_sram_id_table_33 <= _GEN_3525;
      end
    end else begin
      mat_tab_sram_id_table_33 <= _GEN_3525;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h22 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_34 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_34 <= _GEN_3526;
          end
        end else begin
          mat_tab_sram_id_table_34 <= _GEN_3526;
        end
      end else begin
        mat_tab_sram_id_table_34 <= _GEN_3526;
      end
    end else begin
      mat_tab_sram_id_table_34 <= _GEN_3526;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h23 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_35 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_35 <= _GEN_3527;
          end
        end else begin
          mat_tab_sram_id_table_35 <= _GEN_3527;
        end
      end else begin
        mat_tab_sram_id_table_35 <= _GEN_3527;
      end
    end else begin
      mat_tab_sram_id_table_35 <= _GEN_3527;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h24 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_36 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_36 <= _GEN_3528;
          end
        end else begin
          mat_tab_sram_id_table_36 <= _GEN_3528;
        end
      end else begin
        mat_tab_sram_id_table_36 <= _GEN_3528;
      end
    end else begin
      mat_tab_sram_id_table_36 <= _GEN_3528;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h25 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_37 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_37 <= _GEN_3529;
          end
        end else begin
          mat_tab_sram_id_table_37 <= _GEN_3529;
        end
      end else begin
        mat_tab_sram_id_table_37 <= _GEN_3529;
      end
    end else begin
      mat_tab_sram_id_table_37 <= _GEN_3529;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h26 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_38 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_38 <= _GEN_3530;
          end
        end else begin
          mat_tab_sram_id_table_38 <= _GEN_3530;
        end
      end else begin
        mat_tab_sram_id_table_38 <= _GEN_3530;
      end
    end else begin
      mat_tab_sram_id_table_38 <= _GEN_3530;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h27 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_39 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_39 <= _GEN_3531;
          end
        end else begin
          mat_tab_sram_id_table_39 <= _GEN_3531;
        end
      end else begin
        mat_tab_sram_id_table_39 <= _GEN_3531;
      end
    end else begin
      mat_tab_sram_id_table_39 <= _GEN_3531;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h28 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_40 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_40 <= _GEN_3532;
          end
        end else begin
          mat_tab_sram_id_table_40 <= _GEN_3532;
        end
      end else begin
        mat_tab_sram_id_table_40 <= _GEN_3532;
      end
    end else begin
      mat_tab_sram_id_table_40 <= _GEN_3532;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h29 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_41 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_41 <= _GEN_3533;
          end
        end else begin
          mat_tab_sram_id_table_41 <= _GEN_3533;
        end
      end else begin
        mat_tab_sram_id_table_41 <= _GEN_3533;
      end
    end else begin
      mat_tab_sram_id_table_41 <= _GEN_3533;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h2a == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_42 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_42 <= _GEN_3534;
          end
        end else begin
          mat_tab_sram_id_table_42 <= _GEN_3534;
        end
      end else begin
        mat_tab_sram_id_table_42 <= _GEN_3534;
      end
    end else begin
      mat_tab_sram_id_table_42 <= _GEN_3534;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h2b == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_43 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_43 <= _GEN_3535;
          end
        end else begin
          mat_tab_sram_id_table_43 <= _GEN_3535;
        end
      end else begin
        mat_tab_sram_id_table_43 <= _GEN_3535;
      end
    end else begin
      mat_tab_sram_id_table_43 <= _GEN_3535;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h2c == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_44 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_44 <= _GEN_3536;
          end
        end else begin
          mat_tab_sram_id_table_44 <= _GEN_3536;
        end
      end else begin
        mat_tab_sram_id_table_44 <= _GEN_3536;
      end
    end else begin
      mat_tab_sram_id_table_44 <= _GEN_3536;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h2d == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_45 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_45 <= _GEN_3537;
          end
        end else begin
          mat_tab_sram_id_table_45 <= _GEN_3537;
        end
      end else begin
        mat_tab_sram_id_table_45 <= _GEN_3537;
      end
    end else begin
      mat_tab_sram_id_table_45 <= _GEN_3537;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h2e == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_46 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_46 <= _GEN_3538;
          end
        end else begin
          mat_tab_sram_id_table_46 <= _GEN_3538;
        end
      end else begin
        mat_tab_sram_id_table_46 <= _GEN_3538;
      end
    end else begin
      mat_tab_sram_id_table_46 <= _GEN_3538;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h2f == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_47 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_47 <= _GEN_3539;
          end
        end else begin
          mat_tab_sram_id_table_47 <= _GEN_3539;
        end
      end else begin
        mat_tab_sram_id_table_47 <= _GEN_3539;
      end
    end else begin
      mat_tab_sram_id_table_47 <= _GEN_3539;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h30 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_48 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_48 <= _GEN_3540;
          end
        end else begin
          mat_tab_sram_id_table_48 <= _GEN_3540;
        end
      end else begin
        mat_tab_sram_id_table_48 <= _GEN_3540;
      end
    end else begin
      mat_tab_sram_id_table_48 <= _GEN_3540;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h31 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_49 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_49 <= _GEN_3541;
          end
        end else begin
          mat_tab_sram_id_table_49 <= _GEN_3541;
        end
      end else begin
        mat_tab_sram_id_table_49 <= _GEN_3541;
      end
    end else begin
      mat_tab_sram_id_table_49 <= _GEN_3541;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h32 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_50 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_50 <= _GEN_3542;
          end
        end else begin
          mat_tab_sram_id_table_50 <= _GEN_3542;
        end
      end else begin
        mat_tab_sram_id_table_50 <= _GEN_3542;
      end
    end else begin
      mat_tab_sram_id_table_50 <= _GEN_3542;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h33 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_51 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_51 <= _GEN_3543;
          end
        end else begin
          mat_tab_sram_id_table_51 <= _GEN_3543;
        end
      end else begin
        mat_tab_sram_id_table_51 <= _GEN_3543;
      end
    end else begin
      mat_tab_sram_id_table_51 <= _GEN_3543;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h34 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_52 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_52 <= _GEN_3544;
          end
        end else begin
          mat_tab_sram_id_table_52 <= _GEN_3544;
        end
      end else begin
        mat_tab_sram_id_table_52 <= _GEN_3544;
      end
    end else begin
      mat_tab_sram_id_table_52 <= _GEN_3544;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h35 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_53 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_53 <= _GEN_3545;
          end
        end else begin
          mat_tab_sram_id_table_53 <= _GEN_3545;
        end
      end else begin
        mat_tab_sram_id_table_53 <= _GEN_3545;
      end
    end else begin
      mat_tab_sram_id_table_53 <= _GEN_3545;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h36 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_54 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_54 <= _GEN_3546;
          end
        end else begin
          mat_tab_sram_id_table_54 <= _GEN_3546;
        end
      end else begin
        mat_tab_sram_id_table_54 <= _GEN_3546;
      end
    end else begin
      mat_tab_sram_id_table_54 <= _GEN_3546;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h37 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_55 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_55 <= _GEN_3547;
          end
        end else begin
          mat_tab_sram_id_table_55 <= _GEN_3547;
        end
      end else begin
        mat_tab_sram_id_table_55 <= _GEN_3547;
      end
    end else begin
      mat_tab_sram_id_table_55 <= _GEN_3547;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h38 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_56 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_56 <= _GEN_3548;
          end
        end else begin
          mat_tab_sram_id_table_56 <= _GEN_3548;
        end
      end else begin
        mat_tab_sram_id_table_56 <= _GEN_3548;
      end
    end else begin
      mat_tab_sram_id_table_56 <= _GEN_3548;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h39 == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_57 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_57 <= _GEN_3549;
          end
        end else begin
          mat_tab_sram_id_table_57 <= _GEN_3549;
        end
      end else begin
        mat_tab_sram_id_table_57 <= _GEN_3549;
      end
    end else begin
      mat_tab_sram_id_table_57 <= _GEN_3549;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h3a == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_58 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_58 <= _GEN_3550;
          end
        end else begin
          mat_tab_sram_id_table_58 <= _GEN_3550;
        end
      end else begin
        mat_tab_sram_id_table_58 <= _GEN_3550;
      end
    end else begin
      mat_tab_sram_id_table_58 <= _GEN_3550;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h3b == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_59 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_59 <= _GEN_3551;
          end
        end else begin
          mat_tab_sram_id_table_59 <= _GEN_3551;
        end
      end else begin
        mat_tab_sram_id_table_59 <= _GEN_3551;
      end
    end else begin
      mat_tab_sram_id_table_59 <= _GEN_3551;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h3c == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_60 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_60 <= _GEN_3552;
          end
        end else begin
          mat_tab_sram_id_table_60 <= _GEN_3552;
        end
      end else begin
        mat_tab_sram_id_table_60 <= _GEN_3552;
      end
    end else begin
      mat_tab_sram_id_table_60 <= _GEN_3552;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h3d == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_61 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_61 <= _GEN_3553;
          end
        end else begin
          mat_tab_sram_id_table_61 <= _GEN_3553;
        end
      end else begin
        mat_tab_sram_id_table_61 <= _GEN_3553;
      end
    end else begin
      mat_tab_sram_id_table_61 <= _GEN_3553;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h3e == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_62 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_62 <= _GEN_3554;
          end
        end else begin
          mat_tab_sram_id_table_62 <= _GEN_3554;
        end
      end else begin
        mat_tab_sram_id_table_62 <= _GEN_3554;
      end
    end else begin
      mat_tab_sram_id_table_62 <= _GEN_3554;
    end
    if (cluster_id_field == 4'hb) begin // @[pcie_interface.scala 137:43]
      if (type_field == 4'h3) begin // @[pcie_interface.scala 144:44]
        if (sram_id_field == 4'h4) begin // @[pcie_interface.scala 176:52]
          if (6'h3f == _T_13) begin // @[pcie_interface.scala 177:78]
            mat_tab_sram_id_table_63 <= io_pcie_w_data[5:0]; // @[pcie_interface.scala 177:78]
          end else begin
            mat_tab_sram_id_table_63 <= _GEN_3555;
          end
        end else begin
          mat_tab_sram_id_table_63 <= _GEN_3555;
        end
      end else begin
        mat_tab_sram_id_table_63 <= _GEN_3555;
      end
    end else begin
      mat_tab_sram_id_table_63 <= _GEN_3555;
    end
    mat_tab_table_width <= _GEN_3880[6:0];
    mat_tab_table_depth <= _GEN_3881[6:0];
    first_proc_id <= _GEN_3890[3:0];
    last_proc_id <= _GEN_3891[3:0];
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'h0 == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_0 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'h1 == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_1 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'h2 == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_2 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'h3 == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_3 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'h4 == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_4 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'h5 == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_5 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'h6 == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_6 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'h7 == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_7 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'h8 == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_8 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'h9 == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_9 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'ha == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_10 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'hb == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_11 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
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
  first_proc_id = _RAND_71[3:0];
  _RAND_72 = {1{`RANDOM}};
  last_proc_id = _RAND_72[3:0];
  _RAND_73 = {1{`RANDOM}};
  next_proc_id_0 = _RAND_73[3:0];
  _RAND_74 = {1{`RANDOM}};
  next_proc_id_1 = _RAND_74[3:0];
  _RAND_75 = {1{`RANDOM}};
  next_proc_id_2 = _RAND_75[3:0];
  _RAND_76 = {1{`RANDOM}};
  next_proc_id_3 = _RAND_76[3:0];
  _RAND_77 = {1{`RANDOM}};
  next_proc_id_4 = _RAND_77[3:0];
  _RAND_78 = {1{`RANDOM}};
  next_proc_id_5 = _RAND_78[3:0];
  _RAND_79 = {1{`RANDOM}};
  next_proc_id_6 = _RAND_79[3:0];
  _RAND_80 = {1{`RANDOM}};
  next_proc_id_7 = _RAND_80[3:0];
  _RAND_81 = {1{`RANDOM}};
  next_proc_id_8 = _RAND_81[3:0];
  _RAND_82 = {1{`RANDOM}};
  next_proc_id_9 = _RAND_82[3:0];
  _RAND_83 = {1{`RANDOM}};
  next_proc_id_10 = _RAND_83[3:0];
  _RAND_84 = {1{`RANDOM}};
  next_proc_id_11 = _RAND_84[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
