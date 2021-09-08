module PCIEInterfacePISA(
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
  output        io_mod_par_mod_en,
  output        io_mod_par_mod_last_mau_id_mod,
  output [3:0]  io_mod_par_mod_last_mau_id,
  output [2:0]  io_mod_par_mod_cs,
  output        io_mod_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_par_mod_module_mod_state_id,
  output        io_mod_par_mod_module_mod_sram_w_cs,
  output        io_mod_par_mod_module_mod_sram_w_en,
  output [7:0]  io_mod_par_mod_module_mod_sram_w_addr,
  output [63:0] io_mod_par_mod_module_mod_sram_w_data,
  output        io_mod_proc_mod_0_mat_mod_en,
  output        io_mod_proc_mod_0_mat_mod_config_id,
  output        io_mod_proc_mod_0_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_0_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_0_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_0_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_0_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_0_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_0_mat_mod_key_mod_group_mask_3,
  output [7:0]  io_mod_proc_mod_0_mat_mod_key_mod_group_id_0,
  output [7:0]  io_mod_proc_mod_0_mat_mod_key_mod_group_id_1,
  output [7:0]  io_mod_proc_mod_0_mat_mod_key_mod_group_id_2,
  output [7:0]  io_mod_proc_mod_0_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_0_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_0_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_0_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_0_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_0_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_0_mat_mod_w_data,
  output        io_mod_proc_mod_0_exe_mod_en_0,
  output        io_mod_proc_mod_0_exe_mod_en_1,
  output        io_mod_proc_mod_0_exe_mod_en_2,
  output        io_mod_proc_mod_0_exe_mod_en_3,
  output [7:0]  io_mod_proc_mod_0_exe_mod_addr,
  output [63:0] io_mod_proc_mod_0_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_0_exe_mod_data_1,
  output [63:0] io_mod_proc_mod_0_exe_mod_data_2,
  output [63:0] io_mod_proc_mod_0_exe_mod_data_3,
  output        io_mod_proc_mod_1_mat_mod_en,
  output        io_mod_proc_mod_1_mat_mod_config_id,
  output        io_mod_proc_mod_1_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_1_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_1_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_1_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_1_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_1_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_1_mat_mod_key_mod_group_mask_3,
  output [7:0]  io_mod_proc_mod_1_mat_mod_key_mod_group_id_0,
  output [7:0]  io_mod_proc_mod_1_mat_mod_key_mod_group_id_1,
  output [7:0]  io_mod_proc_mod_1_mat_mod_key_mod_group_id_2,
  output [7:0]  io_mod_proc_mod_1_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_1_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_1_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_1_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_1_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_1_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_1_mat_mod_w_data,
  output        io_mod_proc_mod_1_exe_mod_en_0,
  output        io_mod_proc_mod_1_exe_mod_en_1,
  output        io_mod_proc_mod_1_exe_mod_en_2,
  output        io_mod_proc_mod_1_exe_mod_en_3,
  output [7:0]  io_mod_proc_mod_1_exe_mod_addr,
  output [63:0] io_mod_proc_mod_1_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_1_exe_mod_data_1,
  output [63:0] io_mod_proc_mod_1_exe_mod_data_2,
  output [63:0] io_mod_proc_mod_1_exe_mod_data_3,
  output        io_mod_proc_mod_2_mat_mod_en,
  output        io_mod_proc_mod_2_mat_mod_config_id,
  output        io_mod_proc_mod_2_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_2_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_2_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_2_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_2_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_2_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_2_mat_mod_key_mod_group_mask_3,
  output [7:0]  io_mod_proc_mod_2_mat_mod_key_mod_group_id_0,
  output [7:0]  io_mod_proc_mod_2_mat_mod_key_mod_group_id_1,
  output [7:0]  io_mod_proc_mod_2_mat_mod_key_mod_group_id_2,
  output [7:0]  io_mod_proc_mod_2_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_2_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_2_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_2_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_2_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_2_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_2_mat_mod_w_data,
  output        io_mod_proc_mod_2_exe_mod_en_0,
  output        io_mod_proc_mod_2_exe_mod_en_1,
  output        io_mod_proc_mod_2_exe_mod_en_2,
  output        io_mod_proc_mod_2_exe_mod_en_3,
  output [7:0]  io_mod_proc_mod_2_exe_mod_addr,
  output [63:0] io_mod_proc_mod_2_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_2_exe_mod_data_1,
  output [63:0] io_mod_proc_mod_2_exe_mod_data_2,
  output [63:0] io_mod_proc_mod_2_exe_mod_data_3,
  output        io_mod_proc_mod_3_mat_mod_en,
  output        io_mod_proc_mod_3_mat_mod_config_id,
  output        io_mod_proc_mod_3_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_3_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_3_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_3_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_3_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_3_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_3_mat_mod_key_mod_group_mask_3,
  output [7:0]  io_mod_proc_mod_3_mat_mod_key_mod_group_id_0,
  output [7:0]  io_mod_proc_mod_3_mat_mod_key_mod_group_id_1,
  output [7:0]  io_mod_proc_mod_3_mat_mod_key_mod_group_id_2,
  output [7:0]  io_mod_proc_mod_3_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_3_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_3_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_3_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_3_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_3_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_3_mat_mod_w_data,
  output        io_mod_proc_mod_3_exe_mod_en_0,
  output        io_mod_proc_mod_3_exe_mod_en_1,
  output        io_mod_proc_mod_3_exe_mod_en_2,
  output        io_mod_proc_mod_3_exe_mod_en_3,
  output [7:0]  io_mod_proc_mod_3_exe_mod_addr,
  output [63:0] io_mod_proc_mod_3_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_3_exe_mod_data_1,
  output [63:0] io_mod_proc_mod_3_exe_mod_data_2,
  output [63:0] io_mod_proc_mod_3_exe_mod_data_3,
  output        io_mod_proc_mod_4_mat_mod_en,
  output        io_mod_proc_mod_4_mat_mod_config_id,
  output        io_mod_proc_mod_4_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_4_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_4_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_4_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_4_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_4_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_4_mat_mod_key_mod_group_mask_3,
  output [7:0]  io_mod_proc_mod_4_mat_mod_key_mod_group_id_0,
  output [7:0]  io_mod_proc_mod_4_mat_mod_key_mod_group_id_1,
  output [7:0]  io_mod_proc_mod_4_mat_mod_key_mod_group_id_2,
  output [7:0]  io_mod_proc_mod_4_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_4_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_4_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_4_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_4_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_4_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_4_mat_mod_w_data,
  output        io_mod_proc_mod_4_exe_mod_en_0,
  output        io_mod_proc_mod_4_exe_mod_en_1,
  output        io_mod_proc_mod_4_exe_mod_en_2,
  output        io_mod_proc_mod_4_exe_mod_en_3,
  output [7:0]  io_mod_proc_mod_4_exe_mod_addr,
  output [63:0] io_mod_proc_mod_4_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_4_exe_mod_data_1,
  output [63:0] io_mod_proc_mod_4_exe_mod_data_2,
  output [63:0] io_mod_proc_mod_4_exe_mod_data_3,
  output        io_mod_proc_mod_5_mat_mod_en,
  output        io_mod_proc_mod_5_mat_mod_config_id,
  output        io_mod_proc_mod_5_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_5_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_5_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_5_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_5_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_5_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_5_mat_mod_key_mod_group_mask_3,
  output [7:0]  io_mod_proc_mod_5_mat_mod_key_mod_group_id_0,
  output [7:0]  io_mod_proc_mod_5_mat_mod_key_mod_group_id_1,
  output [7:0]  io_mod_proc_mod_5_mat_mod_key_mod_group_id_2,
  output [7:0]  io_mod_proc_mod_5_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_5_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_5_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_5_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_5_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_5_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_5_mat_mod_w_data,
  output        io_mod_proc_mod_5_exe_mod_en_0,
  output        io_mod_proc_mod_5_exe_mod_en_1,
  output        io_mod_proc_mod_5_exe_mod_en_2,
  output        io_mod_proc_mod_5_exe_mod_en_3,
  output [7:0]  io_mod_proc_mod_5_exe_mod_addr,
  output [63:0] io_mod_proc_mod_5_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_5_exe_mod_data_1,
  output [63:0] io_mod_proc_mod_5_exe_mod_data_2,
  output [63:0] io_mod_proc_mod_5_exe_mod_data_3,
  output        io_mod_proc_mod_6_mat_mod_en,
  output        io_mod_proc_mod_6_mat_mod_config_id,
  output        io_mod_proc_mod_6_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_6_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_6_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_6_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_6_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_6_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_6_mat_mod_key_mod_group_mask_3,
  output [7:0]  io_mod_proc_mod_6_mat_mod_key_mod_group_id_0,
  output [7:0]  io_mod_proc_mod_6_mat_mod_key_mod_group_id_1,
  output [7:0]  io_mod_proc_mod_6_mat_mod_key_mod_group_id_2,
  output [7:0]  io_mod_proc_mod_6_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_6_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_6_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_6_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_6_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_6_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_6_mat_mod_w_data,
  output        io_mod_proc_mod_6_exe_mod_en_0,
  output        io_mod_proc_mod_6_exe_mod_en_1,
  output        io_mod_proc_mod_6_exe_mod_en_2,
  output        io_mod_proc_mod_6_exe_mod_en_3,
  output [7:0]  io_mod_proc_mod_6_exe_mod_addr,
  output [63:0] io_mod_proc_mod_6_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_6_exe_mod_data_1,
  output [63:0] io_mod_proc_mod_6_exe_mod_data_2,
  output [63:0] io_mod_proc_mod_6_exe_mod_data_3,
  output        io_mod_proc_mod_7_mat_mod_en,
  output        io_mod_proc_mod_7_mat_mod_config_id,
  output        io_mod_proc_mod_7_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_7_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_7_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_7_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_7_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_7_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_7_mat_mod_key_mod_group_mask_3,
  output [7:0]  io_mod_proc_mod_7_mat_mod_key_mod_group_id_0,
  output [7:0]  io_mod_proc_mod_7_mat_mod_key_mod_group_id_1,
  output [7:0]  io_mod_proc_mod_7_mat_mod_key_mod_group_id_2,
  output [7:0]  io_mod_proc_mod_7_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_7_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_7_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_7_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_7_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_7_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_7_mat_mod_w_data,
  output        io_mod_proc_mod_7_exe_mod_en_0,
  output        io_mod_proc_mod_7_exe_mod_en_1,
  output        io_mod_proc_mod_7_exe_mod_en_2,
  output        io_mod_proc_mod_7_exe_mod_en_3,
  output [7:0]  io_mod_proc_mod_7_exe_mod_addr,
  output [63:0] io_mod_proc_mod_7_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_7_exe_mod_data_1,
  output [63:0] io_mod_proc_mod_7_exe_mod_data_2,
  output [63:0] io_mod_proc_mod_7_exe_mod_data_3,
  output        io_mod_proc_mod_8_mat_mod_en,
  output        io_mod_proc_mod_8_mat_mod_config_id,
  output        io_mod_proc_mod_8_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_8_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_8_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_8_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_8_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_8_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_8_mat_mod_key_mod_group_mask_3,
  output [7:0]  io_mod_proc_mod_8_mat_mod_key_mod_group_id_0,
  output [7:0]  io_mod_proc_mod_8_mat_mod_key_mod_group_id_1,
  output [7:0]  io_mod_proc_mod_8_mat_mod_key_mod_group_id_2,
  output [7:0]  io_mod_proc_mod_8_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_8_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_8_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_8_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_8_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_8_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_8_mat_mod_w_data,
  output        io_mod_proc_mod_8_exe_mod_en_0,
  output        io_mod_proc_mod_8_exe_mod_en_1,
  output        io_mod_proc_mod_8_exe_mod_en_2,
  output        io_mod_proc_mod_8_exe_mod_en_3,
  output [7:0]  io_mod_proc_mod_8_exe_mod_addr,
  output [63:0] io_mod_proc_mod_8_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_8_exe_mod_data_1,
  output [63:0] io_mod_proc_mod_8_exe_mod_data_2,
  output [63:0] io_mod_proc_mod_8_exe_mod_data_3,
  output        io_mod_proc_mod_9_mat_mod_en,
  output        io_mod_proc_mod_9_mat_mod_config_id,
  output        io_mod_proc_mod_9_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_9_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_9_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_9_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_9_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_9_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_9_mat_mod_key_mod_group_mask_3,
  output [7:0]  io_mod_proc_mod_9_mat_mod_key_mod_group_id_0,
  output [7:0]  io_mod_proc_mod_9_mat_mod_key_mod_group_id_1,
  output [7:0]  io_mod_proc_mod_9_mat_mod_key_mod_group_id_2,
  output [7:0]  io_mod_proc_mod_9_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_9_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_9_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_9_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_9_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_9_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_9_mat_mod_w_data,
  output        io_mod_proc_mod_9_exe_mod_en_0,
  output        io_mod_proc_mod_9_exe_mod_en_1,
  output        io_mod_proc_mod_9_exe_mod_en_2,
  output        io_mod_proc_mod_9_exe_mod_en_3,
  output [7:0]  io_mod_proc_mod_9_exe_mod_addr,
  output [63:0] io_mod_proc_mod_9_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_9_exe_mod_data_1,
  output [63:0] io_mod_proc_mod_9_exe_mod_data_2,
  output [63:0] io_mod_proc_mod_9_exe_mod_data_3,
  output        io_mod_proc_mod_10_mat_mod_en,
  output        io_mod_proc_mod_10_mat_mod_config_id,
  output        io_mod_proc_mod_10_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_10_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_10_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_10_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_10_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_10_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_10_mat_mod_key_mod_group_mask_3,
  output [7:0]  io_mod_proc_mod_10_mat_mod_key_mod_group_id_0,
  output [7:0]  io_mod_proc_mod_10_mat_mod_key_mod_group_id_1,
  output [7:0]  io_mod_proc_mod_10_mat_mod_key_mod_group_id_2,
  output [7:0]  io_mod_proc_mod_10_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_10_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_10_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_10_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_10_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_10_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_10_mat_mod_w_data,
  output        io_mod_proc_mod_10_exe_mod_en_0,
  output        io_mod_proc_mod_10_exe_mod_en_1,
  output        io_mod_proc_mod_10_exe_mod_en_2,
  output        io_mod_proc_mod_10_exe_mod_en_3,
  output [7:0]  io_mod_proc_mod_10_exe_mod_addr,
  output [63:0] io_mod_proc_mod_10_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_10_exe_mod_data_1,
  output [63:0] io_mod_proc_mod_10_exe_mod_data_2,
  output [63:0] io_mod_proc_mod_10_exe_mod_data_3,
  output        io_mod_proc_mod_11_mat_mod_en,
  output        io_mod_proc_mod_11_mat_mod_config_id,
  output        io_mod_proc_mod_11_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_11_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_11_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_11_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_11_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_11_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_11_mat_mod_key_mod_group_mask_3,
  output [7:0]  io_mod_proc_mod_11_mat_mod_key_mod_group_id_0,
  output [7:0]  io_mod_proc_mod_11_mat_mod_key_mod_group_id_1,
  output [7:0]  io_mod_proc_mod_11_mat_mod_key_mod_group_id_2,
  output [7:0]  io_mod_proc_mod_11_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_11_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_11_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_11_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_11_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_11_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_11_mat_mod_w_data,
  output        io_mod_proc_mod_11_exe_mod_en_0,
  output        io_mod_proc_mod_11_exe_mod_en_1,
  output        io_mod_proc_mod_11_exe_mod_en_2,
  output        io_mod_proc_mod_11_exe_mod_en_3,
  output [7:0]  io_mod_proc_mod_11_exe_mod_addr,
  output [63:0] io_mod_proc_mod_11_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_11_exe_mod_data_1,
  output [63:0] io_mod_proc_mod_11_exe_mod_data_2,
  output [63:0] io_mod_proc_mod_11_exe_mod_data_3
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
`endif // RANDOMIZE_REG_INIT
  wire [3:0] type_field = io_pcie_w_en ? io_pcie_w_addr[19:16] : 4'h0; // @[pcie_interface_pisa.scala 24:29]
  wire [3:0] proc_id_field = io_pcie_w_addr[15:12]; // @[pcie_interface_pisa.scala 25:35]
  wire [3:0] sram_id_field = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  wire [3:0] config_field = io_pcie_w_addr[7:4]; // @[pcie_interface_pisa.scala 27:35]
  wire [3:0] bias_field = io_pcie_w_addr[3:0]; // @[pcie_interface_pisa.scala 28:35]
  wire [7:0] offset_field = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  reg [1:0] last_mau_id; // @[pcie_interface_pisa.scala 34:26]
  reg [7:0] state_id; // @[pcie_interface_pisa.scala 35:26]
  wire  _T = type_field == 4'h2; // @[pcie_interface_pisa.scala 48:22]
  wire  _T_1 = type_field == 4'h3; // @[pcie_interface_pisa.scala 52:22]
  wire  _T_2 = sram_id_field == 4'h1; // @[pcie_interface_pisa.scala 53:30]
  wire [63:0] _GEN_1 = sram_id_field == 4'h1 ? io_pcie_w_data : {{62'd0}, last_mau_id}; // @[pcie_interface_pisa.scala 53:44 pcie_interface_pisa.scala 54:25 pcie_interface_pisa.scala 34:26]
  wire  _T_3 = sram_id_field == 4'h2; // @[pcie_interface_pisa.scala 56:30]
  wire  _T_4 = bias_field == 4'h0; // @[pcie_interface_pisa.scala 57:30]
  wire [63:0] _GEN_2 = bias_field == 4'h0 ? io_pcie_w_data : {{56'd0}, state_id}; // @[pcie_interface_pisa.scala 57:44 pcie_interface_pisa.scala 58:29 pcie_interface_pisa.scala 35:26]
  wire  _T_5 = bias_field == 4'hf; // @[pcie_interface_pisa.scala 60:30]
  wire  _GEN_3 = bias_field == 4'hf | _T; // @[pcie_interface_pisa.scala 60:46 pcie_interface_pisa.scala 61:41]
  wire  _GEN_5 = bias_field == 4'hf & config_field != 4'hf; // @[pcie_interface_pisa.scala 60:46 pcie_interface_pisa.scala 63:49 pcie_interface_pisa.scala 42:37]
  wire [63:0] _GEN_6 = sram_id_field == 4'h2 ? _GEN_2 : {{56'd0}, state_id}; // @[pcie_interface_pisa.scala 56:44 pcie_interface_pisa.scala 35:26]
  wire  _GEN_7 = sram_id_field == 4'h2 ? _GEN_3 : _T; // @[pcie_interface_pisa.scala 56:44]
  wire  _GEN_8 = sram_id_field == 4'h2 & _T_5; // @[pcie_interface_pisa.scala 56:44 pcie_interface_pisa.scala 39:29]
  wire  _GEN_9 = sram_id_field == 4'h2 & _GEN_5; // @[pcie_interface_pisa.scala 56:44 pcie_interface_pisa.scala 42:37]
  wire [63:0] _GEN_10 = type_field == 4'h3 ? _GEN_1 : {{62'd0}, last_mau_id}; // @[pcie_interface_pisa.scala 52:36 pcie_interface_pisa.scala 34:26]
  wire [63:0] _GEN_11 = type_field == 4'h3 ? _GEN_6 : {{56'd0}, state_id}; // @[pcie_interface_pisa.scala 52:36 pcie_interface_pisa.scala 35:26]
  reg [2:0] group_index; // @[pcie_interface_pisa.scala 70:27]
  reg [1:0] group_config; // @[pcie_interface_pisa.scala 71:27]
  reg  group_mask_0; // @[pcie_interface_pisa.scala 72:27]
  reg  group_mask_1; // @[pcie_interface_pisa.scala 72:27]
  reg  group_mask_2; // @[pcie_interface_pisa.scala 72:27]
  reg  group_mask_3; // @[pcie_interface_pisa.scala 72:27]
  reg [6:0] group_id_0; // @[pcie_interface_pisa.scala 73:27]
  reg [6:0] group_id_1; // @[pcie_interface_pisa.scala 73:27]
  reg [6:0] group_id_2; // @[pcie_interface_pisa.scala 73:27]
  reg [6:0] group_id_3; // @[pcie_interface_pisa.scala 73:27]
  reg [4:0] mat_tab_table_depth; // @[pcie_interface_pisa.scala 75:22]
  reg [4:0] mat_tab_table_width; // @[pcie_interface_pisa.scala 75:22]
  wire  _io_mod_proc_mod_0_mat_mod_w_en_T_1 = proc_id_field == 4'h0; // @[pcie_interface_pisa.scala 90:66]
  wire  _T_8 = sram_id_field == 4'h3; // @[pcie_interface_pisa.scala 106:38]
  wire [63:0] _GEN_16 = bias_field == 4'h4 ? io_pcie_w_data : {{61'd0}, group_index}; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37 pcie_interface_pisa.scala 70:27]
  wire [63:0] _GEN_17 = bias_field == 4'h5 ? io_pcie_w_data : {{62'd0}, group_config}; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38 pcie_interface_pisa.scala 71:27]
  wire  _GEN_18 = bias_field == 4'h6 ? io_pcie_w_data[0] : group_mask_0; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43 pcie_interface_pisa.scala 72:27]
  wire  _GEN_19 = bias_field == 4'h6 ? io_pcie_w_data[1] : group_mask_1; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43 pcie_interface_pisa.scala 72:27]
  wire  _GEN_20 = bias_field == 4'h6 ? io_pcie_w_data[2] : group_mask_2; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43 pcie_interface_pisa.scala 72:27]
  wire  _GEN_21 = bias_field == 4'h6 ? io_pcie_w_data[3] : group_mask_3; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43 pcie_interface_pisa.scala 72:27]
  wire [6:0] _GEN_22 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : group_id_0; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41 pcie_interface_pisa.scala 73:27]
  wire [6:0] _GEN_23 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : group_id_1; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41 pcie_interface_pisa.scala 73:27]
  wire [6:0] _GEN_24 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : group_id_2; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41 pcie_interface_pisa.scala 73:27]
  wire [6:0] _GEN_25 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : group_id_3; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41 pcie_interface_pisa.scala 73:27]
  wire [63:0] _GEN_27 = sram_id_field == 4'h3 ? _GEN_16 : {{61'd0}, group_index}; // @[pcie_interface_pisa.scala 106:52 pcie_interface_pisa.scala 70:27]
  wire [63:0] _GEN_28 = sram_id_field == 4'h3 ? _GEN_17 : {{62'd0}, group_config}; // @[pcie_interface_pisa.scala 106:52 pcie_interface_pisa.scala 71:27]
  wire  _GEN_29 = sram_id_field == 4'h3 ? _GEN_18 : group_mask_0; // @[pcie_interface_pisa.scala 106:52 pcie_interface_pisa.scala 72:27]
  wire  _GEN_30 = sram_id_field == 4'h3 ? _GEN_19 : group_mask_1; // @[pcie_interface_pisa.scala 106:52 pcie_interface_pisa.scala 72:27]
  wire  _GEN_31 = sram_id_field == 4'h3 ? _GEN_20 : group_mask_2; // @[pcie_interface_pisa.scala 106:52 pcie_interface_pisa.scala 72:27]
  wire  _GEN_32 = sram_id_field == 4'h3 ? _GEN_21 : group_mask_3; // @[pcie_interface_pisa.scala 106:52 pcie_interface_pisa.scala 72:27]
  wire [6:0] _GEN_33 = sram_id_field == 4'h3 ? _GEN_22 : group_id_0; // @[pcie_interface_pisa.scala 106:52 pcie_interface_pisa.scala 73:27]
  wire [6:0] _GEN_34 = sram_id_field == 4'h3 ? _GEN_23 : group_id_1; // @[pcie_interface_pisa.scala 106:52 pcie_interface_pisa.scala 73:27]
  wire [6:0] _GEN_35 = sram_id_field == 4'h3 ? _GEN_24 : group_id_2; // @[pcie_interface_pisa.scala 106:52 pcie_interface_pisa.scala 73:27]
  wire [6:0] _GEN_36 = sram_id_field == 4'h3 ? _GEN_25 : group_id_3; // @[pcie_interface_pisa.scala 106:52 pcie_interface_pisa.scala 73:27]
  wire [63:0] _GEN_37 = _T_4 ? io_pcie_w_data : {{59'd0}, mat_tab_table_width}; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45 pcie_interface_pisa.scala 75:22]
  wire [63:0] _GEN_38 = bias_field == 4'h1 ? io_pcie_w_data : {{59'd0}, mat_tab_table_depth}; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45 pcie_interface_pisa.scala 75:22]
  wire [63:0] _GEN_40 = sram_id_field == 4'h5 ? _GEN_37 : {{59'd0}, mat_tab_table_width}; // @[pcie_interface_pisa.scala 127:52 pcie_interface_pisa.scala 75:22]
  wire [63:0] _GEN_41 = sram_id_field == 4'h5 ? _GEN_38 : {{59'd0}, mat_tab_table_depth}; // @[pcie_interface_pisa.scala 127:52 pcie_interface_pisa.scala 75:22]
  wire  _GEN_42 = sram_id_field == 4'h5 & _T_5; // @[pcie_interface_pisa.scala 127:52 pcie_interface_pisa.scala 81:27]
  wire [63:0] _GEN_44 = _T_1 ? _GEN_27 : {{61'd0}, group_index}; // @[pcie_interface_pisa.scala 104:44 pcie_interface_pisa.scala 70:27]
  wire [63:0] _GEN_45 = _T_1 ? _GEN_28 : {{62'd0}, group_config}; // @[pcie_interface_pisa.scala 104:44 pcie_interface_pisa.scala 71:27]
  wire  _GEN_46 = _T_1 ? _GEN_29 : group_mask_0; // @[pcie_interface_pisa.scala 104:44 pcie_interface_pisa.scala 72:27]
  wire  _GEN_47 = _T_1 ? _GEN_30 : group_mask_1; // @[pcie_interface_pisa.scala 104:44 pcie_interface_pisa.scala 72:27]
  wire  _GEN_48 = _T_1 ? _GEN_31 : group_mask_2; // @[pcie_interface_pisa.scala 104:44 pcie_interface_pisa.scala 72:27]
  wire  _GEN_49 = _T_1 ? _GEN_32 : group_mask_3; // @[pcie_interface_pisa.scala 104:44 pcie_interface_pisa.scala 72:27]
  wire [6:0] _GEN_50 = _T_1 ? _GEN_33 : group_id_0; // @[pcie_interface_pisa.scala 104:44 pcie_interface_pisa.scala 73:27]
  wire [6:0] _GEN_51 = _T_1 ? _GEN_34 : group_id_1; // @[pcie_interface_pisa.scala 104:44 pcie_interface_pisa.scala 73:27]
  wire [6:0] _GEN_52 = _T_1 ? _GEN_35 : group_id_2; // @[pcie_interface_pisa.scala 104:44 pcie_interface_pisa.scala 73:27]
  wire [6:0] _GEN_53 = _T_1 ? _GEN_36 : group_id_3; // @[pcie_interface_pisa.scala 104:44 pcie_interface_pisa.scala 73:27]
  wire [63:0] _GEN_54 = _T_1 ? _GEN_40 : {{59'd0}, mat_tab_table_width}; // @[pcie_interface_pisa.scala 104:44 pcie_interface_pisa.scala 75:22]
  wire [63:0] _GEN_55 = _T_1 ? _GEN_41 : {{59'd0}, mat_tab_table_depth}; // @[pcie_interface_pisa.scala 104:44 pcie_interface_pisa.scala 75:22]
  wire  _GEN_56 = _T_1 & _GEN_42; // @[pcie_interface_pisa.scala 104:44 pcie_interface_pisa.scala 81:27]
  wire  _T_19 = sram_id_field == 4'h0; // @[pcie_interface_pisa.scala 144:41]
  wire [63:0] _GEN_58 = sram_id_field == 4'h0 ? io_pcie_w_data : 64'h0; // @[pcie_interface_pisa.scala 144:55 pcie_interface_pisa.scala 146:41 pcie_interface_pisa.scala 99:29]
  wire [63:0] _GEN_60 = _T_2 ? io_pcie_w_data : 64'h0; // @[pcie_interface_pisa.scala 144:55 pcie_interface_pisa.scala 146:41 pcie_interface_pisa.scala 99:29]
  wire [63:0] _GEN_62 = _T_3 ? io_pcie_w_data : 64'h0; // @[pcie_interface_pisa.scala 144:55 pcie_interface_pisa.scala 146:41 pcie_interface_pisa.scala 99:29]
  wire [63:0] _GEN_64 = _T_8 ? io_pcie_w_data : 64'h0; // @[pcie_interface_pisa.scala 144:55 pcie_interface_pisa.scala 146:41 pcie_interface_pisa.scala 99:29]
  wire [7:0] _GEN_65 = type_field == 4'h4 ? offset_field : 8'h0; // @[pcie_interface_pisa.scala 141:44 pcie_interface_pisa.scala 142:30 pcie_interface_pisa.scala 98:29]
  wire  _GEN_66 = type_field == 4'h4 & _T_19; // @[pcie_interface_pisa.scala 141:44 pcie_interface_pisa.scala 97:29]
  wire [63:0] _GEN_67 = type_field == 4'h4 ? _GEN_58 : 64'h0; // @[pcie_interface_pisa.scala 141:44 pcie_interface_pisa.scala 99:29]
  wire  _GEN_68 = type_field == 4'h4 & _T_2; // @[pcie_interface_pisa.scala 141:44 pcie_interface_pisa.scala 97:29]
  wire [63:0] _GEN_69 = type_field == 4'h4 ? _GEN_60 : 64'h0; // @[pcie_interface_pisa.scala 141:44 pcie_interface_pisa.scala 99:29]
  wire  _GEN_70 = type_field == 4'h4 & _T_3; // @[pcie_interface_pisa.scala 141:44 pcie_interface_pisa.scala 97:29]
  wire [63:0] _GEN_71 = type_field == 4'h4 ? _GEN_62 : 64'h0; // @[pcie_interface_pisa.scala 141:44 pcie_interface_pisa.scala 99:29]
  wire  _GEN_72 = type_field == 4'h4 & _T_8; // @[pcie_interface_pisa.scala 141:44 pcie_interface_pisa.scala 97:29]
  wire [63:0] _GEN_73 = type_field == 4'h4 ? _GEN_64 : 64'h0; // @[pcie_interface_pisa.scala 141:44 pcie_interface_pisa.scala 99:29]
  wire [63:0] _GEN_75 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_44 : {{61'd0}, group_index}; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 70:27]
  wire [63:0] _GEN_76 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_45 : {{62'd0}, group_config}; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 71:27]
  wire  _GEN_77 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_46 : group_mask_0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 72:27]
  wire  _GEN_78 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_47 : group_mask_1; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 72:27]
  wire  _GEN_79 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_48 : group_mask_2; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 72:27]
  wire  _GEN_80 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_49 : group_mask_3; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 72:27]
  wire [6:0] _GEN_81 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_50 : group_id_0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 73:27]
  wire [6:0] _GEN_82 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_51 : group_id_1; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 73:27]
  wire [6:0] _GEN_83 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_52 : group_id_2; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 73:27]
  wire [6:0] _GEN_84 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_53 : group_id_3; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 73:27]
  wire [63:0] _GEN_85 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_54 : {{59'd0}, mat_tab_table_width}; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 75:22]
  wire [63:0] _GEN_86 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_55 : {{59'd0}, mat_tab_table_depth}; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 75:22]
  wire  _io_mod_proc_mod_1_mat_mod_w_en_T_1 = proc_id_field == 4'h1; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_98 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_75; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_99 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_76; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_100 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_77; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_101 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_78; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_102 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_79; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_103 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_80; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_104 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_81; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_105 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_82; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_106 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_83; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_107 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_84; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_109 = sram_id_field == 4'h3 ? _GEN_98 : _GEN_75; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_110 = sram_id_field == 4'h3 ? _GEN_99 : _GEN_76; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_111 = sram_id_field == 4'h3 ? _GEN_100 : _GEN_77; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_112 = sram_id_field == 4'h3 ? _GEN_101 : _GEN_78; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_113 = sram_id_field == 4'h3 ? _GEN_102 : _GEN_79; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_114 = sram_id_field == 4'h3 ? _GEN_103 : _GEN_80; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_115 = sram_id_field == 4'h3 ? _GEN_104 : _GEN_81; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_116 = sram_id_field == 4'h3 ? _GEN_105 : _GEN_82; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_117 = sram_id_field == 4'h3 ? _GEN_106 : _GEN_83; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_118 = sram_id_field == 4'h3 ? _GEN_107 : _GEN_84; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_119 = _T_4 ? io_pcie_w_data : _GEN_85; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_120 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_86; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_122 = sram_id_field == 4'h5 ? _GEN_119 : _GEN_85; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_123 = sram_id_field == 4'h5 ? _GEN_120 : _GEN_86; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_126 = _T_1 ? _GEN_109 : _GEN_75; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_127 = _T_1 ? _GEN_110 : _GEN_76; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_128 = _T_1 ? _GEN_111 : _GEN_77; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_129 = _T_1 ? _GEN_112 : _GEN_78; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_130 = _T_1 ? _GEN_113 : _GEN_79; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_131 = _T_1 ? _GEN_114 : _GEN_80; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_132 = _T_1 ? _GEN_115 : _GEN_81; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_133 = _T_1 ? _GEN_116 : _GEN_82; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_134 = _T_1 ? _GEN_117 : _GEN_83; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_135 = _T_1 ? _GEN_118 : _GEN_84; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_136 = _T_1 ? _GEN_122 : _GEN_85; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_137 = _T_1 ? _GEN_123 : _GEN_86; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_157 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_126 : _GEN_75; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_158 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_127 : _GEN_76; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_159 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_128 : _GEN_77; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_160 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_129 : _GEN_78; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_161 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_130 : _GEN_79; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_162 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_131 : _GEN_80; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_163 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_132 : _GEN_81; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_164 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_133 : _GEN_82; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_165 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_134 : _GEN_83; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_166 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_135 : _GEN_84; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_167 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_136 : _GEN_85; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_168 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_137 : _GEN_86; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_2_mat_mod_w_en_T_1 = proc_id_field == 4'h2; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_180 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_157; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_181 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_158; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_182 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_159; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_183 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_160; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_184 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_161; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_185 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_162; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_186 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_163; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_187 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_164; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_188 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_165; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_189 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_166; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_191 = sram_id_field == 4'h3 ? _GEN_180 : _GEN_157; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_192 = sram_id_field == 4'h3 ? _GEN_181 : _GEN_158; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_193 = sram_id_field == 4'h3 ? _GEN_182 : _GEN_159; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_194 = sram_id_field == 4'h3 ? _GEN_183 : _GEN_160; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_195 = sram_id_field == 4'h3 ? _GEN_184 : _GEN_161; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_196 = sram_id_field == 4'h3 ? _GEN_185 : _GEN_162; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_197 = sram_id_field == 4'h3 ? _GEN_186 : _GEN_163; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_198 = sram_id_field == 4'h3 ? _GEN_187 : _GEN_164; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_199 = sram_id_field == 4'h3 ? _GEN_188 : _GEN_165; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_200 = sram_id_field == 4'h3 ? _GEN_189 : _GEN_166; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_201 = _T_4 ? io_pcie_w_data : _GEN_167; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_202 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_168; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_204 = sram_id_field == 4'h5 ? _GEN_201 : _GEN_167; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_205 = sram_id_field == 4'h5 ? _GEN_202 : _GEN_168; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_208 = _T_1 ? _GEN_191 : _GEN_157; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_209 = _T_1 ? _GEN_192 : _GEN_158; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_210 = _T_1 ? _GEN_193 : _GEN_159; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_211 = _T_1 ? _GEN_194 : _GEN_160; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_212 = _T_1 ? _GEN_195 : _GEN_161; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_213 = _T_1 ? _GEN_196 : _GEN_162; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_214 = _T_1 ? _GEN_197 : _GEN_163; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_215 = _T_1 ? _GEN_198 : _GEN_164; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_216 = _T_1 ? _GEN_199 : _GEN_165; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_217 = _T_1 ? _GEN_200 : _GEN_166; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_218 = _T_1 ? _GEN_204 : _GEN_167; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_219 = _T_1 ? _GEN_205 : _GEN_168; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_239 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_208 : _GEN_157; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_240 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_209 : _GEN_158; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_241 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_210 : _GEN_159; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_242 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_211 : _GEN_160; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_243 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_212 : _GEN_161; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_244 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_213 : _GEN_162; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_245 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_214 : _GEN_163; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_246 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_215 : _GEN_164; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_247 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_216 : _GEN_165; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_248 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_217 : _GEN_166; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_249 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_218 : _GEN_167; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_250 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_219 : _GEN_168; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_3_mat_mod_w_en_T_1 = proc_id_field == 4'h3; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_262 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_239; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_263 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_240; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_264 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_241; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_265 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_242; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_266 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_243; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_267 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_244; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_268 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_245; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_269 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_246; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_270 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_247; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_271 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_248; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_273 = sram_id_field == 4'h3 ? _GEN_262 : _GEN_239; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_274 = sram_id_field == 4'h3 ? _GEN_263 : _GEN_240; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_275 = sram_id_field == 4'h3 ? _GEN_264 : _GEN_241; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_276 = sram_id_field == 4'h3 ? _GEN_265 : _GEN_242; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_277 = sram_id_field == 4'h3 ? _GEN_266 : _GEN_243; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_278 = sram_id_field == 4'h3 ? _GEN_267 : _GEN_244; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_279 = sram_id_field == 4'h3 ? _GEN_268 : _GEN_245; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_280 = sram_id_field == 4'h3 ? _GEN_269 : _GEN_246; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_281 = sram_id_field == 4'h3 ? _GEN_270 : _GEN_247; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_282 = sram_id_field == 4'h3 ? _GEN_271 : _GEN_248; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_283 = _T_4 ? io_pcie_w_data : _GEN_249; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_284 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_250; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_286 = sram_id_field == 4'h5 ? _GEN_283 : _GEN_249; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_287 = sram_id_field == 4'h5 ? _GEN_284 : _GEN_250; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_290 = _T_1 ? _GEN_273 : _GEN_239; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_291 = _T_1 ? _GEN_274 : _GEN_240; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_292 = _T_1 ? _GEN_275 : _GEN_241; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_293 = _T_1 ? _GEN_276 : _GEN_242; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_294 = _T_1 ? _GEN_277 : _GEN_243; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_295 = _T_1 ? _GEN_278 : _GEN_244; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_296 = _T_1 ? _GEN_279 : _GEN_245; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_297 = _T_1 ? _GEN_280 : _GEN_246; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_298 = _T_1 ? _GEN_281 : _GEN_247; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_299 = _T_1 ? _GEN_282 : _GEN_248; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_300 = _T_1 ? _GEN_286 : _GEN_249; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_301 = _T_1 ? _GEN_287 : _GEN_250; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_321 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_290 : _GEN_239; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_322 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_291 : _GEN_240; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_323 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_292 : _GEN_241; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_324 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_293 : _GEN_242; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_325 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_294 : _GEN_243; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_326 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_295 : _GEN_244; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_327 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_296 : _GEN_245; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_328 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_297 : _GEN_246; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_329 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_298 : _GEN_247; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_330 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_299 : _GEN_248; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_331 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_300 : _GEN_249; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_332 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_301 : _GEN_250; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_4_mat_mod_w_en_T_1 = proc_id_field == 4'h4; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_344 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_321; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_345 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_322; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_346 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_323; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_347 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_324; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_348 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_325; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_349 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_326; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_350 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_327; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_351 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_328; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_352 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_329; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_353 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_330; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_355 = sram_id_field == 4'h3 ? _GEN_344 : _GEN_321; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_356 = sram_id_field == 4'h3 ? _GEN_345 : _GEN_322; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_357 = sram_id_field == 4'h3 ? _GEN_346 : _GEN_323; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_358 = sram_id_field == 4'h3 ? _GEN_347 : _GEN_324; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_359 = sram_id_field == 4'h3 ? _GEN_348 : _GEN_325; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_360 = sram_id_field == 4'h3 ? _GEN_349 : _GEN_326; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_361 = sram_id_field == 4'h3 ? _GEN_350 : _GEN_327; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_362 = sram_id_field == 4'h3 ? _GEN_351 : _GEN_328; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_363 = sram_id_field == 4'h3 ? _GEN_352 : _GEN_329; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_364 = sram_id_field == 4'h3 ? _GEN_353 : _GEN_330; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_365 = _T_4 ? io_pcie_w_data : _GEN_331; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_366 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_332; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_368 = sram_id_field == 4'h5 ? _GEN_365 : _GEN_331; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_369 = sram_id_field == 4'h5 ? _GEN_366 : _GEN_332; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_372 = _T_1 ? _GEN_355 : _GEN_321; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_373 = _T_1 ? _GEN_356 : _GEN_322; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_374 = _T_1 ? _GEN_357 : _GEN_323; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_375 = _T_1 ? _GEN_358 : _GEN_324; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_376 = _T_1 ? _GEN_359 : _GEN_325; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_377 = _T_1 ? _GEN_360 : _GEN_326; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_378 = _T_1 ? _GEN_361 : _GEN_327; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_379 = _T_1 ? _GEN_362 : _GEN_328; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_380 = _T_1 ? _GEN_363 : _GEN_329; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_381 = _T_1 ? _GEN_364 : _GEN_330; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_382 = _T_1 ? _GEN_368 : _GEN_331; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_383 = _T_1 ? _GEN_369 : _GEN_332; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_403 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_372 : _GEN_321; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_404 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_373 : _GEN_322; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_405 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_374 : _GEN_323; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_406 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_375 : _GEN_324; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_407 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_376 : _GEN_325; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_408 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_377 : _GEN_326; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_409 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_378 : _GEN_327; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_410 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_379 : _GEN_328; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_411 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_380 : _GEN_329; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_412 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_381 : _GEN_330; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_413 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_382 : _GEN_331; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_414 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_383 : _GEN_332; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_5_mat_mod_w_en_T_1 = proc_id_field == 4'h5; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_426 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_403; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_427 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_404; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_428 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_405; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_429 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_406; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_430 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_407; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_431 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_408; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_432 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_409; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_433 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_410; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_434 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_411; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_435 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_412; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_437 = sram_id_field == 4'h3 ? _GEN_426 : _GEN_403; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_438 = sram_id_field == 4'h3 ? _GEN_427 : _GEN_404; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_439 = sram_id_field == 4'h3 ? _GEN_428 : _GEN_405; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_440 = sram_id_field == 4'h3 ? _GEN_429 : _GEN_406; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_441 = sram_id_field == 4'h3 ? _GEN_430 : _GEN_407; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_442 = sram_id_field == 4'h3 ? _GEN_431 : _GEN_408; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_443 = sram_id_field == 4'h3 ? _GEN_432 : _GEN_409; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_444 = sram_id_field == 4'h3 ? _GEN_433 : _GEN_410; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_445 = sram_id_field == 4'h3 ? _GEN_434 : _GEN_411; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_446 = sram_id_field == 4'h3 ? _GEN_435 : _GEN_412; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_447 = _T_4 ? io_pcie_w_data : _GEN_413; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_448 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_414; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_450 = sram_id_field == 4'h5 ? _GEN_447 : _GEN_413; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_451 = sram_id_field == 4'h5 ? _GEN_448 : _GEN_414; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_454 = _T_1 ? _GEN_437 : _GEN_403; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_455 = _T_1 ? _GEN_438 : _GEN_404; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_456 = _T_1 ? _GEN_439 : _GEN_405; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_457 = _T_1 ? _GEN_440 : _GEN_406; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_458 = _T_1 ? _GEN_441 : _GEN_407; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_459 = _T_1 ? _GEN_442 : _GEN_408; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_460 = _T_1 ? _GEN_443 : _GEN_409; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_461 = _T_1 ? _GEN_444 : _GEN_410; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_462 = _T_1 ? _GEN_445 : _GEN_411; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_463 = _T_1 ? _GEN_446 : _GEN_412; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_464 = _T_1 ? _GEN_450 : _GEN_413; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_465 = _T_1 ? _GEN_451 : _GEN_414; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_485 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_454 : _GEN_403; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_486 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_455 : _GEN_404; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_487 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_456 : _GEN_405; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_488 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_457 : _GEN_406; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_489 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_458 : _GEN_407; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_490 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_459 : _GEN_408; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_491 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_460 : _GEN_409; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_492 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_461 : _GEN_410; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_493 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_462 : _GEN_411; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_494 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_463 : _GEN_412; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_495 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_464 : _GEN_413; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_496 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_465 : _GEN_414; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_6_mat_mod_w_en_T_1 = proc_id_field == 4'h6; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_508 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_485; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_509 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_486; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_510 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_487; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_511 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_488; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_512 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_489; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_513 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_490; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_514 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_491; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_515 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_492; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_516 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_493; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_517 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_494; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_519 = sram_id_field == 4'h3 ? _GEN_508 : _GEN_485; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_520 = sram_id_field == 4'h3 ? _GEN_509 : _GEN_486; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_521 = sram_id_field == 4'h3 ? _GEN_510 : _GEN_487; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_522 = sram_id_field == 4'h3 ? _GEN_511 : _GEN_488; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_523 = sram_id_field == 4'h3 ? _GEN_512 : _GEN_489; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_524 = sram_id_field == 4'h3 ? _GEN_513 : _GEN_490; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_525 = sram_id_field == 4'h3 ? _GEN_514 : _GEN_491; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_526 = sram_id_field == 4'h3 ? _GEN_515 : _GEN_492; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_527 = sram_id_field == 4'h3 ? _GEN_516 : _GEN_493; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_528 = sram_id_field == 4'h3 ? _GEN_517 : _GEN_494; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_529 = _T_4 ? io_pcie_w_data : _GEN_495; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_530 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_496; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_532 = sram_id_field == 4'h5 ? _GEN_529 : _GEN_495; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_533 = sram_id_field == 4'h5 ? _GEN_530 : _GEN_496; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_536 = _T_1 ? _GEN_519 : _GEN_485; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_537 = _T_1 ? _GEN_520 : _GEN_486; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_538 = _T_1 ? _GEN_521 : _GEN_487; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_539 = _T_1 ? _GEN_522 : _GEN_488; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_540 = _T_1 ? _GEN_523 : _GEN_489; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_541 = _T_1 ? _GEN_524 : _GEN_490; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_542 = _T_1 ? _GEN_525 : _GEN_491; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_543 = _T_1 ? _GEN_526 : _GEN_492; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_544 = _T_1 ? _GEN_527 : _GEN_493; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_545 = _T_1 ? _GEN_528 : _GEN_494; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_546 = _T_1 ? _GEN_532 : _GEN_495; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_547 = _T_1 ? _GEN_533 : _GEN_496; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_567 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_536 : _GEN_485; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_568 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_537 : _GEN_486; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_569 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_538 : _GEN_487; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_570 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_539 : _GEN_488; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_571 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_540 : _GEN_489; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_572 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_541 : _GEN_490; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_573 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_542 : _GEN_491; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_574 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_543 : _GEN_492; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_575 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_544 : _GEN_493; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_576 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_545 : _GEN_494; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_577 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_546 : _GEN_495; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_578 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_547 : _GEN_496; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_7_mat_mod_w_en_T_1 = proc_id_field == 4'h7; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_590 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_567; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_591 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_568; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_592 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_569; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_593 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_570; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_594 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_571; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_595 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_572; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_596 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_573; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_597 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_574; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_598 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_575; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_599 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_576; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_601 = sram_id_field == 4'h3 ? _GEN_590 : _GEN_567; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_602 = sram_id_field == 4'h3 ? _GEN_591 : _GEN_568; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_603 = sram_id_field == 4'h3 ? _GEN_592 : _GEN_569; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_604 = sram_id_field == 4'h3 ? _GEN_593 : _GEN_570; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_605 = sram_id_field == 4'h3 ? _GEN_594 : _GEN_571; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_606 = sram_id_field == 4'h3 ? _GEN_595 : _GEN_572; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_607 = sram_id_field == 4'h3 ? _GEN_596 : _GEN_573; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_608 = sram_id_field == 4'h3 ? _GEN_597 : _GEN_574; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_609 = sram_id_field == 4'h3 ? _GEN_598 : _GEN_575; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_610 = sram_id_field == 4'h3 ? _GEN_599 : _GEN_576; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_611 = _T_4 ? io_pcie_w_data : _GEN_577; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_612 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_578; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_614 = sram_id_field == 4'h5 ? _GEN_611 : _GEN_577; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_615 = sram_id_field == 4'h5 ? _GEN_612 : _GEN_578; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_618 = _T_1 ? _GEN_601 : _GEN_567; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_619 = _T_1 ? _GEN_602 : _GEN_568; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_620 = _T_1 ? _GEN_603 : _GEN_569; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_621 = _T_1 ? _GEN_604 : _GEN_570; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_622 = _T_1 ? _GEN_605 : _GEN_571; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_623 = _T_1 ? _GEN_606 : _GEN_572; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_624 = _T_1 ? _GEN_607 : _GEN_573; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_625 = _T_1 ? _GEN_608 : _GEN_574; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_626 = _T_1 ? _GEN_609 : _GEN_575; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_627 = _T_1 ? _GEN_610 : _GEN_576; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_628 = _T_1 ? _GEN_614 : _GEN_577; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_629 = _T_1 ? _GEN_615 : _GEN_578; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_649 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_618 : _GEN_567; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_650 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_619 : _GEN_568; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_651 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_620 : _GEN_569; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_652 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_621 : _GEN_570; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_653 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_622 : _GEN_571; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_654 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_623 : _GEN_572; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_655 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_624 : _GEN_573; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_656 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_625 : _GEN_574; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_657 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_626 : _GEN_575; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_658 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_627 : _GEN_576; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_659 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_628 : _GEN_577; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_660 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_629 : _GEN_578; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_8_mat_mod_w_en_T_1 = proc_id_field == 4'h8; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_672 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_649; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_673 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_650; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_674 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_651; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_675 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_652; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_676 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_653; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_677 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_654; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_678 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_655; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_679 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_656; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_680 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_657; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_681 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_658; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_683 = sram_id_field == 4'h3 ? _GEN_672 : _GEN_649; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_684 = sram_id_field == 4'h3 ? _GEN_673 : _GEN_650; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_685 = sram_id_field == 4'h3 ? _GEN_674 : _GEN_651; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_686 = sram_id_field == 4'h3 ? _GEN_675 : _GEN_652; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_687 = sram_id_field == 4'h3 ? _GEN_676 : _GEN_653; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_688 = sram_id_field == 4'h3 ? _GEN_677 : _GEN_654; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_689 = sram_id_field == 4'h3 ? _GEN_678 : _GEN_655; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_690 = sram_id_field == 4'h3 ? _GEN_679 : _GEN_656; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_691 = sram_id_field == 4'h3 ? _GEN_680 : _GEN_657; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_692 = sram_id_field == 4'h3 ? _GEN_681 : _GEN_658; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_693 = _T_4 ? io_pcie_w_data : _GEN_659; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_694 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_660; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_696 = sram_id_field == 4'h5 ? _GEN_693 : _GEN_659; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_697 = sram_id_field == 4'h5 ? _GEN_694 : _GEN_660; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_700 = _T_1 ? _GEN_683 : _GEN_649; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_701 = _T_1 ? _GEN_684 : _GEN_650; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_702 = _T_1 ? _GEN_685 : _GEN_651; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_703 = _T_1 ? _GEN_686 : _GEN_652; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_704 = _T_1 ? _GEN_687 : _GEN_653; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_705 = _T_1 ? _GEN_688 : _GEN_654; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_706 = _T_1 ? _GEN_689 : _GEN_655; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_707 = _T_1 ? _GEN_690 : _GEN_656; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_708 = _T_1 ? _GEN_691 : _GEN_657; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_709 = _T_1 ? _GEN_692 : _GEN_658; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_710 = _T_1 ? _GEN_696 : _GEN_659; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_711 = _T_1 ? _GEN_697 : _GEN_660; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_731 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_700 : _GEN_649; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_732 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_701 : _GEN_650; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_733 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_702 : _GEN_651; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_734 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_703 : _GEN_652; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_735 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_704 : _GEN_653; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_736 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_705 : _GEN_654; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_737 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_706 : _GEN_655; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_738 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_707 : _GEN_656; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_739 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_708 : _GEN_657; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_740 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_709 : _GEN_658; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_741 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_710 : _GEN_659; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_742 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_711 : _GEN_660; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_9_mat_mod_w_en_T_1 = proc_id_field == 4'h9; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_754 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_731; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_755 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_732; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_756 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_733; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_757 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_734; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_758 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_735; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_759 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_736; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_760 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_737; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_761 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_738; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_762 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_739; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_763 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_740; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_765 = sram_id_field == 4'h3 ? _GEN_754 : _GEN_731; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_766 = sram_id_field == 4'h3 ? _GEN_755 : _GEN_732; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_767 = sram_id_field == 4'h3 ? _GEN_756 : _GEN_733; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_768 = sram_id_field == 4'h3 ? _GEN_757 : _GEN_734; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_769 = sram_id_field == 4'h3 ? _GEN_758 : _GEN_735; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_770 = sram_id_field == 4'h3 ? _GEN_759 : _GEN_736; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_771 = sram_id_field == 4'h3 ? _GEN_760 : _GEN_737; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_772 = sram_id_field == 4'h3 ? _GEN_761 : _GEN_738; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_773 = sram_id_field == 4'h3 ? _GEN_762 : _GEN_739; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_774 = sram_id_field == 4'h3 ? _GEN_763 : _GEN_740; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_775 = _T_4 ? io_pcie_w_data : _GEN_741; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_776 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_742; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_778 = sram_id_field == 4'h5 ? _GEN_775 : _GEN_741; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_779 = sram_id_field == 4'h5 ? _GEN_776 : _GEN_742; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_782 = _T_1 ? _GEN_765 : _GEN_731; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_783 = _T_1 ? _GEN_766 : _GEN_732; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_784 = _T_1 ? _GEN_767 : _GEN_733; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_785 = _T_1 ? _GEN_768 : _GEN_734; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_786 = _T_1 ? _GEN_769 : _GEN_735; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_787 = _T_1 ? _GEN_770 : _GEN_736; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_788 = _T_1 ? _GEN_771 : _GEN_737; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_789 = _T_1 ? _GEN_772 : _GEN_738; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_790 = _T_1 ? _GEN_773 : _GEN_739; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_791 = _T_1 ? _GEN_774 : _GEN_740; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_792 = _T_1 ? _GEN_778 : _GEN_741; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_793 = _T_1 ? _GEN_779 : _GEN_742; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_813 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_782 : _GEN_731; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_814 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_783 : _GEN_732; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_815 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_784 : _GEN_733; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_816 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_785 : _GEN_734; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_817 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_786 : _GEN_735; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_818 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_787 : _GEN_736; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_819 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_788 : _GEN_737; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_820 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_789 : _GEN_738; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_821 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_790 : _GEN_739; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_822 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_791 : _GEN_740; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_823 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_792 : _GEN_741; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_824 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_793 : _GEN_742; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_10_mat_mod_w_en_T_1 = proc_id_field == 4'ha; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_836 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_813; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_837 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_814; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_838 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_815; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_839 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_816; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_840 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_817; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_841 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_818; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_842 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_819; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_843 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_820; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_844 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_821; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_845 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_822; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_847 = sram_id_field == 4'h3 ? _GEN_836 : _GEN_813; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_848 = sram_id_field == 4'h3 ? _GEN_837 : _GEN_814; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_849 = sram_id_field == 4'h3 ? _GEN_838 : _GEN_815; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_850 = sram_id_field == 4'h3 ? _GEN_839 : _GEN_816; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_851 = sram_id_field == 4'h3 ? _GEN_840 : _GEN_817; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_852 = sram_id_field == 4'h3 ? _GEN_841 : _GEN_818; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_853 = sram_id_field == 4'h3 ? _GEN_842 : _GEN_819; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_854 = sram_id_field == 4'h3 ? _GEN_843 : _GEN_820; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_855 = sram_id_field == 4'h3 ? _GEN_844 : _GEN_821; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_856 = sram_id_field == 4'h3 ? _GEN_845 : _GEN_822; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_857 = _T_4 ? io_pcie_w_data : _GEN_823; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_858 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_824; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_860 = sram_id_field == 4'h5 ? _GEN_857 : _GEN_823; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_861 = sram_id_field == 4'h5 ? _GEN_858 : _GEN_824; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_864 = _T_1 ? _GEN_847 : _GEN_813; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_865 = _T_1 ? _GEN_848 : _GEN_814; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_866 = _T_1 ? _GEN_849 : _GEN_815; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_867 = _T_1 ? _GEN_850 : _GEN_816; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_868 = _T_1 ? _GEN_851 : _GEN_817; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_869 = _T_1 ? _GEN_852 : _GEN_818; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_870 = _T_1 ? _GEN_853 : _GEN_819; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_871 = _T_1 ? _GEN_854 : _GEN_820; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_872 = _T_1 ? _GEN_855 : _GEN_821; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_873 = _T_1 ? _GEN_856 : _GEN_822; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_874 = _T_1 ? _GEN_860 : _GEN_823; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_875 = _T_1 ? _GEN_861 : _GEN_824; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_895 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_864 : _GEN_813; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_896 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_865 : _GEN_814; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_897 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_866 : _GEN_815; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_898 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_867 : _GEN_816; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_899 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_868 : _GEN_817; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_900 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_869 : _GEN_818; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_901 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_870 : _GEN_819; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_902 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_871 : _GEN_820; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_903 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_872 : _GEN_821; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_904 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_873 : _GEN_822; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_905 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_874 : _GEN_823; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_906 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_875 : _GEN_824; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_11_mat_mod_w_en_T_1 = proc_id_field == 4'hb; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_918 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_895; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_919 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_896; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire [63:0] _GEN_929 = sram_id_field == 4'h3 ? _GEN_918 : _GEN_895; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_930 = sram_id_field == 4'h3 ? _GEN_919 : _GEN_896; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_939 = _T_4 ? io_pcie_w_data : _GEN_905; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_940 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_906; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_942 = sram_id_field == 4'h5 ? _GEN_939 : _GEN_905; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_943 = sram_id_field == 4'h5 ? _GEN_940 : _GEN_906; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_946 = _T_1 ? _GEN_929 : _GEN_895; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_947 = _T_1 ? _GEN_930 : _GEN_896; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_956 = _T_1 ? _GEN_942 : _GEN_905; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_957 = _T_1 ? _GEN_943 : _GEN_906; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_977 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_946 : _GEN_895; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_978 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_947 : _GEN_896; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_987 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_956 : _GEN_905; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_988 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_957 : _GEN_906; // @[pcie_interface_pisa.scala 102:43]
  assign io_pcie_r_data = io_pcie_o_r_data; // @[pcie_interface_pisa.scala 19:22]
  assign io_pcie_o_cs = io_pcie_r_addr[12:8]; // @[pcie_interface_pisa.scala 16:39]
  assign io_pcie_o_r_en = io_pcie_r_en; // @[pcie_interface_pisa.scala 17:22]
  assign io_pcie_o_r_addr = io_pcie_r_addr[7:0]; // @[pcie_interface_pisa.scala 18:39]
  assign io_mod_par_mod_en = type_field == 4'h3 ? _GEN_7 : _T; // @[pcie_interface_pisa.scala 52:36]
  assign io_mod_par_mod_last_mau_id_mod = type_field == 4'h3 & _GEN_8; // @[pcie_interface_pisa.scala 52:36 pcie_interface_pisa.scala 39:29]
  assign io_mod_par_mod_last_mau_id = {{2'd0}, last_mau_id}; // @[pcie_interface_pisa.scala 40:29]
  assign io_mod_par_mod_cs = sram_id_field[2:0]; // @[pcie_interface_pisa.scala 41:46]
  assign io_mod_par_mod_module_mod_state_id_mod = type_field == 4'h3 & _GEN_9; // @[pcie_interface_pisa.scala 52:36 pcie_interface_pisa.scala 42:37]
  assign io_mod_par_mod_module_mod_state_id = state_id; // @[pcie_interface_pisa.scala 43:37]
  assign io_mod_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface_pisa.scala 44:54]
  assign io_mod_par_mod_module_mod_sram_w_en = type_field == 4'h2; // @[pcie_interface_pisa.scala 48:22]
  assign io_mod_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 47:37]
  assign io_mod_proc_mod_0_mat_mod_en = _io_mod_proc_mod_0_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_0_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_0_mat_mod_key_mod_en = _io_mod_proc_mod_0_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_0_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_0_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_0_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_0_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_0_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_0_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_0_mat_mod_key_mod_group_id_0 = {{1'd0}, group_id_0}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_0_mat_mod_key_mod_group_id_1 = {{1'd0}, group_id_1}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_0_mat_mod_key_mod_group_id_2 = {{1'd0}, group_id_2}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_0_mat_mod_key_mod_group_id_3 = {{1'd0}, group_id_3}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_0_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_0_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h0; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_0_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_0_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_0_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_0_exe_mod_en_0 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 & _GEN_66; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_0_exe_mod_en_1 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 & _GEN_68; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_0_exe_mod_en_2 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 & _GEN_70; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_0_exe_mod_en_3 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 & _GEN_72; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_0_exe_mod_addr = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_65 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_0_exe_mod_data_0 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_67 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_0_exe_mod_data_1 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_69 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_0_exe_mod_data_2 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_71 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_0_exe_mod_data_3 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_73 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_1_mat_mod_en = _io_mod_proc_mod_1_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_1_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_1_mat_mod_key_mod_en = _io_mod_proc_mod_1_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_id_0 = {{1'd0}, group_id_0}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_id_1 = {{1'd0}, group_id_1}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_id_2 = {{1'd0}, group_id_2}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_id_3 = {{1'd0}, group_id_3}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_1_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_1_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h1; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_1_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_1_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_1_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_1_exe_mod_en_0 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 & _GEN_66; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_1_exe_mod_en_1 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 & _GEN_68; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_1_exe_mod_en_2 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 & _GEN_70; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_1_exe_mod_en_3 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 & _GEN_72; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_1_exe_mod_addr = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_65 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_1_exe_mod_data_0 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_67 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_1_exe_mod_data_1 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_69 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_1_exe_mod_data_2 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_71 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_1_exe_mod_data_3 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_73 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_2_mat_mod_en = _io_mod_proc_mod_2_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_2_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_2_mat_mod_key_mod_en = _io_mod_proc_mod_2_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_id_0 = {{1'd0}, group_id_0}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_id_1 = {{1'd0}, group_id_1}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_id_2 = {{1'd0}, group_id_2}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_id_3 = {{1'd0}, group_id_3}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_2_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_2_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h2; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_2_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_2_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_2_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_2_exe_mod_en_0 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 & _GEN_66; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_2_exe_mod_en_1 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 & _GEN_68; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_2_exe_mod_en_2 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 & _GEN_70; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_2_exe_mod_en_3 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 & _GEN_72; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_2_exe_mod_addr = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_65 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_2_exe_mod_data_0 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_67 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_2_exe_mod_data_1 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_69 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_2_exe_mod_data_2 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_71 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_2_exe_mod_data_3 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_73 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_3_mat_mod_en = _io_mod_proc_mod_3_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_3_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_3_mat_mod_key_mod_en = _io_mod_proc_mod_3_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_id_0 = {{1'd0}, group_id_0}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_id_1 = {{1'd0}, group_id_1}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_id_2 = {{1'd0}, group_id_2}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_id_3 = {{1'd0}, group_id_3}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_3_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_3_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h3; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_3_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_3_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_3_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_3_exe_mod_en_0 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 & _GEN_66; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_3_exe_mod_en_1 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 & _GEN_68; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_3_exe_mod_en_2 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 & _GEN_70; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_3_exe_mod_en_3 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 & _GEN_72; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_3_exe_mod_addr = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_65 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_3_exe_mod_data_0 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_67 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_3_exe_mod_data_1 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_69 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_3_exe_mod_data_2 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_71 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_3_exe_mod_data_3 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_73 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_4_mat_mod_en = _io_mod_proc_mod_4_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_4_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_4_mat_mod_key_mod_en = _io_mod_proc_mod_4_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_id_0 = {{1'd0}, group_id_0}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_id_1 = {{1'd0}, group_id_1}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_id_2 = {{1'd0}, group_id_2}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_id_3 = {{1'd0}, group_id_3}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_4_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_4_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h4; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_4_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_4_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_4_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_4_exe_mod_en_0 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 & _GEN_66; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_4_exe_mod_en_1 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 & _GEN_68; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_4_exe_mod_en_2 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 & _GEN_70; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_4_exe_mod_en_3 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 & _GEN_72; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_4_exe_mod_addr = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_65 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_4_exe_mod_data_0 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_67 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_4_exe_mod_data_1 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_69 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_4_exe_mod_data_2 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_71 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_4_exe_mod_data_3 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_73 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_5_mat_mod_en = _io_mod_proc_mod_5_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_5_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_5_mat_mod_key_mod_en = _io_mod_proc_mod_5_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_id_0 = {{1'd0}, group_id_0}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_id_1 = {{1'd0}, group_id_1}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_id_2 = {{1'd0}, group_id_2}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_id_3 = {{1'd0}, group_id_3}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_5_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_5_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h5; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_5_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_5_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_5_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_5_exe_mod_en_0 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 & _GEN_66; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_5_exe_mod_en_1 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 & _GEN_68; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_5_exe_mod_en_2 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 & _GEN_70; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_5_exe_mod_en_3 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 & _GEN_72; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_5_exe_mod_addr = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_65 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_5_exe_mod_data_0 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_67 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_5_exe_mod_data_1 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_69 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_5_exe_mod_data_2 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_71 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_5_exe_mod_data_3 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_73 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_6_mat_mod_en = _io_mod_proc_mod_6_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_6_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_6_mat_mod_key_mod_en = _io_mod_proc_mod_6_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_id_0 = {{1'd0}, group_id_0}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_id_1 = {{1'd0}, group_id_1}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_id_2 = {{1'd0}, group_id_2}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_id_3 = {{1'd0}, group_id_3}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_6_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_6_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h6; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_6_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_6_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_6_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_6_exe_mod_en_0 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 & _GEN_66; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_6_exe_mod_en_1 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 & _GEN_68; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_6_exe_mod_en_2 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 & _GEN_70; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_6_exe_mod_en_3 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 & _GEN_72; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_6_exe_mod_addr = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_65 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_6_exe_mod_data_0 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_67 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_6_exe_mod_data_1 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_69 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_6_exe_mod_data_2 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_71 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_6_exe_mod_data_3 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_73 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_7_mat_mod_en = _io_mod_proc_mod_7_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_7_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_7_mat_mod_key_mod_en = _io_mod_proc_mod_7_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_id_0 = {{1'd0}, group_id_0}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_id_1 = {{1'd0}, group_id_1}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_id_2 = {{1'd0}, group_id_2}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_id_3 = {{1'd0}, group_id_3}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_7_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_7_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h7; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_7_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_7_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_7_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_7_exe_mod_en_0 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 & _GEN_66; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_7_exe_mod_en_1 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 & _GEN_68; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_7_exe_mod_en_2 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 & _GEN_70; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_7_exe_mod_en_3 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 & _GEN_72; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_7_exe_mod_addr = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_65 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_7_exe_mod_data_0 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_67 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_7_exe_mod_data_1 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_69 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_7_exe_mod_data_2 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_71 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_7_exe_mod_data_3 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_73 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_8_mat_mod_en = _io_mod_proc_mod_8_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_8_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_8_mat_mod_key_mod_en = _io_mod_proc_mod_8_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_id_0 = {{1'd0}, group_id_0}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_id_1 = {{1'd0}, group_id_1}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_id_2 = {{1'd0}, group_id_2}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_id_3 = {{1'd0}, group_id_3}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_8_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_8_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h8; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_8_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_8_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_8_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_8_exe_mod_en_0 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 & _GEN_66; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_8_exe_mod_en_1 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 & _GEN_68; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_8_exe_mod_en_2 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 & _GEN_70; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_8_exe_mod_en_3 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 & _GEN_72; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_8_exe_mod_addr = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_65 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_8_exe_mod_data_0 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_67 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_8_exe_mod_data_1 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_69 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_8_exe_mod_data_2 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_71 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_8_exe_mod_data_3 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_73 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_9_mat_mod_en = _io_mod_proc_mod_9_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_9_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_9_mat_mod_key_mod_en = _io_mod_proc_mod_9_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_id_0 = {{1'd0}, group_id_0}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_id_1 = {{1'd0}, group_id_1}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_id_2 = {{1'd0}, group_id_2}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_id_3 = {{1'd0}, group_id_3}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_9_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_9_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h9; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_9_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_9_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_9_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_9_exe_mod_en_0 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 & _GEN_66; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_9_exe_mod_en_1 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 & _GEN_68; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_9_exe_mod_en_2 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 & _GEN_70; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_9_exe_mod_en_3 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 & _GEN_72; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_9_exe_mod_addr = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_65 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_9_exe_mod_data_0 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_67 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_9_exe_mod_data_1 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_69 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_9_exe_mod_data_2 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_71 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_9_exe_mod_data_3 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_73 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_10_mat_mod_en = _io_mod_proc_mod_10_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_10_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_10_mat_mod_key_mod_en = _io_mod_proc_mod_10_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_id_0 = {{1'd0}, group_id_0}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_id_1 = {{1'd0}, group_id_1}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_id_2 = {{1'd0}, group_id_2}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_id_3 = {{1'd0}, group_id_3}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_10_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_10_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'ha; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_10_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_10_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_10_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_10_exe_mod_en_0 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 & _GEN_66; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_10_exe_mod_en_1 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 & _GEN_68; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_10_exe_mod_en_2 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 & _GEN_70; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_10_exe_mod_en_3 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 & _GEN_72; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_10_exe_mod_addr = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_65 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_10_exe_mod_data_0 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_67 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_10_exe_mod_data_1 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_69 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_10_exe_mod_data_2 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_71 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_10_exe_mod_data_3 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_73 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_11_mat_mod_en = _io_mod_proc_mod_11_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_11_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_11_mat_mod_key_mod_en = _io_mod_proc_mod_11_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_id_0 = {{1'd0}, group_id_0}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_id_1 = {{1'd0}, group_id_1}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_id_2 = {{1'd0}, group_id_2}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_id_3 = {{1'd0}, group_id_3}; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_11_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_11_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'hb; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_11_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_11_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_11_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_11_exe_mod_en_0 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 & _GEN_66; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_11_exe_mod_en_1 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 & _GEN_68; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_11_exe_mod_en_2 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 & _GEN_70; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_11_exe_mod_en_3 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 & _GEN_72; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_11_exe_mod_addr = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_65 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_11_exe_mod_data_0 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_67 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_11_exe_mod_data_1 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_69 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_11_exe_mod_data_2 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_71 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_11_exe_mod_data_3 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_73 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  always @(posedge clock) begin
    last_mau_id <= _GEN_10[1:0];
    state_id <= _GEN_11[7:0];
    group_index <= _GEN_977[2:0];
    group_config <= _GEN_978[1:0];
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h6) begin // @[pcie_interface_pisa.scala 116:54]
            group_mask_0 <= io_pcie_w_data[0]; // @[pcie_interface_pisa.scala 118:43]
          end else begin
            group_mask_0 <= _GEN_897;
          end
        end else begin
          group_mask_0 <= _GEN_897;
        end
      end else begin
        group_mask_0 <= _GEN_897;
      end
    end else begin
      group_mask_0 <= _GEN_897;
    end
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h6) begin // @[pcie_interface_pisa.scala 116:54]
            group_mask_1 <= io_pcie_w_data[1]; // @[pcie_interface_pisa.scala 118:43]
          end else begin
            group_mask_1 <= _GEN_898;
          end
        end else begin
          group_mask_1 <= _GEN_898;
        end
      end else begin
        group_mask_1 <= _GEN_898;
      end
    end else begin
      group_mask_1 <= _GEN_898;
    end
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h6) begin // @[pcie_interface_pisa.scala 116:54]
            group_mask_2 <= io_pcie_w_data[2]; // @[pcie_interface_pisa.scala 118:43]
          end else begin
            group_mask_2 <= _GEN_899;
          end
        end else begin
          group_mask_2 <= _GEN_899;
        end
      end else begin
        group_mask_2 <= _GEN_899;
      end
    end else begin
      group_mask_2 <= _GEN_899;
    end
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h6) begin // @[pcie_interface_pisa.scala 116:54]
            group_mask_3 <= io_pcie_w_data[3]; // @[pcie_interface_pisa.scala 118:43]
          end else begin
            group_mask_3 <= _GEN_900;
          end
        end else begin
          group_mask_3 <= _GEN_900;
        end
      end else begin
        group_mask_3 <= _GEN_900;
      end
    end else begin
      group_mask_3 <= _GEN_900;
    end
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h7) begin // @[pcie_interface_pisa.scala 121:54]
            group_id_0 <= io_pcie_w_data[6:0]; // @[pcie_interface_pisa.scala 123:41]
          end else begin
            group_id_0 <= _GEN_901;
          end
        end else begin
          group_id_0 <= _GEN_901;
        end
      end else begin
        group_id_0 <= _GEN_901;
      end
    end else begin
      group_id_0 <= _GEN_901;
    end
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h7) begin // @[pcie_interface_pisa.scala 121:54]
            group_id_1 <= io_pcie_w_data[14:8]; // @[pcie_interface_pisa.scala 123:41]
          end else begin
            group_id_1 <= _GEN_902;
          end
        end else begin
          group_id_1 <= _GEN_902;
        end
      end else begin
        group_id_1 <= _GEN_902;
      end
    end else begin
      group_id_1 <= _GEN_902;
    end
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h7) begin // @[pcie_interface_pisa.scala 121:54]
            group_id_2 <= io_pcie_w_data[22:16]; // @[pcie_interface_pisa.scala 123:41]
          end else begin
            group_id_2 <= _GEN_903;
          end
        end else begin
          group_id_2 <= _GEN_903;
        end
      end else begin
        group_id_2 <= _GEN_903;
      end
    end else begin
      group_id_2 <= _GEN_903;
    end
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h7) begin // @[pcie_interface_pisa.scala 121:54]
            group_id_3 <= io_pcie_w_data[30:24]; // @[pcie_interface_pisa.scala 123:41]
          end else begin
            group_id_3 <= _GEN_904;
          end
        end else begin
          group_id_3 <= _GEN_904;
        end
      end else begin
        group_id_3 <= _GEN_904;
      end
    end else begin
      group_id_3 <= _GEN_904;
    end
    mat_tab_table_depth <= _GEN_988[4:0];
    mat_tab_table_width <= _GEN_987[4:0];
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
  group_index = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  group_config = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  group_mask_0 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  group_mask_1 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  group_mask_2 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  group_mask_3 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  group_id_0 = _RAND_8[6:0];
  _RAND_9 = {1{`RANDOM}};
  group_id_1 = _RAND_9[6:0];
  _RAND_10 = {1{`RANDOM}};
  group_id_2 = _RAND_10[6:0];
  _RAND_11 = {1{`RANDOM}};
  group_id_3 = _RAND_11[6:0];
  _RAND_12 = {1{`RANDOM}};
  mat_tab_table_depth = _RAND_12[4:0];
  _RAND_13 = {1{`RANDOM}};
  mat_tab_table_width = _RAND_13[4:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
