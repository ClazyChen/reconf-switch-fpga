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
  output [4:0]  io_mod_proc_mod_0_mat_mod_table_mod_table_width,
  output [4:0]  io_mod_proc_mod_0_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_0_act_mod_en_0,
  output        io_mod_proc_mod_0_act_mod_en_1,
  output        io_mod_proc_mod_0_act_mod_en_2,
  output        io_mod_proc_mod_0_act_mod_en_3,
  output [7:0]  io_mod_proc_mod_0_act_mod_addr,
  output [63:0] io_mod_proc_mod_0_act_mod_data_0,
  output [63:0] io_mod_proc_mod_0_act_mod_data_1,
  output [63:0] io_mod_proc_mod_0_act_mod_data_2,
  output [63:0] io_mod_proc_mod_0_act_mod_data_3,
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
  output [4:0]  io_mod_proc_mod_1_mat_mod_table_mod_table_width,
  output [4:0]  io_mod_proc_mod_1_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_1_act_mod_en_0,
  output        io_mod_proc_mod_1_act_mod_en_1,
  output        io_mod_proc_mod_1_act_mod_en_2,
  output        io_mod_proc_mod_1_act_mod_en_3,
  output [7:0]  io_mod_proc_mod_1_act_mod_addr,
  output [63:0] io_mod_proc_mod_1_act_mod_data_0,
  output [63:0] io_mod_proc_mod_1_act_mod_data_1,
  output [63:0] io_mod_proc_mod_1_act_mod_data_2,
  output [63:0] io_mod_proc_mod_1_act_mod_data_3,
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
  output [4:0]  io_mod_proc_mod_2_mat_mod_table_mod_table_width,
  output [4:0]  io_mod_proc_mod_2_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_2_act_mod_en_0,
  output        io_mod_proc_mod_2_act_mod_en_1,
  output        io_mod_proc_mod_2_act_mod_en_2,
  output        io_mod_proc_mod_2_act_mod_en_3,
  output [7:0]  io_mod_proc_mod_2_act_mod_addr,
  output [63:0] io_mod_proc_mod_2_act_mod_data_0,
  output [63:0] io_mod_proc_mod_2_act_mod_data_1,
  output [63:0] io_mod_proc_mod_2_act_mod_data_2,
  output [63:0] io_mod_proc_mod_2_act_mod_data_3,
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
  output [4:0]  io_mod_proc_mod_3_mat_mod_table_mod_table_width,
  output [4:0]  io_mod_proc_mod_3_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_3_act_mod_en_0,
  output        io_mod_proc_mod_3_act_mod_en_1,
  output        io_mod_proc_mod_3_act_mod_en_2,
  output        io_mod_proc_mod_3_act_mod_en_3,
  output [7:0]  io_mod_proc_mod_3_act_mod_addr,
  output [63:0] io_mod_proc_mod_3_act_mod_data_0,
  output [63:0] io_mod_proc_mod_3_act_mod_data_1,
  output [63:0] io_mod_proc_mod_3_act_mod_data_2,
  output [63:0] io_mod_proc_mod_3_act_mod_data_3,
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
  output [4:0]  io_mod_proc_mod_4_mat_mod_table_mod_table_width,
  output [4:0]  io_mod_proc_mod_4_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_4_act_mod_en_0,
  output        io_mod_proc_mod_4_act_mod_en_1,
  output        io_mod_proc_mod_4_act_mod_en_2,
  output        io_mod_proc_mod_4_act_mod_en_3,
  output [7:0]  io_mod_proc_mod_4_act_mod_addr,
  output [63:0] io_mod_proc_mod_4_act_mod_data_0,
  output [63:0] io_mod_proc_mod_4_act_mod_data_1,
  output [63:0] io_mod_proc_mod_4_act_mod_data_2,
  output [63:0] io_mod_proc_mod_4_act_mod_data_3,
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
  output [4:0]  io_mod_proc_mod_5_mat_mod_table_mod_table_width,
  output [4:0]  io_mod_proc_mod_5_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_5_act_mod_en_0,
  output        io_mod_proc_mod_5_act_mod_en_1,
  output        io_mod_proc_mod_5_act_mod_en_2,
  output        io_mod_proc_mod_5_act_mod_en_3,
  output [7:0]  io_mod_proc_mod_5_act_mod_addr,
  output [63:0] io_mod_proc_mod_5_act_mod_data_0,
  output [63:0] io_mod_proc_mod_5_act_mod_data_1,
  output [63:0] io_mod_proc_mod_5_act_mod_data_2,
  output [63:0] io_mod_proc_mod_5_act_mod_data_3,
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
  output [4:0]  io_mod_proc_mod_6_mat_mod_table_mod_table_width,
  output [4:0]  io_mod_proc_mod_6_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_6_act_mod_en_0,
  output        io_mod_proc_mod_6_act_mod_en_1,
  output        io_mod_proc_mod_6_act_mod_en_2,
  output        io_mod_proc_mod_6_act_mod_en_3,
  output [7:0]  io_mod_proc_mod_6_act_mod_addr,
  output [63:0] io_mod_proc_mod_6_act_mod_data_0,
  output [63:0] io_mod_proc_mod_6_act_mod_data_1,
  output [63:0] io_mod_proc_mod_6_act_mod_data_2,
  output [63:0] io_mod_proc_mod_6_act_mod_data_3,
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
  output [4:0]  io_mod_proc_mod_7_mat_mod_table_mod_table_width,
  output [4:0]  io_mod_proc_mod_7_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_7_act_mod_en_0,
  output        io_mod_proc_mod_7_act_mod_en_1,
  output        io_mod_proc_mod_7_act_mod_en_2,
  output        io_mod_proc_mod_7_act_mod_en_3,
  output [7:0]  io_mod_proc_mod_7_act_mod_addr,
  output [63:0] io_mod_proc_mod_7_act_mod_data_0,
  output [63:0] io_mod_proc_mod_7_act_mod_data_1,
  output [63:0] io_mod_proc_mod_7_act_mod_data_2,
  output [63:0] io_mod_proc_mod_7_act_mod_data_3,
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
  output [4:0]  io_mod_proc_mod_8_mat_mod_table_mod_table_width,
  output [4:0]  io_mod_proc_mod_8_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_8_act_mod_en_0,
  output        io_mod_proc_mod_8_act_mod_en_1,
  output        io_mod_proc_mod_8_act_mod_en_2,
  output        io_mod_proc_mod_8_act_mod_en_3,
  output [7:0]  io_mod_proc_mod_8_act_mod_addr,
  output [63:0] io_mod_proc_mod_8_act_mod_data_0,
  output [63:0] io_mod_proc_mod_8_act_mod_data_1,
  output [63:0] io_mod_proc_mod_8_act_mod_data_2,
  output [63:0] io_mod_proc_mod_8_act_mod_data_3,
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
  output [4:0]  io_mod_proc_mod_9_mat_mod_table_mod_table_width,
  output [4:0]  io_mod_proc_mod_9_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_9_act_mod_en_0,
  output        io_mod_proc_mod_9_act_mod_en_1,
  output        io_mod_proc_mod_9_act_mod_en_2,
  output        io_mod_proc_mod_9_act_mod_en_3,
  output [7:0]  io_mod_proc_mod_9_act_mod_addr,
  output [63:0] io_mod_proc_mod_9_act_mod_data_0,
  output [63:0] io_mod_proc_mod_9_act_mod_data_1,
  output [63:0] io_mod_proc_mod_9_act_mod_data_2,
  output [63:0] io_mod_proc_mod_9_act_mod_data_3,
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
  output [4:0]  io_mod_proc_mod_10_mat_mod_table_mod_table_width,
  output [4:0]  io_mod_proc_mod_10_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_10_act_mod_en_0,
  output        io_mod_proc_mod_10_act_mod_en_1,
  output        io_mod_proc_mod_10_act_mod_en_2,
  output        io_mod_proc_mod_10_act_mod_en_3,
  output [7:0]  io_mod_proc_mod_10_act_mod_addr,
  output [63:0] io_mod_proc_mod_10_act_mod_data_0,
  output [63:0] io_mod_proc_mod_10_act_mod_data_1,
  output [63:0] io_mod_proc_mod_10_act_mod_data_2,
  output [63:0] io_mod_proc_mod_10_act_mod_data_3,
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
  output [4:0]  io_mod_proc_mod_11_mat_mod_table_mod_table_width,
  output [4:0]  io_mod_proc_mod_11_mat_mod_table_mod_table_depth,
  output        io_mod_proc_mod_11_act_mod_en_0,
  output        io_mod_proc_mod_11_act_mod_en_1,
  output        io_mod_proc_mod_11_act_mod_en_2,
  output        io_mod_proc_mod_11_act_mod_en_3,
  output [7:0]  io_mod_proc_mod_11_act_mod_addr,
  output [63:0] io_mod_proc_mod_11_act_mod_data_0,
  output [63:0] io_mod_proc_mod_11_act_mod_data_1,
  output [63:0] io_mod_proc_mod_11_act_mod_data_2,
  output [63:0] io_mod_proc_mod_11_act_mod_data_3,
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
  output [3:0]  io_w_0_wcs,
  output        io_w_0_w_en,
  output [7:0]  io_w_0_w_addr,
  output [63:0] io_w_0_w_data,
  output [3:0]  io_w_1_wcs,
  output        io_w_1_w_en,
  output [7:0]  io_w_1_w_addr,
  output [63:0] io_w_1_w_data,
  output [3:0]  io_w_2_wcs,
  output        io_w_2_w_en,
  output [7:0]  io_w_2_w_addr,
  output [63:0] io_w_2_w_data,
  output [3:0]  io_w_3_wcs,
  output        io_w_3_w_en,
  output [7:0]  io_w_3_w_addr,
  output [63:0] io_w_3_w_data,
  output [3:0]  io_w_4_wcs,
  output        io_w_4_w_en,
  output [7:0]  io_w_4_w_addr,
  output [63:0] io_w_4_w_data,
  output [3:0]  io_w_5_wcs,
  output        io_w_5_w_en,
  output [7:0]  io_w_5_w_addr,
  output [63:0] io_w_5_w_data
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
`endif // RANDOMIZE_REG_INIT
  wire [3:0] type_field = io_pcie_w_en ? io_pcie_w_addr[19:16] : 4'h0; // @[pcie_interface.scala 80:29]
  wire [3:0] cluster_id_field = io_pcie_w_addr[15:12]; // @[pcie_interface.scala 81:35]
  wire [3:0] sram_id_field = io_pcie_w_addr[11:8]; // @[pcie_interface.scala 82:35]
  wire [3:0] config_field = io_pcie_w_addr[7:4]; // @[pcie_interface.scala 83:35]
  wire [3:0] bias_field = io_pcie_w_addr[3:0]; // @[pcie_interface.scala 84:35]
  wire [7:0] offset_field = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  wire  sram_resource_pool = type_field == 4'h1; // @[pcie_interface.scala 92:41]
  wire  _io_w_0_w_en_T = cluster_id_field == 4'h0; // @[pcie_interface.scala 97:48]
  wire  _io_w_1_w_en_T = cluster_id_field == 4'h1; // @[pcie_interface.scala 97:48]
  wire  _io_w_2_w_en_T = cluster_id_field == 4'h2; // @[pcie_interface.scala 97:48]
  wire  _io_w_3_w_en_T = cluster_id_field == 4'h3; // @[pcie_interface.scala 97:48]
  wire  _io_w_4_w_en_T = cluster_id_field == 4'h4; // @[pcie_interface.scala 97:48]
  wire  _io_w_5_w_en_T = cluster_id_field == 4'h5; // @[pcie_interface.scala 97:48]
  reg [1:0] last_mau_id; // @[pcie_interface.scala 102:26]
  reg [7:0] state_id; // @[pcie_interface.scala 103:26]
  reg [7:0] mat_key_header_id; // @[pcie_interface.scala 104:22]
  reg [7:0] mat_key_internal_offset; // @[pcie_interface.scala 104:22]
  reg [7:0] mat_key_key_length; // @[pcie_interface.scala 104:22]
  reg [4:0] mat_tab_table_width; // @[pcie_interface.scala 105:22]
  reg [4:0] mat_tab_table_depth; // @[pcie_interface.scala 105:22]
  wire  _T_1 = type_field == 4'h2; // @[pcie_interface.scala 139:30]
  wire  _T_3 = sram_id_field == 4'h1; // @[pcie_interface.scala 147:38]
  wire [63:0] _GEN_1 = sram_id_field == 4'h1 ? io_pcie_w_data : {{62'd0}, last_mau_id}; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33 pcie_interface.scala 102:26]
  wire  _T_4 = sram_id_field == 4'h2; // @[pcie_interface.scala 150:38]
  wire  _T_5 = bias_field == 4'h0; // @[pcie_interface.scala 151:38]
  wire [63:0] _GEN_2 = bias_field == 4'h0 ? io_pcie_w_data : {{56'd0}, state_id}; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37 pcie_interface.scala 103:26]
  wire  _T_6 = bias_field == 4'hf; // @[pcie_interface.scala 154:38]
  wire  _GEN_3 = bias_field == 4'hf | _T_1; // @[pcie_interface.scala 154:54 pcie_interface.scala 155:49]
  wire  _GEN_5 = bias_field == 4'hf & config_field != 4'hf; // @[pcie_interface.scala 154:54 pcie_interface.scala 157:57 pcie_interface.scala 117:41]
  wire [63:0] _GEN_6 = sram_id_field == 4'h2 ? _GEN_2 : {{56'd0}, state_id}; // @[pcie_interface.scala 150:52 pcie_interface.scala 103:26]
  wire  _GEN_7 = sram_id_field == 4'h2 ? _GEN_3 : _T_1; // @[pcie_interface.scala 150:52]
  wire  _GEN_8 = sram_id_field == 4'h2 & _T_6; // @[pcie_interface.scala 150:52 pcie_interface.scala 114:33]
  wire  _GEN_9 = sram_id_field == 4'h2 & _GEN_5; // @[pcie_interface.scala 150:52 pcie_interface.scala 117:41]
  wire  _T_7 = sram_id_field == 4'h3; // @[pcie_interface.scala 161:38]
  wire [63:0] _GEN_10 = _T_5 ? io_pcie_w_data : {{56'd0}, mat_key_header_id}; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43 pcie_interface.scala 104:22]
  wire  _T_9 = bias_field == 4'h1; // @[pcie_interface.scala 166:38]
  wire [63:0] _GEN_11 = bias_field == 4'h1 ? io_pcie_w_data : {{56'd0}, mat_key_internal_offset}; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49 pcie_interface.scala 104:22]
  wire [63:0] _GEN_12 = bias_field == 4'h2 ? io_pcie_w_data : {{56'd0}, mat_key_key_length}; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44 pcie_interface.scala 104:22]
  wire [3:0] _GEN_14 = sram_id_field == 4'h3 ? config_field : 4'h0; // @[pcie_interface.scala 161:52 pcie_interface.scala 162:39 pcie_interface.scala 126:27]
  wire [63:0] _GEN_15 = sram_id_field == 4'h3 ? _GEN_10 : {{56'd0}, mat_key_header_id}; // @[pcie_interface.scala 161:52 pcie_interface.scala 104:22]
  wire [63:0] _GEN_16 = sram_id_field == 4'h3 ? _GEN_11 : {{56'd0}, mat_key_internal_offset}; // @[pcie_interface.scala 161:52 pcie_interface.scala 104:22]
  wire [63:0] _GEN_17 = sram_id_field == 4'h3 ? _GEN_12 : {{56'd0}, mat_key_key_length}; // @[pcie_interface.scala 161:52 pcie_interface.scala 104:22]
  wire [63:0] _GEN_51 = _T_5 ? io_pcie_w_data : {{59'd0}, mat_tab_table_width}; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45 pcie_interface.scala 105:22]
  wire [63:0] _GEN_52 = _T_9 ? io_pcie_w_data : {{59'd0}, mat_tab_table_depth}; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45 pcie_interface.scala 105:22]
  wire [63:0] _GEN_54 = sram_id_field == 4'h5 ? _GEN_51 : {{59'd0}, mat_tab_table_width}; // @[pcie_interface.scala 179:52 pcie_interface.scala 105:22]
  wire [63:0] _GEN_55 = sram_id_field == 4'h5 ? _GEN_52 : {{59'd0}, mat_tab_table_depth}; // @[pcie_interface.scala 179:52 pcie_interface.scala 105:22]
  wire  _GEN_56 = sram_id_field == 4'h5 & _T_6; // @[pcie_interface.scala 179:52 pcie_interface.scala 125:27]
  wire [3:0] _GEN_57 = type_field == 4'h3 ? config_field : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 144:44 pcie_interface.scala 146:28 pcie_interface.scala 116:33]
  wire [63:0] _GEN_58 = type_field == 4'h3 ? _GEN_1 : {{62'd0}, last_mau_id}; // @[pcie_interface.scala 144:44 pcie_interface.scala 102:26]
  wire [63:0] _GEN_59 = type_field == 4'h3 ? _GEN_6 : {{56'd0}, state_id}; // @[pcie_interface.scala 144:44 pcie_interface.scala 103:26]
  wire  _GEN_60 = type_field == 4'h3 ? _GEN_7 : _T_1; // @[pcie_interface.scala 144:44]
  wire  _GEN_61 = type_field == 4'h3 & _GEN_8; // @[pcie_interface.scala 144:44 pcie_interface.scala 114:33]
  wire  _GEN_62 = type_field == 4'h3 & _GEN_9; // @[pcie_interface.scala 144:44 pcie_interface.scala 117:41]
  wire [3:0] _GEN_63 = type_field == 4'h3 ? _GEN_14 : 4'h0; // @[pcie_interface.scala 144:44 pcie_interface.scala 126:27]
  wire [63:0] _GEN_64 = type_field == 4'h3 ? _GEN_15 : {{56'd0}, mat_key_header_id}; // @[pcie_interface.scala 144:44 pcie_interface.scala 104:22]
  wire [63:0] _GEN_65 = type_field == 4'h3 ? _GEN_16 : {{56'd0}, mat_key_internal_offset}; // @[pcie_interface.scala 144:44 pcie_interface.scala 104:22]
  wire [63:0] _GEN_66 = type_field == 4'h3 ? _GEN_17 : {{56'd0}, mat_key_key_length}; // @[pcie_interface.scala 144:44 pcie_interface.scala 104:22]
  wire [63:0] _GEN_84 = type_field == 4'h3 ? _GEN_54 : {{59'd0}, mat_tab_table_width}; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire [63:0] _GEN_85 = type_field == 4'h3 ? _GEN_55 : {{59'd0}, mat_tab_table_depth}; // @[pcie_interface.scala 144:44 pcie_interface.scala 105:22]
  wire  _GEN_86 = type_field == 4'h3 & _GEN_56; // @[pcie_interface.scala 144:44 pcie_interface.scala 125:27]
  wire  _T_19 = sram_id_field == 4'h0; // @[pcie_interface.scala 195:41]
  wire [63:0] _GEN_88 = sram_id_field == 4'h0 ? io_pcie_w_data : 64'h0; // @[pcie_interface.scala 195:55 pcie_interface.scala 197:41 pcie_interface.scala 134:29]
  wire [63:0] _GEN_90 = _T_3 ? io_pcie_w_data : 64'h0; // @[pcie_interface.scala 195:55 pcie_interface.scala 197:41 pcie_interface.scala 134:29]
  wire [63:0] _GEN_92 = _T_4 ? io_pcie_w_data : 64'h0; // @[pcie_interface.scala 195:55 pcie_interface.scala 197:41 pcie_interface.scala 134:29]
  wire [63:0] _GEN_94 = _T_7 ? io_pcie_w_data : 64'h0; // @[pcie_interface.scala 195:55 pcie_interface.scala 197:41 pcie_interface.scala 134:29]
  wire [7:0] _GEN_95 = type_field == 4'h4 ? offset_field : 8'h0; // @[pcie_interface.scala 192:44 pcie_interface.scala 193:30 pcie_interface.scala 133:29]
  wire  _GEN_96 = type_field == 4'h4 & _T_19; // @[pcie_interface.scala 192:44 pcie_interface.scala 132:29]
  wire [63:0] _GEN_97 = type_field == 4'h4 ? _GEN_88 : 64'h0; // @[pcie_interface.scala 192:44 pcie_interface.scala 134:29]
  wire  _GEN_98 = type_field == 4'h4 & _T_3; // @[pcie_interface.scala 192:44 pcie_interface.scala 132:29]
  wire [63:0] _GEN_99 = type_field == 4'h4 ? _GEN_90 : 64'h0; // @[pcie_interface.scala 192:44 pcie_interface.scala 134:29]
  wire  _GEN_100 = type_field == 4'h4 & _T_4; // @[pcie_interface.scala 192:44 pcie_interface.scala 132:29]
  wire [63:0] _GEN_101 = type_field == 4'h4 ? _GEN_92 : 64'h0; // @[pcie_interface.scala 192:44 pcie_interface.scala 134:29]
  wire  _GEN_102 = type_field == 4'h4 & _T_7; // @[pcie_interface.scala 192:44 pcie_interface.scala 132:29]
  wire [63:0] _GEN_103 = type_field == 4'h4 ? _GEN_94 : 64'h0; // @[pcie_interface.scala 192:44 pcie_interface.scala 134:29]
  wire [3:0] _GEN_106 = _io_w_0_w_en_T ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_107 = _io_w_0_w_en_T ? _GEN_58 : {{62'd0}, last_mau_id}; // @[pcie_interface.scala 137:43 pcie_interface.scala 102:26]
  wire [63:0] _GEN_108 = _io_w_0_w_en_T ? _GEN_59 : {{56'd0}, state_id}; // @[pcie_interface.scala 137:43 pcie_interface.scala 103:26]
  wire [3:0] _GEN_111 = _io_w_0_w_en_T ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_112 = _io_w_0_w_en_T ? _GEN_64 : {{56'd0}, mat_key_header_id}; // @[pcie_interface.scala 137:43 pcie_interface.scala 104:22]
  wire [63:0] _GEN_113 = _io_w_0_w_en_T ? _GEN_65 : {{56'd0}, mat_key_internal_offset}; // @[pcie_interface.scala 137:43 pcie_interface.scala 104:22]
  wire [63:0] _GEN_114 = _io_w_0_w_en_T ? _GEN_66 : {{56'd0}, mat_key_key_length}; // @[pcie_interface.scala 137:43 pcie_interface.scala 104:22]
  wire [63:0] _GEN_132 = _io_w_0_w_en_T ? _GEN_84 : {{59'd0}, mat_tab_table_width}; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [63:0] _GEN_133 = _io_w_0_w_en_T ? _GEN_85 : {{59'd0}, mat_tab_table_depth}; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [63:0] _GEN_145 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_107; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_146 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_108; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_150 = sram_id_field == 4'h2 ? _GEN_146 : _GEN_108; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_154 = _T_5 ? io_pcie_w_data : _GEN_112; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_155 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_113; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_156 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_114; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_159 = sram_id_field == 4'h3 ? _GEN_154 : _GEN_112; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_160 = sram_id_field == 4'h3 ? _GEN_155 : _GEN_113; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_161 = sram_id_field == 4'h3 ? _GEN_156 : _GEN_114; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_195 = _T_5 ? io_pcie_w_data : _GEN_132; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_196 = _T_9 ? io_pcie_w_data : _GEN_133; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_198 = sram_id_field == 4'h5 ? _GEN_195 : _GEN_132; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_199 = sram_id_field == 4'h5 ? _GEN_196 : _GEN_133; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_202 = type_field == 4'h3 ? _GEN_145 : _GEN_107; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_203 = type_field == 4'h3 ? _GEN_150 : _GEN_108; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_208 = type_field == 4'h3 ? _GEN_159 : _GEN_112; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_209 = type_field == 4'h3 ? _GEN_160 : _GEN_113; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_210 = type_field == 4'h3 ? _GEN_161 : _GEN_114; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_228 = type_field == 4'h3 ? _GEN_198 : _GEN_132; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_229 = type_field == 4'h3 ? _GEN_199 : _GEN_133; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_250 = _io_w_1_w_en_T ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_251 = _io_w_1_w_en_T ? _GEN_202 : _GEN_107; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_252 = _io_w_1_w_en_T ? _GEN_203 : _GEN_108; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_255 = _io_w_1_w_en_T ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_256 = _io_w_1_w_en_T ? _GEN_208 : _GEN_112; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_257 = _io_w_1_w_en_T ? _GEN_209 : _GEN_113; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_258 = _io_w_1_w_en_T ? _GEN_210 : _GEN_114; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_276 = _io_w_1_w_en_T ? _GEN_228 : _GEN_132; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_277 = _io_w_1_w_en_T ? _GEN_229 : _GEN_133; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_289 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_251; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_290 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_252; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_294 = sram_id_field == 4'h2 ? _GEN_290 : _GEN_252; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_298 = _T_5 ? io_pcie_w_data : _GEN_256; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_299 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_257; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_300 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_258; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_303 = sram_id_field == 4'h3 ? _GEN_298 : _GEN_256; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_304 = sram_id_field == 4'h3 ? _GEN_299 : _GEN_257; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_305 = sram_id_field == 4'h3 ? _GEN_300 : _GEN_258; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_339 = _T_5 ? io_pcie_w_data : _GEN_276; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_340 = _T_9 ? io_pcie_w_data : _GEN_277; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_342 = sram_id_field == 4'h5 ? _GEN_339 : _GEN_276; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_343 = sram_id_field == 4'h5 ? _GEN_340 : _GEN_277; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_346 = type_field == 4'h3 ? _GEN_289 : _GEN_251; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_347 = type_field == 4'h3 ? _GEN_294 : _GEN_252; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_352 = type_field == 4'h3 ? _GEN_303 : _GEN_256; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_353 = type_field == 4'h3 ? _GEN_304 : _GEN_257; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_354 = type_field == 4'h3 ? _GEN_305 : _GEN_258; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_372 = type_field == 4'h3 ? _GEN_342 : _GEN_276; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_373 = type_field == 4'h3 ? _GEN_343 : _GEN_277; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_394 = _io_w_2_w_en_T ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_395 = _io_w_2_w_en_T ? _GEN_346 : _GEN_251; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_396 = _io_w_2_w_en_T ? _GEN_347 : _GEN_252; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_399 = _io_w_2_w_en_T ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_400 = _io_w_2_w_en_T ? _GEN_352 : _GEN_256; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_401 = _io_w_2_w_en_T ? _GEN_353 : _GEN_257; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_402 = _io_w_2_w_en_T ? _GEN_354 : _GEN_258; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_420 = _io_w_2_w_en_T ? _GEN_372 : _GEN_276; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_421 = _io_w_2_w_en_T ? _GEN_373 : _GEN_277; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_433 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_395; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_434 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_396; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_438 = sram_id_field == 4'h2 ? _GEN_434 : _GEN_396; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_442 = _T_5 ? io_pcie_w_data : _GEN_400; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_443 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_401; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_444 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_402; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_447 = sram_id_field == 4'h3 ? _GEN_442 : _GEN_400; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_448 = sram_id_field == 4'h3 ? _GEN_443 : _GEN_401; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_449 = sram_id_field == 4'h3 ? _GEN_444 : _GEN_402; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_483 = _T_5 ? io_pcie_w_data : _GEN_420; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_484 = _T_9 ? io_pcie_w_data : _GEN_421; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_486 = sram_id_field == 4'h5 ? _GEN_483 : _GEN_420; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_487 = sram_id_field == 4'h5 ? _GEN_484 : _GEN_421; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_490 = type_field == 4'h3 ? _GEN_433 : _GEN_395; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_491 = type_field == 4'h3 ? _GEN_438 : _GEN_396; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_496 = type_field == 4'h3 ? _GEN_447 : _GEN_400; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_497 = type_field == 4'h3 ? _GEN_448 : _GEN_401; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_498 = type_field == 4'h3 ? _GEN_449 : _GEN_402; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_516 = type_field == 4'h3 ? _GEN_486 : _GEN_420; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_517 = type_field == 4'h3 ? _GEN_487 : _GEN_421; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_538 = _io_w_3_w_en_T ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_539 = _io_w_3_w_en_T ? _GEN_490 : _GEN_395; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_540 = _io_w_3_w_en_T ? _GEN_491 : _GEN_396; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_543 = _io_w_3_w_en_T ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_544 = _io_w_3_w_en_T ? _GEN_496 : _GEN_400; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_545 = _io_w_3_w_en_T ? _GEN_497 : _GEN_401; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_546 = _io_w_3_w_en_T ? _GEN_498 : _GEN_402; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_564 = _io_w_3_w_en_T ? _GEN_516 : _GEN_420; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_565 = _io_w_3_w_en_T ? _GEN_517 : _GEN_421; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_577 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_539; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_578 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_540; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_582 = sram_id_field == 4'h2 ? _GEN_578 : _GEN_540; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_586 = _T_5 ? io_pcie_w_data : _GEN_544; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_587 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_545; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_588 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_546; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_591 = sram_id_field == 4'h3 ? _GEN_586 : _GEN_544; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_592 = sram_id_field == 4'h3 ? _GEN_587 : _GEN_545; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_593 = sram_id_field == 4'h3 ? _GEN_588 : _GEN_546; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_627 = _T_5 ? io_pcie_w_data : _GEN_564; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_628 = _T_9 ? io_pcie_w_data : _GEN_565; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_630 = sram_id_field == 4'h5 ? _GEN_627 : _GEN_564; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_631 = sram_id_field == 4'h5 ? _GEN_628 : _GEN_565; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_634 = type_field == 4'h3 ? _GEN_577 : _GEN_539; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_635 = type_field == 4'h3 ? _GEN_582 : _GEN_540; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_640 = type_field == 4'h3 ? _GEN_591 : _GEN_544; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_641 = type_field == 4'h3 ? _GEN_592 : _GEN_545; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_642 = type_field == 4'h3 ? _GEN_593 : _GEN_546; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_660 = type_field == 4'h3 ? _GEN_630 : _GEN_564; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_661 = type_field == 4'h3 ? _GEN_631 : _GEN_565; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_682 = _io_w_4_w_en_T ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_683 = _io_w_4_w_en_T ? _GEN_634 : _GEN_539; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_684 = _io_w_4_w_en_T ? _GEN_635 : _GEN_540; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_687 = _io_w_4_w_en_T ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_688 = _io_w_4_w_en_T ? _GEN_640 : _GEN_544; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_689 = _io_w_4_w_en_T ? _GEN_641 : _GEN_545; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_690 = _io_w_4_w_en_T ? _GEN_642 : _GEN_546; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_708 = _io_w_4_w_en_T ? _GEN_660 : _GEN_564; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_709 = _io_w_4_w_en_T ? _GEN_661 : _GEN_565; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_721 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_683; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_722 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_684; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_726 = sram_id_field == 4'h2 ? _GEN_722 : _GEN_684; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_730 = _T_5 ? io_pcie_w_data : _GEN_688; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_731 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_689; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_732 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_690; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_735 = sram_id_field == 4'h3 ? _GEN_730 : _GEN_688; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_736 = sram_id_field == 4'h3 ? _GEN_731 : _GEN_689; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_737 = sram_id_field == 4'h3 ? _GEN_732 : _GEN_690; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_771 = _T_5 ? io_pcie_w_data : _GEN_708; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_772 = _T_9 ? io_pcie_w_data : _GEN_709; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_774 = sram_id_field == 4'h5 ? _GEN_771 : _GEN_708; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_775 = sram_id_field == 4'h5 ? _GEN_772 : _GEN_709; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_778 = type_field == 4'h3 ? _GEN_721 : _GEN_683; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_779 = type_field == 4'h3 ? _GEN_726 : _GEN_684; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_784 = type_field == 4'h3 ? _GEN_735 : _GEN_688; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_785 = type_field == 4'h3 ? _GEN_736 : _GEN_689; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_786 = type_field == 4'h3 ? _GEN_737 : _GEN_690; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_804 = type_field == 4'h3 ? _GEN_774 : _GEN_708; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_805 = type_field == 4'h3 ? _GEN_775 : _GEN_709; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_826 = _io_w_5_w_en_T ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_827 = _io_w_5_w_en_T ? _GEN_778 : _GEN_683; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_828 = _io_w_5_w_en_T ? _GEN_779 : _GEN_684; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_831 = _io_w_5_w_en_T ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_832 = _io_w_5_w_en_T ? _GEN_784 : _GEN_688; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_833 = _io_w_5_w_en_T ? _GEN_785 : _GEN_689; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_834 = _io_w_5_w_en_T ? _GEN_786 : _GEN_690; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_852 = _io_w_5_w_en_T ? _GEN_804 : _GEN_708; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_853 = _io_w_5_w_en_T ? _GEN_805 : _GEN_709; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_865 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_827; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_866 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_828; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_870 = sram_id_field == 4'h2 ? _GEN_866 : _GEN_828; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_874 = _T_5 ? io_pcie_w_data : _GEN_832; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_875 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_833; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_876 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_834; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_879 = sram_id_field == 4'h3 ? _GEN_874 : _GEN_832; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_880 = sram_id_field == 4'h3 ? _GEN_875 : _GEN_833; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_881 = sram_id_field == 4'h3 ? _GEN_876 : _GEN_834; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_915 = _T_5 ? io_pcie_w_data : _GEN_852; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_916 = _T_9 ? io_pcie_w_data : _GEN_853; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_918 = sram_id_field == 4'h5 ? _GEN_915 : _GEN_852; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_919 = sram_id_field == 4'h5 ? _GEN_916 : _GEN_853; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_922 = type_field == 4'h3 ? _GEN_865 : _GEN_827; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_923 = type_field == 4'h3 ? _GEN_870 : _GEN_828; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_928 = type_field == 4'h3 ? _GEN_879 : _GEN_832; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_929 = type_field == 4'h3 ? _GEN_880 : _GEN_833; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_930 = type_field == 4'h3 ? _GEN_881 : _GEN_834; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_948 = type_field == 4'h3 ? _GEN_918 : _GEN_852; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_949 = type_field == 4'h3 ? _GEN_919 : _GEN_853; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_970 = cluster_id_field == 4'h6 ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_971 = cluster_id_field == 4'h6 ? _GEN_922 : _GEN_827; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_972 = cluster_id_field == 4'h6 ? _GEN_923 : _GEN_828; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_975 = cluster_id_field == 4'h6 ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_976 = cluster_id_field == 4'h6 ? _GEN_928 : _GEN_832; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_977 = cluster_id_field == 4'h6 ? _GEN_929 : _GEN_833; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_978 = cluster_id_field == 4'h6 ? _GEN_930 : _GEN_834; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_996 = cluster_id_field == 4'h6 ? _GEN_948 : _GEN_852; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_997 = cluster_id_field == 4'h6 ? _GEN_949 : _GEN_853; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1009 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_971; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_1010 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_972; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_1014 = sram_id_field == 4'h2 ? _GEN_1010 : _GEN_972; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_1018 = _T_5 ? io_pcie_w_data : _GEN_976; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_1019 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_977; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_1020 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_978; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_1023 = sram_id_field == 4'h3 ? _GEN_1018 : _GEN_976; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1024 = sram_id_field == 4'h3 ? _GEN_1019 : _GEN_977; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1025 = sram_id_field == 4'h3 ? _GEN_1020 : _GEN_978; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1059 = _T_5 ? io_pcie_w_data : _GEN_996; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_1060 = _T_9 ? io_pcie_w_data : _GEN_997; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_1062 = sram_id_field == 4'h5 ? _GEN_1059 : _GEN_996; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1063 = sram_id_field == 4'h5 ? _GEN_1060 : _GEN_997; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1066 = type_field == 4'h3 ? _GEN_1009 : _GEN_971; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1067 = type_field == 4'h3 ? _GEN_1014 : _GEN_972; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1072 = type_field == 4'h3 ? _GEN_1023 : _GEN_976; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1073 = type_field == 4'h3 ? _GEN_1024 : _GEN_977; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1074 = type_field == 4'h3 ? _GEN_1025 : _GEN_978; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1092 = type_field == 4'h3 ? _GEN_1062 : _GEN_996; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1093 = type_field == 4'h3 ? _GEN_1063 : _GEN_997; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_1114 = cluster_id_field == 4'h7 ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_1115 = cluster_id_field == 4'h7 ? _GEN_1066 : _GEN_971; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1116 = cluster_id_field == 4'h7 ? _GEN_1067 : _GEN_972; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_1119 = cluster_id_field == 4'h7 ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_1120 = cluster_id_field == 4'h7 ? _GEN_1072 : _GEN_976; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1121 = cluster_id_field == 4'h7 ? _GEN_1073 : _GEN_977; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1122 = cluster_id_field == 4'h7 ? _GEN_1074 : _GEN_978; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1140 = cluster_id_field == 4'h7 ? _GEN_1092 : _GEN_996; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1141 = cluster_id_field == 4'h7 ? _GEN_1093 : _GEN_997; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1153 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_1115; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_1154 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_1116; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_1158 = sram_id_field == 4'h2 ? _GEN_1154 : _GEN_1116; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_1162 = _T_5 ? io_pcie_w_data : _GEN_1120; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_1163 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_1121; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_1164 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_1122; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_1167 = sram_id_field == 4'h3 ? _GEN_1162 : _GEN_1120; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1168 = sram_id_field == 4'h3 ? _GEN_1163 : _GEN_1121; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1169 = sram_id_field == 4'h3 ? _GEN_1164 : _GEN_1122; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1203 = _T_5 ? io_pcie_w_data : _GEN_1140; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_1204 = _T_9 ? io_pcie_w_data : _GEN_1141; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_1206 = sram_id_field == 4'h5 ? _GEN_1203 : _GEN_1140; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1207 = sram_id_field == 4'h5 ? _GEN_1204 : _GEN_1141; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1210 = type_field == 4'h3 ? _GEN_1153 : _GEN_1115; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1211 = type_field == 4'h3 ? _GEN_1158 : _GEN_1116; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1216 = type_field == 4'h3 ? _GEN_1167 : _GEN_1120; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1217 = type_field == 4'h3 ? _GEN_1168 : _GEN_1121; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1218 = type_field == 4'h3 ? _GEN_1169 : _GEN_1122; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1236 = type_field == 4'h3 ? _GEN_1206 : _GEN_1140; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1237 = type_field == 4'h3 ? _GEN_1207 : _GEN_1141; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_1258 = cluster_id_field == 4'h8 ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_1259 = cluster_id_field == 4'h8 ? _GEN_1210 : _GEN_1115; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1260 = cluster_id_field == 4'h8 ? _GEN_1211 : _GEN_1116; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_1263 = cluster_id_field == 4'h8 ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_1264 = cluster_id_field == 4'h8 ? _GEN_1216 : _GEN_1120; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1265 = cluster_id_field == 4'h8 ? _GEN_1217 : _GEN_1121; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1266 = cluster_id_field == 4'h8 ? _GEN_1218 : _GEN_1122; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1284 = cluster_id_field == 4'h8 ? _GEN_1236 : _GEN_1140; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1285 = cluster_id_field == 4'h8 ? _GEN_1237 : _GEN_1141; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1297 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_1259; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_1298 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_1260; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_1302 = sram_id_field == 4'h2 ? _GEN_1298 : _GEN_1260; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_1306 = _T_5 ? io_pcie_w_data : _GEN_1264; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_1307 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_1265; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_1308 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_1266; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_1311 = sram_id_field == 4'h3 ? _GEN_1306 : _GEN_1264; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1312 = sram_id_field == 4'h3 ? _GEN_1307 : _GEN_1265; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1313 = sram_id_field == 4'h3 ? _GEN_1308 : _GEN_1266; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1347 = _T_5 ? io_pcie_w_data : _GEN_1284; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_1348 = _T_9 ? io_pcie_w_data : _GEN_1285; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_1350 = sram_id_field == 4'h5 ? _GEN_1347 : _GEN_1284; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1351 = sram_id_field == 4'h5 ? _GEN_1348 : _GEN_1285; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1354 = type_field == 4'h3 ? _GEN_1297 : _GEN_1259; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1355 = type_field == 4'h3 ? _GEN_1302 : _GEN_1260; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1360 = type_field == 4'h3 ? _GEN_1311 : _GEN_1264; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1361 = type_field == 4'h3 ? _GEN_1312 : _GEN_1265; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1362 = type_field == 4'h3 ? _GEN_1313 : _GEN_1266; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1380 = type_field == 4'h3 ? _GEN_1350 : _GEN_1284; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1381 = type_field == 4'h3 ? _GEN_1351 : _GEN_1285; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_1402 = cluster_id_field == 4'h9 ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_1403 = cluster_id_field == 4'h9 ? _GEN_1354 : _GEN_1259; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1404 = cluster_id_field == 4'h9 ? _GEN_1355 : _GEN_1260; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_1407 = cluster_id_field == 4'h9 ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_1408 = cluster_id_field == 4'h9 ? _GEN_1360 : _GEN_1264; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1409 = cluster_id_field == 4'h9 ? _GEN_1361 : _GEN_1265; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1410 = cluster_id_field == 4'h9 ? _GEN_1362 : _GEN_1266; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1428 = cluster_id_field == 4'h9 ? _GEN_1380 : _GEN_1284; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1429 = cluster_id_field == 4'h9 ? _GEN_1381 : _GEN_1285; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1441 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_1403; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_1442 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_1404; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_1446 = sram_id_field == 4'h2 ? _GEN_1442 : _GEN_1404; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_1450 = _T_5 ? io_pcie_w_data : _GEN_1408; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_1451 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_1409; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_1452 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_1410; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_1455 = sram_id_field == 4'h3 ? _GEN_1450 : _GEN_1408; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1456 = sram_id_field == 4'h3 ? _GEN_1451 : _GEN_1409; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1457 = sram_id_field == 4'h3 ? _GEN_1452 : _GEN_1410; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1491 = _T_5 ? io_pcie_w_data : _GEN_1428; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_1492 = _T_9 ? io_pcie_w_data : _GEN_1429; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_1494 = sram_id_field == 4'h5 ? _GEN_1491 : _GEN_1428; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1495 = sram_id_field == 4'h5 ? _GEN_1492 : _GEN_1429; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1498 = type_field == 4'h3 ? _GEN_1441 : _GEN_1403; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1499 = type_field == 4'h3 ? _GEN_1446 : _GEN_1404; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1504 = type_field == 4'h3 ? _GEN_1455 : _GEN_1408; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1505 = type_field == 4'h3 ? _GEN_1456 : _GEN_1409; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1506 = type_field == 4'h3 ? _GEN_1457 : _GEN_1410; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1524 = type_field == 4'h3 ? _GEN_1494 : _GEN_1428; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1525 = type_field == 4'h3 ? _GEN_1495 : _GEN_1429; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_1546 = cluster_id_field == 4'ha ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_1547 = cluster_id_field == 4'ha ? _GEN_1498 : _GEN_1403; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1548 = cluster_id_field == 4'ha ? _GEN_1499 : _GEN_1404; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_1551 = cluster_id_field == 4'ha ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_1552 = cluster_id_field == 4'ha ? _GEN_1504 : _GEN_1408; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1553 = cluster_id_field == 4'ha ? _GEN_1505 : _GEN_1409; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1554 = cluster_id_field == 4'ha ? _GEN_1506 : _GEN_1410; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1572 = cluster_id_field == 4'ha ? _GEN_1524 : _GEN_1428; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1573 = cluster_id_field == 4'ha ? _GEN_1525 : _GEN_1429; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1585 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_1547; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_1586 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_1548; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_1590 = sram_id_field == 4'h2 ? _GEN_1586 : _GEN_1548; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_1594 = _T_5 ? io_pcie_w_data : _GEN_1552; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_1595 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_1553; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_1596 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_1554; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_1599 = sram_id_field == 4'h3 ? _GEN_1594 : _GEN_1552; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1600 = sram_id_field == 4'h3 ? _GEN_1595 : _GEN_1553; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1601 = sram_id_field == 4'h3 ? _GEN_1596 : _GEN_1554; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1635 = _T_5 ? io_pcie_w_data : _GEN_1572; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_1636 = _T_9 ? io_pcie_w_data : _GEN_1573; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_1638 = sram_id_field == 4'h5 ? _GEN_1635 : _GEN_1572; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1639 = sram_id_field == 4'h5 ? _GEN_1636 : _GEN_1573; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1642 = type_field == 4'h3 ? _GEN_1585 : _GEN_1547; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1643 = type_field == 4'h3 ? _GEN_1590 : _GEN_1548; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1648 = type_field == 4'h3 ? _GEN_1599 : _GEN_1552; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1649 = type_field == 4'h3 ? _GEN_1600 : _GEN_1553; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1650 = type_field == 4'h3 ? _GEN_1601 : _GEN_1554; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1668 = type_field == 4'h3 ? _GEN_1638 : _GEN_1572; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1669 = type_field == 4'h3 ? _GEN_1639 : _GEN_1573; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_1690 = cluster_id_field == 4'hb ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_1691 = cluster_id_field == 4'hb ? _GEN_1642 : _GEN_1547; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1692 = cluster_id_field == 4'hb ? _GEN_1643 : _GEN_1548; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_1695 = cluster_id_field == 4'hb ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_1696 = cluster_id_field == 4'hb ? _GEN_1648 : _GEN_1552; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1697 = cluster_id_field == 4'hb ? _GEN_1649 : _GEN_1553; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1698 = cluster_id_field == 4'hb ? _GEN_1650 : _GEN_1554; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1716 = cluster_id_field == 4'hb ? _GEN_1668 : _GEN_1572; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1717 = cluster_id_field == 4'hb ? _GEN_1669 : _GEN_1573; // @[pcie_interface.scala 137:43]
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
  wire [63:0] _GEN_1728 = offset_field == 8'h0 ? io_pcie_w_data : {{60'd0}, first_proc_id}; // @[pcie_interface.scala 210:42 pcie_interface.scala 211:27 pcie_interface.scala 205:28]
  wire [63:0] _GEN_1729 = offset_field == 8'h1 ? io_pcie_w_data : {{60'd0}, last_proc_id}; // @[pcie_interface.scala 213:42 pcie_interface.scala 214:27 pcie_interface.scala 206:28]
  wire [63:0] _GEN_1730 = type_field == 4'h8 ? _GEN_1728 : {{60'd0}, first_proc_id}; // @[pcie_interface.scala 209:36 pcie_interface.scala 205:28]
  wire [63:0] _GEN_1731 = type_field == 4'h8 ? _GEN_1729 : {{60'd0}, last_proc_id}; // @[pcie_interface.scala 209:36 pcie_interface.scala 206:28]
  assign io_pcie_r_data = io_pcie_o_r_data; // @[pcie_interface.scala 75:22]
  assign io_pcie_o_cs = io_pcie_r_addr[12:8]; // @[pcie_interface.scala 72:39]
  assign io_pcie_o_r_en = io_pcie_r_en; // @[pcie_interface.scala 73:22]
  assign io_pcie_o_r_addr = io_pcie_r_addr[7:0]; // @[pcie_interface.scala 74:39]
  assign io_mod_proc_mod_0_par_mod_en = _io_w_0_w_en_T & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_0_par_mod_last_mau_id_mod = _io_w_0_w_en_T & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_0_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_0_par_mod_cs = _GEN_106[1:0];
  assign io_mod_proc_mod_0_par_mod_module_mod_state_id_mod = _io_w_0_w_en_T & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_0_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_0_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_0_par_mod_module_mod_sram_w_en = _io_w_0_w_en_T & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_0_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_0_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_0_mat_mod_en = _io_w_0_w_en_T & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_0_mat_mod_config_id = _GEN_111[0];
  assign io_mod_proc_mod_0_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_0_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_0_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_act_mod_en_0 = _io_w_0_w_en_T & _GEN_96; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_0_act_mod_en_1 = _io_w_0_w_en_T & _GEN_98; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_0_act_mod_en_2 = _io_w_0_w_en_T & _GEN_100; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_0_act_mod_en_3 = _io_w_0_w_en_T & _GEN_102; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_0_act_mod_addr = _io_w_0_w_en_T ? _GEN_95 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_0_act_mod_data_0 = _io_w_0_w_en_T ? _GEN_97 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_0_act_mod_data_1 = _io_w_0_w_en_T ? _GEN_99 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_0_act_mod_data_2 = _io_w_0_w_en_T ? _GEN_101 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_0_act_mod_data_3 = _io_w_0_w_en_T ? _GEN_103 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_1_par_mod_en = _io_w_1_w_en_T & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_1_par_mod_last_mau_id_mod = _io_w_1_w_en_T & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_1_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_1_par_mod_cs = _GEN_250[1:0];
  assign io_mod_proc_mod_1_par_mod_module_mod_state_id_mod = _io_w_1_w_en_T & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_1_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_1_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_1_par_mod_module_mod_sram_w_en = _io_w_1_w_en_T & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_1_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_1_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_1_mat_mod_en = _io_w_1_w_en_T & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_1_mat_mod_config_id = _GEN_255[0];
  assign io_mod_proc_mod_1_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_1_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_1_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_act_mod_en_0 = _io_w_1_w_en_T & _GEN_96; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_1_act_mod_en_1 = _io_w_1_w_en_T & _GEN_98; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_1_act_mod_en_2 = _io_w_1_w_en_T & _GEN_100; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_1_act_mod_en_3 = _io_w_1_w_en_T & _GEN_102; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_1_act_mod_addr = _io_w_1_w_en_T ? _GEN_95 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_1_act_mod_data_0 = _io_w_1_w_en_T ? _GEN_97 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_1_act_mod_data_1 = _io_w_1_w_en_T ? _GEN_99 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_1_act_mod_data_2 = _io_w_1_w_en_T ? _GEN_101 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_1_act_mod_data_3 = _io_w_1_w_en_T ? _GEN_103 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_2_par_mod_en = _io_w_2_w_en_T & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_2_par_mod_last_mau_id_mod = _io_w_2_w_en_T & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_2_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_2_par_mod_cs = _GEN_394[1:0];
  assign io_mod_proc_mod_2_par_mod_module_mod_state_id_mod = _io_w_2_w_en_T & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_2_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_2_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_2_par_mod_module_mod_sram_w_en = _io_w_2_w_en_T & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_2_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_2_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_2_mat_mod_en = _io_w_2_w_en_T & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_2_mat_mod_config_id = _GEN_399[0];
  assign io_mod_proc_mod_2_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_2_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_2_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_act_mod_en_0 = _io_w_2_w_en_T & _GEN_96; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_2_act_mod_en_1 = _io_w_2_w_en_T & _GEN_98; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_2_act_mod_en_2 = _io_w_2_w_en_T & _GEN_100; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_2_act_mod_en_3 = _io_w_2_w_en_T & _GEN_102; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_2_act_mod_addr = _io_w_2_w_en_T ? _GEN_95 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_2_act_mod_data_0 = _io_w_2_w_en_T ? _GEN_97 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_2_act_mod_data_1 = _io_w_2_w_en_T ? _GEN_99 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_2_act_mod_data_2 = _io_w_2_w_en_T ? _GEN_101 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_2_act_mod_data_3 = _io_w_2_w_en_T ? _GEN_103 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_3_par_mod_en = _io_w_3_w_en_T & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_3_par_mod_last_mau_id_mod = _io_w_3_w_en_T & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_3_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_3_par_mod_cs = _GEN_538[1:0];
  assign io_mod_proc_mod_3_par_mod_module_mod_state_id_mod = _io_w_3_w_en_T & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_3_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_3_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_3_par_mod_module_mod_sram_w_en = _io_w_3_w_en_T & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_3_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_3_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_3_mat_mod_en = _io_w_3_w_en_T & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_3_mat_mod_config_id = _GEN_543[0];
  assign io_mod_proc_mod_3_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_3_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_3_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_act_mod_en_0 = _io_w_3_w_en_T & _GEN_96; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_3_act_mod_en_1 = _io_w_3_w_en_T & _GEN_98; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_3_act_mod_en_2 = _io_w_3_w_en_T & _GEN_100; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_3_act_mod_en_3 = _io_w_3_w_en_T & _GEN_102; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_3_act_mod_addr = _io_w_3_w_en_T ? _GEN_95 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_3_act_mod_data_0 = _io_w_3_w_en_T ? _GEN_97 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_3_act_mod_data_1 = _io_w_3_w_en_T ? _GEN_99 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_3_act_mod_data_2 = _io_w_3_w_en_T ? _GEN_101 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_3_act_mod_data_3 = _io_w_3_w_en_T ? _GEN_103 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_4_par_mod_en = _io_w_4_w_en_T & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_4_par_mod_last_mau_id_mod = _io_w_4_w_en_T & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_4_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_4_par_mod_cs = _GEN_682[1:0];
  assign io_mod_proc_mod_4_par_mod_module_mod_state_id_mod = _io_w_4_w_en_T & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_4_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_4_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_4_par_mod_module_mod_sram_w_en = _io_w_4_w_en_T & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_4_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_4_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_4_mat_mod_en = _io_w_4_w_en_T & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_4_mat_mod_config_id = _GEN_687[0];
  assign io_mod_proc_mod_4_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_4_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_4_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_act_mod_en_0 = _io_w_4_w_en_T & _GEN_96; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_4_act_mod_en_1 = _io_w_4_w_en_T & _GEN_98; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_4_act_mod_en_2 = _io_w_4_w_en_T & _GEN_100; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_4_act_mod_en_3 = _io_w_4_w_en_T & _GEN_102; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_4_act_mod_addr = _io_w_4_w_en_T ? _GEN_95 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_4_act_mod_data_0 = _io_w_4_w_en_T ? _GEN_97 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_4_act_mod_data_1 = _io_w_4_w_en_T ? _GEN_99 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_4_act_mod_data_2 = _io_w_4_w_en_T ? _GEN_101 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_4_act_mod_data_3 = _io_w_4_w_en_T ? _GEN_103 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_5_par_mod_en = _io_w_5_w_en_T & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_5_par_mod_last_mau_id_mod = _io_w_5_w_en_T & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_5_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_5_par_mod_cs = _GEN_826[1:0];
  assign io_mod_proc_mod_5_par_mod_module_mod_state_id_mod = _io_w_5_w_en_T & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_5_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_5_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_5_par_mod_module_mod_sram_w_en = _io_w_5_w_en_T & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_5_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_5_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_5_mat_mod_en = _io_w_5_w_en_T & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_5_mat_mod_config_id = _GEN_831[0];
  assign io_mod_proc_mod_5_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_5_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_5_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_act_mod_en_0 = _io_w_5_w_en_T & _GEN_96; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_5_act_mod_en_1 = _io_w_5_w_en_T & _GEN_98; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_5_act_mod_en_2 = _io_w_5_w_en_T & _GEN_100; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_5_act_mod_en_3 = _io_w_5_w_en_T & _GEN_102; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_5_act_mod_addr = _io_w_5_w_en_T ? _GEN_95 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_5_act_mod_data_0 = _io_w_5_w_en_T ? _GEN_97 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_5_act_mod_data_1 = _io_w_5_w_en_T ? _GEN_99 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_5_act_mod_data_2 = _io_w_5_w_en_T ? _GEN_101 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_5_act_mod_data_3 = _io_w_5_w_en_T ? _GEN_103 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_6_par_mod_en = cluster_id_field == 4'h6 & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_6_par_mod_last_mau_id_mod = cluster_id_field == 4'h6 & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_6_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_6_par_mod_cs = _GEN_970[1:0];
  assign io_mod_proc_mod_6_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h6 & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_6_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_6_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_6_par_mod_module_mod_sram_w_en = cluster_id_field == 4'h6 & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_6_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_6_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_6_mat_mod_en = cluster_id_field == 4'h6 & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_6_mat_mod_config_id = _GEN_975[0];
  assign io_mod_proc_mod_6_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_6_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_6_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_act_mod_en_0 = cluster_id_field == 4'h6 & _GEN_96; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_6_act_mod_en_1 = cluster_id_field == 4'h6 & _GEN_98; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_6_act_mod_en_2 = cluster_id_field == 4'h6 & _GEN_100; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_6_act_mod_en_3 = cluster_id_field == 4'h6 & _GEN_102; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_6_act_mod_addr = cluster_id_field == 4'h6 ? _GEN_95 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_6_act_mod_data_0 = cluster_id_field == 4'h6 ? _GEN_97 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_6_act_mod_data_1 = cluster_id_field == 4'h6 ? _GEN_99 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_6_act_mod_data_2 = cluster_id_field == 4'h6 ? _GEN_101 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_6_act_mod_data_3 = cluster_id_field == 4'h6 ? _GEN_103 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_7_par_mod_en = cluster_id_field == 4'h7 & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_7_par_mod_last_mau_id_mod = cluster_id_field == 4'h7 & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_7_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_7_par_mod_cs = _GEN_1114[1:0];
  assign io_mod_proc_mod_7_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h7 & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_7_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_7_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_7_par_mod_module_mod_sram_w_en = cluster_id_field == 4'h7 & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_7_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_7_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_7_mat_mod_en = cluster_id_field == 4'h7 & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_7_mat_mod_config_id = _GEN_1119[0];
  assign io_mod_proc_mod_7_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_7_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_7_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_act_mod_en_0 = cluster_id_field == 4'h7 & _GEN_96; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_7_act_mod_en_1 = cluster_id_field == 4'h7 & _GEN_98; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_7_act_mod_en_2 = cluster_id_field == 4'h7 & _GEN_100; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_7_act_mod_en_3 = cluster_id_field == 4'h7 & _GEN_102; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_7_act_mod_addr = cluster_id_field == 4'h7 ? _GEN_95 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_7_act_mod_data_0 = cluster_id_field == 4'h7 ? _GEN_97 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_7_act_mod_data_1 = cluster_id_field == 4'h7 ? _GEN_99 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_7_act_mod_data_2 = cluster_id_field == 4'h7 ? _GEN_101 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_7_act_mod_data_3 = cluster_id_field == 4'h7 ? _GEN_103 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_8_par_mod_en = cluster_id_field == 4'h8 & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_8_par_mod_last_mau_id_mod = cluster_id_field == 4'h8 & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_8_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_8_par_mod_cs = _GEN_1258[1:0];
  assign io_mod_proc_mod_8_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h8 & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_8_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_8_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_8_par_mod_module_mod_sram_w_en = cluster_id_field == 4'h8 & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_8_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_8_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_8_mat_mod_en = cluster_id_field == 4'h8 & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_8_mat_mod_config_id = _GEN_1263[0];
  assign io_mod_proc_mod_8_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_8_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_8_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_act_mod_en_0 = cluster_id_field == 4'h8 & _GEN_96; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_8_act_mod_en_1 = cluster_id_field == 4'h8 & _GEN_98; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_8_act_mod_en_2 = cluster_id_field == 4'h8 & _GEN_100; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_8_act_mod_en_3 = cluster_id_field == 4'h8 & _GEN_102; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_8_act_mod_addr = cluster_id_field == 4'h8 ? _GEN_95 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_8_act_mod_data_0 = cluster_id_field == 4'h8 ? _GEN_97 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_8_act_mod_data_1 = cluster_id_field == 4'h8 ? _GEN_99 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_8_act_mod_data_2 = cluster_id_field == 4'h8 ? _GEN_101 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_8_act_mod_data_3 = cluster_id_field == 4'h8 ? _GEN_103 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_9_par_mod_en = cluster_id_field == 4'h9 & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_9_par_mod_last_mau_id_mod = cluster_id_field == 4'h9 & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_9_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_9_par_mod_cs = _GEN_1402[1:0];
  assign io_mod_proc_mod_9_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h9 & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_9_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_9_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_9_par_mod_module_mod_sram_w_en = cluster_id_field == 4'h9 & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_9_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_9_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_9_mat_mod_en = cluster_id_field == 4'h9 & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_9_mat_mod_config_id = _GEN_1407[0];
  assign io_mod_proc_mod_9_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_9_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_9_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_act_mod_en_0 = cluster_id_field == 4'h9 & _GEN_96; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_9_act_mod_en_1 = cluster_id_field == 4'h9 & _GEN_98; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_9_act_mod_en_2 = cluster_id_field == 4'h9 & _GEN_100; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_9_act_mod_en_3 = cluster_id_field == 4'h9 & _GEN_102; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_9_act_mod_addr = cluster_id_field == 4'h9 ? _GEN_95 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_9_act_mod_data_0 = cluster_id_field == 4'h9 ? _GEN_97 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_9_act_mod_data_1 = cluster_id_field == 4'h9 ? _GEN_99 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_9_act_mod_data_2 = cluster_id_field == 4'h9 ? _GEN_101 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_9_act_mod_data_3 = cluster_id_field == 4'h9 ? _GEN_103 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_10_par_mod_en = cluster_id_field == 4'ha & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_10_par_mod_last_mau_id_mod = cluster_id_field == 4'ha & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_10_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_10_par_mod_cs = _GEN_1546[1:0];
  assign io_mod_proc_mod_10_par_mod_module_mod_state_id_mod = cluster_id_field == 4'ha & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_10_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_10_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_10_par_mod_module_mod_sram_w_en = cluster_id_field == 4'ha & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_10_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_10_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_10_mat_mod_en = cluster_id_field == 4'ha & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_10_mat_mod_config_id = _GEN_1551[0];
  assign io_mod_proc_mod_10_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_10_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_10_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_10_act_mod_en_0 = cluster_id_field == 4'ha & _GEN_96; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_10_act_mod_en_1 = cluster_id_field == 4'ha & _GEN_98; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_10_act_mod_en_2 = cluster_id_field == 4'ha & _GEN_100; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_10_act_mod_en_3 = cluster_id_field == 4'ha & _GEN_102; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_10_act_mod_addr = cluster_id_field == 4'ha ? _GEN_95 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_10_act_mod_data_0 = cluster_id_field == 4'ha ? _GEN_97 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_10_act_mod_data_1 = cluster_id_field == 4'ha ? _GEN_99 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_10_act_mod_data_2 = cluster_id_field == 4'ha ? _GEN_101 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_10_act_mod_data_3 = cluster_id_field == 4'ha ? _GEN_103 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_11_par_mod_en = cluster_id_field == 4'hb & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_11_par_mod_last_mau_id_mod = cluster_id_field == 4'hb & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_11_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_11_par_mod_cs = _GEN_1690[1:0];
  assign io_mod_proc_mod_11_par_mod_module_mod_state_id_mod = cluster_id_field == 4'hb & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_11_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_11_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_11_par_mod_module_mod_sram_w_en = cluster_id_field == 4'hb & _T_1; // @[pcie_interface.scala 137:43 pcie_interface.scala 120:41]
  assign io_mod_proc_mod_11_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_11_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_11_mat_mod_en = cluster_id_field == 4'hb & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_11_mat_mod_config_id = _GEN_1695[0];
  assign io_mod_proc_mod_11_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_11_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_11_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_11_act_mod_en_0 = cluster_id_field == 4'hb & _GEN_96; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_11_act_mod_en_1 = cluster_id_field == 4'hb & _GEN_98; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_11_act_mod_en_2 = cluster_id_field == 4'hb & _GEN_100; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_11_act_mod_en_3 = cluster_id_field == 4'hb & _GEN_102; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_11_act_mod_addr = cluster_id_field == 4'hb ? _GEN_95 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_11_act_mod_data_0 = cluster_id_field == 4'hb ? _GEN_97 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_11_act_mod_data_1 = cluster_id_field == 4'hb ? _GEN_99 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_11_act_mod_data_2 = cluster_id_field == 4'hb ? _GEN_101 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_11_act_mod_data_3 = cluster_id_field == 4'hb ? _GEN_103 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
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
  assign io_w_0_wcs = io_pcie_w_addr[11:8]; // @[pcie_interface.scala 82:35]
  assign io_w_0_w_en = cluster_id_field == 4'h0 & sram_resource_pool; // @[pcie_interface.scala 97:61]
  assign io_w_0_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_w_0_w_data = io_pcie_w_data; // @[pcie_interface.scala 99:28]
  assign io_w_1_wcs = io_pcie_w_addr[11:8]; // @[pcie_interface.scala 82:35]
  assign io_w_1_w_en = cluster_id_field == 4'h1 & sram_resource_pool; // @[pcie_interface.scala 97:61]
  assign io_w_1_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_w_1_w_data = io_pcie_w_data; // @[pcie_interface.scala 99:28]
  assign io_w_2_wcs = io_pcie_w_addr[11:8]; // @[pcie_interface.scala 82:35]
  assign io_w_2_w_en = cluster_id_field == 4'h2 & sram_resource_pool; // @[pcie_interface.scala 97:61]
  assign io_w_2_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_w_2_w_data = io_pcie_w_data; // @[pcie_interface.scala 99:28]
  assign io_w_3_wcs = io_pcie_w_addr[11:8]; // @[pcie_interface.scala 82:35]
  assign io_w_3_w_en = cluster_id_field == 4'h3 & sram_resource_pool; // @[pcie_interface.scala 97:61]
  assign io_w_3_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_w_3_w_data = io_pcie_w_data; // @[pcie_interface.scala 99:28]
  assign io_w_4_wcs = io_pcie_w_addr[11:8]; // @[pcie_interface.scala 82:35]
  assign io_w_4_w_en = cluster_id_field == 4'h4 & sram_resource_pool; // @[pcie_interface.scala 97:61]
  assign io_w_4_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_w_4_w_data = io_pcie_w_data; // @[pcie_interface.scala 99:28]
  assign io_w_5_wcs = io_pcie_w_addr[11:8]; // @[pcie_interface.scala 82:35]
  assign io_w_5_w_en = cluster_id_field == 4'h5 & sram_resource_pool; // @[pcie_interface.scala 97:61]
  assign io_w_5_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_w_5_w_data = io_pcie_w_data; // @[pcie_interface.scala 99:28]
  always @(posedge clock) begin
    last_mau_id <= _GEN_1691[1:0];
    state_id <= _GEN_1692[7:0];
    mat_key_header_id <= _GEN_1696[7:0];
    mat_key_internal_offset <= _GEN_1697[7:0];
    mat_key_key_length <= _GEN_1698[7:0];
    mat_tab_table_width <= _GEN_1716[4:0];
    mat_tab_table_depth <= _GEN_1717[4:0];
    first_proc_id <= _GEN_1730[3:0];
    last_proc_id <= _GEN_1731[3:0];
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
  mat_tab_table_width = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  mat_tab_table_depth = _RAND_6[4:0];
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
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
