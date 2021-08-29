module PCIEInterface(
  input         clock,
  input         io_pcie_r_en,
  input  [31:0] io_pcie_r_addr,
  output [63:0] io_pcie_r_data,
  input         io_pcie_w_en,
  input  [31:0] io_pcie_w_addr,
  input  [63:0] io_pcie_w_data,
  output [3:0]  io_pcie_o_cs,
  output        io_pcie_o_r_en,
  output [7:0]  io_pcie_o_r_addr,
  input  [63:0] io_pcie_o_r_data,
  output        io_mod_proc_mod_0_par_mod_en,
  output        io_mod_proc_mod_0_par_mod_last_mau_id_mod,
  output [2:0]  io_mod_proc_mod_0_par_mod_last_mau_id,
  output [2:0]  io_mod_proc_mod_0_par_mod_cs,
  output        io_mod_proc_mod_0_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_0_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_0_par_mod_module_mod_sram_w_cs,
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
  output [7:0]  io_mod_proc_mod_0_act_mod_addr,
  output [63:0] io_mod_proc_mod_0_act_mod_data_0,
  output [63:0] io_mod_proc_mod_0_act_mod_data_1,
  output        io_mod_proc_mod_1_par_mod_en,
  output        io_mod_proc_mod_1_par_mod_last_mau_id_mod,
  output [2:0]  io_mod_proc_mod_1_par_mod_last_mau_id,
  output [2:0]  io_mod_proc_mod_1_par_mod_cs,
  output        io_mod_proc_mod_1_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_1_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_1_par_mod_module_mod_sram_w_cs,
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
  output [7:0]  io_mod_proc_mod_1_act_mod_addr,
  output [63:0] io_mod_proc_mod_1_act_mod_data_0,
  output [63:0] io_mod_proc_mod_1_act_mod_data_1,
  output        io_mod_proc_mod_2_par_mod_en,
  output        io_mod_proc_mod_2_par_mod_last_mau_id_mod,
  output [2:0]  io_mod_proc_mod_2_par_mod_last_mau_id,
  output [2:0]  io_mod_proc_mod_2_par_mod_cs,
  output        io_mod_proc_mod_2_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_2_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_2_par_mod_module_mod_sram_w_cs,
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
  output [7:0]  io_mod_proc_mod_2_act_mod_addr,
  output [63:0] io_mod_proc_mod_2_act_mod_data_0,
  output [63:0] io_mod_proc_mod_2_act_mod_data_1,
  output        io_mod_proc_mod_3_par_mod_en,
  output        io_mod_proc_mod_3_par_mod_last_mau_id_mod,
  output [2:0]  io_mod_proc_mod_3_par_mod_last_mau_id,
  output [2:0]  io_mod_proc_mod_3_par_mod_cs,
  output        io_mod_proc_mod_3_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_3_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_3_par_mod_module_mod_sram_w_cs,
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
  output [7:0]  io_mod_proc_mod_3_act_mod_addr,
  output [63:0] io_mod_proc_mod_3_act_mod_data_0,
  output [63:0] io_mod_proc_mod_3_act_mod_data_1,
  output        io_mod_proc_mod_4_par_mod_en,
  output        io_mod_proc_mod_4_par_mod_last_mau_id_mod,
  output [2:0]  io_mod_proc_mod_4_par_mod_last_mau_id,
  output [2:0]  io_mod_proc_mod_4_par_mod_cs,
  output        io_mod_proc_mod_4_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_4_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_4_par_mod_module_mod_sram_w_cs,
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
  output [7:0]  io_mod_proc_mod_4_act_mod_addr,
  output [63:0] io_mod_proc_mod_4_act_mod_data_0,
  output [63:0] io_mod_proc_mod_4_act_mod_data_1,
  output        io_mod_proc_mod_5_par_mod_en,
  output        io_mod_proc_mod_5_par_mod_last_mau_id_mod,
  output [2:0]  io_mod_proc_mod_5_par_mod_last_mau_id,
  output [2:0]  io_mod_proc_mod_5_par_mod_cs,
  output        io_mod_proc_mod_5_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_5_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_5_par_mod_module_mod_sram_w_cs,
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
  output [7:0]  io_mod_proc_mod_5_act_mod_addr,
  output [63:0] io_mod_proc_mod_5_act_mod_data_0,
  output [63:0] io_mod_proc_mod_5_act_mod_data_1,
  output        io_mod_proc_mod_6_par_mod_en,
  output        io_mod_proc_mod_6_par_mod_last_mau_id_mod,
  output [2:0]  io_mod_proc_mod_6_par_mod_last_mau_id,
  output [2:0]  io_mod_proc_mod_6_par_mod_cs,
  output        io_mod_proc_mod_6_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_6_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_6_par_mod_module_mod_sram_w_cs,
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
  output [7:0]  io_mod_proc_mod_6_act_mod_addr,
  output [63:0] io_mod_proc_mod_6_act_mod_data_0,
  output [63:0] io_mod_proc_mod_6_act_mod_data_1,
  output        io_mod_proc_mod_7_par_mod_en,
  output        io_mod_proc_mod_7_par_mod_last_mau_id_mod,
  output [2:0]  io_mod_proc_mod_7_par_mod_last_mau_id,
  output [2:0]  io_mod_proc_mod_7_par_mod_cs,
  output        io_mod_proc_mod_7_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_7_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_7_par_mod_module_mod_sram_w_cs,
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
  output [7:0]  io_mod_proc_mod_7_act_mod_addr,
  output [63:0] io_mod_proc_mod_7_act_mod_data_0,
  output [63:0] io_mod_proc_mod_7_act_mod_data_1,
  output        io_mod_proc_mod_8_par_mod_en,
  output        io_mod_proc_mod_8_par_mod_last_mau_id_mod,
  output [2:0]  io_mod_proc_mod_8_par_mod_last_mau_id,
  output [2:0]  io_mod_proc_mod_8_par_mod_cs,
  output        io_mod_proc_mod_8_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_8_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_8_par_mod_module_mod_sram_w_cs,
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
  output [7:0]  io_mod_proc_mod_8_act_mod_addr,
  output [63:0] io_mod_proc_mod_8_act_mod_data_0,
  output [63:0] io_mod_proc_mod_8_act_mod_data_1,
  output        io_mod_proc_mod_9_par_mod_en,
  output        io_mod_proc_mod_9_par_mod_last_mau_id_mod,
  output [2:0]  io_mod_proc_mod_9_par_mod_last_mau_id,
  output [2:0]  io_mod_proc_mod_9_par_mod_cs,
  output        io_mod_proc_mod_9_par_mod_module_mod_state_id_mod,
  output [7:0]  io_mod_proc_mod_9_par_mod_module_mod_state_id,
  output        io_mod_proc_mod_9_par_mod_module_mod_sram_w_cs,
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
  output [7:0]  io_mod_proc_mod_9_act_mod_addr,
  output [63:0] io_mod_proc_mod_9_act_mod_data_0,
  output [63:0] io_mod_proc_mod_9_act_mod_data_1,
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
  output [63:0] io_w_4_w_data
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
`endif // RANDOMIZE_REG_INIT
  wire [3:0] type_field = io_pcie_w_en ? io_pcie_w_addr[31:28] : 4'h0; // @[pcie_interface.scala 81:29]
  wire [3:0] cluster_id_field = io_pcie_w_addr[27:24]; // @[pcie_interface.scala 82:35]
  wire [3:0] sub_type_field = io_pcie_w_addr[23:20]; // @[pcie_interface.scala 83:35]
  wire [3:0] config_field = io_pcie_w_addr[19:16]; // @[pcie_interface.scala 84:35]
  wire [15:0] bias_field = io_pcie_w_addr[15:0]; // @[pcie_interface.scala 85:35]
  wire [7:0] sram_id_field = io_pcie_w_addr[23:16]; // @[pcie_interface.scala 86:35]
  wire  _io_w_0_w_en_T = cluster_id_field == 4'h0; // @[pcie_interface.scala 96:48]
  wire  _io_w_1_w_en_T = cluster_id_field == 4'h1; // @[pcie_interface.scala 96:48]
  wire  _io_w_2_w_en_T = cluster_id_field == 4'h2; // @[pcie_interface.scala 96:48]
  wire  _io_w_3_w_en_T = cluster_id_field == 4'h3; // @[pcie_interface.scala 96:48]
  wire  _io_w_4_w_en_T = cluster_id_field == 4'h4; // @[pcie_interface.scala 96:48]
  reg [2:0] last_mau_id; // @[pcie_interface.scala 101:26]
  reg [7:0] state_id; // @[pcie_interface.scala 102:26]
  reg [7:0] mat_key_header_id; // @[pcie_interface.scala 103:22]
  reg [7:0] mat_key_internal_offset; // @[pcie_interface.scala 103:22]
  reg [7:0] mat_key_key_length; // @[pcie_interface.scala 103:22]
  reg [4:0] mat_tab_table_width; // @[pcie_interface.scala 104:22]
  reg [4:0] mat_tab_table_depth; // @[pcie_interface.scala 104:22]
  wire  _T_1 = type_field == 4'h2; // @[pcie_interface.scala 138:30]
  wire [63:0] _GEN_1 = sub_type_field == 4'h1 ? io_pcie_w_data : {{61'd0}, last_mau_id}; // @[pcie_interface.scala 145:52 pcie_interface.scala 146:33 pcie_interface.scala 101:26]
  wire  _T_5 = bias_field == 16'h0; // @[pcie_interface.scala 149:38]
  wire [63:0] _GEN_2 = bias_field == 16'h0 ? io_pcie_w_data : {{56'd0}, state_id}; // @[pcie_interface.scala 149:53 pcie_interface.scala 150:37 pcie_interface.scala 102:26]
  wire  _T_6 = bias_field == 16'hffff; // @[pcie_interface.scala 152:38]
  wire  _GEN_3 = bias_field == 16'hffff | _T_1; // @[pcie_interface.scala 152:58 pcie_interface.scala 153:49]
  wire  _GEN_5 = bias_field == 16'hffff & config_field != 4'hf; // @[pcie_interface.scala 152:58 pcie_interface.scala 155:57 pcie_interface.scala 116:41]
  wire [63:0] _GEN_6 = sub_type_field == 4'h2 ? _GEN_2 : {{56'd0}, state_id}; // @[pcie_interface.scala 148:52 pcie_interface.scala 102:26]
  wire  _GEN_7 = sub_type_field == 4'h2 ? _GEN_3 : _T_1; // @[pcie_interface.scala 148:52]
  wire  _GEN_8 = sub_type_field == 4'h2 & _T_6; // @[pcie_interface.scala 148:52 pcie_interface.scala 113:33]
  wire  _GEN_9 = sub_type_field == 4'h2 & _GEN_5; // @[pcie_interface.scala 148:52 pcie_interface.scala 116:41]
  wire [63:0] _GEN_10 = _T_5 ? io_pcie_w_data : {{56'd0}, mat_key_header_id}; // @[pcie_interface.scala 161:58 pcie_interface.scala 162:43 pcie_interface.scala 103:22]
  wire [63:0] _GEN_11 = bias_field == 16'h100 ? io_pcie_w_data : {{56'd0}, mat_key_internal_offset}; // @[pcie_interface.scala 164:58 pcie_interface.scala 165:49 pcie_interface.scala 103:22]
  wire [63:0] _GEN_12 = bias_field == 16'h200 ? io_pcie_w_data : {{56'd0}, mat_key_key_length}; // @[pcie_interface.scala 167:58 pcie_interface.scala 168:44 pcie_interface.scala 103:22]
  wire [63:0] _GEN_46 = bias_field == 16'h1100 ? io_pcie_w_data : {{59'd0}, mat_tab_table_width}; // @[pcie_interface.scala 176:58 pcie_interface.scala 177:45 pcie_interface.scala 104:22]
  wire [63:0] _GEN_47 = bias_field == 16'h1200 ? io_pcie_w_data : {{59'd0}, mat_tab_table_depth}; // @[pcie_interface.scala 179:58 pcie_interface.scala 180:45 pcie_interface.scala 104:22]
  wire [3:0] _GEN_49 = sub_type_field == 4'h3 ? config_field : 4'h0; // @[pcie_interface.scala 159:52 pcie_interface.scala 160:39 pcie_interface.scala 125:27]
  wire [63:0] _GEN_50 = sub_type_field == 4'h3 ? _GEN_10 : {{56'd0}, mat_key_header_id}; // @[pcie_interface.scala 159:52 pcie_interface.scala 103:22]
  wire [63:0] _GEN_51 = sub_type_field == 4'h3 ? _GEN_11 : {{56'd0}, mat_key_internal_offset}; // @[pcie_interface.scala 159:52 pcie_interface.scala 103:22]
  wire [63:0] _GEN_52 = sub_type_field == 4'h3 ? _GEN_12 : {{56'd0}, mat_key_key_length}; // @[pcie_interface.scala 159:52 pcie_interface.scala 103:22]
  wire [63:0] _GEN_70 = sub_type_field == 4'h3 ? _GEN_46 : {{59'd0}, mat_tab_table_width}; // @[pcie_interface.scala 159:52 pcie_interface.scala 104:22]
  wire [63:0] _GEN_71 = sub_type_field == 4'h3 ? _GEN_47 : {{59'd0}, mat_tab_table_depth}; // @[pcie_interface.scala 159:52 pcie_interface.scala 104:22]
  wire  _GEN_72 = sub_type_field == 4'h3 & _T_6; // @[pcie_interface.scala 159:52 pcie_interface.scala 124:27]
  wire [63:0] _GEN_73 = type_field == 4'h3 ? _GEN_1 : {{61'd0}, last_mau_id}; // @[pcie_interface.scala 143:44 pcie_interface.scala 101:26]
  wire [63:0] _GEN_74 = type_field == 4'h3 ? _GEN_6 : {{56'd0}, state_id}; // @[pcie_interface.scala 143:44 pcie_interface.scala 102:26]
  wire  _GEN_75 = type_field == 4'h3 ? _GEN_7 : _T_1; // @[pcie_interface.scala 143:44]
  wire  _GEN_76 = type_field == 4'h3 & _GEN_8; // @[pcie_interface.scala 143:44 pcie_interface.scala 113:33]
  wire  _GEN_77 = type_field == 4'h3 & _GEN_9; // @[pcie_interface.scala 143:44 pcie_interface.scala 116:41]
  wire [3:0] _GEN_78 = type_field == 4'h3 ? _GEN_49 : 4'h0; // @[pcie_interface.scala 143:44 pcie_interface.scala 125:27]
  wire [63:0] _GEN_79 = type_field == 4'h3 ? _GEN_50 : {{56'd0}, mat_key_header_id}; // @[pcie_interface.scala 143:44 pcie_interface.scala 103:22]
  wire [63:0] _GEN_80 = type_field == 4'h3 ? _GEN_51 : {{56'd0}, mat_key_internal_offset}; // @[pcie_interface.scala 143:44 pcie_interface.scala 103:22]
  wire [63:0] _GEN_81 = type_field == 4'h3 ? _GEN_52 : {{56'd0}, mat_key_key_length}; // @[pcie_interface.scala 143:44 pcie_interface.scala 103:22]
  wire [63:0] _GEN_99 = type_field == 4'h3 ? _GEN_70 : {{59'd0}, mat_tab_table_width}; // @[pcie_interface.scala 143:44 pcie_interface.scala 104:22]
  wire [63:0] _GEN_100 = type_field == 4'h3 ? _GEN_71 : {{59'd0}, mat_tab_table_depth}; // @[pcie_interface.scala 143:44 pcie_interface.scala 104:22]
  wire  _GEN_101 = type_field == 4'h3 & _GEN_72; // @[pcie_interface.scala 143:44 pcie_interface.scala 124:27]
  wire  _T_20 = sram_id_field == 8'h0; // @[pcie_interface.scala 191:41]
  wire [63:0] _GEN_103 = sram_id_field == 8'h0 ? io_pcie_w_data : 64'h0; // @[pcie_interface.scala 191:55 pcie_interface.scala 193:41 pcie_interface.scala 133:29]
  wire  _T_21 = sram_id_field == 8'h1; // @[pcie_interface.scala 191:41]
  wire [63:0] _GEN_105 = sram_id_field == 8'h1 ? io_pcie_w_data : 64'h0; // @[pcie_interface.scala 191:55 pcie_interface.scala 193:41 pcie_interface.scala 133:29]
  wire [15:0] _GEN_106 = type_field == 4'h4 ? bias_field : 16'h0; // @[pcie_interface.scala 188:44 pcie_interface.scala 189:30 pcie_interface.scala 132:29]
  wire  _GEN_107 = type_field == 4'h4 & _T_20; // @[pcie_interface.scala 188:44 pcie_interface.scala 131:29]
  wire [63:0] _GEN_108 = type_field == 4'h4 ? _GEN_103 : 64'h0; // @[pcie_interface.scala 188:44 pcie_interface.scala 133:29]
  wire  _GEN_109 = type_field == 4'h4 & _T_21; // @[pcie_interface.scala 188:44 pcie_interface.scala 131:29]
  wire [63:0] _GEN_110 = type_field == 4'h4 ? _GEN_105 : 64'h0; // @[pcie_interface.scala 188:44 pcie_interface.scala 133:29]
  wire [63:0] _GEN_113 = _io_w_0_w_en_T ? _GEN_73 : {{61'd0}, last_mau_id}; // @[pcie_interface.scala 136:43 pcie_interface.scala 101:26]
  wire [63:0] _GEN_114 = _io_w_0_w_en_T ? _GEN_74 : {{56'd0}, state_id}; // @[pcie_interface.scala 136:43 pcie_interface.scala 102:26]
  wire [3:0] _GEN_117 = _io_w_0_w_en_T ? _GEN_78 : 4'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 125:27]
  wire [63:0] _GEN_118 = _io_w_0_w_en_T ? _GEN_79 : {{56'd0}, mat_key_header_id}; // @[pcie_interface.scala 136:43 pcie_interface.scala 103:22]
  wire [63:0] _GEN_119 = _io_w_0_w_en_T ? _GEN_80 : {{56'd0}, mat_key_internal_offset}; // @[pcie_interface.scala 136:43 pcie_interface.scala 103:22]
  wire [63:0] _GEN_120 = _io_w_0_w_en_T ? _GEN_81 : {{56'd0}, mat_key_key_length}; // @[pcie_interface.scala 136:43 pcie_interface.scala 103:22]
  wire [63:0] _GEN_138 = _io_w_0_w_en_T ? _GEN_99 : {{59'd0}, mat_tab_table_width}; // @[pcie_interface.scala 136:43 pcie_interface.scala 104:22]
  wire [63:0] _GEN_139 = _io_w_0_w_en_T ? _GEN_100 : {{59'd0}, mat_tab_table_depth}; // @[pcie_interface.scala 136:43 pcie_interface.scala 104:22]
  wire [15:0] _GEN_141 = _io_w_0_w_en_T ? _GEN_106 : 16'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 132:29]
  wire [63:0] _GEN_147 = sub_type_field == 4'h1 ? io_pcie_w_data : _GEN_113; // @[pcie_interface.scala 145:52 pcie_interface.scala 146:33]
  wire [63:0] _GEN_148 = bias_field == 16'h0 ? io_pcie_w_data : _GEN_114; // @[pcie_interface.scala 149:53 pcie_interface.scala 150:37]
  wire [63:0] _GEN_152 = sub_type_field == 4'h2 ? _GEN_148 : _GEN_114; // @[pcie_interface.scala 148:52]
  wire [63:0] _GEN_156 = _T_5 ? io_pcie_w_data : _GEN_118; // @[pcie_interface.scala 161:58 pcie_interface.scala 162:43]
  wire [63:0] _GEN_157 = bias_field == 16'h100 ? io_pcie_w_data : _GEN_119; // @[pcie_interface.scala 164:58 pcie_interface.scala 165:49]
  wire [63:0] _GEN_158 = bias_field == 16'h200 ? io_pcie_w_data : _GEN_120; // @[pcie_interface.scala 167:58 pcie_interface.scala 168:44]
  wire [63:0] _GEN_192 = bias_field == 16'h1100 ? io_pcie_w_data : _GEN_138; // @[pcie_interface.scala 176:58 pcie_interface.scala 177:45]
  wire [63:0] _GEN_193 = bias_field == 16'h1200 ? io_pcie_w_data : _GEN_139; // @[pcie_interface.scala 179:58 pcie_interface.scala 180:45]
  wire [63:0] _GEN_196 = sub_type_field == 4'h3 ? _GEN_156 : _GEN_118; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_197 = sub_type_field == 4'h3 ? _GEN_157 : _GEN_119; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_198 = sub_type_field == 4'h3 ? _GEN_158 : _GEN_120; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_216 = sub_type_field == 4'h3 ? _GEN_192 : _GEN_138; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_217 = sub_type_field == 4'h3 ? _GEN_193 : _GEN_139; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_219 = type_field == 4'h3 ? _GEN_147 : _GEN_113; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_220 = type_field == 4'h3 ? _GEN_152 : _GEN_114; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_225 = type_field == 4'h3 ? _GEN_196 : _GEN_118; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_226 = type_field == 4'h3 ? _GEN_197 : _GEN_119; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_227 = type_field == 4'h3 ? _GEN_198 : _GEN_120; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_245 = type_field == 4'h3 ? _GEN_216 : _GEN_138; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_246 = type_field == 4'h3 ? _GEN_217 : _GEN_139; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_259 = _io_w_1_w_en_T ? _GEN_219 : _GEN_113; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_260 = _io_w_1_w_en_T ? _GEN_220 : _GEN_114; // @[pcie_interface.scala 136:43]
  wire [3:0] _GEN_263 = _io_w_1_w_en_T ? _GEN_78 : 4'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 125:27]
  wire [63:0] _GEN_264 = _io_w_1_w_en_T ? _GEN_225 : _GEN_118; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_265 = _io_w_1_w_en_T ? _GEN_226 : _GEN_119; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_266 = _io_w_1_w_en_T ? _GEN_227 : _GEN_120; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_284 = _io_w_1_w_en_T ? _GEN_245 : _GEN_138; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_285 = _io_w_1_w_en_T ? _GEN_246 : _GEN_139; // @[pcie_interface.scala 136:43]
  wire [15:0] _GEN_287 = _io_w_1_w_en_T ? _GEN_106 : 16'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 132:29]
  wire [63:0] _GEN_293 = sub_type_field == 4'h1 ? io_pcie_w_data : _GEN_259; // @[pcie_interface.scala 145:52 pcie_interface.scala 146:33]
  wire [63:0] _GEN_294 = bias_field == 16'h0 ? io_pcie_w_data : _GEN_260; // @[pcie_interface.scala 149:53 pcie_interface.scala 150:37]
  wire [63:0] _GEN_298 = sub_type_field == 4'h2 ? _GEN_294 : _GEN_260; // @[pcie_interface.scala 148:52]
  wire [63:0] _GEN_302 = _T_5 ? io_pcie_w_data : _GEN_264; // @[pcie_interface.scala 161:58 pcie_interface.scala 162:43]
  wire [63:0] _GEN_303 = bias_field == 16'h100 ? io_pcie_w_data : _GEN_265; // @[pcie_interface.scala 164:58 pcie_interface.scala 165:49]
  wire [63:0] _GEN_304 = bias_field == 16'h200 ? io_pcie_w_data : _GEN_266; // @[pcie_interface.scala 167:58 pcie_interface.scala 168:44]
  wire [63:0] _GEN_338 = bias_field == 16'h1100 ? io_pcie_w_data : _GEN_284; // @[pcie_interface.scala 176:58 pcie_interface.scala 177:45]
  wire [63:0] _GEN_339 = bias_field == 16'h1200 ? io_pcie_w_data : _GEN_285; // @[pcie_interface.scala 179:58 pcie_interface.scala 180:45]
  wire [63:0] _GEN_342 = sub_type_field == 4'h3 ? _GEN_302 : _GEN_264; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_343 = sub_type_field == 4'h3 ? _GEN_303 : _GEN_265; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_344 = sub_type_field == 4'h3 ? _GEN_304 : _GEN_266; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_362 = sub_type_field == 4'h3 ? _GEN_338 : _GEN_284; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_363 = sub_type_field == 4'h3 ? _GEN_339 : _GEN_285; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_365 = type_field == 4'h3 ? _GEN_293 : _GEN_259; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_366 = type_field == 4'h3 ? _GEN_298 : _GEN_260; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_371 = type_field == 4'h3 ? _GEN_342 : _GEN_264; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_372 = type_field == 4'h3 ? _GEN_343 : _GEN_265; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_373 = type_field == 4'h3 ? _GEN_344 : _GEN_266; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_391 = type_field == 4'h3 ? _GEN_362 : _GEN_284; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_392 = type_field == 4'h3 ? _GEN_363 : _GEN_285; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_405 = _io_w_2_w_en_T ? _GEN_365 : _GEN_259; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_406 = _io_w_2_w_en_T ? _GEN_366 : _GEN_260; // @[pcie_interface.scala 136:43]
  wire [3:0] _GEN_409 = _io_w_2_w_en_T ? _GEN_78 : 4'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 125:27]
  wire [63:0] _GEN_410 = _io_w_2_w_en_T ? _GEN_371 : _GEN_264; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_411 = _io_w_2_w_en_T ? _GEN_372 : _GEN_265; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_412 = _io_w_2_w_en_T ? _GEN_373 : _GEN_266; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_430 = _io_w_2_w_en_T ? _GEN_391 : _GEN_284; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_431 = _io_w_2_w_en_T ? _GEN_392 : _GEN_285; // @[pcie_interface.scala 136:43]
  wire [15:0] _GEN_433 = _io_w_2_w_en_T ? _GEN_106 : 16'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 132:29]
  wire [63:0] _GEN_439 = sub_type_field == 4'h1 ? io_pcie_w_data : _GEN_405; // @[pcie_interface.scala 145:52 pcie_interface.scala 146:33]
  wire [63:0] _GEN_440 = bias_field == 16'h0 ? io_pcie_w_data : _GEN_406; // @[pcie_interface.scala 149:53 pcie_interface.scala 150:37]
  wire [63:0] _GEN_444 = sub_type_field == 4'h2 ? _GEN_440 : _GEN_406; // @[pcie_interface.scala 148:52]
  wire [63:0] _GEN_448 = _T_5 ? io_pcie_w_data : _GEN_410; // @[pcie_interface.scala 161:58 pcie_interface.scala 162:43]
  wire [63:0] _GEN_449 = bias_field == 16'h100 ? io_pcie_w_data : _GEN_411; // @[pcie_interface.scala 164:58 pcie_interface.scala 165:49]
  wire [63:0] _GEN_450 = bias_field == 16'h200 ? io_pcie_w_data : _GEN_412; // @[pcie_interface.scala 167:58 pcie_interface.scala 168:44]
  wire [63:0] _GEN_484 = bias_field == 16'h1100 ? io_pcie_w_data : _GEN_430; // @[pcie_interface.scala 176:58 pcie_interface.scala 177:45]
  wire [63:0] _GEN_485 = bias_field == 16'h1200 ? io_pcie_w_data : _GEN_431; // @[pcie_interface.scala 179:58 pcie_interface.scala 180:45]
  wire [63:0] _GEN_488 = sub_type_field == 4'h3 ? _GEN_448 : _GEN_410; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_489 = sub_type_field == 4'h3 ? _GEN_449 : _GEN_411; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_490 = sub_type_field == 4'h3 ? _GEN_450 : _GEN_412; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_508 = sub_type_field == 4'h3 ? _GEN_484 : _GEN_430; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_509 = sub_type_field == 4'h3 ? _GEN_485 : _GEN_431; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_511 = type_field == 4'h3 ? _GEN_439 : _GEN_405; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_512 = type_field == 4'h3 ? _GEN_444 : _GEN_406; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_517 = type_field == 4'h3 ? _GEN_488 : _GEN_410; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_518 = type_field == 4'h3 ? _GEN_489 : _GEN_411; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_519 = type_field == 4'h3 ? _GEN_490 : _GEN_412; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_537 = type_field == 4'h3 ? _GEN_508 : _GEN_430; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_538 = type_field == 4'h3 ? _GEN_509 : _GEN_431; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_551 = _io_w_3_w_en_T ? _GEN_511 : _GEN_405; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_552 = _io_w_3_w_en_T ? _GEN_512 : _GEN_406; // @[pcie_interface.scala 136:43]
  wire [3:0] _GEN_555 = _io_w_3_w_en_T ? _GEN_78 : 4'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 125:27]
  wire [63:0] _GEN_556 = _io_w_3_w_en_T ? _GEN_517 : _GEN_410; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_557 = _io_w_3_w_en_T ? _GEN_518 : _GEN_411; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_558 = _io_w_3_w_en_T ? _GEN_519 : _GEN_412; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_576 = _io_w_3_w_en_T ? _GEN_537 : _GEN_430; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_577 = _io_w_3_w_en_T ? _GEN_538 : _GEN_431; // @[pcie_interface.scala 136:43]
  wire [15:0] _GEN_579 = _io_w_3_w_en_T ? _GEN_106 : 16'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 132:29]
  wire [63:0] _GEN_585 = sub_type_field == 4'h1 ? io_pcie_w_data : _GEN_551; // @[pcie_interface.scala 145:52 pcie_interface.scala 146:33]
  wire [63:0] _GEN_586 = bias_field == 16'h0 ? io_pcie_w_data : _GEN_552; // @[pcie_interface.scala 149:53 pcie_interface.scala 150:37]
  wire [63:0] _GEN_590 = sub_type_field == 4'h2 ? _GEN_586 : _GEN_552; // @[pcie_interface.scala 148:52]
  wire [63:0] _GEN_594 = _T_5 ? io_pcie_w_data : _GEN_556; // @[pcie_interface.scala 161:58 pcie_interface.scala 162:43]
  wire [63:0] _GEN_595 = bias_field == 16'h100 ? io_pcie_w_data : _GEN_557; // @[pcie_interface.scala 164:58 pcie_interface.scala 165:49]
  wire [63:0] _GEN_596 = bias_field == 16'h200 ? io_pcie_w_data : _GEN_558; // @[pcie_interface.scala 167:58 pcie_interface.scala 168:44]
  wire [63:0] _GEN_630 = bias_field == 16'h1100 ? io_pcie_w_data : _GEN_576; // @[pcie_interface.scala 176:58 pcie_interface.scala 177:45]
  wire [63:0] _GEN_631 = bias_field == 16'h1200 ? io_pcie_w_data : _GEN_577; // @[pcie_interface.scala 179:58 pcie_interface.scala 180:45]
  wire [63:0] _GEN_634 = sub_type_field == 4'h3 ? _GEN_594 : _GEN_556; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_635 = sub_type_field == 4'h3 ? _GEN_595 : _GEN_557; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_636 = sub_type_field == 4'h3 ? _GEN_596 : _GEN_558; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_654 = sub_type_field == 4'h3 ? _GEN_630 : _GEN_576; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_655 = sub_type_field == 4'h3 ? _GEN_631 : _GEN_577; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_657 = type_field == 4'h3 ? _GEN_585 : _GEN_551; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_658 = type_field == 4'h3 ? _GEN_590 : _GEN_552; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_663 = type_field == 4'h3 ? _GEN_634 : _GEN_556; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_664 = type_field == 4'h3 ? _GEN_635 : _GEN_557; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_665 = type_field == 4'h3 ? _GEN_636 : _GEN_558; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_683 = type_field == 4'h3 ? _GEN_654 : _GEN_576; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_684 = type_field == 4'h3 ? _GEN_655 : _GEN_577; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_697 = _io_w_4_w_en_T ? _GEN_657 : _GEN_551; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_698 = _io_w_4_w_en_T ? _GEN_658 : _GEN_552; // @[pcie_interface.scala 136:43]
  wire [3:0] _GEN_701 = _io_w_4_w_en_T ? _GEN_78 : 4'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 125:27]
  wire [63:0] _GEN_702 = _io_w_4_w_en_T ? _GEN_663 : _GEN_556; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_703 = _io_w_4_w_en_T ? _GEN_664 : _GEN_557; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_704 = _io_w_4_w_en_T ? _GEN_665 : _GEN_558; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_722 = _io_w_4_w_en_T ? _GEN_683 : _GEN_576; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_723 = _io_w_4_w_en_T ? _GEN_684 : _GEN_577; // @[pcie_interface.scala 136:43]
  wire [15:0] _GEN_725 = _io_w_4_w_en_T ? _GEN_106 : 16'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 132:29]
  wire [63:0] _GEN_731 = sub_type_field == 4'h1 ? io_pcie_w_data : _GEN_697; // @[pcie_interface.scala 145:52 pcie_interface.scala 146:33]
  wire [63:0] _GEN_732 = bias_field == 16'h0 ? io_pcie_w_data : _GEN_698; // @[pcie_interface.scala 149:53 pcie_interface.scala 150:37]
  wire [63:0] _GEN_736 = sub_type_field == 4'h2 ? _GEN_732 : _GEN_698; // @[pcie_interface.scala 148:52]
  wire [63:0] _GEN_740 = _T_5 ? io_pcie_w_data : _GEN_702; // @[pcie_interface.scala 161:58 pcie_interface.scala 162:43]
  wire [63:0] _GEN_741 = bias_field == 16'h100 ? io_pcie_w_data : _GEN_703; // @[pcie_interface.scala 164:58 pcie_interface.scala 165:49]
  wire [63:0] _GEN_742 = bias_field == 16'h200 ? io_pcie_w_data : _GEN_704; // @[pcie_interface.scala 167:58 pcie_interface.scala 168:44]
  wire [63:0] _GEN_776 = bias_field == 16'h1100 ? io_pcie_w_data : _GEN_722; // @[pcie_interface.scala 176:58 pcie_interface.scala 177:45]
  wire [63:0] _GEN_777 = bias_field == 16'h1200 ? io_pcie_w_data : _GEN_723; // @[pcie_interface.scala 179:58 pcie_interface.scala 180:45]
  wire [63:0] _GEN_780 = sub_type_field == 4'h3 ? _GEN_740 : _GEN_702; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_781 = sub_type_field == 4'h3 ? _GEN_741 : _GEN_703; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_782 = sub_type_field == 4'h3 ? _GEN_742 : _GEN_704; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_800 = sub_type_field == 4'h3 ? _GEN_776 : _GEN_722; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_801 = sub_type_field == 4'h3 ? _GEN_777 : _GEN_723; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_803 = type_field == 4'h3 ? _GEN_731 : _GEN_697; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_804 = type_field == 4'h3 ? _GEN_736 : _GEN_698; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_809 = type_field == 4'h3 ? _GEN_780 : _GEN_702; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_810 = type_field == 4'h3 ? _GEN_781 : _GEN_703; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_811 = type_field == 4'h3 ? _GEN_782 : _GEN_704; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_829 = type_field == 4'h3 ? _GEN_800 : _GEN_722; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_830 = type_field == 4'h3 ? _GEN_801 : _GEN_723; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_843 = cluster_id_field == 4'h5 ? _GEN_803 : _GEN_697; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_844 = cluster_id_field == 4'h5 ? _GEN_804 : _GEN_698; // @[pcie_interface.scala 136:43]
  wire [3:0] _GEN_847 = cluster_id_field == 4'h5 ? _GEN_78 : 4'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 125:27]
  wire [63:0] _GEN_848 = cluster_id_field == 4'h5 ? _GEN_809 : _GEN_702; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_849 = cluster_id_field == 4'h5 ? _GEN_810 : _GEN_703; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_850 = cluster_id_field == 4'h5 ? _GEN_811 : _GEN_704; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_868 = cluster_id_field == 4'h5 ? _GEN_829 : _GEN_722; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_869 = cluster_id_field == 4'h5 ? _GEN_830 : _GEN_723; // @[pcie_interface.scala 136:43]
  wire [15:0] _GEN_871 = cluster_id_field == 4'h5 ? _GEN_106 : 16'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 132:29]
  wire [63:0] _GEN_877 = sub_type_field == 4'h1 ? io_pcie_w_data : _GEN_843; // @[pcie_interface.scala 145:52 pcie_interface.scala 146:33]
  wire [63:0] _GEN_878 = bias_field == 16'h0 ? io_pcie_w_data : _GEN_844; // @[pcie_interface.scala 149:53 pcie_interface.scala 150:37]
  wire [63:0] _GEN_882 = sub_type_field == 4'h2 ? _GEN_878 : _GEN_844; // @[pcie_interface.scala 148:52]
  wire [63:0] _GEN_886 = _T_5 ? io_pcie_w_data : _GEN_848; // @[pcie_interface.scala 161:58 pcie_interface.scala 162:43]
  wire [63:0] _GEN_887 = bias_field == 16'h100 ? io_pcie_w_data : _GEN_849; // @[pcie_interface.scala 164:58 pcie_interface.scala 165:49]
  wire [63:0] _GEN_888 = bias_field == 16'h200 ? io_pcie_w_data : _GEN_850; // @[pcie_interface.scala 167:58 pcie_interface.scala 168:44]
  wire [63:0] _GEN_922 = bias_field == 16'h1100 ? io_pcie_w_data : _GEN_868; // @[pcie_interface.scala 176:58 pcie_interface.scala 177:45]
  wire [63:0] _GEN_923 = bias_field == 16'h1200 ? io_pcie_w_data : _GEN_869; // @[pcie_interface.scala 179:58 pcie_interface.scala 180:45]
  wire [63:0] _GEN_926 = sub_type_field == 4'h3 ? _GEN_886 : _GEN_848; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_927 = sub_type_field == 4'h3 ? _GEN_887 : _GEN_849; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_928 = sub_type_field == 4'h3 ? _GEN_888 : _GEN_850; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_946 = sub_type_field == 4'h3 ? _GEN_922 : _GEN_868; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_947 = sub_type_field == 4'h3 ? _GEN_923 : _GEN_869; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_949 = type_field == 4'h3 ? _GEN_877 : _GEN_843; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_950 = type_field == 4'h3 ? _GEN_882 : _GEN_844; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_955 = type_field == 4'h3 ? _GEN_926 : _GEN_848; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_956 = type_field == 4'h3 ? _GEN_927 : _GEN_849; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_957 = type_field == 4'h3 ? _GEN_928 : _GEN_850; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_975 = type_field == 4'h3 ? _GEN_946 : _GEN_868; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_976 = type_field == 4'h3 ? _GEN_947 : _GEN_869; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_989 = cluster_id_field == 4'h6 ? _GEN_949 : _GEN_843; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_990 = cluster_id_field == 4'h6 ? _GEN_950 : _GEN_844; // @[pcie_interface.scala 136:43]
  wire [3:0] _GEN_993 = cluster_id_field == 4'h6 ? _GEN_78 : 4'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 125:27]
  wire [63:0] _GEN_994 = cluster_id_field == 4'h6 ? _GEN_955 : _GEN_848; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_995 = cluster_id_field == 4'h6 ? _GEN_956 : _GEN_849; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_996 = cluster_id_field == 4'h6 ? _GEN_957 : _GEN_850; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1014 = cluster_id_field == 4'h6 ? _GEN_975 : _GEN_868; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1015 = cluster_id_field == 4'h6 ? _GEN_976 : _GEN_869; // @[pcie_interface.scala 136:43]
  wire [15:0] _GEN_1017 = cluster_id_field == 4'h6 ? _GEN_106 : 16'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 132:29]
  wire [63:0] _GEN_1023 = sub_type_field == 4'h1 ? io_pcie_w_data : _GEN_989; // @[pcie_interface.scala 145:52 pcie_interface.scala 146:33]
  wire [63:0] _GEN_1024 = bias_field == 16'h0 ? io_pcie_w_data : _GEN_990; // @[pcie_interface.scala 149:53 pcie_interface.scala 150:37]
  wire [63:0] _GEN_1028 = sub_type_field == 4'h2 ? _GEN_1024 : _GEN_990; // @[pcie_interface.scala 148:52]
  wire [63:0] _GEN_1032 = _T_5 ? io_pcie_w_data : _GEN_994; // @[pcie_interface.scala 161:58 pcie_interface.scala 162:43]
  wire [63:0] _GEN_1033 = bias_field == 16'h100 ? io_pcie_w_data : _GEN_995; // @[pcie_interface.scala 164:58 pcie_interface.scala 165:49]
  wire [63:0] _GEN_1034 = bias_field == 16'h200 ? io_pcie_w_data : _GEN_996; // @[pcie_interface.scala 167:58 pcie_interface.scala 168:44]
  wire [63:0] _GEN_1068 = bias_field == 16'h1100 ? io_pcie_w_data : _GEN_1014; // @[pcie_interface.scala 176:58 pcie_interface.scala 177:45]
  wire [63:0] _GEN_1069 = bias_field == 16'h1200 ? io_pcie_w_data : _GEN_1015; // @[pcie_interface.scala 179:58 pcie_interface.scala 180:45]
  wire [63:0] _GEN_1072 = sub_type_field == 4'h3 ? _GEN_1032 : _GEN_994; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_1073 = sub_type_field == 4'h3 ? _GEN_1033 : _GEN_995; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_1074 = sub_type_field == 4'h3 ? _GEN_1034 : _GEN_996; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_1092 = sub_type_field == 4'h3 ? _GEN_1068 : _GEN_1014; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_1093 = sub_type_field == 4'h3 ? _GEN_1069 : _GEN_1015; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_1095 = type_field == 4'h3 ? _GEN_1023 : _GEN_989; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1096 = type_field == 4'h3 ? _GEN_1028 : _GEN_990; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1101 = type_field == 4'h3 ? _GEN_1072 : _GEN_994; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1102 = type_field == 4'h3 ? _GEN_1073 : _GEN_995; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1103 = type_field == 4'h3 ? _GEN_1074 : _GEN_996; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1121 = type_field == 4'h3 ? _GEN_1092 : _GEN_1014; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1122 = type_field == 4'h3 ? _GEN_1093 : _GEN_1015; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1135 = cluster_id_field == 4'h7 ? _GEN_1095 : _GEN_989; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1136 = cluster_id_field == 4'h7 ? _GEN_1096 : _GEN_990; // @[pcie_interface.scala 136:43]
  wire [3:0] _GEN_1139 = cluster_id_field == 4'h7 ? _GEN_78 : 4'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 125:27]
  wire [63:0] _GEN_1140 = cluster_id_field == 4'h7 ? _GEN_1101 : _GEN_994; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1141 = cluster_id_field == 4'h7 ? _GEN_1102 : _GEN_995; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1142 = cluster_id_field == 4'h7 ? _GEN_1103 : _GEN_996; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1160 = cluster_id_field == 4'h7 ? _GEN_1121 : _GEN_1014; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1161 = cluster_id_field == 4'h7 ? _GEN_1122 : _GEN_1015; // @[pcie_interface.scala 136:43]
  wire [15:0] _GEN_1163 = cluster_id_field == 4'h7 ? _GEN_106 : 16'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 132:29]
  wire [63:0] _GEN_1169 = sub_type_field == 4'h1 ? io_pcie_w_data : _GEN_1135; // @[pcie_interface.scala 145:52 pcie_interface.scala 146:33]
  wire [63:0] _GEN_1170 = bias_field == 16'h0 ? io_pcie_w_data : _GEN_1136; // @[pcie_interface.scala 149:53 pcie_interface.scala 150:37]
  wire [63:0] _GEN_1174 = sub_type_field == 4'h2 ? _GEN_1170 : _GEN_1136; // @[pcie_interface.scala 148:52]
  wire [63:0] _GEN_1178 = _T_5 ? io_pcie_w_data : _GEN_1140; // @[pcie_interface.scala 161:58 pcie_interface.scala 162:43]
  wire [63:0] _GEN_1179 = bias_field == 16'h100 ? io_pcie_w_data : _GEN_1141; // @[pcie_interface.scala 164:58 pcie_interface.scala 165:49]
  wire [63:0] _GEN_1180 = bias_field == 16'h200 ? io_pcie_w_data : _GEN_1142; // @[pcie_interface.scala 167:58 pcie_interface.scala 168:44]
  wire [63:0] _GEN_1214 = bias_field == 16'h1100 ? io_pcie_w_data : _GEN_1160; // @[pcie_interface.scala 176:58 pcie_interface.scala 177:45]
  wire [63:0] _GEN_1215 = bias_field == 16'h1200 ? io_pcie_w_data : _GEN_1161; // @[pcie_interface.scala 179:58 pcie_interface.scala 180:45]
  wire [63:0] _GEN_1218 = sub_type_field == 4'h3 ? _GEN_1178 : _GEN_1140; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_1219 = sub_type_field == 4'h3 ? _GEN_1179 : _GEN_1141; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_1220 = sub_type_field == 4'h3 ? _GEN_1180 : _GEN_1142; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_1238 = sub_type_field == 4'h3 ? _GEN_1214 : _GEN_1160; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_1239 = sub_type_field == 4'h3 ? _GEN_1215 : _GEN_1161; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_1241 = type_field == 4'h3 ? _GEN_1169 : _GEN_1135; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1242 = type_field == 4'h3 ? _GEN_1174 : _GEN_1136; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1247 = type_field == 4'h3 ? _GEN_1218 : _GEN_1140; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1248 = type_field == 4'h3 ? _GEN_1219 : _GEN_1141; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1249 = type_field == 4'h3 ? _GEN_1220 : _GEN_1142; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1267 = type_field == 4'h3 ? _GEN_1238 : _GEN_1160; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1268 = type_field == 4'h3 ? _GEN_1239 : _GEN_1161; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1281 = cluster_id_field == 4'h8 ? _GEN_1241 : _GEN_1135; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1282 = cluster_id_field == 4'h8 ? _GEN_1242 : _GEN_1136; // @[pcie_interface.scala 136:43]
  wire [3:0] _GEN_1285 = cluster_id_field == 4'h8 ? _GEN_78 : 4'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 125:27]
  wire [63:0] _GEN_1286 = cluster_id_field == 4'h8 ? _GEN_1247 : _GEN_1140; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1287 = cluster_id_field == 4'h8 ? _GEN_1248 : _GEN_1141; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1288 = cluster_id_field == 4'h8 ? _GEN_1249 : _GEN_1142; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1306 = cluster_id_field == 4'h8 ? _GEN_1267 : _GEN_1160; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1307 = cluster_id_field == 4'h8 ? _GEN_1268 : _GEN_1161; // @[pcie_interface.scala 136:43]
  wire [15:0] _GEN_1309 = cluster_id_field == 4'h8 ? _GEN_106 : 16'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 132:29]
  wire [63:0] _GEN_1315 = sub_type_field == 4'h1 ? io_pcie_w_data : _GEN_1281; // @[pcie_interface.scala 145:52 pcie_interface.scala 146:33]
  wire [63:0] _GEN_1316 = bias_field == 16'h0 ? io_pcie_w_data : _GEN_1282; // @[pcie_interface.scala 149:53 pcie_interface.scala 150:37]
  wire [63:0] _GEN_1320 = sub_type_field == 4'h2 ? _GEN_1316 : _GEN_1282; // @[pcie_interface.scala 148:52]
  wire [63:0] _GEN_1324 = _T_5 ? io_pcie_w_data : _GEN_1286; // @[pcie_interface.scala 161:58 pcie_interface.scala 162:43]
  wire [63:0] _GEN_1325 = bias_field == 16'h100 ? io_pcie_w_data : _GEN_1287; // @[pcie_interface.scala 164:58 pcie_interface.scala 165:49]
  wire [63:0] _GEN_1326 = bias_field == 16'h200 ? io_pcie_w_data : _GEN_1288; // @[pcie_interface.scala 167:58 pcie_interface.scala 168:44]
  wire [63:0] _GEN_1360 = bias_field == 16'h1100 ? io_pcie_w_data : _GEN_1306; // @[pcie_interface.scala 176:58 pcie_interface.scala 177:45]
  wire [63:0] _GEN_1361 = bias_field == 16'h1200 ? io_pcie_w_data : _GEN_1307; // @[pcie_interface.scala 179:58 pcie_interface.scala 180:45]
  wire [63:0] _GEN_1364 = sub_type_field == 4'h3 ? _GEN_1324 : _GEN_1286; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_1365 = sub_type_field == 4'h3 ? _GEN_1325 : _GEN_1287; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_1366 = sub_type_field == 4'h3 ? _GEN_1326 : _GEN_1288; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_1384 = sub_type_field == 4'h3 ? _GEN_1360 : _GEN_1306; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_1385 = sub_type_field == 4'h3 ? _GEN_1361 : _GEN_1307; // @[pcie_interface.scala 159:52]
  wire [63:0] _GEN_1387 = type_field == 4'h3 ? _GEN_1315 : _GEN_1281; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1388 = type_field == 4'h3 ? _GEN_1320 : _GEN_1282; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1393 = type_field == 4'h3 ? _GEN_1364 : _GEN_1286; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1394 = type_field == 4'h3 ? _GEN_1365 : _GEN_1287; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1395 = type_field == 4'h3 ? _GEN_1366 : _GEN_1288; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1413 = type_field == 4'h3 ? _GEN_1384 : _GEN_1306; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1414 = type_field == 4'h3 ? _GEN_1385 : _GEN_1307; // @[pcie_interface.scala 143:44]
  wire [63:0] _GEN_1427 = cluster_id_field == 4'h9 ? _GEN_1387 : _GEN_1281; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1428 = cluster_id_field == 4'h9 ? _GEN_1388 : _GEN_1282; // @[pcie_interface.scala 136:43]
  wire [3:0] _GEN_1431 = cluster_id_field == 4'h9 ? _GEN_78 : 4'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 125:27]
  wire [63:0] _GEN_1432 = cluster_id_field == 4'h9 ? _GEN_1393 : _GEN_1286; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1433 = cluster_id_field == 4'h9 ? _GEN_1394 : _GEN_1287; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1434 = cluster_id_field == 4'h9 ? _GEN_1395 : _GEN_1288; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1452 = cluster_id_field == 4'h9 ? _GEN_1413 : _GEN_1306; // @[pcie_interface.scala 136:43]
  wire [63:0] _GEN_1453 = cluster_id_field == 4'h9 ? _GEN_1414 : _GEN_1307; // @[pcie_interface.scala 136:43]
  wire [15:0] _GEN_1455 = cluster_id_field == 4'h9 ? _GEN_106 : 16'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 132:29]
  reg [3:0] first_proc_id; // @[pcie_interface.scala 201:28]
  reg [3:0] last_proc_id; // @[pcie_interface.scala 202:28]
  reg [3:0] next_proc_id_0; // @[pcie_interface.scala 203:28]
  reg [3:0] next_proc_id_1; // @[pcie_interface.scala 203:28]
  reg [3:0] next_proc_id_2; // @[pcie_interface.scala 203:28]
  reg [3:0] next_proc_id_3; // @[pcie_interface.scala 203:28]
  reg [3:0] next_proc_id_4; // @[pcie_interface.scala 203:28]
  reg [3:0] next_proc_id_5; // @[pcie_interface.scala 203:28]
  reg [3:0] next_proc_id_6; // @[pcie_interface.scala 203:28]
  reg [3:0] next_proc_id_7; // @[pcie_interface.scala 203:28]
  reg [3:0] next_proc_id_8; // @[pcie_interface.scala 203:28]
  reg [3:0] next_proc_id_9; // @[pcie_interface.scala 203:28]
  wire [63:0] _GEN_1460 = _T_5 ? io_pcie_w_data : {{60'd0}, first_proc_id}; // @[pcie_interface.scala 206:41 pcie_interface.scala 207:27 pcie_interface.scala 201:28]
  wire [63:0] _GEN_1461 = bias_field == 16'h1 ? io_pcie_w_data : {{60'd0}, last_proc_id}; // @[pcie_interface.scala 209:41 pcie_interface.scala 210:27 pcie_interface.scala 202:28]
  wire [63:0] _GEN_1462 = type_field == 4'h8 ? _GEN_1460 : {{60'd0}, first_proc_id}; // @[pcie_interface.scala 205:36 pcie_interface.scala 201:28]
  wire [63:0] _GEN_1463 = type_field == 4'h8 ? _GEN_1461 : {{60'd0}, last_proc_id}; // @[pcie_interface.scala 205:36 pcie_interface.scala 202:28]
  assign io_pcie_r_data = io_pcie_o_r_data; // @[pcie_interface.scala 76:22]
  assign io_pcie_o_cs = io_pcie_r_addr[19:16]; // @[pcie_interface.scala 73:39]
  assign io_pcie_o_r_en = io_pcie_r_en; // @[pcie_interface.scala 74:22]
  assign io_pcie_o_r_addr = io_pcie_r_addr[7:0]; // @[pcie_interface.scala 75:22]
  assign io_mod_proc_mod_0_par_mod_en = _io_w_0_w_en_T & _GEN_75; // @[pcie_interface.scala 136:43 pcie_interface.scala 112:33]
  assign io_mod_proc_mod_0_par_mod_last_mau_id_mod = _io_w_0_w_en_T & _GEN_76; // @[pcie_interface.scala 136:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_0_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 114:33]
  assign io_mod_proc_mod_0_par_mod_cs = config_field[2:0]; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_0_par_mod_module_mod_state_id_mod = _io_w_0_w_en_T & _GEN_77; // @[pcie_interface.scala 136:43 pcie_interface.scala 116:41]
  assign io_mod_proc_mod_0_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 117:41]
  assign io_mod_proc_mod_0_par_mod_module_mod_sram_w_cs = sub_type_field[0]; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_0_par_mod_module_mod_sram_w_addr = bias_field[7:0]; // @[pcie_interface.scala 120:41]
  assign io_mod_proc_mod_0_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 121:41]
  assign io_mod_proc_mod_0_mat_mod_en = _io_w_0_w_en_T & _GEN_101; // @[pcie_interface.scala 136:43 pcie_interface.scala 124:27]
  assign io_mod_proc_mod_0_mat_mod_config_id = _GEN_117[0];
  assign io_mod_proc_mod_0_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_0_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_0_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_0_act_mod_en_0 = _io_w_0_w_en_T & _GEN_107; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_0_act_mod_en_1 = _io_w_0_w_en_T & _GEN_109; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_0_act_mod_addr = _GEN_141[7:0];
  assign io_mod_proc_mod_0_act_mod_data_0 = _io_w_0_w_en_T ? _GEN_108 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_0_act_mod_data_1 = _io_w_0_w_en_T ? _GEN_110 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_1_par_mod_en = _io_w_1_w_en_T & _GEN_75; // @[pcie_interface.scala 136:43 pcie_interface.scala 112:33]
  assign io_mod_proc_mod_1_par_mod_last_mau_id_mod = _io_w_1_w_en_T & _GEN_76; // @[pcie_interface.scala 136:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_1_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 114:33]
  assign io_mod_proc_mod_1_par_mod_cs = config_field[2:0]; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_1_par_mod_module_mod_state_id_mod = _io_w_1_w_en_T & _GEN_77; // @[pcie_interface.scala 136:43 pcie_interface.scala 116:41]
  assign io_mod_proc_mod_1_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 117:41]
  assign io_mod_proc_mod_1_par_mod_module_mod_sram_w_cs = sub_type_field[0]; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_1_par_mod_module_mod_sram_w_addr = bias_field[7:0]; // @[pcie_interface.scala 120:41]
  assign io_mod_proc_mod_1_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 121:41]
  assign io_mod_proc_mod_1_mat_mod_en = _io_w_1_w_en_T & _GEN_101; // @[pcie_interface.scala 136:43 pcie_interface.scala 124:27]
  assign io_mod_proc_mod_1_mat_mod_config_id = _GEN_263[0];
  assign io_mod_proc_mod_1_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_1_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_1_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_1_act_mod_en_0 = _io_w_1_w_en_T & _GEN_107; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_1_act_mod_en_1 = _io_w_1_w_en_T & _GEN_109; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_1_act_mod_addr = _GEN_287[7:0];
  assign io_mod_proc_mod_1_act_mod_data_0 = _io_w_1_w_en_T ? _GEN_108 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_1_act_mod_data_1 = _io_w_1_w_en_T ? _GEN_110 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_2_par_mod_en = _io_w_2_w_en_T & _GEN_75; // @[pcie_interface.scala 136:43 pcie_interface.scala 112:33]
  assign io_mod_proc_mod_2_par_mod_last_mau_id_mod = _io_w_2_w_en_T & _GEN_76; // @[pcie_interface.scala 136:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_2_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 114:33]
  assign io_mod_proc_mod_2_par_mod_cs = config_field[2:0]; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_2_par_mod_module_mod_state_id_mod = _io_w_2_w_en_T & _GEN_77; // @[pcie_interface.scala 136:43 pcie_interface.scala 116:41]
  assign io_mod_proc_mod_2_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 117:41]
  assign io_mod_proc_mod_2_par_mod_module_mod_sram_w_cs = sub_type_field[0]; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_2_par_mod_module_mod_sram_w_addr = bias_field[7:0]; // @[pcie_interface.scala 120:41]
  assign io_mod_proc_mod_2_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 121:41]
  assign io_mod_proc_mod_2_mat_mod_en = _io_w_2_w_en_T & _GEN_101; // @[pcie_interface.scala 136:43 pcie_interface.scala 124:27]
  assign io_mod_proc_mod_2_mat_mod_config_id = _GEN_409[0];
  assign io_mod_proc_mod_2_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_2_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_2_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_2_act_mod_en_0 = _io_w_2_w_en_T & _GEN_107; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_2_act_mod_en_1 = _io_w_2_w_en_T & _GEN_109; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_2_act_mod_addr = _GEN_433[7:0];
  assign io_mod_proc_mod_2_act_mod_data_0 = _io_w_2_w_en_T ? _GEN_108 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_2_act_mod_data_1 = _io_w_2_w_en_T ? _GEN_110 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_3_par_mod_en = _io_w_3_w_en_T & _GEN_75; // @[pcie_interface.scala 136:43 pcie_interface.scala 112:33]
  assign io_mod_proc_mod_3_par_mod_last_mau_id_mod = _io_w_3_w_en_T & _GEN_76; // @[pcie_interface.scala 136:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_3_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 114:33]
  assign io_mod_proc_mod_3_par_mod_cs = config_field[2:0]; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_3_par_mod_module_mod_state_id_mod = _io_w_3_w_en_T & _GEN_77; // @[pcie_interface.scala 136:43 pcie_interface.scala 116:41]
  assign io_mod_proc_mod_3_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 117:41]
  assign io_mod_proc_mod_3_par_mod_module_mod_sram_w_cs = sub_type_field[0]; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_3_par_mod_module_mod_sram_w_addr = bias_field[7:0]; // @[pcie_interface.scala 120:41]
  assign io_mod_proc_mod_3_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 121:41]
  assign io_mod_proc_mod_3_mat_mod_en = _io_w_3_w_en_T & _GEN_101; // @[pcie_interface.scala 136:43 pcie_interface.scala 124:27]
  assign io_mod_proc_mod_3_mat_mod_config_id = _GEN_555[0];
  assign io_mod_proc_mod_3_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_3_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_3_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_3_act_mod_en_0 = _io_w_3_w_en_T & _GEN_107; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_3_act_mod_en_1 = _io_w_3_w_en_T & _GEN_109; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_3_act_mod_addr = _GEN_579[7:0];
  assign io_mod_proc_mod_3_act_mod_data_0 = _io_w_3_w_en_T ? _GEN_108 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_3_act_mod_data_1 = _io_w_3_w_en_T ? _GEN_110 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_4_par_mod_en = _io_w_4_w_en_T & _GEN_75; // @[pcie_interface.scala 136:43 pcie_interface.scala 112:33]
  assign io_mod_proc_mod_4_par_mod_last_mau_id_mod = _io_w_4_w_en_T & _GEN_76; // @[pcie_interface.scala 136:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_4_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 114:33]
  assign io_mod_proc_mod_4_par_mod_cs = config_field[2:0]; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_4_par_mod_module_mod_state_id_mod = _io_w_4_w_en_T & _GEN_77; // @[pcie_interface.scala 136:43 pcie_interface.scala 116:41]
  assign io_mod_proc_mod_4_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 117:41]
  assign io_mod_proc_mod_4_par_mod_module_mod_sram_w_cs = sub_type_field[0]; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_4_par_mod_module_mod_sram_w_addr = bias_field[7:0]; // @[pcie_interface.scala 120:41]
  assign io_mod_proc_mod_4_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 121:41]
  assign io_mod_proc_mod_4_mat_mod_en = _io_w_4_w_en_T & _GEN_101; // @[pcie_interface.scala 136:43 pcie_interface.scala 124:27]
  assign io_mod_proc_mod_4_mat_mod_config_id = _GEN_701[0];
  assign io_mod_proc_mod_4_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_4_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_4_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_4_act_mod_en_0 = _io_w_4_w_en_T & _GEN_107; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_4_act_mod_en_1 = _io_w_4_w_en_T & _GEN_109; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_4_act_mod_addr = _GEN_725[7:0];
  assign io_mod_proc_mod_4_act_mod_data_0 = _io_w_4_w_en_T ? _GEN_108 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_4_act_mod_data_1 = _io_w_4_w_en_T ? _GEN_110 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_5_par_mod_en = cluster_id_field == 4'h5 & _GEN_75; // @[pcie_interface.scala 136:43 pcie_interface.scala 112:33]
  assign io_mod_proc_mod_5_par_mod_last_mau_id_mod = cluster_id_field == 4'h5 & _GEN_76; // @[pcie_interface.scala 136:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_5_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 114:33]
  assign io_mod_proc_mod_5_par_mod_cs = config_field[2:0]; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_5_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h5 & _GEN_77; // @[pcie_interface.scala 136:43 pcie_interface.scala 116:41]
  assign io_mod_proc_mod_5_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 117:41]
  assign io_mod_proc_mod_5_par_mod_module_mod_sram_w_cs = sub_type_field[0]; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_5_par_mod_module_mod_sram_w_addr = bias_field[7:0]; // @[pcie_interface.scala 120:41]
  assign io_mod_proc_mod_5_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 121:41]
  assign io_mod_proc_mod_5_mat_mod_en = cluster_id_field == 4'h5 & _GEN_101; // @[pcie_interface.scala 136:43 pcie_interface.scala 124:27]
  assign io_mod_proc_mod_5_mat_mod_config_id = _GEN_847[0];
  assign io_mod_proc_mod_5_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_5_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_5_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_5_act_mod_en_0 = cluster_id_field == 4'h5 & _GEN_107; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_5_act_mod_en_1 = cluster_id_field == 4'h5 & _GEN_109; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_5_act_mod_addr = _GEN_871[7:0];
  assign io_mod_proc_mod_5_act_mod_data_0 = cluster_id_field == 4'h5 ? _GEN_108 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_5_act_mod_data_1 = cluster_id_field == 4'h5 ? _GEN_110 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_6_par_mod_en = cluster_id_field == 4'h6 & _GEN_75; // @[pcie_interface.scala 136:43 pcie_interface.scala 112:33]
  assign io_mod_proc_mod_6_par_mod_last_mau_id_mod = cluster_id_field == 4'h6 & _GEN_76; // @[pcie_interface.scala 136:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_6_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 114:33]
  assign io_mod_proc_mod_6_par_mod_cs = config_field[2:0]; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_6_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h6 & _GEN_77; // @[pcie_interface.scala 136:43 pcie_interface.scala 116:41]
  assign io_mod_proc_mod_6_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 117:41]
  assign io_mod_proc_mod_6_par_mod_module_mod_sram_w_cs = sub_type_field[0]; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_6_par_mod_module_mod_sram_w_addr = bias_field[7:0]; // @[pcie_interface.scala 120:41]
  assign io_mod_proc_mod_6_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 121:41]
  assign io_mod_proc_mod_6_mat_mod_en = cluster_id_field == 4'h6 & _GEN_101; // @[pcie_interface.scala 136:43 pcie_interface.scala 124:27]
  assign io_mod_proc_mod_6_mat_mod_config_id = _GEN_993[0];
  assign io_mod_proc_mod_6_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_6_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_6_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_6_act_mod_en_0 = cluster_id_field == 4'h6 & _GEN_107; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_6_act_mod_en_1 = cluster_id_field == 4'h6 & _GEN_109; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_6_act_mod_addr = _GEN_1017[7:0];
  assign io_mod_proc_mod_6_act_mod_data_0 = cluster_id_field == 4'h6 ? _GEN_108 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_6_act_mod_data_1 = cluster_id_field == 4'h6 ? _GEN_110 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_7_par_mod_en = cluster_id_field == 4'h7 & _GEN_75; // @[pcie_interface.scala 136:43 pcie_interface.scala 112:33]
  assign io_mod_proc_mod_7_par_mod_last_mau_id_mod = cluster_id_field == 4'h7 & _GEN_76; // @[pcie_interface.scala 136:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_7_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 114:33]
  assign io_mod_proc_mod_7_par_mod_cs = config_field[2:0]; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_7_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h7 & _GEN_77; // @[pcie_interface.scala 136:43 pcie_interface.scala 116:41]
  assign io_mod_proc_mod_7_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 117:41]
  assign io_mod_proc_mod_7_par_mod_module_mod_sram_w_cs = sub_type_field[0]; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_7_par_mod_module_mod_sram_w_addr = bias_field[7:0]; // @[pcie_interface.scala 120:41]
  assign io_mod_proc_mod_7_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 121:41]
  assign io_mod_proc_mod_7_mat_mod_en = cluster_id_field == 4'h7 & _GEN_101; // @[pcie_interface.scala 136:43 pcie_interface.scala 124:27]
  assign io_mod_proc_mod_7_mat_mod_config_id = _GEN_1139[0];
  assign io_mod_proc_mod_7_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_7_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_7_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_7_act_mod_en_0 = cluster_id_field == 4'h7 & _GEN_107; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_7_act_mod_en_1 = cluster_id_field == 4'h7 & _GEN_109; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_7_act_mod_addr = _GEN_1163[7:0];
  assign io_mod_proc_mod_7_act_mod_data_0 = cluster_id_field == 4'h7 ? _GEN_108 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_7_act_mod_data_1 = cluster_id_field == 4'h7 ? _GEN_110 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_8_par_mod_en = cluster_id_field == 4'h8 & _GEN_75; // @[pcie_interface.scala 136:43 pcie_interface.scala 112:33]
  assign io_mod_proc_mod_8_par_mod_last_mau_id_mod = cluster_id_field == 4'h8 & _GEN_76; // @[pcie_interface.scala 136:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_8_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 114:33]
  assign io_mod_proc_mod_8_par_mod_cs = config_field[2:0]; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_8_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h8 & _GEN_77; // @[pcie_interface.scala 136:43 pcie_interface.scala 116:41]
  assign io_mod_proc_mod_8_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 117:41]
  assign io_mod_proc_mod_8_par_mod_module_mod_sram_w_cs = sub_type_field[0]; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_8_par_mod_module_mod_sram_w_addr = bias_field[7:0]; // @[pcie_interface.scala 120:41]
  assign io_mod_proc_mod_8_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 121:41]
  assign io_mod_proc_mod_8_mat_mod_en = cluster_id_field == 4'h8 & _GEN_101; // @[pcie_interface.scala 136:43 pcie_interface.scala 124:27]
  assign io_mod_proc_mod_8_mat_mod_config_id = _GEN_1285[0];
  assign io_mod_proc_mod_8_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_8_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_8_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_8_act_mod_en_0 = cluster_id_field == 4'h8 & _GEN_107; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_8_act_mod_en_1 = cluster_id_field == 4'h8 & _GEN_109; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_8_act_mod_addr = _GEN_1309[7:0];
  assign io_mod_proc_mod_8_act_mod_data_0 = cluster_id_field == 4'h8 ? _GEN_108 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_8_act_mod_data_1 = cluster_id_field == 4'h8 ? _GEN_110 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_9_par_mod_en = cluster_id_field == 4'h9 & _GEN_75; // @[pcie_interface.scala 136:43 pcie_interface.scala 112:33]
  assign io_mod_proc_mod_9_par_mod_last_mau_id_mod = cluster_id_field == 4'h9 & _GEN_76; // @[pcie_interface.scala 136:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_9_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 114:33]
  assign io_mod_proc_mod_9_par_mod_cs = config_field[2:0]; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_9_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h9 & _GEN_77; // @[pcie_interface.scala 136:43 pcie_interface.scala 116:41]
  assign io_mod_proc_mod_9_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 117:41]
  assign io_mod_proc_mod_9_par_mod_module_mod_sram_w_cs = sub_type_field[0]; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_9_par_mod_module_mod_sram_w_addr = bias_field[7:0]; // @[pcie_interface.scala 120:41]
  assign io_mod_proc_mod_9_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 121:41]
  assign io_mod_proc_mod_9_mat_mod_en = cluster_id_field == 4'h9 & _GEN_101; // @[pcie_interface.scala 136:43 pcie_interface.scala 124:27]
  assign io_mod_proc_mod_9_mat_mod_config_id = _GEN_1431[0];
  assign io_mod_proc_mod_9_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_9_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_9_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 126:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_9_act_mod_en_0 = cluster_id_field == 4'h9 & _GEN_107; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_9_act_mod_en_1 = cluster_id_field == 4'h9 & _GEN_109; // @[pcie_interface.scala 136:43 pcie_interface.scala 131:29]
  assign io_mod_proc_mod_9_act_mod_addr = _GEN_1455[7:0];
  assign io_mod_proc_mod_9_act_mod_data_0 = cluster_id_field == 4'h9 ? _GEN_108 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_9_act_mod_data_1 = cluster_id_field == 4'h9 ? _GEN_110 : 64'h0; // @[pcie_interface.scala 136:43 pcie_interface.scala 133:29]
  assign io_mod_xbar_mod_en = type_field == 4'hf; // @[pcie_interface.scala 216:42]
  assign io_mod_xbar_mod_first_proc_id = first_proc_id; // @[pcie_interface.scala 217:28]
  assign io_mod_xbar_mod_last_proc_id = last_proc_id; // @[pcie_interface.scala 218:28]
  assign io_mod_xbar_mod_next_proc_id_0 = next_proc_id_0; // @[pcie_interface.scala 219:28]
  assign io_mod_xbar_mod_next_proc_id_1 = next_proc_id_1; // @[pcie_interface.scala 219:28]
  assign io_mod_xbar_mod_next_proc_id_2 = next_proc_id_2; // @[pcie_interface.scala 219:28]
  assign io_mod_xbar_mod_next_proc_id_3 = next_proc_id_3; // @[pcie_interface.scala 219:28]
  assign io_mod_xbar_mod_next_proc_id_4 = next_proc_id_4; // @[pcie_interface.scala 219:28]
  assign io_mod_xbar_mod_next_proc_id_5 = next_proc_id_5; // @[pcie_interface.scala 219:28]
  assign io_mod_xbar_mod_next_proc_id_6 = next_proc_id_6; // @[pcie_interface.scala 219:28]
  assign io_mod_xbar_mod_next_proc_id_7 = next_proc_id_7; // @[pcie_interface.scala 219:28]
  assign io_mod_xbar_mod_next_proc_id_8 = next_proc_id_8; // @[pcie_interface.scala 219:28]
  assign io_mod_xbar_mod_next_proc_id_9 = next_proc_id_9; // @[pcie_interface.scala 219:28]
  assign io_w_0_wcs = sram_id_field[3:0]; // @[pcie_interface.scala 95:28]
  assign io_w_0_w_en = cluster_id_field == 4'h0; // @[pcie_interface.scala 96:48]
  assign io_w_0_w_addr = bias_field[7:0]; // @[pcie_interface.scala 97:28]
  assign io_w_0_w_data = io_pcie_w_data; // @[pcie_interface.scala 98:28]
  assign io_w_1_wcs = sram_id_field[3:0]; // @[pcie_interface.scala 95:28]
  assign io_w_1_w_en = cluster_id_field == 4'h1; // @[pcie_interface.scala 96:48]
  assign io_w_1_w_addr = bias_field[7:0]; // @[pcie_interface.scala 97:28]
  assign io_w_1_w_data = io_pcie_w_data; // @[pcie_interface.scala 98:28]
  assign io_w_2_wcs = sram_id_field[3:0]; // @[pcie_interface.scala 95:28]
  assign io_w_2_w_en = cluster_id_field == 4'h2; // @[pcie_interface.scala 96:48]
  assign io_w_2_w_addr = bias_field[7:0]; // @[pcie_interface.scala 97:28]
  assign io_w_2_w_data = io_pcie_w_data; // @[pcie_interface.scala 98:28]
  assign io_w_3_wcs = sram_id_field[3:0]; // @[pcie_interface.scala 95:28]
  assign io_w_3_w_en = cluster_id_field == 4'h3; // @[pcie_interface.scala 96:48]
  assign io_w_3_w_addr = bias_field[7:0]; // @[pcie_interface.scala 97:28]
  assign io_w_3_w_data = io_pcie_w_data; // @[pcie_interface.scala 98:28]
  assign io_w_4_wcs = sram_id_field[3:0]; // @[pcie_interface.scala 95:28]
  assign io_w_4_w_en = cluster_id_field == 4'h4; // @[pcie_interface.scala 96:48]
  assign io_w_4_w_addr = bias_field[7:0]; // @[pcie_interface.scala 97:28]
  assign io_w_4_w_data = io_pcie_w_data; // @[pcie_interface.scala 98:28]
  always @(posedge clock) begin
    last_mau_id <= _GEN_1427[2:0];
    state_id <= _GEN_1428[7:0];
    mat_key_header_id <= _GEN_1432[7:0];
    mat_key_internal_offset <= _GEN_1433[7:0];
    mat_key_key_length <= _GEN_1434[7:0];
    mat_tab_table_width <= _GEN_1452[4:0];
    mat_tab_table_depth <= _GEN_1453[4:0];
    first_proc_id <= _GEN_1462[3:0];
    last_proc_id <= _GEN_1463[3:0];
    if (type_field == 4'h9) begin // @[pcie_interface.scala 213:36]
      if (4'h0 == cluster_id_field) begin // @[pcie_interface.scala 214:37]
        next_proc_id_0 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 214:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 213:36]
      if (4'h1 == cluster_id_field) begin // @[pcie_interface.scala 214:37]
        next_proc_id_1 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 214:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 213:36]
      if (4'h2 == cluster_id_field) begin // @[pcie_interface.scala 214:37]
        next_proc_id_2 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 214:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 213:36]
      if (4'h3 == cluster_id_field) begin // @[pcie_interface.scala 214:37]
        next_proc_id_3 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 214:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 213:36]
      if (4'h4 == cluster_id_field) begin // @[pcie_interface.scala 214:37]
        next_proc_id_4 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 214:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 213:36]
      if (4'h5 == cluster_id_field) begin // @[pcie_interface.scala 214:37]
        next_proc_id_5 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 214:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 213:36]
      if (4'h6 == cluster_id_field) begin // @[pcie_interface.scala 214:37]
        next_proc_id_6 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 214:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 213:36]
      if (4'h7 == cluster_id_field) begin // @[pcie_interface.scala 214:37]
        next_proc_id_7 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 214:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 213:36]
      if (4'h8 == cluster_id_field) begin // @[pcie_interface.scala 214:37]
        next_proc_id_8 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 214:37]
      end
    end
    if (type_field == 4'h9) begin // @[pcie_interface.scala 213:36]
      if (4'h9 == cluster_id_field) begin // @[pcie_interface.scala 214:37]
        next_proc_id_9 <= io_pcie_w_data[3:0]; // @[pcie_interface.scala 214:37]
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
  last_mau_id = _RAND_0[2:0];
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
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
