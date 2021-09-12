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
  output [6:0]  io_mod_proc_mod_11_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_11_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_11_act_mod_en_0,
  output        io_mod_proc_mod_11_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_11_act_mod_addr,
  output [63:0] io_mod_proc_mod_11_act_mod_data_0,
  output [63:0] io_mod_proc_mod_11_act_mod_data_1,
  output        io_mod_proc_mod_12_par_mod_en,
  output        io_mod_proc_mod_12_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_12_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_12_par_mod_cs,
  output        io_mod_proc_mod_12_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_12_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_12_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_12_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_12_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_12_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_12_mat_mod_en,
  output        io_mod_proc_mod_12_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_12_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_12_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_12_mat_mod_key_mod_key_length,
  output [6:0]  io_mod_proc_mod_12_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_12_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_12_act_mod_en_0,
  output        io_mod_proc_mod_12_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_12_act_mod_addr,
  output [63:0] io_mod_proc_mod_12_act_mod_data_0,
  output [63:0] io_mod_proc_mod_12_act_mod_data_1,
  output        io_mod_proc_mod_13_par_mod_en,
  output        io_mod_proc_mod_13_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_13_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_13_par_mod_cs,
  output        io_mod_proc_mod_13_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_13_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_13_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_13_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_13_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_13_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_13_mat_mod_en,
  output        io_mod_proc_mod_13_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_13_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_13_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_13_mat_mod_key_mod_key_length,
  output [6:0]  io_mod_proc_mod_13_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_13_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_13_act_mod_en_0,
  output        io_mod_proc_mod_13_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_13_act_mod_addr,
  output [63:0] io_mod_proc_mod_13_act_mod_data_0,
  output [63:0] io_mod_proc_mod_13_act_mod_data_1,
  output        io_mod_proc_mod_14_par_mod_en,
  output        io_mod_proc_mod_14_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_14_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_14_par_mod_cs,
  output        io_mod_proc_mod_14_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_14_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_14_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_14_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_14_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_14_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_14_mat_mod_en,
  output        io_mod_proc_mod_14_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_14_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_14_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_14_mat_mod_key_mod_key_length,
  output [6:0]  io_mod_proc_mod_14_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_14_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_14_act_mod_en_0,
  output        io_mod_proc_mod_14_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_14_act_mod_addr,
  output [63:0] io_mod_proc_mod_14_act_mod_data_0,
  output [63:0] io_mod_proc_mod_14_act_mod_data_1,
  output        io_mod_proc_mod_15_par_mod_en,
  output        io_mod_proc_mod_15_par_mod_last_mau_id_mod,
  output [1:0]  io_mod_proc_mod_15_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_15_par_mod_cs,
  output        io_mod_proc_mod_15_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_15_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_15_par_mod_module_mod_sram_w_cs,
  output        io_mod_proc_mod_15_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_proc_mod_15_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_proc_mod_15_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_15_mat_mod_en,
  output        io_mod_proc_mod_15_mat_mod_config_id,
  output [7:0]  io_mod_proc_mod_15_mat_mod_key_mod_header_id,
  output [7:0]  io_mod_proc_mod_15_mat_mod_key_mod_internal_offset,
  output [7:0]  io_mod_proc_mod_15_mat_mod_key_mod_key_length,
  output [6:0]  io_mod_proc_mod_15_mat_mod_table_mod_table_width,
  output [6:0]  io_mod_proc_mod_15_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_15_act_mod_en_0,
  output        io_mod_proc_mod_15_act_mod_en_1,
  output [7:0]  io_mod_proc_mod_15_act_mod_addr,
  output [63:0] io_mod_proc_mod_15_act_mod_data_0,
  output [63:0] io_mod_proc_mod_15_act_mod_data_1,
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
  output [3:0]  io_mod_xbar_mod_next_proc_id_12,
  output [3:0]  io_mod_xbar_mod_next_proc_id_13,
  output [3:0]  io_mod_xbar_mod_next_proc_id_14,
  output [3:0]  io_mod_xbar_mod_next_proc_id_15,
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
`endif // RANDOMIZE_REG_INIT
  wire [3:0] type_field = io_pcie_w_en ? io_pcie_w_addr[19:16] : 4'h0; // @[pcie_interface.scala 80:29]
  wire [3:0] cluster_id_field = io_pcie_w_addr[15:12]; // @[pcie_interface.scala 81:35]
  wire [3:0] sram_id_field = io_pcie_w_addr[11:8]; // @[pcie_interface.scala 82:35]
  wire [3:0] config_field = io_pcie_w_addr[7:4]; // @[pcie_interface.scala 83:35]
  wire [3:0] bias_field = io_pcie_w_addr[3:0]; // @[pcie_interface.scala 84:35]
  wire [7:0] offset_field = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  wire  sram_resource_pool = type_field == 4'h1; // @[pcie_interface.scala 92:41]
  wire [3:0] _GEN_5220 = {{2'd0}, cluster_id_field[1:0]}; // @[pcie_interface.scala 96:57]
  reg [1:0] last_mau_id; // @[pcie_interface.scala 102:26]
  reg [7:0] state_id; // @[pcie_interface.scala 103:26]
  reg [7:0] mat_key_header_id; // @[pcie_interface.scala 104:22]
  reg [7:0] mat_key_internal_offset; // @[pcie_interface.scala 104:22]
  reg [7:0] mat_key_key_length; // @[pcie_interface.scala 104:22]
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
  wire [63:0] _GEN_471 = _T_5 ? io_pcie_w_data : _GEN_316; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_472 = _T_9 ? io_pcie_w_data : _GEN_317; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_474 = sram_id_field == 4'h5 ? _GEN_471 : _GEN_316; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_475 = sram_id_field == 4'h5 ? _GEN_472 : _GEN_317; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_478 = type_field == 4'h3 ? _GEN_325 : _GEN_243; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_479 = type_field == 4'h3 ? _GEN_330 : _GEN_244; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_484 = type_field == 4'h3 ? _GEN_339 : _GEN_248; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_485 = type_field == 4'h3 ? _GEN_340 : _GEN_249; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_486 = type_field == 4'h3 ? _GEN_341 : _GEN_250; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_552 = type_field == 4'h3 ? _GEN_474 : _GEN_316; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_553 = type_field == 4'h3 ? _GEN_475 : _GEN_317; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_566 = cluster_id_field == 4'h1 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_567 = cluster_id_field == 4'h1 ? _GEN_478 : _GEN_243; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_568 = cluster_id_field == 4'h1 ? _GEN_479 : _GEN_244; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_571 = cluster_id_field == 4'h1 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_572 = cluster_id_field == 4'h1 ? _GEN_484 : _GEN_248; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_573 = cluster_id_field == 4'h1 ? _GEN_485 : _GEN_249; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_574 = cluster_id_field == 4'h1 ? _GEN_486 : _GEN_250; // @[pcie_interface.scala 137:43]
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
  wire [63:0] _GEN_795 = _T_5 ? io_pcie_w_data : _GEN_640; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_796 = _T_9 ? io_pcie_w_data : _GEN_641; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_798 = sram_id_field == 4'h5 ? _GEN_795 : _GEN_640; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_799 = sram_id_field == 4'h5 ? _GEN_796 : _GEN_641; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_802 = type_field == 4'h3 ? _GEN_649 : _GEN_567; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_803 = type_field == 4'h3 ? _GEN_654 : _GEN_568; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_808 = type_field == 4'h3 ? _GEN_663 : _GEN_572; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_809 = type_field == 4'h3 ? _GEN_664 : _GEN_573; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_810 = type_field == 4'h3 ? _GEN_665 : _GEN_574; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_876 = type_field == 4'h3 ? _GEN_798 : _GEN_640; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_877 = type_field == 4'h3 ? _GEN_799 : _GEN_641; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_890 = cluster_id_field == 4'h2 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_891 = cluster_id_field == 4'h2 ? _GEN_802 : _GEN_567; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_892 = cluster_id_field == 4'h2 ? _GEN_803 : _GEN_568; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_895 = cluster_id_field == 4'h2 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_896 = cluster_id_field == 4'h2 ? _GEN_808 : _GEN_572; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_897 = cluster_id_field == 4'h2 ? _GEN_809 : _GEN_573; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_898 = cluster_id_field == 4'h2 ? _GEN_810 : _GEN_574; // @[pcie_interface.scala 137:43]
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
  wire [63:0] _GEN_1297 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_1215; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_1298 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_1216; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_1302 = sram_id_field == 4'h2 ? _GEN_1298 : _GEN_1216; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_1306 = _T_5 ? io_pcie_w_data : _GEN_1220; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_1307 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_1221; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_1308 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_1222; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_1311 = sram_id_field == 4'h3 ? _GEN_1306 : _GEN_1220; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1312 = sram_id_field == 4'h3 ? _GEN_1307 : _GEN_1221; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1313 = sram_id_field == 4'h3 ? _GEN_1308 : _GEN_1222; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1443 = _T_5 ? io_pcie_w_data : _GEN_1288; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_1444 = _T_9 ? io_pcie_w_data : _GEN_1289; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_1446 = sram_id_field == 4'h5 ? _GEN_1443 : _GEN_1288; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1447 = sram_id_field == 4'h5 ? _GEN_1444 : _GEN_1289; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1450 = type_field == 4'h3 ? _GEN_1297 : _GEN_1215; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1451 = type_field == 4'h3 ? _GEN_1302 : _GEN_1216; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1456 = type_field == 4'h3 ? _GEN_1311 : _GEN_1220; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1457 = type_field == 4'h3 ? _GEN_1312 : _GEN_1221; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1458 = type_field == 4'h3 ? _GEN_1313 : _GEN_1222; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1524 = type_field == 4'h3 ? _GEN_1446 : _GEN_1288; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1525 = type_field == 4'h3 ? _GEN_1447 : _GEN_1289; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_1538 = cluster_id_field == 4'h4 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_1539 = cluster_id_field == 4'h4 ? _GEN_1450 : _GEN_1215; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1540 = cluster_id_field == 4'h4 ? _GEN_1451 : _GEN_1216; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_1543 = cluster_id_field == 4'h4 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_1544 = cluster_id_field == 4'h4 ? _GEN_1456 : _GEN_1220; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1545 = cluster_id_field == 4'h4 ? _GEN_1457 : _GEN_1221; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1546 = cluster_id_field == 4'h4 ? _GEN_1458 : _GEN_1222; // @[pcie_interface.scala 137:43]
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
  wire [63:0] _GEN_1767 = _T_5 ? io_pcie_w_data : _GEN_1612; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_1768 = _T_9 ? io_pcie_w_data : _GEN_1613; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_1770 = sram_id_field == 4'h5 ? _GEN_1767 : _GEN_1612; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1771 = sram_id_field == 4'h5 ? _GEN_1768 : _GEN_1613; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1774 = type_field == 4'h3 ? _GEN_1621 : _GEN_1539; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1775 = type_field == 4'h3 ? _GEN_1626 : _GEN_1540; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1780 = type_field == 4'h3 ? _GEN_1635 : _GEN_1544; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1781 = type_field == 4'h3 ? _GEN_1636 : _GEN_1545; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1782 = type_field == 4'h3 ? _GEN_1637 : _GEN_1546; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1848 = type_field == 4'h3 ? _GEN_1770 : _GEN_1612; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1849 = type_field == 4'h3 ? _GEN_1771 : _GEN_1613; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_1862 = cluster_id_field == 4'h5 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_1863 = cluster_id_field == 4'h5 ? _GEN_1774 : _GEN_1539; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1864 = cluster_id_field == 4'h5 ? _GEN_1775 : _GEN_1540; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_1867 = cluster_id_field == 4'h5 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_1868 = cluster_id_field == 4'h5 ? _GEN_1780 : _GEN_1544; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1869 = cluster_id_field == 4'h5 ? _GEN_1781 : _GEN_1545; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1870 = cluster_id_field == 4'h5 ? _GEN_1782 : _GEN_1546; // @[pcie_interface.scala 137:43]
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
  wire [63:0] _GEN_2091 = _T_5 ? io_pcie_w_data : _GEN_1936; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_2092 = _T_9 ? io_pcie_w_data : _GEN_1937; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_2094 = sram_id_field == 4'h5 ? _GEN_2091 : _GEN_1936; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_2095 = sram_id_field == 4'h5 ? _GEN_2092 : _GEN_1937; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_2098 = type_field == 4'h3 ? _GEN_1945 : _GEN_1863; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2099 = type_field == 4'h3 ? _GEN_1950 : _GEN_1864; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2104 = type_field == 4'h3 ? _GEN_1959 : _GEN_1868; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2105 = type_field == 4'h3 ? _GEN_1960 : _GEN_1869; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2106 = type_field == 4'h3 ? _GEN_1961 : _GEN_1870; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2172 = type_field == 4'h3 ? _GEN_2094 : _GEN_1936; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2173 = type_field == 4'h3 ? _GEN_2095 : _GEN_1937; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_2186 = cluster_id_field == 4'h6 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_2187 = cluster_id_field == 4'h6 ? _GEN_2098 : _GEN_1863; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2188 = cluster_id_field == 4'h6 ? _GEN_2099 : _GEN_1864; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_2191 = cluster_id_field == 4'h6 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_2192 = cluster_id_field == 4'h6 ? _GEN_2104 : _GEN_1868; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2193 = cluster_id_field == 4'h6 ? _GEN_2105 : _GEN_1869; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2194 = cluster_id_field == 4'h6 ? _GEN_2106 : _GEN_1870; // @[pcie_interface.scala 137:43]
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
  wire [63:0] _GEN_2415 = _T_5 ? io_pcie_w_data : _GEN_2260; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_2416 = _T_9 ? io_pcie_w_data : _GEN_2261; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_2418 = sram_id_field == 4'h5 ? _GEN_2415 : _GEN_2260; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_2419 = sram_id_field == 4'h5 ? _GEN_2416 : _GEN_2261; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_2422 = type_field == 4'h3 ? _GEN_2269 : _GEN_2187; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2423 = type_field == 4'h3 ? _GEN_2274 : _GEN_2188; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2428 = type_field == 4'h3 ? _GEN_2283 : _GEN_2192; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2429 = type_field == 4'h3 ? _GEN_2284 : _GEN_2193; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2430 = type_field == 4'h3 ? _GEN_2285 : _GEN_2194; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2496 = type_field == 4'h3 ? _GEN_2418 : _GEN_2260; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2497 = type_field == 4'h3 ? _GEN_2419 : _GEN_2261; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_2510 = cluster_id_field == 4'h7 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_2511 = cluster_id_field == 4'h7 ? _GEN_2422 : _GEN_2187; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2512 = cluster_id_field == 4'h7 ? _GEN_2423 : _GEN_2188; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_2515 = cluster_id_field == 4'h7 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_2516 = cluster_id_field == 4'h7 ? _GEN_2428 : _GEN_2192; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2517 = cluster_id_field == 4'h7 ? _GEN_2429 : _GEN_2193; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2518 = cluster_id_field == 4'h7 ? _GEN_2430 : _GEN_2194; // @[pcie_interface.scala 137:43]
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
  wire [63:0] _GEN_2739 = _T_5 ? io_pcie_w_data : _GEN_2584; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_2740 = _T_9 ? io_pcie_w_data : _GEN_2585; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_2742 = sram_id_field == 4'h5 ? _GEN_2739 : _GEN_2584; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_2743 = sram_id_field == 4'h5 ? _GEN_2740 : _GEN_2585; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_2746 = type_field == 4'h3 ? _GEN_2593 : _GEN_2511; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2747 = type_field == 4'h3 ? _GEN_2598 : _GEN_2512; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2752 = type_field == 4'h3 ? _GEN_2607 : _GEN_2516; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2753 = type_field == 4'h3 ? _GEN_2608 : _GEN_2517; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2754 = type_field == 4'h3 ? _GEN_2609 : _GEN_2518; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2820 = type_field == 4'h3 ? _GEN_2742 : _GEN_2584; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_2821 = type_field == 4'h3 ? _GEN_2743 : _GEN_2585; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_2834 = cluster_id_field == 4'h8 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_2835 = cluster_id_field == 4'h8 ? _GEN_2746 : _GEN_2511; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2836 = cluster_id_field == 4'h8 ? _GEN_2747 : _GEN_2512; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_2839 = cluster_id_field == 4'h8 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_2840 = cluster_id_field == 4'h8 ? _GEN_2752 : _GEN_2516; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2841 = cluster_id_field == 4'h8 ? _GEN_2753 : _GEN_2517; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_2842 = cluster_id_field == 4'h8 ? _GEN_2754 : _GEN_2518; // @[pcie_interface.scala 137:43]
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
  wire [63:0] _GEN_3063 = _T_5 ? io_pcie_w_data : _GEN_2908; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_3064 = _T_9 ? io_pcie_w_data : _GEN_2909; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_3066 = sram_id_field == 4'h5 ? _GEN_3063 : _GEN_2908; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_3067 = sram_id_field == 4'h5 ? _GEN_3064 : _GEN_2909; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_3070 = type_field == 4'h3 ? _GEN_2917 : _GEN_2835; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3071 = type_field == 4'h3 ? _GEN_2922 : _GEN_2836; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3076 = type_field == 4'h3 ? _GEN_2931 : _GEN_2840; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3077 = type_field == 4'h3 ? _GEN_2932 : _GEN_2841; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3078 = type_field == 4'h3 ? _GEN_2933 : _GEN_2842; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3144 = type_field == 4'h3 ? _GEN_3066 : _GEN_2908; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3145 = type_field == 4'h3 ? _GEN_3067 : _GEN_2909; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_3158 = cluster_id_field == 4'h9 ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_3159 = cluster_id_field == 4'h9 ? _GEN_3070 : _GEN_2835; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3160 = cluster_id_field == 4'h9 ? _GEN_3071 : _GEN_2836; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_3163 = cluster_id_field == 4'h9 ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_3164 = cluster_id_field == 4'h9 ? _GEN_3076 : _GEN_2840; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3165 = cluster_id_field == 4'h9 ? _GEN_3077 : _GEN_2841; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3166 = cluster_id_field == 4'h9 ? _GEN_3078 : _GEN_2842; // @[pcie_interface.scala 137:43]
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
  wire [63:0] _GEN_3387 = _T_5 ? io_pcie_w_data : _GEN_3232; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_3388 = _T_9 ? io_pcie_w_data : _GEN_3233; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_3390 = sram_id_field == 4'h5 ? _GEN_3387 : _GEN_3232; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_3391 = sram_id_field == 4'h5 ? _GEN_3388 : _GEN_3233; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_3394 = type_field == 4'h3 ? _GEN_3241 : _GEN_3159; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3395 = type_field == 4'h3 ? _GEN_3246 : _GEN_3160; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3400 = type_field == 4'h3 ? _GEN_3255 : _GEN_3164; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3401 = type_field == 4'h3 ? _GEN_3256 : _GEN_3165; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3402 = type_field == 4'h3 ? _GEN_3257 : _GEN_3166; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3468 = type_field == 4'h3 ? _GEN_3390 : _GEN_3232; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_3469 = type_field == 4'h3 ? _GEN_3391 : _GEN_3233; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_3482 = cluster_id_field == 4'ha ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_3483 = cluster_id_field == 4'ha ? _GEN_3394 : _GEN_3159; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3484 = cluster_id_field == 4'ha ? _GEN_3395 : _GEN_3160; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_3487 = cluster_id_field == 4'ha ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_3488 = cluster_id_field == 4'ha ? _GEN_3400 : _GEN_3164; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3489 = cluster_id_field == 4'ha ? _GEN_3401 : _GEN_3165; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_3490 = cluster_id_field == 4'ha ? _GEN_3402 : _GEN_3166; // @[pcie_interface.scala 137:43]
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
  wire [63:0] _GEN_3889 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_3807; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_3890 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_3808; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_3894 = sram_id_field == 4'h2 ? _GEN_3890 : _GEN_3808; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_3898 = _T_5 ? io_pcie_w_data : _GEN_3812; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_3899 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_3813; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_3900 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_3814; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_3903 = sram_id_field == 4'h3 ? _GEN_3898 : _GEN_3812; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_3904 = sram_id_field == 4'h3 ? _GEN_3899 : _GEN_3813; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_3905 = sram_id_field == 4'h3 ? _GEN_3900 : _GEN_3814; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_4035 = _T_5 ? io_pcie_w_data : _GEN_3880; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_4036 = _T_9 ? io_pcie_w_data : _GEN_3881; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_4038 = sram_id_field == 4'h5 ? _GEN_4035 : _GEN_3880; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_4039 = sram_id_field == 4'h5 ? _GEN_4036 : _GEN_3881; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_4042 = type_field == 4'h3 ? _GEN_3889 : _GEN_3807; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4043 = type_field == 4'h3 ? _GEN_3894 : _GEN_3808; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4048 = type_field == 4'h3 ? _GEN_3903 : _GEN_3812; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4049 = type_field == 4'h3 ? _GEN_3904 : _GEN_3813; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4050 = type_field == 4'h3 ? _GEN_3905 : _GEN_3814; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4116 = type_field == 4'h3 ? _GEN_4038 : _GEN_3880; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4117 = type_field == 4'h3 ? _GEN_4039 : _GEN_3881; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_4130 = cluster_id_field == 4'hc ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_4131 = cluster_id_field == 4'hc ? _GEN_4042 : _GEN_3807; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4132 = cluster_id_field == 4'hc ? _GEN_4043 : _GEN_3808; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_4135 = cluster_id_field == 4'hc ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_4136 = cluster_id_field == 4'hc ? _GEN_4048 : _GEN_3812; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4137 = cluster_id_field == 4'hc ? _GEN_4049 : _GEN_3813; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4138 = cluster_id_field == 4'hc ? _GEN_4050 : _GEN_3814; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4204 = cluster_id_field == 4'hc ? _GEN_4116 : _GEN_3880; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4205 = cluster_id_field == 4'hc ? _GEN_4117 : _GEN_3881; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4213 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_4131; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_4214 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_4132; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_4218 = sram_id_field == 4'h2 ? _GEN_4214 : _GEN_4132; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_4222 = _T_5 ? io_pcie_w_data : _GEN_4136; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_4223 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_4137; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_4224 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_4138; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_4227 = sram_id_field == 4'h3 ? _GEN_4222 : _GEN_4136; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_4228 = sram_id_field == 4'h3 ? _GEN_4223 : _GEN_4137; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_4229 = sram_id_field == 4'h3 ? _GEN_4224 : _GEN_4138; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_4359 = _T_5 ? io_pcie_w_data : _GEN_4204; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_4360 = _T_9 ? io_pcie_w_data : _GEN_4205; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_4362 = sram_id_field == 4'h5 ? _GEN_4359 : _GEN_4204; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_4363 = sram_id_field == 4'h5 ? _GEN_4360 : _GEN_4205; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_4366 = type_field == 4'h3 ? _GEN_4213 : _GEN_4131; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4367 = type_field == 4'h3 ? _GEN_4218 : _GEN_4132; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4372 = type_field == 4'h3 ? _GEN_4227 : _GEN_4136; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4373 = type_field == 4'h3 ? _GEN_4228 : _GEN_4137; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4374 = type_field == 4'h3 ? _GEN_4229 : _GEN_4138; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4440 = type_field == 4'h3 ? _GEN_4362 : _GEN_4204; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4441 = type_field == 4'h3 ? _GEN_4363 : _GEN_4205; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_4454 = cluster_id_field == 4'hd ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_4455 = cluster_id_field == 4'hd ? _GEN_4366 : _GEN_4131; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4456 = cluster_id_field == 4'hd ? _GEN_4367 : _GEN_4132; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_4459 = cluster_id_field == 4'hd ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_4460 = cluster_id_field == 4'hd ? _GEN_4372 : _GEN_4136; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4461 = cluster_id_field == 4'hd ? _GEN_4373 : _GEN_4137; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4462 = cluster_id_field == 4'hd ? _GEN_4374 : _GEN_4138; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4528 = cluster_id_field == 4'hd ? _GEN_4440 : _GEN_4204; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4529 = cluster_id_field == 4'hd ? _GEN_4441 : _GEN_4205; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4537 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_4455; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_4538 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_4456; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_4542 = sram_id_field == 4'h2 ? _GEN_4538 : _GEN_4456; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_4546 = _T_5 ? io_pcie_w_data : _GEN_4460; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_4547 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_4461; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_4548 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_4462; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_4551 = sram_id_field == 4'h3 ? _GEN_4546 : _GEN_4460; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_4552 = sram_id_field == 4'h3 ? _GEN_4547 : _GEN_4461; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_4553 = sram_id_field == 4'h3 ? _GEN_4548 : _GEN_4462; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_4683 = _T_5 ? io_pcie_w_data : _GEN_4528; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_4684 = _T_9 ? io_pcie_w_data : _GEN_4529; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_4686 = sram_id_field == 4'h5 ? _GEN_4683 : _GEN_4528; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_4687 = sram_id_field == 4'h5 ? _GEN_4684 : _GEN_4529; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_4690 = type_field == 4'h3 ? _GEN_4537 : _GEN_4455; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4691 = type_field == 4'h3 ? _GEN_4542 : _GEN_4456; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4696 = type_field == 4'h3 ? _GEN_4551 : _GEN_4460; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4697 = type_field == 4'h3 ? _GEN_4552 : _GEN_4461; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4698 = type_field == 4'h3 ? _GEN_4553 : _GEN_4462; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4764 = type_field == 4'h3 ? _GEN_4686 : _GEN_4528; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_4765 = type_field == 4'h3 ? _GEN_4687 : _GEN_4529; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_4778 = cluster_id_field == 4'he ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_4779 = cluster_id_field == 4'he ? _GEN_4690 : _GEN_4455; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4780 = cluster_id_field == 4'he ? _GEN_4691 : _GEN_4456; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_4783 = cluster_id_field == 4'he ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_4784 = cluster_id_field == 4'he ? _GEN_4696 : _GEN_4460; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4785 = cluster_id_field == 4'he ? _GEN_4697 : _GEN_4461; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4786 = cluster_id_field == 4'he ? _GEN_4698 : _GEN_4462; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4852 = cluster_id_field == 4'he ? _GEN_4764 : _GEN_4528; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4853 = cluster_id_field == 4'he ? _GEN_4765 : _GEN_4529; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_4861 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_4779; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_4862 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_4780; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_4866 = sram_id_field == 4'h2 ? _GEN_4862 : _GEN_4780; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_4870 = _T_5 ? io_pcie_w_data : _GEN_4784; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_4871 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_4785; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_4872 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_4786; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_4875 = sram_id_field == 4'h3 ? _GEN_4870 : _GEN_4784; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_4876 = sram_id_field == 4'h3 ? _GEN_4871 : _GEN_4785; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_4877 = sram_id_field == 4'h3 ? _GEN_4872 : _GEN_4786; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_5007 = _T_5 ? io_pcie_w_data : _GEN_4852; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_5008 = _T_9 ? io_pcie_w_data : _GEN_4853; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_5010 = sram_id_field == 4'h5 ? _GEN_5007 : _GEN_4852; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_5011 = sram_id_field == 4'h5 ? _GEN_5008 : _GEN_4853; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_5014 = type_field == 4'h3 ? _GEN_4861 : _GEN_4779; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_5015 = type_field == 4'h3 ? _GEN_4866 : _GEN_4780; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_5020 = type_field == 4'h3 ? _GEN_4875 : _GEN_4784; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_5021 = type_field == 4'h3 ? _GEN_4876 : _GEN_4785; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_5022 = type_field == 4'h3 ? _GEN_4877 : _GEN_4786; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_5088 = type_field == 4'h3 ? _GEN_5010 : _GEN_4852; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_5089 = type_field == 4'h3 ? _GEN_5011 : _GEN_4853; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_5102 = cluster_id_field == 4'hf ? _GEN_153 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_5103 = cluster_id_field == 4'hf ? _GEN_5014 : _GEN_4779; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_5104 = cluster_id_field == 4'hf ? _GEN_5015 : _GEN_4780; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_5107 = cluster_id_field == 4'hf ? _GEN_159 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_5108 = cluster_id_field == 4'hf ? _GEN_5020 : _GEN_4784; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_5109 = cluster_id_field == 4'hf ? _GEN_5021 : _GEN_4785; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_5110 = cluster_id_field == 4'hf ? _GEN_5022 : _GEN_4786; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_5176 = cluster_id_field == 4'hf ? _GEN_5088 : _GEN_4852; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_5177 = cluster_id_field == 4'hf ? _GEN_5089 : _GEN_4853; // @[pcie_interface.scala 137:43]
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
  reg [3:0] next_proc_id_12; // @[pcie_interface.scala 207:28]
  reg [3:0] next_proc_id_13; // @[pcie_interface.scala 207:28]
  reg [3:0] next_proc_id_14; // @[pcie_interface.scala 207:28]
  reg [3:0] next_proc_id_15; // @[pcie_interface.scala 207:28]
  wire [63:0] _GEN_5184 = offset_field == 8'h0 ? io_pcie_w_data : {{60'd0}, first_proc_id}; // @[pcie_interface.scala 210:42 pcie_interface.scala 211:27 pcie_interface.scala 205:28]
  wire [63:0] _GEN_5185 = offset_field == 8'h1 ? io_pcie_w_data : {{60'd0}, last_proc_id}; // @[pcie_interface.scala 213:42 pcie_interface.scala 214:27 pcie_interface.scala 206:28]
  wire [63:0] _GEN_5186 = type_field == 4'h8 ? _GEN_5184 : {{60'd0}, first_proc_id}; // @[pcie_interface.scala 209:36 pcie_interface.scala 205:28]
  wire [63:0] _GEN_5187 = type_field == 4'h8 ? _GEN_5185 : {{60'd0}, last_proc_id}; // @[pcie_interface.scala 209:36 pcie_interface.scala 206:28]
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
  assign io_mod_proc_mod_11_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_act_mod_en_0 = cluster_id_field == 4'hb & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_11_act_mod_en_1 = cluster_id_field == 4'hb & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_11_act_mod_addr = cluster_id_field == 4'hb ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_11_act_mod_data_0 = cluster_id_field == 4'hb ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_11_act_mod_data_1 = cluster_id_field == 4'hb ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_12_par_mod_en = cluster_id_field == 4'hc & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_12_par_mod_last_mau_id_mod = cluster_id_field == 4'hc & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_12_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_12_par_mod_cs = _GEN_4130[1:0];
  assign io_mod_proc_mod_12_par_mod_module_mod_state_id_mod = cluster_id_field == 4'hc & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_12_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_12_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_12_par_mod_module_mod_sram_w_en = cluster_id_field == 4'hc & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_12_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_12_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_12_mat_mod_en = cluster_id_field == 4'hc & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_12_mat_mod_config_id = _GEN_4135[0];
  assign io_mod_proc_mod_12_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_12_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_12_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_12_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_12_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_12_act_mod_en_0 = cluster_id_field == 4'hc & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_12_act_mod_en_1 = cluster_id_field == 4'hc & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_12_act_mod_addr = cluster_id_field == 4'hc ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_12_act_mod_data_0 = cluster_id_field == 4'hc ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_12_act_mod_data_1 = cluster_id_field == 4'hc ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_13_par_mod_en = cluster_id_field == 4'hd & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_13_par_mod_last_mau_id_mod = cluster_id_field == 4'hd & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_13_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_13_par_mod_cs = _GEN_4454[1:0];
  assign io_mod_proc_mod_13_par_mod_module_mod_state_id_mod = cluster_id_field == 4'hd & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_13_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_13_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_13_par_mod_module_mod_sram_w_en = cluster_id_field == 4'hd & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_13_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_13_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_13_mat_mod_en = cluster_id_field == 4'hd & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_13_mat_mod_config_id = _GEN_4459[0];
  assign io_mod_proc_mod_13_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_13_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_13_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_13_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_13_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_13_act_mod_en_0 = cluster_id_field == 4'hd & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_13_act_mod_en_1 = cluster_id_field == 4'hd & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_13_act_mod_addr = cluster_id_field == 4'hd ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_13_act_mod_data_0 = cluster_id_field == 4'hd ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_13_act_mod_data_1 = cluster_id_field == 4'hd ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_14_par_mod_en = cluster_id_field == 4'he & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_14_par_mod_last_mau_id_mod = cluster_id_field == 4'he & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_14_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_14_par_mod_cs = _GEN_4778[1:0];
  assign io_mod_proc_mod_14_par_mod_module_mod_state_id_mod = cluster_id_field == 4'he & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_14_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_14_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_14_par_mod_module_mod_sram_w_en = cluster_id_field == 4'he & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_14_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_14_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_14_mat_mod_en = cluster_id_field == 4'he & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_14_mat_mod_config_id = _GEN_4783[0];
  assign io_mod_proc_mod_14_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_14_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_14_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_14_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_14_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_14_act_mod_en_0 = cluster_id_field == 4'he & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_14_act_mod_en_1 = cluster_id_field == 4'he & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_14_act_mod_addr = cluster_id_field == 4'he ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_14_act_mod_data_0 = cluster_id_field == 4'he ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_14_act_mod_data_1 = cluster_id_field == 4'he ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_15_par_mod_en = cluster_id_field == 4'hf & _GEN_156; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_15_par_mod_last_mau_id_mod = cluster_id_field == 4'hf & _GEN_157; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_15_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_15_par_mod_cs = _GEN_5102[1:0];
  assign io_mod_proc_mod_15_par_mod_module_mod_state_id_mod = cluster_id_field == 4'hf & _GEN_158; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_15_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_15_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_15_par_mod_module_mod_sram_w_en = cluster_id_field == 4'hf & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_15_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_15_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_15_mat_mod_en = cluster_id_field == 4'hf & _GEN_230; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_15_mat_mod_config_id = _GEN_5107[0];
  assign io_mod_proc_mod_15_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_15_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_15_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_15_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_15_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_15_act_mod_en_0 = cluster_id_field == 4'hf & _GEN_236; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_15_act_mod_en_1 = cluster_id_field == 4'hf & _GEN_238; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_15_act_mod_addr = cluster_id_field == 4'hf ? _GEN_235 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_15_act_mod_data_0 = cluster_id_field == 4'hf ? _GEN_237 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_15_act_mod_data_1 = cluster_id_field == 4'hf ? _GEN_239 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
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
  assign io_mod_xbar_mod_next_proc_id_12 = next_proc_id_12; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_13 = next_proc_id_13; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_14 = next_proc_id_14; // @[pcie_interface.scala 223:28]
  assign io_mod_xbar_mod_next_proc_id_15 = next_proc_id_15; // @[pcie_interface.scala 223:28]
  assign io_w_0_wcs = {{5'd0}, _GEN_5220 == sram_id_field}; // @[pcie_interface.scala 96:57]
  assign io_w_0_w_en = cluster_id_field[3:2] == 2'h0 & sram_resource_pool; // @[pcie_interface.scala 97:66]
  assign io_w_0_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_w_0_w_data = io_pcie_w_data; // @[pcie_interface.scala 99:28]
  assign io_w_1_wcs = {{5'd0}, _GEN_5220 == sram_id_field}; // @[pcie_interface.scala 96:57]
  assign io_w_1_w_en = cluster_id_field[3:2] == 2'h1 & sram_resource_pool; // @[pcie_interface.scala 97:66]
  assign io_w_1_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_w_1_w_data = io_pcie_w_data; // @[pcie_interface.scala 99:28]
  assign io_w_2_wcs = {{5'd0}, _GEN_5220 == sram_id_field}; // @[pcie_interface.scala 96:57]
  assign io_w_2_w_en = cluster_id_field[3:2] == 2'h2 & sram_resource_pool; // @[pcie_interface.scala 97:66]
  assign io_w_2_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_w_2_w_data = io_pcie_w_data; // @[pcie_interface.scala 99:28]
  assign io_w_3_wcs = {{5'd0}, _GEN_5220 == sram_id_field}; // @[pcie_interface.scala 96:57]
  assign io_w_3_w_en = cluster_id_field[3:2] == 2'h3 & sram_resource_pool; // @[pcie_interface.scala 97:66]
  assign io_w_3_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_w_3_w_data = io_pcie_w_data; // @[pcie_interface.scala 99:28]
  always @(posedge clock) begin
    last_mau_id <= _GEN_5103[1:0];
    state_id <= _GEN_5104[7:0];
    mat_key_header_id <= _GEN_5108[7:0];
    mat_key_internal_offset <= _GEN_5109[7:0];
    mat_key_key_length <= _GEN_5110[7:0];
    mat_tab_table_width <= _GEN_5176[6:0];
    mat_tab_table_depth <= _GEN_5177[6:0];
    first_proc_id <= _GEN_5186[3:0];
    last_proc_id <= _GEN_5187[3:0];
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
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'hc == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_12 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'hd == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_13 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'he == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_14 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 217:36]
      if (4'hf == cluster_id_field) begin // @[pcie_interface.scala 218:37]
        next_proc_id_15 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 218:37]
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
  mat_tab_table_width = _RAND_5[6:0];
  _RAND_6 = {1{`RANDOM}};
  mat_tab_table_depth = _RAND_6[6:0];
  _RAND_7 = {1{`RANDOM}};
  first_proc_id = _RAND_7[3:0];
  _RAND_8 = {1{`RANDOM}};
  last_proc_id = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  next_proc_id_0 = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  next_proc_id_1 = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  next_proc_id_2 = _RAND_11[3:0];
  _RAND_12 = {1{`RANDOM}};
  next_proc_id_3 = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  next_proc_id_4 = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  next_proc_id_5 = _RAND_14[3:0];
  _RAND_15 = {1{`RANDOM}};
  next_proc_id_6 = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  next_proc_id_7 = _RAND_16[3:0];
  _RAND_17 = {1{`RANDOM}};
  next_proc_id_8 = _RAND_17[3:0];
  _RAND_18 = {1{`RANDOM}};
  next_proc_id_9 = _RAND_18[3:0];
  _RAND_19 = {1{`RANDOM}};
  next_proc_id_10 = _RAND_19[3:0];
  _RAND_20 = {1{`RANDOM}};
  next_proc_id_11 = _RAND_20[3:0];
  _RAND_21 = {1{`RANDOM}};
  next_proc_id_12 = _RAND_21[3:0];
  _RAND_22 = {1{`RANDOM}};
  next_proc_id_13 = _RAND_22[3:0];
  _RAND_23 = {1{`RANDOM}};
  next_proc_id_14 = _RAND_23[3:0];
  _RAND_24 = {1{`RANDOM}};
  next_proc_id_15 = _RAND_24[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
