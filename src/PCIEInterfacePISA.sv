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
  output [6:0]  io_mod_proc_mod_0_mat_mod_key_mod_group_id_0,
  output [6:0]  io_mod_proc_mod_0_mat_mod_key_mod_group_id_1,
  output [6:0]  io_mod_proc_mod_0_mat_mod_key_mod_group_id_2,
  output [6:0]  io_mod_proc_mod_0_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_0_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_0_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_0_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_0_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_0_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_0_mat_mod_w_data,
  output        io_mod_proc_mod_0_exe_mod_en_0,
  output        io_mod_proc_mod_0_exe_mod_en_1,
  output [7:0]  io_mod_proc_mod_0_exe_mod_addr,
  output [63:0] io_mod_proc_mod_0_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_0_exe_mod_data_1,
  output        io_mod_proc_mod_1_mat_mod_en,
  output        io_mod_proc_mod_1_mat_mod_config_id,
  output        io_mod_proc_mod_1_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_1_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_1_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_1_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_1_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_1_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_1_mat_mod_key_mod_group_mask_3,
  output [6:0]  io_mod_proc_mod_1_mat_mod_key_mod_group_id_0,
  output [6:0]  io_mod_proc_mod_1_mat_mod_key_mod_group_id_1,
  output [6:0]  io_mod_proc_mod_1_mat_mod_key_mod_group_id_2,
  output [6:0]  io_mod_proc_mod_1_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_1_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_1_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_1_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_1_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_1_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_1_mat_mod_w_data,
  output        io_mod_proc_mod_1_exe_mod_en_0,
  output        io_mod_proc_mod_1_exe_mod_en_1,
  output [7:0]  io_mod_proc_mod_1_exe_mod_addr,
  output [63:0] io_mod_proc_mod_1_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_1_exe_mod_data_1,
  output        io_mod_proc_mod_2_mat_mod_en,
  output        io_mod_proc_mod_2_mat_mod_config_id,
  output        io_mod_proc_mod_2_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_2_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_2_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_2_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_2_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_2_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_2_mat_mod_key_mod_group_mask_3,
  output [6:0]  io_mod_proc_mod_2_mat_mod_key_mod_group_id_0,
  output [6:0]  io_mod_proc_mod_2_mat_mod_key_mod_group_id_1,
  output [6:0]  io_mod_proc_mod_2_mat_mod_key_mod_group_id_2,
  output [6:0]  io_mod_proc_mod_2_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_2_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_2_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_2_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_2_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_2_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_2_mat_mod_w_data,
  output        io_mod_proc_mod_2_exe_mod_en_0,
  output        io_mod_proc_mod_2_exe_mod_en_1,
  output [7:0]  io_mod_proc_mod_2_exe_mod_addr,
  output [63:0] io_mod_proc_mod_2_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_2_exe_mod_data_1,
  output        io_mod_proc_mod_3_mat_mod_en,
  output        io_mod_proc_mod_3_mat_mod_config_id,
  output        io_mod_proc_mod_3_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_3_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_3_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_3_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_3_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_3_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_3_mat_mod_key_mod_group_mask_3,
  output [6:0]  io_mod_proc_mod_3_mat_mod_key_mod_group_id_0,
  output [6:0]  io_mod_proc_mod_3_mat_mod_key_mod_group_id_1,
  output [6:0]  io_mod_proc_mod_3_mat_mod_key_mod_group_id_2,
  output [6:0]  io_mod_proc_mod_3_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_3_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_3_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_3_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_3_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_3_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_3_mat_mod_w_data,
  output        io_mod_proc_mod_3_exe_mod_en_0,
  output        io_mod_proc_mod_3_exe_mod_en_1,
  output [7:0]  io_mod_proc_mod_3_exe_mod_addr,
  output [63:0] io_mod_proc_mod_3_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_3_exe_mod_data_1,
  output        io_mod_proc_mod_4_mat_mod_en,
  output        io_mod_proc_mod_4_mat_mod_config_id,
  output        io_mod_proc_mod_4_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_4_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_4_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_4_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_4_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_4_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_4_mat_mod_key_mod_group_mask_3,
  output [6:0]  io_mod_proc_mod_4_mat_mod_key_mod_group_id_0,
  output [6:0]  io_mod_proc_mod_4_mat_mod_key_mod_group_id_1,
  output [6:0]  io_mod_proc_mod_4_mat_mod_key_mod_group_id_2,
  output [6:0]  io_mod_proc_mod_4_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_4_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_4_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_4_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_4_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_4_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_4_mat_mod_w_data,
  output        io_mod_proc_mod_4_exe_mod_en_0,
  output        io_mod_proc_mod_4_exe_mod_en_1,
  output [7:0]  io_mod_proc_mod_4_exe_mod_addr,
  output [63:0] io_mod_proc_mod_4_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_4_exe_mod_data_1,
  output        io_mod_proc_mod_5_mat_mod_en,
  output        io_mod_proc_mod_5_mat_mod_config_id,
  output        io_mod_proc_mod_5_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_5_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_5_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_5_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_5_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_5_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_5_mat_mod_key_mod_group_mask_3,
  output [6:0]  io_mod_proc_mod_5_mat_mod_key_mod_group_id_0,
  output [6:0]  io_mod_proc_mod_5_mat_mod_key_mod_group_id_1,
  output [6:0]  io_mod_proc_mod_5_mat_mod_key_mod_group_id_2,
  output [6:0]  io_mod_proc_mod_5_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_5_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_5_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_5_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_5_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_5_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_5_mat_mod_w_data,
  output        io_mod_proc_mod_5_exe_mod_en_0,
  output        io_mod_proc_mod_5_exe_mod_en_1,
  output [7:0]  io_mod_proc_mod_5_exe_mod_addr,
  output [63:0] io_mod_proc_mod_5_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_5_exe_mod_data_1,
  output        io_mod_proc_mod_6_mat_mod_en,
  output        io_mod_proc_mod_6_mat_mod_config_id,
  output        io_mod_proc_mod_6_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_6_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_6_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_6_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_6_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_6_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_6_mat_mod_key_mod_group_mask_3,
  output [6:0]  io_mod_proc_mod_6_mat_mod_key_mod_group_id_0,
  output [6:0]  io_mod_proc_mod_6_mat_mod_key_mod_group_id_1,
  output [6:0]  io_mod_proc_mod_6_mat_mod_key_mod_group_id_2,
  output [6:0]  io_mod_proc_mod_6_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_6_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_6_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_6_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_6_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_6_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_6_mat_mod_w_data,
  output        io_mod_proc_mod_6_exe_mod_en_0,
  output        io_mod_proc_mod_6_exe_mod_en_1,
  output [7:0]  io_mod_proc_mod_6_exe_mod_addr,
  output [63:0] io_mod_proc_mod_6_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_6_exe_mod_data_1,
  output        io_mod_proc_mod_7_mat_mod_en,
  output        io_mod_proc_mod_7_mat_mod_config_id,
  output        io_mod_proc_mod_7_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_7_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_7_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_7_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_7_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_7_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_7_mat_mod_key_mod_group_mask_3,
  output [6:0]  io_mod_proc_mod_7_mat_mod_key_mod_group_id_0,
  output [6:0]  io_mod_proc_mod_7_mat_mod_key_mod_group_id_1,
  output [6:0]  io_mod_proc_mod_7_mat_mod_key_mod_group_id_2,
  output [6:0]  io_mod_proc_mod_7_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_7_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_7_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_7_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_7_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_7_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_7_mat_mod_w_data,
  output        io_mod_proc_mod_7_exe_mod_en_0,
  output        io_mod_proc_mod_7_exe_mod_en_1,
  output [7:0]  io_mod_proc_mod_7_exe_mod_addr,
  output [63:0] io_mod_proc_mod_7_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_7_exe_mod_data_1,
  output        io_mod_proc_mod_8_mat_mod_en,
  output        io_mod_proc_mod_8_mat_mod_config_id,
  output        io_mod_proc_mod_8_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_8_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_8_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_8_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_8_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_8_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_8_mat_mod_key_mod_group_mask_3,
  output [6:0]  io_mod_proc_mod_8_mat_mod_key_mod_group_id_0,
  output [6:0]  io_mod_proc_mod_8_mat_mod_key_mod_group_id_1,
  output [6:0]  io_mod_proc_mod_8_mat_mod_key_mod_group_id_2,
  output [6:0]  io_mod_proc_mod_8_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_8_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_8_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_8_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_8_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_8_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_8_mat_mod_w_data,
  output        io_mod_proc_mod_8_exe_mod_en_0,
  output        io_mod_proc_mod_8_exe_mod_en_1,
  output [7:0]  io_mod_proc_mod_8_exe_mod_addr,
  output [63:0] io_mod_proc_mod_8_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_8_exe_mod_data_1,
  output        io_mod_proc_mod_9_mat_mod_en,
  output        io_mod_proc_mod_9_mat_mod_config_id,
  output        io_mod_proc_mod_9_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_9_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_9_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_9_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_9_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_9_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_9_mat_mod_key_mod_group_mask_3,
  output [6:0]  io_mod_proc_mod_9_mat_mod_key_mod_group_id_0,
  output [6:0]  io_mod_proc_mod_9_mat_mod_key_mod_group_id_1,
  output [6:0]  io_mod_proc_mod_9_mat_mod_key_mod_group_id_2,
  output [6:0]  io_mod_proc_mod_9_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_9_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_9_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_9_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_9_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_9_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_9_mat_mod_w_data,
  output        io_mod_proc_mod_9_exe_mod_en_0,
  output        io_mod_proc_mod_9_exe_mod_en_1,
  output [7:0]  io_mod_proc_mod_9_exe_mod_addr,
  output [63:0] io_mod_proc_mod_9_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_9_exe_mod_data_1,
  output        io_mod_proc_mod_10_mat_mod_en,
  output        io_mod_proc_mod_10_mat_mod_config_id,
  output        io_mod_proc_mod_10_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_10_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_10_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_10_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_10_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_10_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_10_mat_mod_key_mod_group_mask_3,
  output [6:0]  io_mod_proc_mod_10_mat_mod_key_mod_group_id_0,
  output [6:0]  io_mod_proc_mod_10_mat_mod_key_mod_group_id_1,
  output [6:0]  io_mod_proc_mod_10_mat_mod_key_mod_group_id_2,
  output [6:0]  io_mod_proc_mod_10_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_10_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_10_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_10_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_10_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_10_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_10_mat_mod_w_data,
  output        io_mod_proc_mod_10_exe_mod_en_0,
  output        io_mod_proc_mod_10_exe_mod_en_1,
  output [7:0]  io_mod_proc_mod_10_exe_mod_addr,
  output [63:0] io_mod_proc_mod_10_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_10_exe_mod_data_1,
  output        io_mod_proc_mod_11_mat_mod_en,
  output        io_mod_proc_mod_11_mat_mod_config_id,
  output        io_mod_proc_mod_11_mat_mod_key_mod_en,
  output [2:0]  io_mod_proc_mod_11_mat_mod_key_mod_group_index,
  output [1:0]  io_mod_proc_mod_11_mat_mod_key_mod_group_config,
  output        io_mod_proc_mod_11_mat_mod_key_mod_group_mask_0,
  output        io_mod_proc_mod_11_mat_mod_key_mod_group_mask_1,
  output        io_mod_proc_mod_11_mat_mod_key_mod_group_mask_2,
  output        io_mod_proc_mod_11_mat_mod_key_mod_group_mask_3,
  output [6:0]  io_mod_proc_mod_11_mat_mod_key_mod_group_id_0,
  output [6:0]  io_mod_proc_mod_11_mat_mod_key_mod_group_id_1,
  output [6:0]  io_mod_proc_mod_11_mat_mod_key_mod_group_id_2,
  output [6:0]  io_mod_proc_mod_11_mat_mod_key_mod_group_id_3,
  output [4:0]  io_mod_proc_mod_11_mat_mod_table_mod_table_depth,
  output [4:0]  io_mod_proc_mod_11_mat_mod_table_mod_table_width,
  output        io_mod_proc_mod_11_mat_mod_w_en,
  output [3:0]  io_mod_proc_mod_11_mat_mod_w_sram_id,
  output [7:0]  io_mod_proc_mod_11_mat_mod_w_addr,
  output [63:0] io_mod_proc_mod_11_mat_mod_w_data,
  output        io_mod_proc_mod_11_exe_mod_en_0,
  output        io_mod_proc_mod_11_exe_mod_en_1,
  output [7:0]  io_mod_proc_mod_11_exe_mod_addr,
  output [63:0] io_mod_proc_mod_11_exe_mod_data_0,
  output [63:0] io_mod_proc_mod_11_exe_mod_data_1
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
  wire [7:0] _GEN_61 = type_field == 4'h4 ? offset_field : 8'h0; // @[pcie_interface_pisa.scala 141:44 pcie_interface_pisa.scala 142:30 pcie_interface_pisa.scala 98:29]
  wire  _GEN_62 = type_field == 4'h4 & _T_19; // @[pcie_interface_pisa.scala 141:44 pcie_interface_pisa.scala 97:29]
  wire [63:0] _GEN_63 = type_field == 4'h4 ? _GEN_58 : 64'h0; // @[pcie_interface_pisa.scala 141:44 pcie_interface_pisa.scala 99:29]
  wire  _GEN_64 = type_field == 4'h4 & _T_2; // @[pcie_interface_pisa.scala 141:44 pcie_interface_pisa.scala 97:29]
  wire [63:0] _GEN_65 = type_field == 4'h4 ? _GEN_60 : 64'h0; // @[pcie_interface_pisa.scala 141:44 pcie_interface_pisa.scala 99:29]
  wire [63:0] _GEN_67 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_44 : {{61'd0}, group_index}; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 70:27]
  wire [63:0] _GEN_68 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_45 : {{62'd0}, group_config}; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 71:27]
  wire  _GEN_69 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_46 : group_mask_0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 72:27]
  wire  _GEN_70 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_47 : group_mask_1; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 72:27]
  wire  _GEN_71 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_48 : group_mask_2; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 72:27]
  wire  _GEN_72 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_49 : group_mask_3; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 72:27]
  wire [6:0] _GEN_73 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_50 : group_id_0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 73:27]
  wire [6:0] _GEN_74 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_51 : group_id_1; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 73:27]
  wire [6:0] _GEN_75 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_52 : group_id_2; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 73:27]
  wire [6:0] _GEN_76 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_53 : group_id_3; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 73:27]
  wire [63:0] _GEN_77 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_54 : {{59'd0}, mat_tab_table_width}; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 75:22]
  wire [63:0] _GEN_78 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_55 : {{59'd0}, mat_tab_table_depth}; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 75:22]
  wire  _io_mod_proc_mod_1_mat_mod_w_en_T_1 = proc_id_field == 4'h1; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_86 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_67; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_87 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_68; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_88 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_69; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_89 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_70; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_90 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_71; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_91 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_72; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_92 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_73; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_93 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_74; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_94 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_75; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_95 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_76; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_97 = sram_id_field == 4'h3 ? _GEN_86 : _GEN_67; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_98 = sram_id_field == 4'h3 ? _GEN_87 : _GEN_68; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_99 = sram_id_field == 4'h3 ? _GEN_88 : _GEN_69; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_100 = sram_id_field == 4'h3 ? _GEN_89 : _GEN_70; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_101 = sram_id_field == 4'h3 ? _GEN_90 : _GEN_71; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_102 = sram_id_field == 4'h3 ? _GEN_91 : _GEN_72; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_103 = sram_id_field == 4'h3 ? _GEN_92 : _GEN_73; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_104 = sram_id_field == 4'h3 ? _GEN_93 : _GEN_74; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_105 = sram_id_field == 4'h3 ? _GEN_94 : _GEN_75; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_106 = sram_id_field == 4'h3 ? _GEN_95 : _GEN_76; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_107 = _T_4 ? io_pcie_w_data : _GEN_77; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_108 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_78; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_110 = sram_id_field == 4'h5 ? _GEN_107 : _GEN_77; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_111 = sram_id_field == 4'h5 ? _GEN_108 : _GEN_78; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_114 = _T_1 ? _GEN_97 : _GEN_67; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_115 = _T_1 ? _GEN_98 : _GEN_68; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_116 = _T_1 ? _GEN_99 : _GEN_69; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_117 = _T_1 ? _GEN_100 : _GEN_70; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_118 = _T_1 ? _GEN_101 : _GEN_71; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_119 = _T_1 ? _GEN_102 : _GEN_72; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_120 = _T_1 ? _GEN_103 : _GEN_73; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_121 = _T_1 ? _GEN_104 : _GEN_74; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_122 = _T_1 ? _GEN_105 : _GEN_75; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_123 = _T_1 ? _GEN_106 : _GEN_76; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_124 = _T_1 ? _GEN_110 : _GEN_77; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_125 = _T_1 ? _GEN_111 : _GEN_78; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_137 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_114 : _GEN_67; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_138 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_115 : _GEN_68; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_139 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_116 : _GEN_69; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_140 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_117 : _GEN_70; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_141 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_118 : _GEN_71; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_142 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_119 : _GEN_72; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_143 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_120 : _GEN_73; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_144 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_121 : _GEN_74; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_145 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_122 : _GEN_75; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_146 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_123 : _GEN_76; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_147 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_124 : _GEN_77; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_148 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_125 : _GEN_78; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_2_mat_mod_w_en_T_1 = proc_id_field == 4'h2; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_156 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_137; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_157 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_138; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_158 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_139; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_159 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_140; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_160 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_141; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_161 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_142; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_162 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_143; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_163 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_144; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_164 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_145; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_165 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_146; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_167 = sram_id_field == 4'h3 ? _GEN_156 : _GEN_137; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_168 = sram_id_field == 4'h3 ? _GEN_157 : _GEN_138; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_169 = sram_id_field == 4'h3 ? _GEN_158 : _GEN_139; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_170 = sram_id_field == 4'h3 ? _GEN_159 : _GEN_140; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_171 = sram_id_field == 4'h3 ? _GEN_160 : _GEN_141; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_172 = sram_id_field == 4'h3 ? _GEN_161 : _GEN_142; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_173 = sram_id_field == 4'h3 ? _GEN_162 : _GEN_143; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_174 = sram_id_field == 4'h3 ? _GEN_163 : _GEN_144; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_175 = sram_id_field == 4'h3 ? _GEN_164 : _GEN_145; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_176 = sram_id_field == 4'h3 ? _GEN_165 : _GEN_146; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_177 = _T_4 ? io_pcie_w_data : _GEN_147; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_178 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_148; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_180 = sram_id_field == 4'h5 ? _GEN_177 : _GEN_147; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_181 = sram_id_field == 4'h5 ? _GEN_178 : _GEN_148; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_184 = _T_1 ? _GEN_167 : _GEN_137; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_185 = _T_1 ? _GEN_168 : _GEN_138; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_186 = _T_1 ? _GEN_169 : _GEN_139; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_187 = _T_1 ? _GEN_170 : _GEN_140; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_188 = _T_1 ? _GEN_171 : _GEN_141; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_189 = _T_1 ? _GEN_172 : _GEN_142; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_190 = _T_1 ? _GEN_173 : _GEN_143; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_191 = _T_1 ? _GEN_174 : _GEN_144; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_192 = _T_1 ? _GEN_175 : _GEN_145; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_193 = _T_1 ? _GEN_176 : _GEN_146; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_194 = _T_1 ? _GEN_180 : _GEN_147; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_195 = _T_1 ? _GEN_181 : _GEN_148; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_207 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_184 : _GEN_137; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_208 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_185 : _GEN_138; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_209 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_186 : _GEN_139; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_210 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_187 : _GEN_140; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_211 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_188 : _GEN_141; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_212 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_189 : _GEN_142; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_213 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_190 : _GEN_143; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_214 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_191 : _GEN_144; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_215 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_192 : _GEN_145; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_216 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_193 : _GEN_146; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_217 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_194 : _GEN_147; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_218 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_195 : _GEN_148; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_3_mat_mod_w_en_T_1 = proc_id_field == 4'h3; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_226 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_207; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_227 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_208; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_228 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_209; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_229 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_210; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_230 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_211; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_231 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_212; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_232 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_213; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_233 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_214; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_234 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_215; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_235 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_216; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_237 = sram_id_field == 4'h3 ? _GEN_226 : _GEN_207; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_238 = sram_id_field == 4'h3 ? _GEN_227 : _GEN_208; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_239 = sram_id_field == 4'h3 ? _GEN_228 : _GEN_209; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_240 = sram_id_field == 4'h3 ? _GEN_229 : _GEN_210; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_241 = sram_id_field == 4'h3 ? _GEN_230 : _GEN_211; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_242 = sram_id_field == 4'h3 ? _GEN_231 : _GEN_212; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_243 = sram_id_field == 4'h3 ? _GEN_232 : _GEN_213; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_244 = sram_id_field == 4'h3 ? _GEN_233 : _GEN_214; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_245 = sram_id_field == 4'h3 ? _GEN_234 : _GEN_215; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_246 = sram_id_field == 4'h3 ? _GEN_235 : _GEN_216; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_247 = _T_4 ? io_pcie_w_data : _GEN_217; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_248 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_218; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_250 = sram_id_field == 4'h5 ? _GEN_247 : _GEN_217; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_251 = sram_id_field == 4'h5 ? _GEN_248 : _GEN_218; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_254 = _T_1 ? _GEN_237 : _GEN_207; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_255 = _T_1 ? _GEN_238 : _GEN_208; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_256 = _T_1 ? _GEN_239 : _GEN_209; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_257 = _T_1 ? _GEN_240 : _GEN_210; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_258 = _T_1 ? _GEN_241 : _GEN_211; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_259 = _T_1 ? _GEN_242 : _GEN_212; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_260 = _T_1 ? _GEN_243 : _GEN_213; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_261 = _T_1 ? _GEN_244 : _GEN_214; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_262 = _T_1 ? _GEN_245 : _GEN_215; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_263 = _T_1 ? _GEN_246 : _GEN_216; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_264 = _T_1 ? _GEN_250 : _GEN_217; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_265 = _T_1 ? _GEN_251 : _GEN_218; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_277 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_254 : _GEN_207; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_278 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_255 : _GEN_208; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_279 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_256 : _GEN_209; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_280 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_257 : _GEN_210; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_281 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_258 : _GEN_211; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_282 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_259 : _GEN_212; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_283 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_260 : _GEN_213; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_284 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_261 : _GEN_214; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_285 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_262 : _GEN_215; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_286 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_263 : _GEN_216; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_287 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_264 : _GEN_217; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_288 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_265 : _GEN_218; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_4_mat_mod_w_en_T_1 = proc_id_field == 4'h4; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_296 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_277; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_297 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_278; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_298 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_279; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_299 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_280; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_300 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_281; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_301 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_282; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_302 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_283; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_303 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_284; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_304 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_285; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_305 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_286; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_307 = sram_id_field == 4'h3 ? _GEN_296 : _GEN_277; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_308 = sram_id_field == 4'h3 ? _GEN_297 : _GEN_278; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_309 = sram_id_field == 4'h3 ? _GEN_298 : _GEN_279; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_310 = sram_id_field == 4'h3 ? _GEN_299 : _GEN_280; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_311 = sram_id_field == 4'h3 ? _GEN_300 : _GEN_281; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_312 = sram_id_field == 4'h3 ? _GEN_301 : _GEN_282; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_313 = sram_id_field == 4'h3 ? _GEN_302 : _GEN_283; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_314 = sram_id_field == 4'h3 ? _GEN_303 : _GEN_284; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_315 = sram_id_field == 4'h3 ? _GEN_304 : _GEN_285; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_316 = sram_id_field == 4'h3 ? _GEN_305 : _GEN_286; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_317 = _T_4 ? io_pcie_w_data : _GEN_287; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_318 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_288; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_320 = sram_id_field == 4'h5 ? _GEN_317 : _GEN_287; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_321 = sram_id_field == 4'h5 ? _GEN_318 : _GEN_288; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_324 = _T_1 ? _GEN_307 : _GEN_277; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_325 = _T_1 ? _GEN_308 : _GEN_278; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_326 = _T_1 ? _GEN_309 : _GEN_279; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_327 = _T_1 ? _GEN_310 : _GEN_280; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_328 = _T_1 ? _GEN_311 : _GEN_281; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_329 = _T_1 ? _GEN_312 : _GEN_282; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_330 = _T_1 ? _GEN_313 : _GEN_283; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_331 = _T_1 ? _GEN_314 : _GEN_284; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_332 = _T_1 ? _GEN_315 : _GEN_285; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_333 = _T_1 ? _GEN_316 : _GEN_286; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_334 = _T_1 ? _GEN_320 : _GEN_287; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_335 = _T_1 ? _GEN_321 : _GEN_288; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_347 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_324 : _GEN_277; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_348 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_325 : _GEN_278; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_349 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_326 : _GEN_279; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_350 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_327 : _GEN_280; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_351 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_328 : _GEN_281; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_352 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_329 : _GEN_282; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_353 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_330 : _GEN_283; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_354 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_331 : _GEN_284; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_355 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_332 : _GEN_285; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_356 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_333 : _GEN_286; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_357 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_334 : _GEN_287; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_358 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_335 : _GEN_288; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_5_mat_mod_w_en_T_1 = proc_id_field == 4'h5; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_366 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_347; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_367 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_348; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_368 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_349; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_369 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_350; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_370 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_351; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_371 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_352; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_372 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_353; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_373 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_354; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_374 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_355; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_375 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_356; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_377 = sram_id_field == 4'h3 ? _GEN_366 : _GEN_347; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_378 = sram_id_field == 4'h3 ? _GEN_367 : _GEN_348; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_379 = sram_id_field == 4'h3 ? _GEN_368 : _GEN_349; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_380 = sram_id_field == 4'h3 ? _GEN_369 : _GEN_350; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_381 = sram_id_field == 4'h3 ? _GEN_370 : _GEN_351; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_382 = sram_id_field == 4'h3 ? _GEN_371 : _GEN_352; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_383 = sram_id_field == 4'h3 ? _GEN_372 : _GEN_353; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_384 = sram_id_field == 4'h3 ? _GEN_373 : _GEN_354; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_385 = sram_id_field == 4'h3 ? _GEN_374 : _GEN_355; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_386 = sram_id_field == 4'h3 ? _GEN_375 : _GEN_356; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_387 = _T_4 ? io_pcie_w_data : _GEN_357; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_388 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_358; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_390 = sram_id_field == 4'h5 ? _GEN_387 : _GEN_357; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_391 = sram_id_field == 4'h5 ? _GEN_388 : _GEN_358; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_394 = _T_1 ? _GEN_377 : _GEN_347; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_395 = _T_1 ? _GEN_378 : _GEN_348; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_396 = _T_1 ? _GEN_379 : _GEN_349; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_397 = _T_1 ? _GEN_380 : _GEN_350; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_398 = _T_1 ? _GEN_381 : _GEN_351; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_399 = _T_1 ? _GEN_382 : _GEN_352; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_400 = _T_1 ? _GEN_383 : _GEN_353; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_401 = _T_1 ? _GEN_384 : _GEN_354; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_402 = _T_1 ? _GEN_385 : _GEN_355; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_403 = _T_1 ? _GEN_386 : _GEN_356; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_404 = _T_1 ? _GEN_390 : _GEN_357; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_405 = _T_1 ? _GEN_391 : _GEN_358; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_417 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_394 : _GEN_347; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_418 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_395 : _GEN_348; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_419 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_396 : _GEN_349; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_420 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_397 : _GEN_350; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_421 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_398 : _GEN_351; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_422 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_399 : _GEN_352; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_423 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_400 : _GEN_353; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_424 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_401 : _GEN_354; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_425 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_402 : _GEN_355; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_426 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_403 : _GEN_356; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_427 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_404 : _GEN_357; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_428 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_405 : _GEN_358; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_6_mat_mod_w_en_T_1 = proc_id_field == 4'h6; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_436 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_417; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_437 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_418; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_438 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_419; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_439 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_420; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_440 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_421; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_441 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_422; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_442 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_423; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_443 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_424; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_444 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_425; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_445 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_426; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_447 = sram_id_field == 4'h3 ? _GEN_436 : _GEN_417; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_448 = sram_id_field == 4'h3 ? _GEN_437 : _GEN_418; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_449 = sram_id_field == 4'h3 ? _GEN_438 : _GEN_419; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_450 = sram_id_field == 4'h3 ? _GEN_439 : _GEN_420; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_451 = sram_id_field == 4'h3 ? _GEN_440 : _GEN_421; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_452 = sram_id_field == 4'h3 ? _GEN_441 : _GEN_422; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_453 = sram_id_field == 4'h3 ? _GEN_442 : _GEN_423; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_454 = sram_id_field == 4'h3 ? _GEN_443 : _GEN_424; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_455 = sram_id_field == 4'h3 ? _GEN_444 : _GEN_425; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_456 = sram_id_field == 4'h3 ? _GEN_445 : _GEN_426; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_457 = _T_4 ? io_pcie_w_data : _GEN_427; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_458 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_428; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_460 = sram_id_field == 4'h5 ? _GEN_457 : _GEN_427; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_461 = sram_id_field == 4'h5 ? _GEN_458 : _GEN_428; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_464 = _T_1 ? _GEN_447 : _GEN_417; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_465 = _T_1 ? _GEN_448 : _GEN_418; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_466 = _T_1 ? _GEN_449 : _GEN_419; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_467 = _T_1 ? _GEN_450 : _GEN_420; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_468 = _T_1 ? _GEN_451 : _GEN_421; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_469 = _T_1 ? _GEN_452 : _GEN_422; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_470 = _T_1 ? _GEN_453 : _GEN_423; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_471 = _T_1 ? _GEN_454 : _GEN_424; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_472 = _T_1 ? _GEN_455 : _GEN_425; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_473 = _T_1 ? _GEN_456 : _GEN_426; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_474 = _T_1 ? _GEN_460 : _GEN_427; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_475 = _T_1 ? _GEN_461 : _GEN_428; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_487 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_464 : _GEN_417; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_488 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_465 : _GEN_418; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_489 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_466 : _GEN_419; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_490 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_467 : _GEN_420; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_491 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_468 : _GEN_421; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_492 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_469 : _GEN_422; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_493 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_470 : _GEN_423; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_494 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_471 : _GEN_424; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_495 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_472 : _GEN_425; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_496 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_473 : _GEN_426; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_497 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_474 : _GEN_427; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_498 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_475 : _GEN_428; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_7_mat_mod_w_en_T_1 = proc_id_field == 4'h7; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_506 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_487; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_507 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_488; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_508 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_489; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_509 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_490; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_510 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_491; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_511 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_492; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_512 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_493; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_513 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_494; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_514 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_495; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_515 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_496; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_517 = sram_id_field == 4'h3 ? _GEN_506 : _GEN_487; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_518 = sram_id_field == 4'h3 ? _GEN_507 : _GEN_488; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_519 = sram_id_field == 4'h3 ? _GEN_508 : _GEN_489; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_520 = sram_id_field == 4'h3 ? _GEN_509 : _GEN_490; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_521 = sram_id_field == 4'h3 ? _GEN_510 : _GEN_491; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_522 = sram_id_field == 4'h3 ? _GEN_511 : _GEN_492; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_523 = sram_id_field == 4'h3 ? _GEN_512 : _GEN_493; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_524 = sram_id_field == 4'h3 ? _GEN_513 : _GEN_494; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_525 = sram_id_field == 4'h3 ? _GEN_514 : _GEN_495; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_526 = sram_id_field == 4'h3 ? _GEN_515 : _GEN_496; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_527 = _T_4 ? io_pcie_w_data : _GEN_497; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_528 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_498; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_530 = sram_id_field == 4'h5 ? _GEN_527 : _GEN_497; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_531 = sram_id_field == 4'h5 ? _GEN_528 : _GEN_498; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_534 = _T_1 ? _GEN_517 : _GEN_487; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_535 = _T_1 ? _GEN_518 : _GEN_488; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_536 = _T_1 ? _GEN_519 : _GEN_489; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_537 = _T_1 ? _GEN_520 : _GEN_490; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_538 = _T_1 ? _GEN_521 : _GEN_491; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_539 = _T_1 ? _GEN_522 : _GEN_492; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_540 = _T_1 ? _GEN_523 : _GEN_493; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_541 = _T_1 ? _GEN_524 : _GEN_494; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_542 = _T_1 ? _GEN_525 : _GEN_495; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_543 = _T_1 ? _GEN_526 : _GEN_496; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_544 = _T_1 ? _GEN_530 : _GEN_497; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_545 = _T_1 ? _GEN_531 : _GEN_498; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_557 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_534 : _GEN_487; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_558 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_535 : _GEN_488; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_559 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_536 : _GEN_489; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_560 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_537 : _GEN_490; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_561 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_538 : _GEN_491; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_562 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_539 : _GEN_492; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_563 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_540 : _GEN_493; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_564 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_541 : _GEN_494; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_565 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_542 : _GEN_495; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_566 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_543 : _GEN_496; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_567 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_544 : _GEN_497; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_568 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_545 : _GEN_498; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_8_mat_mod_w_en_T_1 = proc_id_field == 4'h8; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_576 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_557; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_577 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_558; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_578 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_559; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_579 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_560; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_580 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_561; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_581 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_562; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_582 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_563; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_583 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_564; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_584 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_565; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_585 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_566; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_587 = sram_id_field == 4'h3 ? _GEN_576 : _GEN_557; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_588 = sram_id_field == 4'h3 ? _GEN_577 : _GEN_558; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_589 = sram_id_field == 4'h3 ? _GEN_578 : _GEN_559; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_590 = sram_id_field == 4'h3 ? _GEN_579 : _GEN_560; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_591 = sram_id_field == 4'h3 ? _GEN_580 : _GEN_561; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_592 = sram_id_field == 4'h3 ? _GEN_581 : _GEN_562; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_593 = sram_id_field == 4'h3 ? _GEN_582 : _GEN_563; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_594 = sram_id_field == 4'h3 ? _GEN_583 : _GEN_564; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_595 = sram_id_field == 4'h3 ? _GEN_584 : _GEN_565; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_596 = sram_id_field == 4'h3 ? _GEN_585 : _GEN_566; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_597 = _T_4 ? io_pcie_w_data : _GEN_567; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_598 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_568; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_600 = sram_id_field == 4'h5 ? _GEN_597 : _GEN_567; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_601 = sram_id_field == 4'h5 ? _GEN_598 : _GEN_568; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_604 = _T_1 ? _GEN_587 : _GEN_557; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_605 = _T_1 ? _GEN_588 : _GEN_558; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_606 = _T_1 ? _GEN_589 : _GEN_559; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_607 = _T_1 ? _GEN_590 : _GEN_560; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_608 = _T_1 ? _GEN_591 : _GEN_561; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_609 = _T_1 ? _GEN_592 : _GEN_562; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_610 = _T_1 ? _GEN_593 : _GEN_563; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_611 = _T_1 ? _GEN_594 : _GEN_564; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_612 = _T_1 ? _GEN_595 : _GEN_565; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_613 = _T_1 ? _GEN_596 : _GEN_566; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_614 = _T_1 ? _GEN_600 : _GEN_567; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_615 = _T_1 ? _GEN_601 : _GEN_568; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_627 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_604 : _GEN_557; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_628 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_605 : _GEN_558; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_629 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_606 : _GEN_559; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_630 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_607 : _GEN_560; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_631 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_608 : _GEN_561; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_632 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_609 : _GEN_562; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_633 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_610 : _GEN_563; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_634 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_611 : _GEN_564; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_635 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_612 : _GEN_565; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_636 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_613 : _GEN_566; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_637 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_614 : _GEN_567; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_638 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_615 : _GEN_568; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_9_mat_mod_w_en_T_1 = proc_id_field == 4'h9; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_646 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_627; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_647 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_628; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_648 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_629; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_649 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_630; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_650 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_631; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_651 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_632; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_652 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_633; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_653 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_634; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_654 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_635; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_655 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_636; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_657 = sram_id_field == 4'h3 ? _GEN_646 : _GEN_627; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_658 = sram_id_field == 4'h3 ? _GEN_647 : _GEN_628; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_659 = sram_id_field == 4'h3 ? _GEN_648 : _GEN_629; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_660 = sram_id_field == 4'h3 ? _GEN_649 : _GEN_630; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_661 = sram_id_field == 4'h3 ? _GEN_650 : _GEN_631; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_662 = sram_id_field == 4'h3 ? _GEN_651 : _GEN_632; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_663 = sram_id_field == 4'h3 ? _GEN_652 : _GEN_633; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_664 = sram_id_field == 4'h3 ? _GEN_653 : _GEN_634; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_665 = sram_id_field == 4'h3 ? _GEN_654 : _GEN_635; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_666 = sram_id_field == 4'h3 ? _GEN_655 : _GEN_636; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_667 = _T_4 ? io_pcie_w_data : _GEN_637; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_668 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_638; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_670 = sram_id_field == 4'h5 ? _GEN_667 : _GEN_637; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_671 = sram_id_field == 4'h5 ? _GEN_668 : _GEN_638; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_674 = _T_1 ? _GEN_657 : _GEN_627; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_675 = _T_1 ? _GEN_658 : _GEN_628; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_676 = _T_1 ? _GEN_659 : _GEN_629; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_677 = _T_1 ? _GEN_660 : _GEN_630; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_678 = _T_1 ? _GEN_661 : _GEN_631; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_679 = _T_1 ? _GEN_662 : _GEN_632; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_680 = _T_1 ? _GEN_663 : _GEN_633; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_681 = _T_1 ? _GEN_664 : _GEN_634; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_682 = _T_1 ? _GEN_665 : _GEN_635; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_683 = _T_1 ? _GEN_666 : _GEN_636; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_684 = _T_1 ? _GEN_670 : _GEN_637; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_685 = _T_1 ? _GEN_671 : _GEN_638; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_697 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_674 : _GEN_627; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_698 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_675 : _GEN_628; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_699 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_676 : _GEN_629; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_700 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_677 : _GEN_630; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_701 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_678 : _GEN_631; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_702 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_679 : _GEN_632; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_703 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_680 : _GEN_633; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_704 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_681 : _GEN_634; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_705 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_682 : _GEN_635; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_706 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_683 : _GEN_636; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_707 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_684 : _GEN_637; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_708 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_685 : _GEN_638; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_10_mat_mod_w_en_T_1 = proc_id_field == 4'ha; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_716 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_697; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_717 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_698; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire  _GEN_718 = bias_field == 4'h6 ? io_pcie_w_data[0] : _GEN_699; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_719 = bias_field == 4'h6 ? io_pcie_w_data[1] : _GEN_700; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_720 = bias_field == 4'h6 ? io_pcie_w_data[2] : _GEN_701; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire  _GEN_721 = bias_field == 4'h6 ? io_pcie_w_data[3] : _GEN_702; // @[pcie_interface_pisa.scala 116:54 pcie_interface_pisa.scala 118:43]
  wire [6:0] _GEN_722 = bias_field == 4'h7 ? io_pcie_w_data[6:0] : _GEN_703; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_723 = bias_field == 4'h7 ? io_pcie_w_data[14:8] : _GEN_704; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_724 = bias_field == 4'h7 ? io_pcie_w_data[22:16] : _GEN_705; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [6:0] _GEN_725 = bias_field == 4'h7 ? io_pcie_w_data[30:24] : _GEN_706; // @[pcie_interface_pisa.scala 121:54 pcie_interface_pisa.scala 123:41]
  wire [63:0] _GEN_727 = sram_id_field == 4'h3 ? _GEN_716 : _GEN_697; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_728 = sram_id_field == 4'h3 ? _GEN_717 : _GEN_698; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_729 = sram_id_field == 4'h3 ? _GEN_718 : _GEN_699; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_730 = sram_id_field == 4'h3 ? _GEN_719 : _GEN_700; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_731 = sram_id_field == 4'h3 ? _GEN_720 : _GEN_701; // @[pcie_interface_pisa.scala 106:52]
  wire  _GEN_732 = sram_id_field == 4'h3 ? _GEN_721 : _GEN_702; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_733 = sram_id_field == 4'h3 ? _GEN_722 : _GEN_703; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_734 = sram_id_field == 4'h3 ? _GEN_723 : _GEN_704; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_735 = sram_id_field == 4'h3 ? _GEN_724 : _GEN_705; // @[pcie_interface_pisa.scala 106:52]
  wire [6:0] _GEN_736 = sram_id_field == 4'h3 ? _GEN_725 : _GEN_706; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_737 = _T_4 ? io_pcie_w_data : _GEN_707; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_738 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_708; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_740 = sram_id_field == 4'h5 ? _GEN_737 : _GEN_707; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_741 = sram_id_field == 4'h5 ? _GEN_738 : _GEN_708; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_744 = _T_1 ? _GEN_727 : _GEN_697; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_745 = _T_1 ? _GEN_728 : _GEN_698; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_746 = _T_1 ? _GEN_729 : _GEN_699; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_747 = _T_1 ? _GEN_730 : _GEN_700; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_748 = _T_1 ? _GEN_731 : _GEN_701; // @[pcie_interface_pisa.scala 104:44]
  wire  _GEN_749 = _T_1 ? _GEN_732 : _GEN_702; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_750 = _T_1 ? _GEN_733 : _GEN_703; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_751 = _T_1 ? _GEN_734 : _GEN_704; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_752 = _T_1 ? _GEN_735 : _GEN_705; // @[pcie_interface_pisa.scala 104:44]
  wire [6:0] _GEN_753 = _T_1 ? _GEN_736 : _GEN_706; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_754 = _T_1 ? _GEN_740 : _GEN_707; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_755 = _T_1 ? _GEN_741 : _GEN_708; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_767 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_744 : _GEN_697; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_768 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_745 : _GEN_698; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_769 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_746 : _GEN_699; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_770 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_747 : _GEN_700; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_771 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_748 : _GEN_701; // @[pcie_interface_pisa.scala 102:43]
  wire  _GEN_772 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_749 : _GEN_702; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_773 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_750 : _GEN_703; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_774 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_751 : _GEN_704; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_775 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_752 : _GEN_705; // @[pcie_interface_pisa.scala 102:43]
  wire [6:0] _GEN_776 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_753 : _GEN_706; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_777 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_754 : _GEN_707; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_778 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_755 : _GEN_708; // @[pcie_interface_pisa.scala 102:43]
  wire  _io_mod_proc_mod_11_mat_mod_w_en_T_1 = proc_id_field == 4'hb; // @[pcie_interface_pisa.scala 90:66]
  wire [63:0] _GEN_786 = bias_field == 4'h4 ? io_pcie_w_data : _GEN_767; // @[pcie_interface_pisa.scala 110:54 pcie_interface_pisa.scala 111:37]
  wire [63:0] _GEN_787 = bias_field == 4'h5 ? io_pcie_w_data : _GEN_768; // @[pcie_interface_pisa.scala 113:54 pcie_interface_pisa.scala 114:38]
  wire [63:0] _GEN_797 = sram_id_field == 4'h3 ? _GEN_786 : _GEN_767; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_798 = sram_id_field == 4'h3 ? _GEN_787 : _GEN_768; // @[pcie_interface_pisa.scala 106:52]
  wire [63:0] _GEN_807 = _T_4 ? io_pcie_w_data : _GEN_777; // @[pcie_interface_pisa.scala 128:54 pcie_interface_pisa.scala 129:45]
  wire [63:0] _GEN_808 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_778; // @[pcie_interface_pisa.scala 131:54 pcie_interface_pisa.scala 132:45]
  wire [63:0] _GEN_810 = sram_id_field == 4'h5 ? _GEN_807 : _GEN_777; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_811 = sram_id_field == 4'h5 ? _GEN_808 : _GEN_778; // @[pcie_interface_pisa.scala 127:52]
  wire [63:0] _GEN_814 = _T_1 ? _GEN_797 : _GEN_767; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_815 = _T_1 ? _GEN_798 : _GEN_768; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_824 = _T_1 ? _GEN_810 : _GEN_777; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_825 = _T_1 ? _GEN_811 : _GEN_778; // @[pcie_interface_pisa.scala 104:44]
  wire [63:0] _GEN_837 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_814 : _GEN_767; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_838 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_815 : _GEN_768; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_847 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_824 : _GEN_777; // @[pcie_interface_pisa.scala 102:43]
  wire [63:0] _GEN_848 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_825 : _GEN_778; // @[pcie_interface_pisa.scala 102:43]
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
  assign io_mod_proc_mod_0_mat_mod_key_mod_group_id_0 = group_id_0; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_0_mat_mod_key_mod_group_id_1 = group_id_1; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_0_mat_mod_key_mod_group_id_2 = group_id_2; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_0_mat_mod_key_mod_group_id_3 = group_id_3; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_0_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_0_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h0; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_0_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_0_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_0_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_0_exe_mod_en_0 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 & _GEN_62; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_0_exe_mod_en_1 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 & _GEN_64; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_0_exe_mod_addr = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_61 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_0_exe_mod_data_0 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_63 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_0_exe_mod_data_1 = _io_mod_proc_mod_0_mat_mod_w_en_T_1 ? _GEN_65 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_1_mat_mod_en = _io_mod_proc_mod_1_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_1_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_1_mat_mod_key_mod_en = _io_mod_proc_mod_1_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_id_0 = group_id_0; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_id_1 = group_id_1; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_id_2 = group_id_2; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_1_mat_mod_key_mod_group_id_3 = group_id_3; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_1_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_1_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h1; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_1_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_1_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_1_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_1_exe_mod_en_0 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 & _GEN_62; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_1_exe_mod_en_1 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 & _GEN_64; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_1_exe_mod_addr = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_61 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_1_exe_mod_data_0 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_63 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_1_exe_mod_data_1 = _io_mod_proc_mod_1_mat_mod_w_en_T_1 ? _GEN_65 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_2_mat_mod_en = _io_mod_proc_mod_2_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_2_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_2_mat_mod_key_mod_en = _io_mod_proc_mod_2_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_id_0 = group_id_0; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_id_1 = group_id_1; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_id_2 = group_id_2; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_2_mat_mod_key_mod_group_id_3 = group_id_3; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_2_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_2_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h2; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_2_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_2_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_2_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_2_exe_mod_en_0 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 & _GEN_62; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_2_exe_mod_en_1 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 & _GEN_64; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_2_exe_mod_addr = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_61 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_2_exe_mod_data_0 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_63 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_2_exe_mod_data_1 = _io_mod_proc_mod_2_mat_mod_w_en_T_1 ? _GEN_65 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_3_mat_mod_en = _io_mod_proc_mod_3_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_3_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_3_mat_mod_key_mod_en = _io_mod_proc_mod_3_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_id_0 = group_id_0; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_id_1 = group_id_1; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_id_2 = group_id_2; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_3_mat_mod_key_mod_group_id_3 = group_id_3; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_3_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_3_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h3; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_3_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_3_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_3_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_3_exe_mod_en_0 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 & _GEN_62; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_3_exe_mod_en_1 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 & _GEN_64; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_3_exe_mod_addr = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_61 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_3_exe_mod_data_0 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_63 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_3_exe_mod_data_1 = _io_mod_proc_mod_3_mat_mod_w_en_T_1 ? _GEN_65 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_4_mat_mod_en = _io_mod_proc_mod_4_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_4_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_4_mat_mod_key_mod_en = _io_mod_proc_mod_4_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_id_0 = group_id_0; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_id_1 = group_id_1; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_id_2 = group_id_2; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_4_mat_mod_key_mod_group_id_3 = group_id_3; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_4_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_4_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h4; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_4_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_4_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_4_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_4_exe_mod_en_0 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 & _GEN_62; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_4_exe_mod_en_1 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 & _GEN_64; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_4_exe_mod_addr = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_61 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_4_exe_mod_data_0 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_63 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_4_exe_mod_data_1 = _io_mod_proc_mod_4_mat_mod_w_en_T_1 ? _GEN_65 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_5_mat_mod_en = _io_mod_proc_mod_5_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_5_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_5_mat_mod_key_mod_en = _io_mod_proc_mod_5_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_id_0 = group_id_0; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_id_1 = group_id_1; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_id_2 = group_id_2; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_5_mat_mod_key_mod_group_id_3 = group_id_3; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_5_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_5_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h5; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_5_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_5_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_5_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_5_exe_mod_en_0 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 & _GEN_62; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_5_exe_mod_en_1 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 & _GEN_64; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_5_exe_mod_addr = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_61 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_5_exe_mod_data_0 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_63 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_5_exe_mod_data_1 = _io_mod_proc_mod_5_mat_mod_w_en_T_1 ? _GEN_65 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_6_mat_mod_en = _io_mod_proc_mod_6_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_6_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_6_mat_mod_key_mod_en = _io_mod_proc_mod_6_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_id_0 = group_id_0; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_id_1 = group_id_1; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_id_2 = group_id_2; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_6_mat_mod_key_mod_group_id_3 = group_id_3; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_6_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_6_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h6; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_6_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_6_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_6_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_6_exe_mod_en_0 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 & _GEN_62; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_6_exe_mod_en_1 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 & _GEN_64; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_6_exe_mod_addr = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_61 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_6_exe_mod_data_0 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_63 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_6_exe_mod_data_1 = _io_mod_proc_mod_6_mat_mod_w_en_T_1 ? _GEN_65 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_7_mat_mod_en = _io_mod_proc_mod_7_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_7_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_7_mat_mod_key_mod_en = _io_mod_proc_mod_7_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_id_0 = group_id_0; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_id_1 = group_id_1; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_id_2 = group_id_2; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_7_mat_mod_key_mod_group_id_3 = group_id_3; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_7_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_7_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h7; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_7_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_7_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_7_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_7_exe_mod_en_0 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 & _GEN_62; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_7_exe_mod_en_1 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 & _GEN_64; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_7_exe_mod_addr = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_61 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_7_exe_mod_data_0 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_63 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_7_exe_mod_data_1 = _io_mod_proc_mod_7_mat_mod_w_en_T_1 ? _GEN_65 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_8_mat_mod_en = _io_mod_proc_mod_8_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_8_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_8_mat_mod_key_mod_en = _io_mod_proc_mod_8_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_id_0 = group_id_0; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_id_1 = group_id_1; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_id_2 = group_id_2; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_8_mat_mod_key_mod_group_id_3 = group_id_3; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_8_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_8_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h8; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_8_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_8_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_8_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_8_exe_mod_en_0 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 & _GEN_62; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_8_exe_mod_en_1 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 & _GEN_64; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_8_exe_mod_addr = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_61 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_8_exe_mod_data_0 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_63 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_8_exe_mod_data_1 = _io_mod_proc_mod_8_mat_mod_w_en_T_1 ? _GEN_65 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_9_mat_mod_en = _io_mod_proc_mod_9_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_9_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_9_mat_mod_key_mod_en = _io_mod_proc_mod_9_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_id_0 = group_id_0; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_id_1 = group_id_1; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_id_2 = group_id_2; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_9_mat_mod_key_mod_group_id_3 = group_id_3; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_9_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_9_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'h9; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_9_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_9_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_9_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_9_exe_mod_en_0 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 & _GEN_62; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_9_exe_mod_en_1 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 & _GEN_64; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_9_exe_mod_addr = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_61 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_9_exe_mod_data_0 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_63 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_9_exe_mod_data_1 = _io_mod_proc_mod_9_mat_mod_w_en_T_1 ? _GEN_65 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_10_mat_mod_en = _io_mod_proc_mod_10_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_10_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_10_mat_mod_key_mod_en = _io_mod_proc_mod_10_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_id_0 = group_id_0; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_id_1 = group_id_1; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_id_2 = group_id_2; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_10_mat_mod_key_mod_group_id_3 = group_id_3; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_10_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_10_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_10_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'ha; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_10_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_10_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_10_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_10_exe_mod_en_0 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 & _GEN_62; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_10_exe_mod_en_1 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 & _GEN_64; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_10_exe_mod_addr = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_61 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_10_exe_mod_data_0 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_63 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_10_exe_mod_data_1 = _io_mod_proc_mod_10_mat_mod_w_en_T_1 ? _GEN_65 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_11_mat_mod_en = _io_mod_proc_mod_11_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_11_mat_mod_config_id = config_field[0]; // @[pcie_interface_pisa.scala 82:27]
  assign io_mod_proc_mod_11_mat_mod_key_mod_en = _io_mod_proc_mod_11_mat_mod_w_en_T_1 & _GEN_56; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 81:27]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_index = group_index; // @[pcie_interface_pisa.scala 85:37]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_config = group_config; // @[pcie_interface_pisa.scala 86:38]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_mask_0 = group_mask_0; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_mask_1 = group_mask_1; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_mask_2 = group_mask_2; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_mask_3 = group_mask_3; // @[pcie_interface_pisa.scala 87:36]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_id_0 = group_id_0; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_id_1 = group_id_1; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_id_2 = group_id_2; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_11_mat_mod_key_mod_group_id_3 = group_id_3; // @[pcie_interface_pisa.scala 88:34]
  assign io_mod_proc_mod_11_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_11_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface_pisa.scala 89:27]
  assign io_mod_proc_mod_11_mat_mod_w_en = type_field == 4'h1 & proc_id_field == 4'hb; // @[pcie_interface_pisa.scala 90:49]
  assign io_mod_proc_mod_11_mat_mod_w_sram_id = io_pcie_w_addr[11:8]; // @[pcie_interface_pisa.scala 26:35]
  assign io_mod_proc_mod_11_mat_mod_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface_pisa.scala 29:35]
  assign io_mod_proc_mod_11_mat_mod_w_data = io_pcie_w_data; // @[pcie_interface_pisa.scala 93:24]
  assign io_mod_proc_mod_11_exe_mod_en_0 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 & _GEN_62; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_11_exe_mod_en_1 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 & _GEN_64; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 97:29]
  assign io_mod_proc_mod_11_exe_mod_addr = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_61 : 8'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 98:29]
  assign io_mod_proc_mod_11_exe_mod_data_0 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_63 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  assign io_mod_proc_mod_11_exe_mod_data_1 = _io_mod_proc_mod_11_mat_mod_w_en_T_1 ? _GEN_65 : 64'h0; // @[pcie_interface_pisa.scala 102:43 pcie_interface_pisa.scala 99:29]
  always @(posedge clock) begin
    last_mau_id <= _GEN_10[1:0];
    state_id <= _GEN_11[7:0];
    group_index <= _GEN_837[2:0];
    group_config <= _GEN_838[1:0];
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h6) begin // @[pcie_interface_pisa.scala 116:54]
            group_mask_0 <= io_pcie_w_data[0]; // @[pcie_interface_pisa.scala 118:43]
          end else begin
            group_mask_0 <= _GEN_769;
          end
        end else begin
          group_mask_0 <= _GEN_769;
        end
      end else begin
        group_mask_0 <= _GEN_769;
      end
    end else begin
      group_mask_0 <= _GEN_769;
    end
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h6) begin // @[pcie_interface_pisa.scala 116:54]
            group_mask_1 <= io_pcie_w_data[1]; // @[pcie_interface_pisa.scala 118:43]
          end else begin
            group_mask_1 <= _GEN_770;
          end
        end else begin
          group_mask_1 <= _GEN_770;
        end
      end else begin
        group_mask_1 <= _GEN_770;
      end
    end else begin
      group_mask_1 <= _GEN_770;
    end
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h6) begin // @[pcie_interface_pisa.scala 116:54]
            group_mask_2 <= io_pcie_w_data[2]; // @[pcie_interface_pisa.scala 118:43]
          end else begin
            group_mask_2 <= _GEN_771;
          end
        end else begin
          group_mask_2 <= _GEN_771;
        end
      end else begin
        group_mask_2 <= _GEN_771;
      end
    end else begin
      group_mask_2 <= _GEN_771;
    end
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h6) begin // @[pcie_interface_pisa.scala 116:54]
            group_mask_3 <= io_pcie_w_data[3]; // @[pcie_interface_pisa.scala 118:43]
          end else begin
            group_mask_3 <= _GEN_772;
          end
        end else begin
          group_mask_3 <= _GEN_772;
        end
      end else begin
        group_mask_3 <= _GEN_772;
      end
    end else begin
      group_mask_3 <= _GEN_772;
    end
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h7) begin // @[pcie_interface_pisa.scala 121:54]
            group_id_0 <= io_pcie_w_data[6:0]; // @[pcie_interface_pisa.scala 123:41]
          end else begin
            group_id_0 <= _GEN_773;
          end
        end else begin
          group_id_0 <= _GEN_773;
        end
      end else begin
        group_id_0 <= _GEN_773;
      end
    end else begin
      group_id_0 <= _GEN_773;
    end
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h7) begin // @[pcie_interface_pisa.scala 121:54]
            group_id_1 <= io_pcie_w_data[14:8]; // @[pcie_interface_pisa.scala 123:41]
          end else begin
            group_id_1 <= _GEN_774;
          end
        end else begin
          group_id_1 <= _GEN_774;
        end
      end else begin
        group_id_1 <= _GEN_774;
      end
    end else begin
      group_id_1 <= _GEN_774;
    end
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h7) begin // @[pcie_interface_pisa.scala 121:54]
            group_id_2 <= io_pcie_w_data[22:16]; // @[pcie_interface_pisa.scala 123:41]
          end else begin
            group_id_2 <= _GEN_775;
          end
        end else begin
          group_id_2 <= _GEN_775;
        end
      end else begin
        group_id_2 <= _GEN_775;
      end
    end else begin
      group_id_2 <= _GEN_775;
    end
    if (_io_mod_proc_mod_11_mat_mod_w_en_T_1) begin // @[pcie_interface_pisa.scala 102:43]
      if (_T_1) begin // @[pcie_interface_pisa.scala 104:44]
        if (sram_id_field == 4'h3) begin // @[pcie_interface_pisa.scala 106:52]
          if (bias_field == 4'h7) begin // @[pcie_interface_pisa.scala 121:54]
            group_id_3 <= io_pcie_w_data[30:24]; // @[pcie_interface_pisa.scala 123:41]
          end else begin
            group_id_3 <= _GEN_776;
          end
        end else begin
          group_id_3 <= _GEN_776;
        end
      end else begin
        group_id_3 <= _GEN_776;
      end
    end else begin
      group_id_3 <= _GEN_776;
    end
    mat_tab_table_depth <= _GEN_848[4:0];
    mat_tab_table_width <= _GEN_847[4:0];
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
