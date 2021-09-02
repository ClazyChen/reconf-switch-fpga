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
  output [1:0]  io_mod_proc_mod_1_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_1_par_mod_cs,
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
  output [1:0]  io_mod_proc_mod_2_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_2_par_mod_cs,
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
  output [1:0]  io_mod_proc_mod_3_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_3_par_mod_cs,
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
  output [1:0]  io_mod_proc_mod_4_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_4_par_mod_cs,
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
  output [1:0]  io_mod_proc_mod_5_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_5_par_mod_cs,
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
  output [1:0]  io_mod_proc_mod_6_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_6_par_mod_cs,
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
  output [1:0]  io_mod_proc_mod_7_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_7_par_mod_cs,
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
  output [1:0]  io_mod_proc_mod_8_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_8_par_mod_cs,
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
  output [1:0]  io_mod_proc_mod_9_par_mod_last_mau_id,
  output [1:0]  io_mod_proc_mod_9_par_mod_cs,
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
  wire [7:0] _GEN_91 = type_field == 4'h4 ? offset_field : 8'h0; // @[pcie_interface.scala 192:44 pcie_interface.scala 193:30 pcie_interface.scala 133:29]
  wire  _GEN_92 = type_field == 4'h4 & _T_19; // @[pcie_interface.scala 192:44 pcie_interface.scala 132:29]
  wire [63:0] _GEN_93 = type_field == 4'h4 ? _GEN_88 : 64'h0; // @[pcie_interface.scala 192:44 pcie_interface.scala 134:29]
  wire  _GEN_94 = type_field == 4'h4 & _T_3; // @[pcie_interface.scala 192:44 pcie_interface.scala 132:29]
  wire [63:0] _GEN_95 = type_field == 4'h4 ? _GEN_90 : 64'h0; // @[pcie_interface.scala 192:44 pcie_interface.scala 134:29]
  wire [3:0] _GEN_98 = _io_w_0_w_en_T ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_99 = _io_w_0_w_en_T ? _GEN_58 : {{62'd0}, last_mau_id}; // @[pcie_interface.scala 137:43 pcie_interface.scala 102:26]
  wire [63:0] _GEN_100 = _io_w_0_w_en_T ? _GEN_59 : {{56'd0}, state_id}; // @[pcie_interface.scala 137:43 pcie_interface.scala 103:26]
  wire [3:0] _GEN_103 = _io_w_0_w_en_T ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_104 = _io_w_0_w_en_T ? _GEN_64 : {{56'd0}, mat_key_header_id}; // @[pcie_interface.scala 137:43 pcie_interface.scala 104:22]
  wire [63:0] _GEN_105 = _io_w_0_w_en_T ? _GEN_65 : {{56'd0}, mat_key_internal_offset}; // @[pcie_interface.scala 137:43 pcie_interface.scala 104:22]
  wire [63:0] _GEN_106 = _io_w_0_w_en_T ? _GEN_66 : {{56'd0}, mat_key_key_length}; // @[pcie_interface.scala 137:43 pcie_interface.scala 104:22]
  wire [63:0] _GEN_124 = _io_w_0_w_en_T ? _GEN_84 : {{59'd0}, mat_tab_table_width}; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [63:0] _GEN_125 = _io_w_0_w_en_T ? _GEN_85 : {{59'd0}, mat_tab_table_depth}; // @[pcie_interface.scala 137:43 pcie_interface.scala 105:22]
  wire [63:0] _GEN_133 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_99; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_134 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_100; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_138 = sram_id_field == 4'h2 ? _GEN_134 : _GEN_100; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_142 = _T_5 ? io_pcie_w_data : _GEN_104; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_143 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_105; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_144 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_106; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_147 = sram_id_field == 4'h3 ? _GEN_142 : _GEN_104; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_148 = sram_id_field == 4'h3 ? _GEN_143 : _GEN_105; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_149 = sram_id_field == 4'h3 ? _GEN_144 : _GEN_106; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_183 = _T_5 ? io_pcie_w_data : _GEN_124; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_184 = _T_9 ? io_pcie_w_data : _GEN_125; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_186 = sram_id_field == 4'h5 ? _GEN_183 : _GEN_124; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_187 = sram_id_field == 4'h5 ? _GEN_184 : _GEN_125; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_190 = type_field == 4'h3 ? _GEN_133 : _GEN_99; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_191 = type_field == 4'h3 ? _GEN_138 : _GEN_100; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_196 = type_field == 4'h3 ? _GEN_147 : _GEN_104; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_197 = type_field == 4'h3 ? _GEN_148 : _GEN_105; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_198 = type_field == 4'h3 ? _GEN_149 : _GEN_106; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_216 = type_field == 4'h3 ? _GEN_186 : _GEN_124; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_217 = type_field == 4'h3 ? _GEN_187 : _GEN_125; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_230 = _io_w_1_w_en_T ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_231 = _io_w_1_w_en_T ? _GEN_190 : _GEN_99; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_232 = _io_w_1_w_en_T ? _GEN_191 : _GEN_100; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_235 = _io_w_1_w_en_T ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_236 = _io_w_1_w_en_T ? _GEN_196 : _GEN_104; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_237 = _io_w_1_w_en_T ? _GEN_197 : _GEN_105; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_238 = _io_w_1_w_en_T ? _GEN_198 : _GEN_106; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_256 = _io_w_1_w_en_T ? _GEN_216 : _GEN_124; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_257 = _io_w_1_w_en_T ? _GEN_217 : _GEN_125; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_265 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_231; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_266 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_232; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_270 = sram_id_field == 4'h2 ? _GEN_266 : _GEN_232; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_274 = _T_5 ? io_pcie_w_data : _GEN_236; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_275 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_237; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_276 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_238; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_279 = sram_id_field == 4'h3 ? _GEN_274 : _GEN_236; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_280 = sram_id_field == 4'h3 ? _GEN_275 : _GEN_237; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_281 = sram_id_field == 4'h3 ? _GEN_276 : _GEN_238; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_315 = _T_5 ? io_pcie_w_data : _GEN_256; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_316 = _T_9 ? io_pcie_w_data : _GEN_257; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_318 = sram_id_field == 4'h5 ? _GEN_315 : _GEN_256; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_319 = sram_id_field == 4'h5 ? _GEN_316 : _GEN_257; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_322 = type_field == 4'h3 ? _GEN_265 : _GEN_231; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_323 = type_field == 4'h3 ? _GEN_270 : _GEN_232; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_328 = type_field == 4'h3 ? _GEN_279 : _GEN_236; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_329 = type_field == 4'h3 ? _GEN_280 : _GEN_237; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_330 = type_field == 4'h3 ? _GEN_281 : _GEN_238; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_348 = type_field == 4'h3 ? _GEN_318 : _GEN_256; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_349 = type_field == 4'h3 ? _GEN_319 : _GEN_257; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_362 = _io_w_2_w_en_T ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_363 = _io_w_2_w_en_T ? _GEN_322 : _GEN_231; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_364 = _io_w_2_w_en_T ? _GEN_323 : _GEN_232; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_367 = _io_w_2_w_en_T ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_368 = _io_w_2_w_en_T ? _GEN_328 : _GEN_236; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_369 = _io_w_2_w_en_T ? _GEN_329 : _GEN_237; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_370 = _io_w_2_w_en_T ? _GEN_330 : _GEN_238; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_388 = _io_w_2_w_en_T ? _GEN_348 : _GEN_256; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_389 = _io_w_2_w_en_T ? _GEN_349 : _GEN_257; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_397 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_363; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_398 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_364; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_402 = sram_id_field == 4'h2 ? _GEN_398 : _GEN_364; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_406 = _T_5 ? io_pcie_w_data : _GEN_368; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_407 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_369; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_408 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_370; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_411 = sram_id_field == 4'h3 ? _GEN_406 : _GEN_368; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_412 = sram_id_field == 4'h3 ? _GEN_407 : _GEN_369; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_413 = sram_id_field == 4'h3 ? _GEN_408 : _GEN_370; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_447 = _T_5 ? io_pcie_w_data : _GEN_388; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_448 = _T_9 ? io_pcie_w_data : _GEN_389; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_450 = sram_id_field == 4'h5 ? _GEN_447 : _GEN_388; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_451 = sram_id_field == 4'h5 ? _GEN_448 : _GEN_389; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_454 = type_field == 4'h3 ? _GEN_397 : _GEN_363; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_455 = type_field == 4'h3 ? _GEN_402 : _GEN_364; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_460 = type_field == 4'h3 ? _GEN_411 : _GEN_368; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_461 = type_field == 4'h3 ? _GEN_412 : _GEN_369; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_462 = type_field == 4'h3 ? _GEN_413 : _GEN_370; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_480 = type_field == 4'h3 ? _GEN_450 : _GEN_388; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_481 = type_field == 4'h3 ? _GEN_451 : _GEN_389; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_494 = _io_w_3_w_en_T ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_495 = _io_w_3_w_en_T ? _GEN_454 : _GEN_363; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_496 = _io_w_3_w_en_T ? _GEN_455 : _GEN_364; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_499 = _io_w_3_w_en_T ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_500 = _io_w_3_w_en_T ? _GEN_460 : _GEN_368; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_501 = _io_w_3_w_en_T ? _GEN_461 : _GEN_369; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_502 = _io_w_3_w_en_T ? _GEN_462 : _GEN_370; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_520 = _io_w_3_w_en_T ? _GEN_480 : _GEN_388; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_521 = _io_w_3_w_en_T ? _GEN_481 : _GEN_389; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_529 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_495; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_530 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_496; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_534 = sram_id_field == 4'h2 ? _GEN_530 : _GEN_496; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_538 = _T_5 ? io_pcie_w_data : _GEN_500; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_539 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_501; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_540 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_502; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_543 = sram_id_field == 4'h3 ? _GEN_538 : _GEN_500; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_544 = sram_id_field == 4'h3 ? _GEN_539 : _GEN_501; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_545 = sram_id_field == 4'h3 ? _GEN_540 : _GEN_502; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_579 = _T_5 ? io_pcie_w_data : _GEN_520; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_580 = _T_9 ? io_pcie_w_data : _GEN_521; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_582 = sram_id_field == 4'h5 ? _GEN_579 : _GEN_520; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_583 = sram_id_field == 4'h5 ? _GEN_580 : _GEN_521; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_586 = type_field == 4'h3 ? _GEN_529 : _GEN_495; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_587 = type_field == 4'h3 ? _GEN_534 : _GEN_496; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_592 = type_field == 4'h3 ? _GEN_543 : _GEN_500; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_593 = type_field == 4'h3 ? _GEN_544 : _GEN_501; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_594 = type_field == 4'h3 ? _GEN_545 : _GEN_502; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_612 = type_field == 4'h3 ? _GEN_582 : _GEN_520; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_613 = type_field == 4'h3 ? _GEN_583 : _GEN_521; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_626 = _io_w_4_w_en_T ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_627 = _io_w_4_w_en_T ? _GEN_586 : _GEN_495; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_628 = _io_w_4_w_en_T ? _GEN_587 : _GEN_496; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_631 = _io_w_4_w_en_T ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_632 = _io_w_4_w_en_T ? _GEN_592 : _GEN_500; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_633 = _io_w_4_w_en_T ? _GEN_593 : _GEN_501; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_634 = _io_w_4_w_en_T ? _GEN_594 : _GEN_502; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_652 = _io_w_4_w_en_T ? _GEN_612 : _GEN_520; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_653 = _io_w_4_w_en_T ? _GEN_613 : _GEN_521; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_661 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_627; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_662 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_628; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_666 = sram_id_field == 4'h2 ? _GEN_662 : _GEN_628; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_670 = _T_5 ? io_pcie_w_data : _GEN_632; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_671 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_633; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_672 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_634; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_675 = sram_id_field == 4'h3 ? _GEN_670 : _GEN_632; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_676 = sram_id_field == 4'h3 ? _GEN_671 : _GEN_633; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_677 = sram_id_field == 4'h3 ? _GEN_672 : _GEN_634; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_711 = _T_5 ? io_pcie_w_data : _GEN_652; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_712 = _T_9 ? io_pcie_w_data : _GEN_653; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_714 = sram_id_field == 4'h5 ? _GEN_711 : _GEN_652; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_715 = sram_id_field == 4'h5 ? _GEN_712 : _GEN_653; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_718 = type_field == 4'h3 ? _GEN_661 : _GEN_627; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_719 = type_field == 4'h3 ? _GEN_666 : _GEN_628; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_724 = type_field == 4'h3 ? _GEN_675 : _GEN_632; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_725 = type_field == 4'h3 ? _GEN_676 : _GEN_633; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_726 = type_field == 4'h3 ? _GEN_677 : _GEN_634; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_744 = type_field == 4'h3 ? _GEN_714 : _GEN_652; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_745 = type_field == 4'h3 ? _GEN_715 : _GEN_653; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_758 = cluster_id_field == 4'h5 ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_759 = cluster_id_field == 4'h5 ? _GEN_718 : _GEN_627; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_760 = cluster_id_field == 4'h5 ? _GEN_719 : _GEN_628; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_763 = cluster_id_field == 4'h5 ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_764 = cluster_id_field == 4'h5 ? _GEN_724 : _GEN_632; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_765 = cluster_id_field == 4'h5 ? _GEN_725 : _GEN_633; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_766 = cluster_id_field == 4'h5 ? _GEN_726 : _GEN_634; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_784 = cluster_id_field == 4'h5 ? _GEN_744 : _GEN_652; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_785 = cluster_id_field == 4'h5 ? _GEN_745 : _GEN_653; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_793 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_759; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_794 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_760; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_798 = sram_id_field == 4'h2 ? _GEN_794 : _GEN_760; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_802 = _T_5 ? io_pcie_w_data : _GEN_764; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_803 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_765; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_804 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_766; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_807 = sram_id_field == 4'h3 ? _GEN_802 : _GEN_764; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_808 = sram_id_field == 4'h3 ? _GEN_803 : _GEN_765; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_809 = sram_id_field == 4'h3 ? _GEN_804 : _GEN_766; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_843 = _T_5 ? io_pcie_w_data : _GEN_784; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_844 = _T_9 ? io_pcie_w_data : _GEN_785; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_846 = sram_id_field == 4'h5 ? _GEN_843 : _GEN_784; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_847 = sram_id_field == 4'h5 ? _GEN_844 : _GEN_785; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_850 = type_field == 4'h3 ? _GEN_793 : _GEN_759; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_851 = type_field == 4'h3 ? _GEN_798 : _GEN_760; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_856 = type_field == 4'h3 ? _GEN_807 : _GEN_764; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_857 = type_field == 4'h3 ? _GEN_808 : _GEN_765; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_858 = type_field == 4'h3 ? _GEN_809 : _GEN_766; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_876 = type_field == 4'h3 ? _GEN_846 : _GEN_784; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_877 = type_field == 4'h3 ? _GEN_847 : _GEN_785; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_890 = cluster_id_field == 4'h6 ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_891 = cluster_id_field == 4'h6 ? _GEN_850 : _GEN_759; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_892 = cluster_id_field == 4'h6 ? _GEN_851 : _GEN_760; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_895 = cluster_id_field == 4'h6 ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_896 = cluster_id_field == 4'h6 ? _GEN_856 : _GEN_764; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_897 = cluster_id_field == 4'h6 ? _GEN_857 : _GEN_765; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_898 = cluster_id_field == 4'h6 ? _GEN_858 : _GEN_766; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_916 = cluster_id_field == 4'h6 ? _GEN_876 : _GEN_784; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_917 = cluster_id_field == 4'h6 ? _GEN_877 : _GEN_785; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_925 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_891; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_926 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_892; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_930 = sram_id_field == 4'h2 ? _GEN_926 : _GEN_892; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_934 = _T_5 ? io_pcie_w_data : _GEN_896; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_935 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_897; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_936 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_898; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_939 = sram_id_field == 4'h3 ? _GEN_934 : _GEN_896; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_940 = sram_id_field == 4'h3 ? _GEN_935 : _GEN_897; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_941 = sram_id_field == 4'h3 ? _GEN_936 : _GEN_898; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_975 = _T_5 ? io_pcie_w_data : _GEN_916; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_976 = _T_9 ? io_pcie_w_data : _GEN_917; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_978 = sram_id_field == 4'h5 ? _GEN_975 : _GEN_916; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_979 = sram_id_field == 4'h5 ? _GEN_976 : _GEN_917; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_982 = type_field == 4'h3 ? _GEN_925 : _GEN_891; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_983 = type_field == 4'h3 ? _GEN_930 : _GEN_892; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_988 = type_field == 4'h3 ? _GEN_939 : _GEN_896; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_989 = type_field == 4'h3 ? _GEN_940 : _GEN_897; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_990 = type_field == 4'h3 ? _GEN_941 : _GEN_898; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1008 = type_field == 4'h3 ? _GEN_978 : _GEN_916; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1009 = type_field == 4'h3 ? _GEN_979 : _GEN_917; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_1022 = cluster_id_field == 4'h7 ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_1023 = cluster_id_field == 4'h7 ? _GEN_982 : _GEN_891; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1024 = cluster_id_field == 4'h7 ? _GEN_983 : _GEN_892; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_1027 = cluster_id_field == 4'h7 ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_1028 = cluster_id_field == 4'h7 ? _GEN_988 : _GEN_896; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1029 = cluster_id_field == 4'h7 ? _GEN_989 : _GEN_897; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1030 = cluster_id_field == 4'h7 ? _GEN_990 : _GEN_898; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1048 = cluster_id_field == 4'h7 ? _GEN_1008 : _GEN_916; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1049 = cluster_id_field == 4'h7 ? _GEN_1009 : _GEN_917; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1057 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_1023; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_1058 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_1024; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_1062 = sram_id_field == 4'h2 ? _GEN_1058 : _GEN_1024; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_1066 = _T_5 ? io_pcie_w_data : _GEN_1028; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_1067 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_1029; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_1068 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_1030; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_1071 = sram_id_field == 4'h3 ? _GEN_1066 : _GEN_1028; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1072 = sram_id_field == 4'h3 ? _GEN_1067 : _GEN_1029; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1073 = sram_id_field == 4'h3 ? _GEN_1068 : _GEN_1030; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1107 = _T_5 ? io_pcie_w_data : _GEN_1048; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_1108 = _T_9 ? io_pcie_w_data : _GEN_1049; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_1110 = sram_id_field == 4'h5 ? _GEN_1107 : _GEN_1048; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1111 = sram_id_field == 4'h5 ? _GEN_1108 : _GEN_1049; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1114 = type_field == 4'h3 ? _GEN_1057 : _GEN_1023; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1115 = type_field == 4'h3 ? _GEN_1062 : _GEN_1024; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1120 = type_field == 4'h3 ? _GEN_1071 : _GEN_1028; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1121 = type_field == 4'h3 ? _GEN_1072 : _GEN_1029; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1122 = type_field == 4'h3 ? _GEN_1073 : _GEN_1030; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1140 = type_field == 4'h3 ? _GEN_1110 : _GEN_1048; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1141 = type_field == 4'h3 ? _GEN_1111 : _GEN_1049; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_1154 = cluster_id_field == 4'h8 ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_1155 = cluster_id_field == 4'h8 ? _GEN_1114 : _GEN_1023; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1156 = cluster_id_field == 4'h8 ? _GEN_1115 : _GEN_1024; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_1159 = cluster_id_field == 4'h8 ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_1160 = cluster_id_field == 4'h8 ? _GEN_1120 : _GEN_1028; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1161 = cluster_id_field == 4'h8 ? _GEN_1121 : _GEN_1029; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1162 = cluster_id_field == 4'h8 ? _GEN_1122 : _GEN_1030; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1180 = cluster_id_field == 4'h8 ? _GEN_1140 : _GEN_1048; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1181 = cluster_id_field == 4'h8 ? _GEN_1141 : _GEN_1049; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1189 = sram_id_field == 4'h1 ? io_pcie_w_data : _GEN_1155; // @[pcie_interface.scala 147:52 pcie_interface.scala 148:33]
  wire [63:0] _GEN_1190 = bias_field == 4'h0 ? io_pcie_w_data : _GEN_1156; // @[pcie_interface.scala 151:52 pcie_interface.scala 152:37]
  wire [63:0] _GEN_1194 = sram_id_field == 4'h2 ? _GEN_1190 : _GEN_1156; // @[pcie_interface.scala 150:52]
  wire [63:0] _GEN_1198 = _T_5 ? io_pcie_w_data : _GEN_1160; // @[pcie_interface.scala 163:54 pcie_interface.scala 164:43]
  wire [63:0] _GEN_1199 = bias_field == 4'h1 ? io_pcie_w_data : _GEN_1161; // @[pcie_interface.scala 166:54 pcie_interface.scala 167:49]
  wire [63:0] _GEN_1200 = bias_field == 4'h2 ? io_pcie_w_data : _GEN_1162; // @[pcie_interface.scala 169:54 pcie_interface.scala 170:44]
  wire [63:0] _GEN_1203 = sram_id_field == 4'h3 ? _GEN_1198 : _GEN_1160; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1204 = sram_id_field == 4'h3 ? _GEN_1199 : _GEN_1161; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1205 = sram_id_field == 4'h3 ? _GEN_1200 : _GEN_1162; // @[pcie_interface.scala 161:52]
  wire [63:0] _GEN_1239 = _T_5 ? io_pcie_w_data : _GEN_1180; // @[pcie_interface.scala 180:54 pcie_interface.scala 181:45]
  wire [63:0] _GEN_1240 = _T_9 ? io_pcie_w_data : _GEN_1181; // @[pcie_interface.scala 183:54 pcie_interface.scala 184:45]
  wire [63:0] _GEN_1242 = sram_id_field == 4'h5 ? _GEN_1239 : _GEN_1180; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1243 = sram_id_field == 4'h5 ? _GEN_1240 : _GEN_1181; // @[pcie_interface.scala 179:52]
  wire [63:0] _GEN_1246 = type_field == 4'h3 ? _GEN_1189 : _GEN_1155; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1247 = type_field == 4'h3 ? _GEN_1194 : _GEN_1156; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1252 = type_field == 4'h3 ? _GEN_1203 : _GEN_1160; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1253 = type_field == 4'h3 ? _GEN_1204 : _GEN_1161; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1254 = type_field == 4'h3 ? _GEN_1205 : _GEN_1162; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1272 = type_field == 4'h3 ? _GEN_1242 : _GEN_1180; // @[pcie_interface.scala 144:44]
  wire [63:0] _GEN_1273 = type_field == 4'h3 ? _GEN_1243 : _GEN_1181; // @[pcie_interface.scala 144:44]
  wire [3:0] _GEN_1286 = cluster_id_field == 4'h9 ? _GEN_57 : {{1'd0}, sram_id_field[2:0]}; // @[pcie_interface.scala 137:43 pcie_interface.scala 116:33]
  wire [63:0] _GEN_1287 = cluster_id_field == 4'h9 ? _GEN_1246 : _GEN_1155; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1288 = cluster_id_field == 4'h9 ? _GEN_1247 : _GEN_1156; // @[pcie_interface.scala 137:43]
  wire [3:0] _GEN_1291 = cluster_id_field == 4'h9 ? _GEN_63 : 4'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 126:27]
  wire [63:0] _GEN_1292 = cluster_id_field == 4'h9 ? _GEN_1252 : _GEN_1160; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1293 = cluster_id_field == 4'h9 ? _GEN_1253 : _GEN_1161; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1294 = cluster_id_field == 4'h9 ? _GEN_1254 : _GEN_1162; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1312 = cluster_id_field == 4'h9 ? _GEN_1272 : _GEN_1180; // @[pcie_interface.scala 137:43]
  wire [63:0] _GEN_1313 = cluster_id_field == 4'h9 ? _GEN_1273 : _GEN_1181; // @[pcie_interface.scala 137:43]
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
  wire [63:0] _GEN_1320 = offset_field == 8'h0 ? io_pcie_w_data : {{60'd0}, first_proc_id}; // @[pcie_interface.scala 210:42 pcie_interface.scala 211:27 pcie_interface.scala 205:28]
  wire [63:0] _GEN_1321 = offset_field == 8'h1 ? io_pcie_w_data : {{60'd0}, last_proc_id}; // @[pcie_interface.scala 213:42 pcie_interface.scala 214:27 pcie_interface.scala 206:28]
  wire [63:0] _GEN_1322 = type_field == 4'h8 ? _GEN_1320 : {{60'd0}, first_proc_id}; // @[pcie_interface.scala 209:36 pcie_interface.scala 205:28]
  wire [63:0] _GEN_1323 = type_field == 4'h8 ? _GEN_1321 : {{60'd0}, last_proc_id}; // @[pcie_interface.scala 209:36 pcie_interface.scala 206:28]
  assign io_pcie_r_data = io_pcie_o_r_data; // @[pcie_interface.scala 75:22]
  assign io_pcie_o_cs = io_pcie_r_addr[12:8]; // @[pcie_interface.scala 72:39]
  assign io_pcie_o_r_en = io_pcie_r_en; // @[pcie_interface.scala 73:22]
  assign io_pcie_o_r_addr = io_pcie_r_addr[7:0]; // @[pcie_interface.scala 74:39]
  assign io_mod_proc_mod_0_par_mod_en = _io_w_0_w_en_T & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_0_par_mod_last_mau_id_mod = _io_w_0_w_en_T & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_0_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_0_par_mod_cs = _GEN_98[1:0];
  assign io_mod_proc_mod_0_par_mod_module_mod_state_id_mod = _io_w_0_w_en_T & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_0_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_0_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_0_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_0_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_0_mat_mod_en = _io_w_0_w_en_T & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_0_mat_mod_config_id = _GEN_103[0];
  assign io_mod_proc_mod_0_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_0_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_0_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_0_act_mod_en_0 = _io_w_0_w_en_T & _GEN_92; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_0_act_mod_en_1 = _io_w_0_w_en_T & _GEN_94; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_0_act_mod_addr = _io_w_0_w_en_T ? _GEN_91 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_0_act_mod_data_0 = _io_w_0_w_en_T ? _GEN_93 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_0_act_mod_data_1 = _io_w_0_w_en_T ? _GEN_95 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_1_par_mod_en = _io_w_1_w_en_T & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_1_par_mod_last_mau_id_mod = _io_w_1_w_en_T & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_1_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_1_par_mod_cs = _GEN_230[1:0];
  assign io_mod_proc_mod_1_par_mod_module_mod_state_id_mod = _io_w_1_w_en_T & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_1_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_1_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_1_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_1_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_1_mat_mod_en = _io_w_1_w_en_T & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_1_mat_mod_config_id = _GEN_235[0];
  assign io_mod_proc_mod_1_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_1_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_1_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_1_act_mod_en_0 = _io_w_1_w_en_T & _GEN_92; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_1_act_mod_en_1 = _io_w_1_w_en_T & _GEN_94; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_1_act_mod_addr = _io_w_1_w_en_T ? _GEN_91 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_1_act_mod_data_0 = _io_w_1_w_en_T ? _GEN_93 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_1_act_mod_data_1 = _io_w_1_w_en_T ? _GEN_95 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_2_par_mod_en = _io_w_2_w_en_T & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_2_par_mod_last_mau_id_mod = _io_w_2_w_en_T & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_2_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_2_par_mod_cs = _GEN_362[1:0];
  assign io_mod_proc_mod_2_par_mod_module_mod_state_id_mod = _io_w_2_w_en_T & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_2_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_2_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_2_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_2_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_2_mat_mod_en = _io_w_2_w_en_T & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_2_mat_mod_config_id = _GEN_367[0];
  assign io_mod_proc_mod_2_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_2_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_2_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_2_act_mod_en_0 = _io_w_2_w_en_T & _GEN_92; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_2_act_mod_en_1 = _io_w_2_w_en_T & _GEN_94; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_2_act_mod_addr = _io_w_2_w_en_T ? _GEN_91 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_2_act_mod_data_0 = _io_w_2_w_en_T ? _GEN_93 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_2_act_mod_data_1 = _io_w_2_w_en_T ? _GEN_95 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_3_par_mod_en = _io_w_3_w_en_T & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_3_par_mod_last_mau_id_mod = _io_w_3_w_en_T & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_3_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_3_par_mod_cs = _GEN_494[1:0];
  assign io_mod_proc_mod_3_par_mod_module_mod_state_id_mod = _io_w_3_w_en_T & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_3_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_3_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_3_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_3_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_3_mat_mod_en = _io_w_3_w_en_T & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_3_mat_mod_config_id = _GEN_499[0];
  assign io_mod_proc_mod_3_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_3_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_3_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_3_act_mod_en_0 = _io_w_3_w_en_T & _GEN_92; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_3_act_mod_en_1 = _io_w_3_w_en_T & _GEN_94; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_3_act_mod_addr = _io_w_3_w_en_T ? _GEN_91 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_3_act_mod_data_0 = _io_w_3_w_en_T ? _GEN_93 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_3_act_mod_data_1 = _io_w_3_w_en_T ? _GEN_95 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_4_par_mod_en = _io_w_4_w_en_T & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_4_par_mod_last_mau_id_mod = _io_w_4_w_en_T & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_4_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_4_par_mod_cs = _GEN_626[1:0];
  assign io_mod_proc_mod_4_par_mod_module_mod_state_id_mod = _io_w_4_w_en_T & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_4_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_4_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_4_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_4_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_4_mat_mod_en = _io_w_4_w_en_T & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_4_mat_mod_config_id = _GEN_631[0];
  assign io_mod_proc_mod_4_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_4_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_4_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_4_act_mod_en_0 = _io_w_4_w_en_T & _GEN_92; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_4_act_mod_en_1 = _io_w_4_w_en_T & _GEN_94; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_4_act_mod_addr = _io_w_4_w_en_T ? _GEN_91 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_4_act_mod_data_0 = _io_w_4_w_en_T ? _GEN_93 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_4_act_mod_data_1 = _io_w_4_w_en_T ? _GEN_95 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_5_par_mod_en = cluster_id_field == 4'h5 & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_5_par_mod_last_mau_id_mod = cluster_id_field == 4'h5 & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_5_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_5_par_mod_cs = _GEN_758[1:0];
  assign io_mod_proc_mod_5_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h5 & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_5_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_5_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_5_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_5_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_5_mat_mod_en = cluster_id_field == 4'h5 & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_5_mat_mod_config_id = _GEN_763[0];
  assign io_mod_proc_mod_5_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_5_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_5_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_5_act_mod_en_0 = cluster_id_field == 4'h5 & _GEN_92; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_5_act_mod_en_1 = cluster_id_field == 4'h5 & _GEN_94; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_5_act_mod_addr = cluster_id_field == 4'h5 ? _GEN_91 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_5_act_mod_data_0 = cluster_id_field == 4'h5 ? _GEN_93 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_5_act_mod_data_1 = cluster_id_field == 4'h5 ? _GEN_95 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_6_par_mod_en = cluster_id_field == 4'h6 & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_6_par_mod_last_mau_id_mod = cluster_id_field == 4'h6 & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_6_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_6_par_mod_cs = _GEN_890[1:0];
  assign io_mod_proc_mod_6_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h6 & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_6_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_6_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_6_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_6_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_6_mat_mod_en = cluster_id_field == 4'h6 & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_6_mat_mod_config_id = _GEN_895[0];
  assign io_mod_proc_mod_6_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_6_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_6_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_6_act_mod_en_0 = cluster_id_field == 4'h6 & _GEN_92; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_6_act_mod_en_1 = cluster_id_field == 4'h6 & _GEN_94; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_6_act_mod_addr = cluster_id_field == 4'h6 ? _GEN_91 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_6_act_mod_data_0 = cluster_id_field == 4'h6 ? _GEN_93 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_6_act_mod_data_1 = cluster_id_field == 4'h6 ? _GEN_95 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_7_par_mod_en = cluster_id_field == 4'h7 & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_7_par_mod_last_mau_id_mod = cluster_id_field == 4'h7 & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_7_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_7_par_mod_cs = _GEN_1022[1:0];
  assign io_mod_proc_mod_7_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h7 & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_7_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_7_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_7_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_7_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_7_mat_mod_en = cluster_id_field == 4'h7 & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_7_mat_mod_config_id = _GEN_1027[0];
  assign io_mod_proc_mod_7_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_7_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_7_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_7_act_mod_en_0 = cluster_id_field == 4'h7 & _GEN_92; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_7_act_mod_en_1 = cluster_id_field == 4'h7 & _GEN_94; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_7_act_mod_addr = cluster_id_field == 4'h7 ? _GEN_91 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_7_act_mod_data_0 = cluster_id_field == 4'h7 ? _GEN_93 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_7_act_mod_data_1 = cluster_id_field == 4'h7 ? _GEN_95 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_8_par_mod_en = cluster_id_field == 4'h8 & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_8_par_mod_last_mau_id_mod = cluster_id_field == 4'h8 & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_8_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_8_par_mod_cs = _GEN_1154[1:0];
  assign io_mod_proc_mod_8_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h8 & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_8_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_8_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_8_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_8_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_8_mat_mod_en = cluster_id_field == 4'h8 & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_8_mat_mod_config_id = _GEN_1159[0];
  assign io_mod_proc_mod_8_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_8_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_8_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_8_act_mod_en_0 = cluster_id_field == 4'h8 & _GEN_92; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_8_act_mod_en_1 = cluster_id_field == 4'h8 & _GEN_94; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_8_act_mod_addr = cluster_id_field == 4'h8 ? _GEN_91 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_8_act_mod_data_0 = cluster_id_field == 4'h8 ? _GEN_93 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_8_act_mod_data_1 = cluster_id_field == 4'h8 ? _GEN_95 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_9_par_mod_en = cluster_id_field == 4'h9 & _GEN_60; // @[pcie_interface.scala 137:43 pcie_interface.scala 113:33]
  assign io_mod_proc_mod_9_par_mod_last_mau_id_mod = cluster_id_field == 4'h9 & _GEN_61; // @[pcie_interface.scala 137:43 pcie_interface.scala 114:33]
  assign io_mod_proc_mod_9_par_mod_last_mau_id = last_mau_id; // @[pcie_interface.scala 115:33]
  assign io_mod_proc_mod_9_par_mod_cs = _GEN_1286[1:0];
  assign io_mod_proc_mod_9_par_mod_module_mod_state_id_mod = cluster_id_field == 4'h9 & _GEN_62; // @[pcie_interface.scala 137:43 pcie_interface.scala 117:41]
  assign io_mod_proc_mod_9_par_mod_module_mod_state_id = state_id; // @[pcie_interface.scala 118:41]
  assign io_mod_proc_mod_9_par_mod_module_mod_sram_w_cs = sram_id_field[3]; // @[pcie_interface.scala 119:58]
  assign io_mod_proc_mod_9_par_mod_module_mod_sram_w_addr = io_pcie_w_addr[7:0]; // @[pcie_interface.scala 85:35]
  assign io_mod_proc_mod_9_par_mod_module_mod_sram_w_data = io_pcie_w_data; // @[pcie_interface.scala 122:41]
  assign io_mod_proc_mod_9_mat_mod_en = cluster_id_field == 4'h9 & _GEN_86; // @[pcie_interface.scala 137:43 pcie_interface.scala 125:27]
  assign io_mod_proc_mod_9_mat_mod_config_id = _GEN_1291[0];
  assign io_mod_proc_mod_9_mat_mod_key_mod_header_id = mat_key_header_id; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_9_mat_mod_key_mod_internal_offset = mat_key_internal_offset; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_9_mat_mod_key_mod_key_length = mat_key_key_length; // @[pcie_interface.scala 127:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_table_width = mat_tab_table_width; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_mat_mod_table_mod_table_depth = mat_tab_table_depth; // @[pcie_interface.scala 128:27]
  assign io_mod_proc_mod_9_act_mod_en_0 = cluster_id_field == 4'h9 & _GEN_92; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_9_act_mod_en_1 = cluster_id_field == 4'h9 & _GEN_94; // @[pcie_interface.scala 137:43 pcie_interface.scala 132:29]
  assign io_mod_proc_mod_9_act_mod_addr = cluster_id_field == 4'h9 ? _GEN_91 : 8'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 133:29]
  assign io_mod_proc_mod_9_act_mod_data_0 = cluster_id_field == 4'h9 ? _GEN_93 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
  assign io_mod_proc_mod_9_act_mod_data_1 = cluster_id_field == 4'h9 ? _GEN_95 : 64'h0; // @[pcie_interface.scala 137:43 pcie_interface.scala 134:29]
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
  always @(posedge clock) begin
    last_mau_id <= _GEN_1287[1:0];
    state_id <= _GEN_1288[7:0];
    mat_key_header_id <= _GEN_1292[7:0];
    mat_key_internal_offset <= _GEN_1293[7:0];
    mat_key_key_length <= _GEN_1294[7:0];
    mat_tab_table_width <= _GEN_1312[4:0];
    mat_tab_table_depth <= _GEN_1313[4:0];
    first_proc_id <= _GEN_1322[3:0];
    last_proc_id <= _GEN_1323[3:0];
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
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
