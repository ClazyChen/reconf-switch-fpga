module IPSAPCIE(
  input         clock,
  input         reset,
  input         io_pcie_r_en,
  input  [31:0] io_pcie_r_addr,
  output [63:0] io_pcie_r_data,
  input         io_pcie_w_en,
  input  [31:0] io_pcie_w_addr,
  input  [63:0] io_pcie_w_data
);
  wire  ipsa_clock; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_0; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_1; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_2; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_3; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_4; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_5; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_6; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_7; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_8; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_9; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_10; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_11; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_12; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_13; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_14; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_15; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_16; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_17; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_18; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_19; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_20; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_21; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_22; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_23; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_24; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_25; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_26; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_27; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_28; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_29; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_30; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_31; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_32; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_33; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_34; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_35; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_36; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_37; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_38; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_39; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_40; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_41; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_42; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_43; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_44; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_45; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_46; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_47; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_48; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_49; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_50; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_51; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_52; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_53; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_54; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_55; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_56; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_57; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_58; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_59; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_60; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_61; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_62; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_63; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_64; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_65; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_66; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_67; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_68; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_69; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_70; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_71; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_72; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_73; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_74; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_75; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_76; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_77; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_78; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_79; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_80; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_81; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_82; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_83; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_84; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_85; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_86; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_87; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_88; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_89; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_90; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_91; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_92; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_93; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_94; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_95; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_96; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_97; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_98; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_99; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_100; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_101; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_102; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_103; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_104; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_105; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_106; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_107; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_108; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_109; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_110; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_111; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_112; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_113; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_114; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_115; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_116; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_117; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_118; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_119; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_120; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_121; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_122; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_123; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_124; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_125; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_126; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_127; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_32; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_33; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_34; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_35; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_36; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_37; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_38; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_39; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_40; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_41; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_42; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_43; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_44; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_45; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_46; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_47; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_48; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_49; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_50; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_51; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_52; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_53; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_54; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_55; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_56; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_57; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_58; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_59; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_60; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_61; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_62; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_63; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_64; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_65; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_66; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_67; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_68; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_69; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_70; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_71; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_72; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_73; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_74; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_75; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_76; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_77; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_78; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_79; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_80; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_81; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_82; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_83; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_84; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_85; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_86; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_87; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_88; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_89; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_90; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_91; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_92; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_93; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_94; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_95; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_96; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_97; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_98; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_99; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_100; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_101; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_102; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_103; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_104; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_105; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_106; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_107; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_108; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_109; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_110; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_111; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_112; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_113; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_114; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_115; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_116; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_117; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_118; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_119; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_120; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_121; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_122; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_123; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_124; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_125; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_126; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_127; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_128; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_129; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_130; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_131; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_132; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_133; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_134; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_135; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_136; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_137; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_138; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_139; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_140; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_141; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_142; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_143; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_144; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_145; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_146; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_147; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_148; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_149; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_150; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_151; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_152; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_153; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_154; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_155; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_156; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_157; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_158; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_159; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_0_par_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_0_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_0_par_mod_last_mau_id; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_0_par_mod_cs; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_0_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_0_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_0_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_0_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_0_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_0_mat_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_0_mat_mod_config_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_0_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_0_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_0_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_0_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_0_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_0_act_mod_en_0; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_0_act_mod_en_1; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_0_act_mod_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_0_act_mod_data_0; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_0_act_mod_data_1; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_1_par_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_1_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_1_par_mod_last_mau_id; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_1_par_mod_cs; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_1_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_1_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_1_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_1_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_1_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_1_mat_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_1_mat_mod_config_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_1_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_1_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_1_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_1_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_1_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_1_act_mod_en_0; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_1_act_mod_en_1; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_1_act_mod_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_1_act_mod_data_0; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_1_act_mod_data_1; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_2_par_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_2_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_2_par_mod_last_mau_id; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_2_par_mod_cs; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_2_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_2_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_2_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_2_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_2_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_2_mat_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_2_mat_mod_config_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_2_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_2_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_2_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_2_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_2_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_2_act_mod_en_0; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_2_act_mod_en_1; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_2_act_mod_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_2_act_mod_data_0; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_2_act_mod_data_1; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_3_par_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_3_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_3_par_mod_last_mau_id; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_3_par_mod_cs; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_3_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_3_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_3_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_3_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_3_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_3_mat_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_3_mat_mod_config_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_3_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_3_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_3_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_3_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_3_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_3_act_mod_en_0; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_3_act_mod_en_1; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_3_act_mod_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_3_act_mod_data_0; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_3_act_mod_data_1; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_4_par_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_4_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_4_par_mod_last_mau_id; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_4_par_mod_cs; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_4_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_4_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_4_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_4_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_4_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_4_mat_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_4_mat_mod_config_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_4_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_4_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_4_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_4_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_4_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_4_act_mod_en_0; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_4_act_mod_en_1; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_4_act_mod_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_4_act_mod_data_0; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_4_act_mod_data_1; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_5_par_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_5_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_5_par_mod_last_mau_id; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_5_par_mod_cs; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_5_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_5_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_5_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_5_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_5_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_5_mat_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_5_mat_mod_config_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_5_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_5_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_5_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_5_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_5_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_5_act_mod_en_0; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_5_act_mod_en_1; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_5_act_mod_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_5_act_mod_data_0; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_5_act_mod_data_1; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_6_par_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_6_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_6_par_mod_last_mau_id; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_6_par_mod_cs; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_6_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_6_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_6_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_6_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_6_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_6_mat_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_6_mat_mod_config_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_6_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_6_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_6_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_6_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_6_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_6_act_mod_en_0; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_6_act_mod_en_1; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_6_act_mod_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_6_act_mod_data_0; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_6_act_mod_data_1; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_7_par_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_7_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_7_par_mod_last_mau_id; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_7_par_mod_cs; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_7_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_7_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_7_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_7_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_7_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_7_mat_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_7_mat_mod_config_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_7_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_7_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_7_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_7_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_7_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_7_act_mod_en_0; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_7_act_mod_en_1; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_7_act_mod_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_7_act_mod_data_0; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_7_act_mod_data_1; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_8_par_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_8_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_8_par_mod_last_mau_id; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_8_par_mod_cs; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_8_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_8_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_8_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_8_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_8_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_8_mat_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_8_mat_mod_config_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_8_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_8_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_8_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_8_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_8_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_8_act_mod_en_0; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_8_act_mod_en_1; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_8_act_mod_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_8_act_mod_data_0; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_8_act_mod_data_1; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_9_par_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_9_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_9_par_mod_last_mau_id; // @[ipsa_pcie.scala 13:22]
  wire [2:0] ipsa_io_mod_proc_mod_9_par_mod_cs; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_9_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_9_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_9_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_9_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_9_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_9_mat_mod_en; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_9_mat_mod_config_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_9_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_9_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_9_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_9_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 13:22]
  wire [4:0] ipsa_io_mod_proc_mod_9_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_9_act_mod_en_0; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_proc_mod_9_act_mod_en_1; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_mod_proc_mod_9_act_mod_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_9_act_mod_data_0; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_mod_proc_mod_9_act_mod_data_1; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_mod_xbar_mod_en; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_mod_xbar_mod_first_proc_id; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_mod_xbar_mod_last_proc_id; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_mod_xbar_mod_next_proc_id_0; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_mod_xbar_mod_next_proc_id_1; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_mod_xbar_mod_next_proc_id_2; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_mod_xbar_mod_next_proc_id_3; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_mod_xbar_mod_next_proc_id_4; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_mod_xbar_mod_next_proc_id_5; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_mod_xbar_mod_next_proc_id_6; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_mod_xbar_mod_next_proc_id_7; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_mod_xbar_mod_next_proc_id_8; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_mod_xbar_mod_next_proc_id_9; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_w_0_wcs; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_w_0_w_en; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_w_0_w_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_w_0_w_data; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_w_1_wcs; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_w_1_w_en; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_w_1_w_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_w_1_w_data; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_w_2_wcs; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_w_2_w_en; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_w_2_w_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_w_2_w_data; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_w_3_wcs; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_w_3_w_en; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_w_3_w_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_w_3_w_data; // @[ipsa_pcie.scala 13:22]
  wire [3:0] ipsa_io_w_4_wcs; // @[ipsa_pcie.scala 13:22]
  wire  ipsa_io_w_4_w_en; // @[ipsa_pcie.scala 13:22]
  wire [7:0] ipsa_io_w_4_w_addr; // @[ipsa_pcie.scala 13:22]
  wire [63:0] ipsa_io_w_4_w_data; // @[ipsa_pcie.scala 13:22]
  wire  pcie_clock; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_pcie_r_en; // @[ipsa_pcie.scala 14:22]
  wire [31:0] pcie_io_pcie_r_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_pcie_r_data; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_pcie_w_en; // @[ipsa_pcie.scala 14:22]
  wire [31:0] pcie_io_pcie_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_pcie_w_data; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_pcie_o_cs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_pcie_o_r_en; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_pcie_o_r_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_pcie_o_r_data; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_0_par_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_0_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_0_par_mod_last_mau_id; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_0_par_mod_cs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_0_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_0_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_0_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_0_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_0_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_0_mat_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_0_mat_mod_config_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_0_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_0_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_0_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_0_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_0_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_0_act_mod_en_0; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_0_act_mod_en_1; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_0_act_mod_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_0_act_mod_data_0; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_0_act_mod_data_1; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_1_par_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_1_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_1_par_mod_last_mau_id; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_1_par_mod_cs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_1_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_1_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_1_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_1_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_1_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_1_mat_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_1_mat_mod_config_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_1_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_1_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_1_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_1_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_1_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_1_act_mod_en_0; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_1_act_mod_en_1; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_1_act_mod_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_1_act_mod_data_0; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_1_act_mod_data_1; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_2_par_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_2_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_2_par_mod_last_mau_id; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_2_par_mod_cs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_2_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_2_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_2_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_2_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_2_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_2_mat_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_2_mat_mod_config_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_2_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_2_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_2_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_2_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_2_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_2_act_mod_en_0; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_2_act_mod_en_1; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_2_act_mod_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_2_act_mod_data_0; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_2_act_mod_data_1; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_3_par_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_3_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_3_par_mod_last_mau_id; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_3_par_mod_cs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_3_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_3_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_3_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_3_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_3_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_3_mat_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_3_mat_mod_config_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_3_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_3_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_3_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_3_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_3_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_3_act_mod_en_0; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_3_act_mod_en_1; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_3_act_mod_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_3_act_mod_data_0; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_3_act_mod_data_1; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_4_par_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_4_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_4_par_mod_last_mau_id; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_4_par_mod_cs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_4_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_4_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_4_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_4_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_4_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_4_mat_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_4_mat_mod_config_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_4_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_4_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_4_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_4_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_4_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_4_act_mod_en_0; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_4_act_mod_en_1; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_4_act_mod_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_4_act_mod_data_0; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_4_act_mod_data_1; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_5_par_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_5_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_5_par_mod_last_mau_id; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_5_par_mod_cs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_5_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_5_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_5_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_5_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_5_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_5_mat_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_5_mat_mod_config_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_5_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_5_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_5_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_5_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_5_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_5_act_mod_en_0; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_5_act_mod_en_1; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_5_act_mod_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_5_act_mod_data_0; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_5_act_mod_data_1; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_6_par_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_6_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_6_par_mod_last_mau_id; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_6_par_mod_cs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_6_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_6_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_6_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_6_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_6_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_6_mat_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_6_mat_mod_config_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_6_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_6_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_6_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_6_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_6_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_6_act_mod_en_0; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_6_act_mod_en_1; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_6_act_mod_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_6_act_mod_data_0; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_6_act_mod_data_1; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_7_par_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_7_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_7_par_mod_last_mau_id; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_7_par_mod_cs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_7_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_7_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_7_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_7_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_7_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_7_mat_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_7_mat_mod_config_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_7_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_7_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_7_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_7_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_7_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_7_act_mod_en_0; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_7_act_mod_en_1; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_7_act_mod_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_7_act_mod_data_0; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_7_act_mod_data_1; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_8_par_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_8_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_8_par_mod_last_mau_id; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_8_par_mod_cs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_8_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_8_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_8_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_8_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_8_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_8_mat_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_8_mat_mod_config_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_8_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_8_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_8_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_8_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_8_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_8_act_mod_en_0; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_8_act_mod_en_1; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_8_act_mod_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_8_act_mod_data_0; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_8_act_mod_data_1; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_9_par_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_9_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_9_par_mod_last_mau_id; // @[ipsa_pcie.scala 14:22]
  wire [2:0] pcie_io_mod_proc_mod_9_par_mod_cs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_9_par_mod_module_mod_state_id_mod; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_9_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_9_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_9_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_9_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_9_mat_mod_en; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_9_mat_mod_config_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_9_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_9_mat_mod_key_mod_internal_offset; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_9_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_9_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 14:22]
  wire [4:0] pcie_io_mod_proc_mod_9_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_9_act_mod_en_0; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_proc_mod_9_act_mod_en_1; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_mod_proc_mod_9_act_mod_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_9_act_mod_data_0; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_mod_proc_mod_9_act_mod_data_1; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_mod_xbar_mod_en; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_mod_xbar_mod_first_proc_id; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_mod_xbar_mod_last_proc_id; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_mod_xbar_mod_next_proc_id_0; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_mod_xbar_mod_next_proc_id_1; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_mod_xbar_mod_next_proc_id_2; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_mod_xbar_mod_next_proc_id_3; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_mod_xbar_mod_next_proc_id_4; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_mod_xbar_mod_next_proc_id_5; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_mod_xbar_mod_next_proc_id_6; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_mod_xbar_mod_next_proc_id_7; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_mod_xbar_mod_next_proc_id_8; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_mod_xbar_mod_next_proc_id_9; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_w_0_wcs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_w_0_w_en; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_w_0_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_w_0_w_data; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_w_1_wcs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_w_1_w_en; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_w_1_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_w_1_w_data; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_w_2_wcs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_w_2_w_en; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_w_2_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_w_2_w_data; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_w_3_wcs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_w_3_w_en; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_w_3_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_w_3_w_data; // @[ipsa_pcie.scala 14:22]
  wire [3:0] pcie_io_w_4_wcs; // @[ipsa_pcie.scala 14:22]
  wire  pcie_io_w_4_w_en; // @[ipsa_pcie.scala 14:22]
  wire [7:0] pcie_io_w_4_w_addr; // @[ipsa_pcie.scala 14:22]
  wire [63:0] pcie_io_w_4_w_data; // @[ipsa_pcie.scala 14:22]
  wire  outp_clock; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_32; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_33; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_34; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_35; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_36; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_37; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_38; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_39; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_40; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_41; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_42; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_43; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_44; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_45; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_46; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_47; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_48; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_49; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_50; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_51; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_52; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_53; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_54; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_55; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_56; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_57; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_58; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_59; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_60; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_61; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_62; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_63; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_64; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_65; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_66; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_67; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_68; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_69; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_70; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_71; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_72; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_73; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_74; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_75; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_76; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_77; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_78; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_79; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_80; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_81; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_82; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_83; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_84; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_85; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_86; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_87; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_88; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_89; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_90; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_91; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_92; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_93; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_94; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_95; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_96; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_97; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_98; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_99; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_100; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_101; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_102; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_103; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_104; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_105; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_106; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_107; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_108; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_109; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_110; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_111; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_112; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_113; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_114; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_115; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_116; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_117; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_118; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_119; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_120; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_121; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_122; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_123; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_124; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_125; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_126; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_127; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_128; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_129; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_130; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_131; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_132; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_133; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_134; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_135; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_136; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_137; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_138; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_139; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_140; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_141; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_142; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_143; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_144; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_145; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_146; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_147; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_148; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_149; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_150; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_151; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_152; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_153; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_154; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_155; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_156; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_157; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_158; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_phv_in_data_159; // @[ipsa_pcie.scala 15:22]
  wire [3:0] outp_io_pcie_o_cs; // @[ipsa_pcie.scala 15:22]
  wire  outp_io_pcie_o_r_en; // @[ipsa_pcie.scala 15:22]
  wire [7:0] outp_io_pcie_o_r_addr; // @[ipsa_pcie.scala 15:22]
  wire [63:0] outp_io_pcie_o_r_data; // @[ipsa_pcie.scala 15:22]
  wire  inp_clock; // @[ipsa_pcie.scala 16:22]
  wire  inp_reset; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_0; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_1; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_2; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_3; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_4; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_5; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_6; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_7; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_8; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_9; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_10; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_11; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_12; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_13; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_14; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_15; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_16; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_17; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_18; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_19; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_20; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_21; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_22; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_23; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_24; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_25; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_26; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_27; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_28; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_29; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_30; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_31; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_32; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_33; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_34; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_35; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_36; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_37; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_38; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_39; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_40; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_41; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_42; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_43; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_44; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_45; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_46; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_47; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_48; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_49; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_50; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_51; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_52; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_53; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_54; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_55; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_56; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_57; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_58; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_59; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_60; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_61; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_62; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_63; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_64; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_65; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_66; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_67; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_68; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_69; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_70; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_71; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_72; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_73; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_74; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_75; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_76; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_77; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_78; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_79; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_80; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_81; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_82; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_83; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_84; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_85; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_86; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_87; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_88; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_89; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_90; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_91; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_92; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_93; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_94; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_95; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_96; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_97; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_98; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_99; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_100; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_101; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_102; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_103; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_104; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_105; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_106; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_107; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_108; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_109; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_110; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_111; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_112; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_113; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_114; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_115; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_116; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_117; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_118; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_119; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_120; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_121; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_122; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_123; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_124; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_125; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_126; // @[ipsa_pcie.scala 16:22]
  wire [7:0] inp_io_phv_out_data_127; // @[ipsa_pcie.scala 16:22]
  IPSA ipsa ( // @[ipsa_pcie.scala 13:22]
    .clock(ipsa_clock),
    .io_pipe_phv_in_data_0(ipsa_io_pipe_phv_in_data_0),
    .io_pipe_phv_in_data_1(ipsa_io_pipe_phv_in_data_1),
    .io_pipe_phv_in_data_2(ipsa_io_pipe_phv_in_data_2),
    .io_pipe_phv_in_data_3(ipsa_io_pipe_phv_in_data_3),
    .io_pipe_phv_in_data_4(ipsa_io_pipe_phv_in_data_4),
    .io_pipe_phv_in_data_5(ipsa_io_pipe_phv_in_data_5),
    .io_pipe_phv_in_data_6(ipsa_io_pipe_phv_in_data_6),
    .io_pipe_phv_in_data_7(ipsa_io_pipe_phv_in_data_7),
    .io_pipe_phv_in_data_8(ipsa_io_pipe_phv_in_data_8),
    .io_pipe_phv_in_data_9(ipsa_io_pipe_phv_in_data_9),
    .io_pipe_phv_in_data_10(ipsa_io_pipe_phv_in_data_10),
    .io_pipe_phv_in_data_11(ipsa_io_pipe_phv_in_data_11),
    .io_pipe_phv_in_data_12(ipsa_io_pipe_phv_in_data_12),
    .io_pipe_phv_in_data_13(ipsa_io_pipe_phv_in_data_13),
    .io_pipe_phv_in_data_14(ipsa_io_pipe_phv_in_data_14),
    .io_pipe_phv_in_data_15(ipsa_io_pipe_phv_in_data_15),
    .io_pipe_phv_in_data_16(ipsa_io_pipe_phv_in_data_16),
    .io_pipe_phv_in_data_17(ipsa_io_pipe_phv_in_data_17),
    .io_pipe_phv_in_data_18(ipsa_io_pipe_phv_in_data_18),
    .io_pipe_phv_in_data_19(ipsa_io_pipe_phv_in_data_19),
    .io_pipe_phv_in_data_20(ipsa_io_pipe_phv_in_data_20),
    .io_pipe_phv_in_data_21(ipsa_io_pipe_phv_in_data_21),
    .io_pipe_phv_in_data_22(ipsa_io_pipe_phv_in_data_22),
    .io_pipe_phv_in_data_23(ipsa_io_pipe_phv_in_data_23),
    .io_pipe_phv_in_data_24(ipsa_io_pipe_phv_in_data_24),
    .io_pipe_phv_in_data_25(ipsa_io_pipe_phv_in_data_25),
    .io_pipe_phv_in_data_26(ipsa_io_pipe_phv_in_data_26),
    .io_pipe_phv_in_data_27(ipsa_io_pipe_phv_in_data_27),
    .io_pipe_phv_in_data_28(ipsa_io_pipe_phv_in_data_28),
    .io_pipe_phv_in_data_29(ipsa_io_pipe_phv_in_data_29),
    .io_pipe_phv_in_data_30(ipsa_io_pipe_phv_in_data_30),
    .io_pipe_phv_in_data_31(ipsa_io_pipe_phv_in_data_31),
    .io_pipe_phv_in_data_32(ipsa_io_pipe_phv_in_data_32),
    .io_pipe_phv_in_data_33(ipsa_io_pipe_phv_in_data_33),
    .io_pipe_phv_in_data_34(ipsa_io_pipe_phv_in_data_34),
    .io_pipe_phv_in_data_35(ipsa_io_pipe_phv_in_data_35),
    .io_pipe_phv_in_data_36(ipsa_io_pipe_phv_in_data_36),
    .io_pipe_phv_in_data_37(ipsa_io_pipe_phv_in_data_37),
    .io_pipe_phv_in_data_38(ipsa_io_pipe_phv_in_data_38),
    .io_pipe_phv_in_data_39(ipsa_io_pipe_phv_in_data_39),
    .io_pipe_phv_in_data_40(ipsa_io_pipe_phv_in_data_40),
    .io_pipe_phv_in_data_41(ipsa_io_pipe_phv_in_data_41),
    .io_pipe_phv_in_data_42(ipsa_io_pipe_phv_in_data_42),
    .io_pipe_phv_in_data_43(ipsa_io_pipe_phv_in_data_43),
    .io_pipe_phv_in_data_44(ipsa_io_pipe_phv_in_data_44),
    .io_pipe_phv_in_data_45(ipsa_io_pipe_phv_in_data_45),
    .io_pipe_phv_in_data_46(ipsa_io_pipe_phv_in_data_46),
    .io_pipe_phv_in_data_47(ipsa_io_pipe_phv_in_data_47),
    .io_pipe_phv_in_data_48(ipsa_io_pipe_phv_in_data_48),
    .io_pipe_phv_in_data_49(ipsa_io_pipe_phv_in_data_49),
    .io_pipe_phv_in_data_50(ipsa_io_pipe_phv_in_data_50),
    .io_pipe_phv_in_data_51(ipsa_io_pipe_phv_in_data_51),
    .io_pipe_phv_in_data_52(ipsa_io_pipe_phv_in_data_52),
    .io_pipe_phv_in_data_53(ipsa_io_pipe_phv_in_data_53),
    .io_pipe_phv_in_data_54(ipsa_io_pipe_phv_in_data_54),
    .io_pipe_phv_in_data_55(ipsa_io_pipe_phv_in_data_55),
    .io_pipe_phv_in_data_56(ipsa_io_pipe_phv_in_data_56),
    .io_pipe_phv_in_data_57(ipsa_io_pipe_phv_in_data_57),
    .io_pipe_phv_in_data_58(ipsa_io_pipe_phv_in_data_58),
    .io_pipe_phv_in_data_59(ipsa_io_pipe_phv_in_data_59),
    .io_pipe_phv_in_data_60(ipsa_io_pipe_phv_in_data_60),
    .io_pipe_phv_in_data_61(ipsa_io_pipe_phv_in_data_61),
    .io_pipe_phv_in_data_62(ipsa_io_pipe_phv_in_data_62),
    .io_pipe_phv_in_data_63(ipsa_io_pipe_phv_in_data_63),
    .io_pipe_phv_in_data_64(ipsa_io_pipe_phv_in_data_64),
    .io_pipe_phv_in_data_65(ipsa_io_pipe_phv_in_data_65),
    .io_pipe_phv_in_data_66(ipsa_io_pipe_phv_in_data_66),
    .io_pipe_phv_in_data_67(ipsa_io_pipe_phv_in_data_67),
    .io_pipe_phv_in_data_68(ipsa_io_pipe_phv_in_data_68),
    .io_pipe_phv_in_data_69(ipsa_io_pipe_phv_in_data_69),
    .io_pipe_phv_in_data_70(ipsa_io_pipe_phv_in_data_70),
    .io_pipe_phv_in_data_71(ipsa_io_pipe_phv_in_data_71),
    .io_pipe_phv_in_data_72(ipsa_io_pipe_phv_in_data_72),
    .io_pipe_phv_in_data_73(ipsa_io_pipe_phv_in_data_73),
    .io_pipe_phv_in_data_74(ipsa_io_pipe_phv_in_data_74),
    .io_pipe_phv_in_data_75(ipsa_io_pipe_phv_in_data_75),
    .io_pipe_phv_in_data_76(ipsa_io_pipe_phv_in_data_76),
    .io_pipe_phv_in_data_77(ipsa_io_pipe_phv_in_data_77),
    .io_pipe_phv_in_data_78(ipsa_io_pipe_phv_in_data_78),
    .io_pipe_phv_in_data_79(ipsa_io_pipe_phv_in_data_79),
    .io_pipe_phv_in_data_80(ipsa_io_pipe_phv_in_data_80),
    .io_pipe_phv_in_data_81(ipsa_io_pipe_phv_in_data_81),
    .io_pipe_phv_in_data_82(ipsa_io_pipe_phv_in_data_82),
    .io_pipe_phv_in_data_83(ipsa_io_pipe_phv_in_data_83),
    .io_pipe_phv_in_data_84(ipsa_io_pipe_phv_in_data_84),
    .io_pipe_phv_in_data_85(ipsa_io_pipe_phv_in_data_85),
    .io_pipe_phv_in_data_86(ipsa_io_pipe_phv_in_data_86),
    .io_pipe_phv_in_data_87(ipsa_io_pipe_phv_in_data_87),
    .io_pipe_phv_in_data_88(ipsa_io_pipe_phv_in_data_88),
    .io_pipe_phv_in_data_89(ipsa_io_pipe_phv_in_data_89),
    .io_pipe_phv_in_data_90(ipsa_io_pipe_phv_in_data_90),
    .io_pipe_phv_in_data_91(ipsa_io_pipe_phv_in_data_91),
    .io_pipe_phv_in_data_92(ipsa_io_pipe_phv_in_data_92),
    .io_pipe_phv_in_data_93(ipsa_io_pipe_phv_in_data_93),
    .io_pipe_phv_in_data_94(ipsa_io_pipe_phv_in_data_94),
    .io_pipe_phv_in_data_95(ipsa_io_pipe_phv_in_data_95),
    .io_pipe_phv_in_data_96(ipsa_io_pipe_phv_in_data_96),
    .io_pipe_phv_in_data_97(ipsa_io_pipe_phv_in_data_97),
    .io_pipe_phv_in_data_98(ipsa_io_pipe_phv_in_data_98),
    .io_pipe_phv_in_data_99(ipsa_io_pipe_phv_in_data_99),
    .io_pipe_phv_in_data_100(ipsa_io_pipe_phv_in_data_100),
    .io_pipe_phv_in_data_101(ipsa_io_pipe_phv_in_data_101),
    .io_pipe_phv_in_data_102(ipsa_io_pipe_phv_in_data_102),
    .io_pipe_phv_in_data_103(ipsa_io_pipe_phv_in_data_103),
    .io_pipe_phv_in_data_104(ipsa_io_pipe_phv_in_data_104),
    .io_pipe_phv_in_data_105(ipsa_io_pipe_phv_in_data_105),
    .io_pipe_phv_in_data_106(ipsa_io_pipe_phv_in_data_106),
    .io_pipe_phv_in_data_107(ipsa_io_pipe_phv_in_data_107),
    .io_pipe_phv_in_data_108(ipsa_io_pipe_phv_in_data_108),
    .io_pipe_phv_in_data_109(ipsa_io_pipe_phv_in_data_109),
    .io_pipe_phv_in_data_110(ipsa_io_pipe_phv_in_data_110),
    .io_pipe_phv_in_data_111(ipsa_io_pipe_phv_in_data_111),
    .io_pipe_phv_in_data_112(ipsa_io_pipe_phv_in_data_112),
    .io_pipe_phv_in_data_113(ipsa_io_pipe_phv_in_data_113),
    .io_pipe_phv_in_data_114(ipsa_io_pipe_phv_in_data_114),
    .io_pipe_phv_in_data_115(ipsa_io_pipe_phv_in_data_115),
    .io_pipe_phv_in_data_116(ipsa_io_pipe_phv_in_data_116),
    .io_pipe_phv_in_data_117(ipsa_io_pipe_phv_in_data_117),
    .io_pipe_phv_in_data_118(ipsa_io_pipe_phv_in_data_118),
    .io_pipe_phv_in_data_119(ipsa_io_pipe_phv_in_data_119),
    .io_pipe_phv_in_data_120(ipsa_io_pipe_phv_in_data_120),
    .io_pipe_phv_in_data_121(ipsa_io_pipe_phv_in_data_121),
    .io_pipe_phv_in_data_122(ipsa_io_pipe_phv_in_data_122),
    .io_pipe_phv_in_data_123(ipsa_io_pipe_phv_in_data_123),
    .io_pipe_phv_in_data_124(ipsa_io_pipe_phv_in_data_124),
    .io_pipe_phv_in_data_125(ipsa_io_pipe_phv_in_data_125),
    .io_pipe_phv_in_data_126(ipsa_io_pipe_phv_in_data_126),
    .io_pipe_phv_in_data_127(ipsa_io_pipe_phv_in_data_127),
    .io_pipe_phv_out_data_32(ipsa_io_pipe_phv_out_data_32),
    .io_pipe_phv_out_data_33(ipsa_io_pipe_phv_out_data_33),
    .io_pipe_phv_out_data_34(ipsa_io_pipe_phv_out_data_34),
    .io_pipe_phv_out_data_35(ipsa_io_pipe_phv_out_data_35),
    .io_pipe_phv_out_data_36(ipsa_io_pipe_phv_out_data_36),
    .io_pipe_phv_out_data_37(ipsa_io_pipe_phv_out_data_37),
    .io_pipe_phv_out_data_38(ipsa_io_pipe_phv_out_data_38),
    .io_pipe_phv_out_data_39(ipsa_io_pipe_phv_out_data_39),
    .io_pipe_phv_out_data_40(ipsa_io_pipe_phv_out_data_40),
    .io_pipe_phv_out_data_41(ipsa_io_pipe_phv_out_data_41),
    .io_pipe_phv_out_data_42(ipsa_io_pipe_phv_out_data_42),
    .io_pipe_phv_out_data_43(ipsa_io_pipe_phv_out_data_43),
    .io_pipe_phv_out_data_44(ipsa_io_pipe_phv_out_data_44),
    .io_pipe_phv_out_data_45(ipsa_io_pipe_phv_out_data_45),
    .io_pipe_phv_out_data_46(ipsa_io_pipe_phv_out_data_46),
    .io_pipe_phv_out_data_47(ipsa_io_pipe_phv_out_data_47),
    .io_pipe_phv_out_data_48(ipsa_io_pipe_phv_out_data_48),
    .io_pipe_phv_out_data_49(ipsa_io_pipe_phv_out_data_49),
    .io_pipe_phv_out_data_50(ipsa_io_pipe_phv_out_data_50),
    .io_pipe_phv_out_data_51(ipsa_io_pipe_phv_out_data_51),
    .io_pipe_phv_out_data_52(ipsa_io_pipe_phv_out_data_52),
    .io_pipe_phv_out_data_53(ipsa_io_pipe_phv_out_data_53),
    .io_pipe_phv_out_data_54(ipsa_io_pipe_phv_out_data_54),
    .io_pipe_phv_out_data_55(ipsa_io_pipe_phv_out_data_55),
    .io_pipe_phv_out_data_56(ipsa_io_pipe_phv_out_data_56),
    .io_pipe_phv_out_data_57(ipsa_io_pipe_phv_out_data_57),
    .io_pipe_phv_out_data_58(ipsa_io_pipe_phv_out_data_58),
    .io_pipe_phv_out_data_59(ipsa_io_pipe_phv_out_data_59),
    .io_pipe_phv_out_data_60(ipsa_io_pipe_phv_out_data_60),
    .io_pipe_phv_out_data_61(ipsa_io_pipe_phv_out_data_61),
    .io_pipe_phv_out_data_62(ipsa_io_pipe_phv_out_data_62),
    .io_pipe_phv_out_data_63(ipsa_io_pipe_phv_out_data_63),
    .io_pipe_phv_out_data_64(ipsa_io_pipe_phv_out_data_64),
    .io_pipe_phv_out_data_65(ipsa_io_pipe_phv_out_data_65),
    .io_pipe_phv_out_data_66(ipsa_io_pipe_phv_out_data_66),
    .io_pipe_phv_out_data_67(ipsa_io_pipe_phv_out_data_67),
    .io_pipe_phv_out_data_68(ipsa_io_pipe_phv_out_data_68),
    .io_pipe_phv_out_data_69(ipsa_io_pipe_phv_out_data_69),
    .io_pipe_phv_out_data_70(ipsa_io_pipe_phv_out_data_70),
    .io_pipe_phv_out_data_71(ipsa_io_pipe_phv_out_data_71),
    .io_pipe_phv_out_data_72(ipsa_io_pipe_phv_out_data_72),
    .io_pipe_phv_out_data_73(ipsa_io_pipe_phv_out_data_73),
    .io_pipe_phv_out_data_74(ipsa_io_pipe_phv_out_data_74),
    .io_pipe_phv_out_data_75(ipsa_io_pipe_phv_out_data_75),
    .io_pipe_phv_out_data_76(ipsa_io_pipe_phv_out_data_76),
    .io_pipe_phv_out_data_77(ipsa_io_pipe_phv_out_data_77),
    .io_pipe_phv_out_data_78(ipsa_io_pipe_phv_out_data_78),
    .io_pipe_phv_out_data_79(ipsa_io_pipe_phv_out_data_79),
    .io_pipe_phv_out_data_80(ipsa_io_pipe_phv_out_data_80),
    .io_pipe_phv_out_data_81(ipsa_io_pipe_phv_out_data_81),
    .io_pipe_phv_out_data_82(ipsa_io_pipe_phv_out_data_82),
    .io_pipe_phv_out_data_83(ipsa_io_pipe_phv_out_data_83),
    .io_pipe_phv_out_data_84(ipsa_io_pipe_phv_out_data_84),
    .io_pipe_phv_out_data_85(ipsa_io_pipe_phv_out_data_85),
    .io_pipe_phv_out_data_86(ipsa_io_pipe_phv_out_data_86),
    .io_pipe_phv_out_data_87(ipsa_io_pipe_phv_out_data_87),
    .io_pipe_phv_out_data_88(ipsa_io_pipe_phv_out_data_88),
    .io_pipe_phv_out_data_89(ipsa_io_pipe_phv_out_data_89),
    .io_pipe_phv_out_data_90(ipsa_io_pipe_phv_out_data_90),
    .io_pipe_phv_out_data_91(ipsa_io_pipe_phv_out_data_91),
    .io_pipe_phv_out_data_92(ipsa_io_pipe_phv_out_data_92),
    .io_pipe_phv_out_data_93(ipsa_io_pipe_phv_out_data_93),
    .io_pipe_phv_out_data_94(ipsa_io_pipe_phv_out_data_94),
    .io_pipe_phv_out_data_95(ipsa_io_pipe_phv_out_data_95),
    .io_pipe_phv_out_data_96(ipsa_io_pipe_phv_out_data_96),
    .io_pipe_phv_out_data_97(ipsa_io_pipe_phv_out_data_97),
    .io_pipe_phv_out_data_98(ipsa_io_pipe_phv_out_data_98),
    .io_pipe_phv_out_data_99(ipsa_io_pipe_phv_out_data_99),
    .io_pipe_phv_out_data_100(ipsa_io_pipe_phv_out_data_100),
    .io_pipe_phv_out_data_101(ipsa_io_pipe_phv_out_data_101),
    .io_pipe_phv_out_data_102(ipsa_io_pipe_phv_out_data_102),
    .io_pipe_phv_out_data_103(ipsa_io_pipe_phv_out_data_103),
    .io_pipe_phv_out_data_104(ipsa_io_pipe_phv_out_data_104),
    .io_pipe_phv_out_data_105(ipsa_io_pipe_phv_out_data_105),
    .io_pipe_phv_out_data_106(ipsa_io_pipe_phv_out_data_106),
    .io_pipe_phv_out_data_107(ipsa_io_pipe_phv_out_data_107),
    .io_pipe_phv_out_data_108(ipsa_io_pipe_phv_out_data_108),
    .io_pipe_phv_out_data_109(ipsa_io_pipe_phv_out_data_109),
    .io_pipe_phv_out_data_110(ipsa_io_pipe_phv_out_data_110),
    .io_pipe_phv_out_data_111(ipsa_io_pipe_phv_out_data_111),
    .io_pipe_phv_out_data_112(ipsa_io_pipe_phv_out_data_112),
    .io_pipe_phv_out_data_113(ipsa_io_pipe_phv_out_data_113),
    .io_pipe_phv_out_data_114(ipsa_io_pipe_phv_out_data_114),
    .io_pipe_phv_out_data_115(ipsa_io_pipe_phv_out_data_115),
    .io_pipe_phv_out_data_116(ipsa_io_pipe_phv_out_data_116),
    .io_pipe_phv_out_data_117(ipsa_io_pipe_phv_out_data_117),
    .io_pipe_phv_out_data_118(ipsa_io_pipe_phv_out_data_118),
    .io_pipe_phv_out_data_119(ipsa_io_pipe_phv_out_data_119),
    .io_pipe_phv_out_data_120(ipsa_io_pipe_phv_out_data_120),
    .io_pipe_phv_out_data_121(ipsa_io_pipe_phv_out_data_121),
    .io_pipe_phv_out_data_122(ipsa_io_pipe_phv_out_data_122),
    .io_pipe_phv_out_data_123(ipsa_io_pipe_phv_out_data_123),
    .io_pipe_phv_out_data_124(ipsa_io_pipe_phv_out_data_124),
    .io_pipe_phv_out_data_125(ipsa_io_pipe_phv_out_data_125),
    .io_pipe_phv_out_data_126(ipsa_io_pipe_phv_out_data_126),
    .io_pipe_phv_out_data_127(ipsa_io_pipe_phv_out_data_127),
    .io_pipe_phv_out_data_128(ipsa_io_pipe_phv_out_data_128),
    .io_pipe_phv_out_data_129(ipsa_io_pipe_phv_out_data_129),
    .io_pipe_phv_out_data_130(ipsa_io_pipe_phv_out_data_130),
    .io_pipe_phv_out_data_131(ipsa_io_pipe_phv_out_data_131),
    .io_pipe_phv_out_data_132(ipsa_io_pipe_phv_out_data_132),
    .io_pipe_phv_out_data_133(ipsa_io_pipe_phv_out_data_133),
    .io_pipe_phv_out_data_134(ipsa_io_pipe_phv_out_data_134),
    .io_pipe_phv_out_data_135(ipsa_io_pipe_phv_out_data_135),
    .io_pipe_phv_out_data_136(ipsa_io_pipe_phv_out_data_136),
    .io_pipe_phv_out_data_137(ipsa_io_pipe_phv_out_data_137),
    .io_pipe_phv_out_data_138(ipsa_io_pipe_phv_out_data_138),
    .io_pipe_phv_out_data_139(ipsa_io_pipe_phv_out_data_139),
    .io_pipe_phv_out_data_140(ipsa_io_pipe_phv_out_data_140),
    .io_pipe_phv_out_data_141(ipsa_io_pipe_phv_out_data_141),
    .io_pipe_phv_out_data_142(ipsa_io_pipe_phv_out_data_142),
    .io_pipe_phv_out_data_143(ipsa_io_pipe_phv_out_data_143),
    .io_pipe_phv_out_data_144(ipsa_io_pipe_phv_out_data_144),
    .io_pipe_phv_out_data_145(ipsa_io_pipe_phv_out_data_145),
    .io_pipe_phv_out_data_146(ipsa_io_pipe_phv_out_data_146),
    .io_pipe_phv_out_data_147(ipsa_io_pipe_phv_out_data_147),
    .io_pipe_phv_out_data_148(ipsa_io_pipe_phv_out_data_148),
    .io_pipe_phv_out_data_149(ipsa_io_pipe_phv_out_data_149),
    .io_pipe_phv_out_data_150(ipsa_io_pipe_phv_out_data_150),
    .io_pipe_phv_out_data_151(ipsa_io_pipe_phv_out_data_151),
    .io_pipe_phv_out_data_152(ipsa_io_pipe_phv_out_data_152),
    .io_pipe_phv_out_data_153(ipsa_io_pipe_phv_out_data_153),
    .io_pipe_phv_out_data_154(ipsa_io_pipe_phv_out_data_154),
    .io_pipe_phv_out_data_155(ipsa_io_pipe_phv_out_data_155),
    .io_pipe_phv_out_data_156(ipsa_io_pipe_phv_out_data_156),
    .io_pipe_phv_out_data_157(ipsa_io_pipe_phv_out_data_157),
    .io_pipe_phv_out_data_158(ipsa_io_pipe_phv_out_data_158),
    .io_pipe_phv_out_data_159(ipsa_io_pipe_phv_out_data_159),
    .io_mod_proc_mod_0_par_mod_en(ipsa_io_mod_proc_mod_0_par_mod_en),
    .io_mod_proc_mod_0_par_mod_last_mau_id_mod(ipsa_io_mod_proc_mod_0_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_0_par_mod_last_mau_id(ipsa_io_mod_proc_mod_0_par_mod_last_mau_id),
    .io_mod_proc_mod_0_par_mod_cs(ipsa_io_mod_proc_mod_0_par_mod_cs),
    .io_mod_proc_mod_0_par_mod_module_mod_state_id_mod(ipsa_io_mod_proc_mod_0_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_0_par_mod_module_mod_state_id(ipsa_io_mod_proc_mod_0_par_mod_module_mod_state_id),
    .io_mod_proc_mod_0_par_mod_module_mod_sram_w_cs(ipsa_io_mod_proc_mod_0_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_0_par_mod_module_mod_sram_w_addr(ipsa_io_mod_proc_mod_0_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_0_par_mod_module_mod_sram_w_data(ipsa_io_mod_proc_mod_0_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_0_mat_mod_en(ipsa_io_mod_proc_mod_0_mat_mod_en),
    .io_mod_proc_mod_0_mat_mod_config_id(ipsa_io_mod_proc_mod_0_mat_mod_config_id),
    .io_mod_proc_mod_0_mat_mod_key_mod_header_id(ipsa_io_mod_proc_mod_0_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_0_mat_mod_key_mod_internal_offset(ipsa_io_mod_proc_mod_0_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_0_mat_mod_key_mod_key_length(ipsa_io_mod_proc_mod_0_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_0_mat_mod_table_mod_table_width(ipsa_io_mod_proc_mod_0_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_0_mat_mod_table_mod_table_depth(ipsa_io_mod_proc_mod_0_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_0_act_mod_en_0(ipsa_io_mod_proc_mod_0_act_mod_en_0),
    .io_mod_proc_mod_0_act_mod_en_1(ipsa_io_mod_proc_mod_0_act_mod_en_1),
    .io_mod_proc_mod_0_act_mod_addr(ipsa_io_mod_proc_mod_0_act_mod_addr),
    .io_mod_proc_mod_0_act_mod_data_0(ipsa_io_mod_proc_mod_0_act_mod_data_0),
    .io_mod_proc_mod_0_act_mod_data_1(ipsa_io_mod_proc_mod_0_act_mod_data_1),
    .io_mod_proc_mod_1_par_mod_en(ipsa_io_mod_proc_mod_1_par_mod_en),
    .io_mod_proc_mod_1_par_mod_last_mau_id_mod(ipsa_io_mod_proc_mod_1_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_1_par_mod_last_mau_id(ipsa_io_mod_proc_mod_1_par_mod_last_mau_id),
    .io_mod_proc_mod_1_par_mod_cs(ipsa_io_mod_proc_mod_1_par_mod_cs),
    .io_mod_proc_mod_1_par_mod_module_mod_state_id_mod(ipsa_io_mod_proc_mod_1_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_1_par_mod_module_mod_state_id(ipsa_io_mod_proc_mod_1_par_mod_module_mod_state_id),
    .io_mod_proc_mod_1_par_mod_module_mod_sram_w_cs(ipsa_io_mod_proc_mod_1_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_1_par_mod_module_mod_sram_w_addr(ipsa_io_mod_proc_mod_1_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_1_par_mod_module_mod_sram_w_data(ipsa_io_mod_proc_mod_1_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_1_mat_mod_en(ipsa_io_mod_proc_mod_1_mat_mod_en),
    .io_mod_proc_mod_1_mat_mod_config_id(ipsa_io_mod_proc_mod_1_mat_mod_config_id),
    .io_mod_proc_mod_1_mat_mod_key_mod_header_id(ipsa_io_mod_proc_mod_1_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_1_mat_mod_key_mod_internal_offset(ipsa_io_mod_proc_mod_1_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_1_mat_mod_key_mod_key_length(ipsa_io_mod_proc_mod_1_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_1_mat_mod_table_mod_table_width(ipsa_io_mod_proc_mod_1_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_1_mat_mod_table_mod_table_depth(ipsa_io_mod_proc_mod_1_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_1_act_mod_en_0(ipsa_io_mod_proc_mod_1_act_mod_en_0),
    .io_mod_proc_mod_1_act_mod_en_1(ipsa_io_mod_proc_mod_1_act_mod_en_1),
    .io_mod_proc_mod_1_act_mod_addr(ipsa_io_mod_proc_mod_1_act_mod_addr),
    .io_mod_proc_mod_1_act_mod_data_0(ipsa_io_mod_proc_mod_1_act_mod_data_0),
    .io_mod_proc_mod_1_act_mod_data_1(ipsa_io_mod_proc_mod_1_act_mod_data_1),
    .io_mod_proc_mod_2_par_mod_en(ipsa_io_mod_proc_mod_2_par_mod_en),
    .io_mod_proc_mod_2_par_mod_last_mau_id_mod(ipsa_io_mod_proc_mod_2_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_2_par_mod_last_mau_id(ipsa_io_mod_proc_mod_2_par_mod_last_mau_id),
    .io_mod_proc_mod_2_par_mod_cs(ipsa_io_mod_proc_mod_2_par_mod_cs),
    .io_mod_proc_mod_2_par_mod_module_mod_state_id_mod(ipsa_io_mod_proc_mod_2_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_2_par_mod_module_mod_state_id(ipsa_io_mod_proc_mod_2_par_mod_module_mod_state_id),
    .io_mod_proc_mod_2_par_mod_module_mod_sram_w_cs(ipsa_io_mod_proc_mod_2_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_2_par_mod_module_mod_sram_w_addr(ipsa_io_mod_proc_mod_2_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_2_par_mod_module_mod_sram_w_data(ipsa_io_mod_proc_mod_2_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_2_mat_mod_en(ipsa_io_mod_proc_mod_2_mat_mod_en),
    .io_mod_proc_mod_2_mat_mod_config_id(ipsa_io_mod_proc_mod_2_mat_mod_config_id),
    .io_mod_proc_mod_2_mat_mod_key_mod_header_id(ipsa_io_mod_proc_mod_2_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_2_mat_mod_key_mod_internal_offset(ipsa_io_mod_proc_mod_2_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_2_mat_mod_key_mod_key_length(ipsa_io_mod_proc_mod_2_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_2_mat_mod_table_mod_table_width(ipsa_io_mod_proc_mod_2_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_2_mat_mod_table_mod_table_depth(ipsa_io_mod_proc_mod_2_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_2_act_mod_en_0(ipsa_io_mod_proc_mod_2_act_mod_en_0),
    .io_mod_proc_mod_2_act_mod_en_1(ipsa_io_mod_proc_mod_2_act_mod_en_1),
    .io_mod_proc_mod_2_act_mod_addr(ipsa_io_mod_proc_mod_2_act_mod_addr),
    .io_mod_proc_mod_2_act_mod_data_0(ipsa_io_mod_proc_mod_2_act_mod_data_0),
    .io_mod_proc_mod_2_act_mod_data_1(ipsa_io_mod_proc_mod_2_act_mod_data_1),
    .io_mod_proc_mod_3_par_mod_en(ipsa_io_mod_proc_mod_3_par_mod_en),
    .io_mod_proc_mod_3_par_mod_last_mau_id_mod(ipsa_io_mod_proc_mod_3_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_3_par_mod_last_mau_id(ipsa_io_mod_proc_mod_3_par_mod_last_mau_id),
    .io_mod_proc_mod_3_par_mod_cs(ipsa_io_mod_proc_mod_3_par_mod_cs),
    .io_mod_proc_mod_3_par_mod_module_mod_state_id_mod(ipsa_io_mod_proc_mod_3_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_3_par_mod_module_mod_state_id(ipsa_io_mod_proc_mod_3_par_mod_module_mod_state_id),
    .io_mod_proc_mod_3_par_mod_module_mod_sram_w_cs(ipsa_io_mod_proc_mod_3_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_3_par_mod_module_mod_sram_w_addr(ipsa_io_mod_proc_mod_3_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_3_par_mod_module_mod_sram_w_data(ipsa_io_mod_proc_mod_3_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_3_mat_mod_en(ipsa_io_mod_proc_mod_3_mat_mod_en),
    .io_mod_proc_mod_3_mat_mod_config_id(ipsa_io_mod_proc_mod_3_mat_mod_config_id),
    .io_mod_proc_mod_3_mat_mod_key_mod_header_id(ipsa_io_mod_proc_mod_3_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_3_mat_mod_key_mod_internal_offset(ipsa_io_mod_proc_mod_3_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_3_mat_mod_key_mod_key_length(ipsa_io_mod_proc_mod_3_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_3_mat_mod_table_mod_table_width(ipsa_io_mod_proc_mod_3_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_3_mat_mod_table_mod_table_depth(ipsa_io_mod_proc_mod_3_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_3_act_mod_en_0(ipsa_io_mod_proc_mod_3_act_mod_en_0),
    .io_mod_proc_mod_3_act_mod_en_1(ipsa_io_mod_proc_mod_3_act_mod_en_1),
    .io_mod_proc_mod_3_act_mod_addr(ipsa_io_mod_proc_mod_3_act_mod_addr),
    .io_mod_proc_mod_3_act_mod_data_0(ipsa_io_mod_proc_mod_3_act_mod_data_0),
    .io_mod_proc_mod_3_act_mod_data_1(ipsa_io_mod_proc_mod_3_act_mod_data_1),
    .io_mod_proc_mod_4_par_mod_en(ipsa_io_mod_proc_mod_4_par_mod_en),
    .io_mod_proc_mod_4_par_mod_last_mau_id_mod(ipsa_io_mod_proc_mod_4_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_4_par_mod_last_mau_id(ipsa_io_mod_proc_mod_4_par_mod_last_mau_id),
    .io_mod_proc_mod_4_par_mod_cs(ipsa_io_mod_proc_mod_4_par_mod_cs),
    .io_mod_proc_mod_4_par_mod_module_mod_state_id_mod(ipsa_io_mod_proc_mod_4_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_4_par_mod_module_mod_state_id(ipsa_io_mod_proc_mod_4_par_mod_module_mod_state_id),
    .io_mod_proc_mod_4_par_mod_module_mod_sram_w_cs(ipsa_io_mod_proc_mod_4_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_4_par_mod_module_mod_sram_w_addr(ipsa_io_mod_proc_mod_4_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_4_par_mod_module_mod_sram_w_data(ipsa_io_mod_proc_mod_4_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_4_mat_mod_en(ipsa_io_mod_proc_mod_4_mat_mod_en),
    .io_mod_proc_mod_4_mat_mod_config_id(ipsa_io_mod_proc_mod_4_mat_mod_config_id),
    .io_mod_proc_mod_4_mat_mod_key_mod_header_id(ipsa_io_mod_proc_mod_4_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_4_mat_mod_key_mod_internal_offset(ipsa_io_mod_proc_mod_4_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_4_mat_mod_key_mod_key_length(ipsa_io_mod_proc_mod_4_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_4_mat_mod_table_mod_table_width(ipsa_io_mod_proc_mod_4_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_4_mat_mod_table_mod_table_depth(ipsa_io_mod_proc_mod_4_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_4_act_mod_en_0(ipsa_io_mod_proc_mod_4_act_mod_en_0),
    .io_mod_proc_mod_4_act_mod_en_1(ipsa_io_mod_proc_mod_4_act_mod_en_1),
    .io_mod_proc_mod_4_act_mod_addr(ipsa_io_mod_proc_mod_4_act_mod_addr),
    .io_mod_proc_mod_4_act_mod_data_0(ipsa_io_mod_proc_mod_4_act_mod_data_0),
    .io_mod_proc_mod_4_act_mod_data_1(ipsa_io_mod_proc_mod_4_act_mod_data_1),
    .io_mod_proc_mod_5_par_mod_en(ipsa_io_mod_proc_mod_5_par_mod_en),
    .io_mod_proc_mod_5_par_mod_last_mau_id_mod(ipsa_io_mod_proc_mod_5_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_5_par_mod_last_mau_id(ipsa_io_mod_proc_mod_5_par_mod_last_mau_id),
    .io_mod_proc_mod_5_par_mod_cs(ipsa_io_mod_proc_mod_5_par_mod_cs),
    .io_mod_proc_mod_5_par_mod_module_mod_state_id_mod(ipsa_io_mod_proc_mod_5_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_5_par_mod_module_mod_state_id(ipsa_io_mod_proc_mod_5_par_mod_module_mod_state_id),
    .io_mod_proc_mod_5_par_mod_module_mod_sram_w_cs(ipsa_io_mod_proc_mod_5_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_5_par_mod_module_mod_sram_w_addr(ipsa_io_mod_proc_mod_5_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_5_par_mod_module_mod_sram_w_data(ipsa_io_mod_proc_mod_5_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_5_mat_mod_en(ipsa_io_mod_proc_mod_5_mat_mod_en),
    .io_mod_proc_mod_5_mat_mod_config_id(ipsa_io_mod_proc_mod_5_mat_mod_config_id),
    .io_mod_proc_mod_5_mat_mod_key_mod_header_id(ipsa_io_mod_proc_mod_5_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_5_mat_mod_key_mod_internal_offset(ipsa_io_mod_proc_mod_5_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_5_mat_mod_key_mod_key_length(ipsa_io_mod_proc_mod_5_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_5_mat_mod_table_mod_table_width(ipsa_io_mod_proc_mod_5_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_5_mat_mod_table_mod_table_depth(ipsa_io_mod_proc_mod_5_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_5_act_mod_en_0(ipsa_io_mod_proc_mod_5_act_mod_en_0),
    .io_mod_proc_mod_5_act_mod_en_1(ipsa_io_mod_proc_mod_5_act_mod_en_1),
    .io_mod_proc_mod_5_act_mod_addr(ipsa_io_mod_proc_mod_5_act_mod_addr),
    .io_mod_proc_mod_5_act_mod_data_0(ipsa_io_mod_proc_mod_5_act_mod_data_0),
    .io_mod_proc_mod_5_act_mod_data_1(ipsa_io_mod_proc_mod_5_act_mod_data_1),
    .io_mod_proc_mod_6_par_mod_en(ipsa_io_mod_proc_mod_6_par_mod_en),
    .io_mod_proc_mod_6_par_mod_last_mau_id_mod(ipsa_io_mod_proc_mod_6_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_6_par_mod_last_mau_id(ipsa_io_mod_proc_mod_6_par_mod_last_mau_id),
    .io_mod_proc_mod_6_par_mod_cs(ipsa_io_mod_proc_mod_6_par_mod_cs),
    .io_mod_proc_mod_6_par_mod_module_mod_state_id_mod(ipsa_io_mod_proc_mod_6_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_6_par_mod_module_mod_state_id(ipsa_io_mod_proc_mod_6_par_mod_module_mod_state_id),
    .io_mod_proc_mod_6_par_mod_module_mod_sram_w_cs(ipsa_io_mod_proc_mod_6_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_6_par_mod_module_mod_sram_w_addr(ipsa_io_mod_proc_mod_6_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_6_par_mod_module_mod_sram_w_data(ipsa_io_mod_proc_mod_6_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_6_mat_mod_en(ipsa_io_mod_proc_mod_6_mat_mod_en),
    .io_mod_proc_mod_6_mat_mod_config_id(ipsa_io_mod_proc_mod_6_mat_mod_config_id),
    .io_mod_proc_mod_6_mat_mod_key_mod_header_id(ipsa_io_mod_proc_mod_6_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_6_mat_mod_key_mod_internal_offset(ipsa_io_mod_proc_mod_6_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_6_mat_mod_key_mod_key_length(ipsa_io_mod_proc_mod_6_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_6_mat_mod_table_mod_table_width(ipsa_io_mod_proc_mod_6_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_6_mat_mod_table_mod_table_depth(ipsa_io_mod_proc_mod_6_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_6_act_mod_en_0(ipsa_io_mod_proc_mod_6_act_mod_en_0),
    .io_mod_proc_mod_6_act_mod_en_1(ipsa_io_mod_proc_mod_6_act_mod_en_1),
    .io_mod_proc_mod_6_act_mod_addr(ipsa_io_mod_proc_mod_6_act_mod_addr),
    .io_mod_proc_mod_6_act_mod_data_0(ipsa_io_mod_proc_mod_6_act_mod_data_0),
    .io_mod_proc_mod_6_act_mod_data_1(ipsa_io_mod_proc_mod_6_act_mod_data_1),
    .io_mod_proc_mod_7_par_mod_en(ipsa_io_mod_proc_mod_7_par_mod_en),
    .io_mod_proc_mod_7_par_mod_last_mau_id_mod(ipsa_io_mod_proc_mod_7_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_7_par_mod_last_mau_id(ipsa_io_mod_proc_mod_7_par_mod_last_mau_id),
    .io_mod_proc_mod_7_par_mod_cs(ipsa_io_mod_proc_mod_7_par_mod_cs),
    .io_mod_proc_mod_7_par_mod_module_mod_state_id_mod(ipsa_io_mod_proc_mod_7_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_7_par_mod_module_mod_state_id(ipsa_io_mod_proc_mod_7_par_mod_module_mod_state_id),
    .io_mod_proc_mod_7_par_mod_module_mod_sram_w_cs(ipsa_io_mod_proc_mod_7_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_7_par_mod_module_mod_sram_w_addr(ipsa_io_mod_proc_mod_7_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_7_par_mod_module_mod_sram_w_data(ipsa_io_mod_proc_mod_7_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_7_mat_mod_en(ipsa_io_mod_proc_mod_7_mat_mod_en),
    .io_mod_proc_mod_7_mat_mod_config_id(ipsa_io_mod_proc_mod_7_mat_mod_config_id),
    .io_mod_proc_mod_7_mat_mod_key_mod_header_id(ipsa_io_mod_proc_mod_7_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_7_mat_mod_key_mod_internal_offset(ipsa_io_mod_proc_mod_7_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_7_mat_mod_key_mod_key_length(ipsa_io_mod_proc_mod_7_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_7_mat_mod_table_mod_table_width(ipsa_io_mod_proc_mod_7_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_7_mat_mod_table_mod_table_depth(ipsa_io_mod_proc_mod_7_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_7_act_mod_en_0(ipsa_io_mod_proc_mod_7_act_mod_en_0),
    .io_mod_proc_mod_7_act_mod_en_1(ipsa_io_mod_proc_mod_7_act_mod_en_1),
    .io_mod_proc_mod_7_act_mod_addr(ipsa_io_mod_proc_mod_7_act_mod_addr),
    .io_mod_proc_mod_7_act_mod_data_0(ipsa_io_mod_proc_mod_7_act_mod_data_0),
    .io_mod_proc_mod_7_act_mod_data_1(ipsa_io_mod_proc_mod_7_act_mod_data_1),
    .io_mod_proc_mod_8_par_mod_en(ipsa_io_mod_proc_mod_8_par_mod_en),
    .io_mod_proc_mod_8_par_mod_last_mau_id_mod(ipsa_io_mod_proc_mod_8_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_8_par_mod_last_mau_id(ipsa_io_mod_proc_mod_8_par_mod_last_mau_id),
    .io_mod_proc_mod_8_par_mod_cs(ipsa_io_mod_proc_mod_8_par_mod_cs),
    .io_mod_proc_mod_8_par_mod_module_mod_state_id_mod(ipsa_io_mod_proc_mod_8_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_8_par_mod_module_mod_state_id(ipsa_io_mod_proc_mod_8_par_mod_module_mod_state_id),
    .io_mod_proc_mod_8_par_mod_module_mod_sram_w_cs(ipsa_io_mod_proc_mod_8_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_8_par_mod_module_mod_sram_w_addr(ipsa_io_mod_proc_mod_8_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_8_par_mod_module_mod_sram_w_data(ipsa_io_mod_proc_mod_8_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_8_mat_mod_en(ipsa_io_mod_proc_mod_8_mat_mod_en),
    .io_mod_proc_mod_8_mat_mod_config_id(ipsa_io_mod_proc_mod_8_mat_mod_config_id),
    .io_mod_proc_mod_8_mat_mod_key_mod_header_id(ipsa_io_mod_proc_mod_8_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_8_mat_mod_key_mod_internal_offset(ipsa_io_mod_proc_mod_8_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_8_mat_mod_key_mod_key_length(ipsa_io_mod_proc_mod_8_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_8_mat_mod_table_mod_table_width(ipsa_io_mod_proc_mod_8_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_8_mat_mod_table_mod_table_depth(ipsa_io_mod_proc_mod_8_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_8_act_mod_en_0(ipsa_io_mod_proc_mod_8_act_mod_en_0),
    .io_mod_proc_mod_8_act_mod_en_1(ipsa_io_mod_proc_mod_8_act_mod_en_1),
    .io_mod_proc_mod_8_act_mod_addr(ipsa_io_mod_proc_mod_8_act_mod_addr),
    .io_mod_proc_mod_8_act_mod_data_0(ipsa_io_mod_proc_mod_8_act_mod_data_0),
    .io_mod_proc_mod_8_act_mod_data_1(ipsa_io_mod_proc_mod_8_act_mod_data_1),
    .io_mod_proc_mod_9_par_mod_en(ipsa_io_mod_proc_mod_9_par_mod_en),
    .io_mod_proc_mod_9_par_mod_last_mau_id_mod(ipsa_io_mod_proc_mod_9_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_9_par_mod_last_mau_id(ipsa_io_mod_proc_mod_9_par_mod_last_mau_id),
    .io_mod_proc_mod_9_par_mod_cs(ipsa_io_mod_proc_mod_9_par_mod_cs),
    .io_mod_proc_mod_9_par_mod_module_mod_state_id_mod(ipsa_io_mod_proc_mod_9_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_9_par_mod_module_mod_state_id(ipsa_io_mod_proc_mod_9_par_mod_module_mod_state_id),
    .io_mod_proc_mod_9_par_mod_module_mod_sram_w_cs(ipsa_io_mod_proc_mod_9_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_9_par_mod_module_mod_sram_w_addr(ipsa_io_mod_proc_mod_9_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_9_par_mod_module_mod_sram_w_data(ipsa_io_mod_proc_mod_9_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_9_mat_mod_en(ipsa_io_mod_proc_mod_9_mat_mod_en),
    .io_mod_proc_mod_9_mat_mod_config_id(ipsa_io_mod_proc_mod_9_mat_mod_config_id),
    .io_mod_proc_mod_9_mat_mod_key_mod_header_id(ipsa_io_mod_proc_mod_9_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_9_mat_mod_key_mod_internal_offset(ipsa_io_mod_proc_mod_9_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_9_mat_mod_key_mod_key_length(ipsa_io_mod_proc_mod_9_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_9_mat_mod_table_mod_table_width(ipsa_io_mod_proc_mod_9_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_9_mat_mod_table_mod_table_depth(ipsa_io_mod_proc_mod_9_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_9_act_mod_en_0(ipsa_io_mod_proc_mod_9_act_mod_en_0),
    .io_mod_proc_mod_9_act_mod_en_1(ipsa_io_mod_proc_mod_9_act_mod_en_1),
    .io_mod_proc_mod_9_act_mod_addr(ipsa_io_mod_proc_mod_9_act_mod_addr),
    .io_mod_proc_mod_9_act_mod_data_0(ipsa_io_mod_proc_mod_9_act_mod_data_0),
    .io_mod_proc_mod_9_act_mod_data_1(ipsa_io_mod_proc_mod_9_act_mod_data_1),
    .io_mod_xbar_mod_en(ipsa_io_mod_xbar_mod_en),
    .io_mod_xbar_mod_first_proc_id(ipsa_io_mod_xbar_mod_first_proc_id),
    .io_mod_xbar_mod_last_proc_id(ipsa_io_mod_xbar_mod_last_proc_id),
    .io_mod_xbar_mod_next_proc_id_0(ipsa_io_mod_xbar_mod_next_proc_id_0),
    .io_mod_xbar_mod_next_proc_id_1(ipsa_io_mod_xbar_mod_next_proc_id_1),
    .io_mod_xbar_mod_next_proc_id_2(ipsa_io_mod_xbar_mod_next_proc_id_2),
    .io_mod_xbar_mod_next_proc_id_3(ipsa_io_mod_xbar_mod_next_proc_id_3),
    .io_mod_xbar_mod_next_proc_id_4(ipsa_io_mod_xbar_mod_next_proc_id_4),
    .io_mod_xbar_mod_next_proc_id_5(ipsa_io_mod_xbar_mod_next_proc_id_5),
    .io_mod_xbar_mod_next_proc_id_6(ipsa_io_mod_xbar_mod_next_proc_id_6),
    .io_mod_xbar_mod_next_proc_id_7(ipsa_io_mod_xbar_mod_next_proc_id_7),
    .io_mod_xbar_mod_next_proc_id_8(ipsa_io_mod_xbar_mod_next_proc_id_8),
    .io_mod_xbar_mod_next_proc_id_9(ipsa_io_mod_xbar_mod_next_proc_id_9),
    .io_w_0_wcs(ipsa_io_w_0_wcs),
    .io_w_0_w_en(ipsa_io_w_0_w_en),
    .io_w_0_w_addr(ipsa_io_w_0_w_addr),
    .io_w_0_w_data(ipsa_io_w_0_w_data),
    .io_w_1_wcs(ipsa_io_w_1_wcs),
    .io_w_1_w_en(ipsa_io_w_1_w_en),
    .io_w_1_w_addr(ipsa_io_w_1_w_addr),
    .io_w_1_w_data(ipsa_io_w_1_w_data),
    .io_w_2_wcs(ipsa_io_w_2_wcs),
    .io_w_2_w_en(ipsa_io_w_2_w_en),
    .io_w_2_w_addr(ipsa_io_w_2_w_addr),
    .io_w_2_w_data(ipsa_io_w_2_w_data),
    .io_w_3_wcs(ipsa_io_w_3_wcs),
    .io_w_3_w_en(ipsa_io_w_3_w_en),
    .io_w_3_w_addr(ipsa_io_w_3_w_addr),
    .io_w_3_w_data(ipsa_io_w_3_w_data),
    .io_w_4_wcs(ipsa_io_w_4_wcs),
    .io_w_4_w_en(ipsa_io_w_4_w_en),
    .io_w_4_w_addr(ipsa_io_w_4_w_addr),
    .io_w_4_w_data(ipsa_io_w_4_w_data)
  );
  PCIEInterface pcie ( // @[ipsa_pcie.scala 14:22]
    .clock(pcie_clock),
    .io_pcie_r_en(pcie_io_pcie_r_en),
    .io_pcie_r_addr(pcie_io_pcie_r_addr),
    .io_pcie_r_data(pcie_io_pcie_r_data),
    .io_pcie_w_en(pcie_io_pcie_w_en),
    .io_pcie_w_addr(pcie_io_pcie_w_addr),
    .io_pcie_w_data(pcie_io_pcie_w_data),
    .io_pcie_o_cs(pcie_io_pcie_o_cs),
    .io_pcie_o_r_en(pcie_io_pcie_o_r_en),
    .io_pcie_o_r_addr(pcie_io_pcie_o_r_addr),
    .io_pcie_o_r_data(pcie_io_pcie_o_r_data),
    .io_mod_proc_mod_0_par_mod_en(pcie_io_mod_proc_mod_0_par_mod_en),
    .io_mod_proc_mod_0_par_mod_last_mau_id_mod(pcie_io_mod_proc_mod_0_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_0_par_mod_last_mau_id(pcie_io_mod_proc_mod_0_par_mod_last_mau_id),
    .io_mod_proc_mod_0_par_mod_cs(pcie_io_mod_proc_mod_0_par_mod_cs),
    .io_mod_proc_mod_0_par_mod_module_mod_state_id_mod(pcie_io_mod_proc_mod_0_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_0_par_mod_module_mod_state_id(pcie_io_mod_proc_mod_0_par_mod_module_mod_state_id),
    .io_mod_proc_mod_0_par_mod_module_mod_sram_w_cs(pcie_io_mod_proc_mod_0_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_0_par_mod_module_mod_sram_w_addr(pcie_io_mod_proc_mod_0_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_0_par_mod_module_mod_sram_w_data(pcie_io_mod_proc_mod_0_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_0_mat_mod_en(pcie_io_mod_proc_mod_0_mat_mod_en),
    .io_mod_proc_mod_0_mat_mod_config_id(pcie_io_mod_proc_mod_0_mat_mod_config_id),
    .io_mod_proc_mod_0_mat_mod_key_mod_header_id(pcie_io_mod_proc_mod_0_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_0_mat_mod_key_mod_internal_offset(pcie_io_mod_proc_mod_0_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_0_mat_mod_key_mod_key_length(pcie_io_mod_proc_mod_0_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_0_mat_mod_table_mod_table_width(pcie_io_mod_proc_mod_0_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_0_mat_mod_table_mod_table_depth(pcie_io_mod_proc_mod_0_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_0_act_mod_en_0(pcie_io_mod_proc_mod_0_act_mod_en_0),
    .io_mod_proc_mod_0_act_mod_en_1(pcie_io_mod_proc_mod_0_act_mod_en_1),
    .io_mod_proc_mod_0_act_mod_addr(pcie_io_mod_proc_mod_0_act_mod_addr),
    .io_mod_proc_mod_0_act_mod_data_0(pcie_io_mod_proc_mod_0_act_mod_data_0),
    .io_mod_proc_mod_0_act_mod_data_1(pcie_io_mod_proc_mod_0_act_mod_data_1),
    .io_mod_proc_mod_1_par_mod_en(pcie_io_mod_proc_mod_1_par_mod_en),
    .io_mod_proc_mod_1_par_mod_last_mau_id_mod(pcie_io_mod_proc_mod_1_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_1_par_mod_last_mau_id(pcie_io_mod_proc_mod_1_par_mod_last_mau_id),
    .io_mod_proc_mod_1_par_mod_cs(pcie_io_mod_proc_mod_1_par_mod_cs),
    .io_mod_proc_mod_1_par_mod_module_mod_state_id_mod(pcie_io_mod_proc_mod_1_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_1_par_mod_module_mod_state_id(pcie_io_mod_proc_mod_1_par_mod_module_mod_state_id),
    .io_mod_proc_mod_1_par_mod_module_mod_sram_w_cs(pcie_io_mod_proc_mod_1_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_1_par_mod_module_mod_sram_w_addr(pcie_io_mod_proc_mod_1_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_1_par_mod_module_mod_sram_w_data(pcie_io_mod_proc_mod_1_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_1_mat_mod_en(pcie_io_mod_proc_mod_1_mat_mod_en),
    .io_mod_proc_mod_1_mat_mod_config_id(pcie_io_mod_proc_mod_1_mat_mod_config_id),
    .io_mod_proc_mod_1_mat_mod_key_mod_header_id(pcie_io_mod_proc_mod_1_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_1_mat_mod_key_mod_internal_offset(pcie_io_mod_proc_mod_1_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_1_mat_mod_key_mod_key_length(pcie_io_mod_proc_mod_1_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_1_mat_mod_table_mod_table_width(pcie_io_mod_proc_mod_1_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_1_mat_mod_table_mod_table_depth(pcie_io_mod_proc_mod_1_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_1_act_mod_en_0(pcie_io_mod_proc_mod_1_act_mod_en_0),
    .io_mod_proc_mod_1_act_mod_en_1(pcie_io_mod_proc_mod_1_act_mod_en_1),
    .io_mod_proc_mod_1_act_mod_addr(pcie_io_mod_proc_mod_1_act_mod_addr),
    .io_mod_proc_mod_1_act_mod_data_0(pcie_io_mod_proc_mod_1_act_mod_data_0),
    .io_mod_proc_mod_1_act_mod_data_1(pcie_io_mod_proc_mod_1_act_mod_data_1),
    .io_mod_proc_mod_2_par_mod_en(pcie_io_mod_proc_mod_2_par_mod_en),
    .io_mod_proc_mod_2_par_mod_last_mau_id_mod(pcie_io_mod_proc_mod_2_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_2_par_mod_last_mau_id(pcie_io_mod_proc_mod_2_par_mod_last_mau_id),
    .io_mod_proc_mod_2_par_mod_cs(pcie_io_mod_proc_mod_2_par_mod_cs),
    .io_mod_proc_mod_2_par_mod_module_mod_state_id_mod(pcie_io_mod_proc_mod_2_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_2_par_mod_module_mod_state_id(pcie_io_mod_proc_mod_2_par_mod_module_mod_state_id),
    .io_mod_proc_mod_2_par_mod_module_mod_sram_w_cs(pcie_io_mod_proc_mod_2_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_2_par_mod_module_mod_sram_w_addr(pcie_io_mod_proc_mod_2_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_2_par_mod_module_mod_sram_w_data(pcie_io_mod_proc_mod_2_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_2_mat_mod_en(pcie_io_mod_proc_mod_2_mat_mod_en),
    .io_mod_proc_mod_2_mat_mod_config_id(pcie_io_mod_proc_mod_2_mat_mod_config_id),
    .io_mod_proc_mod_2_mat_mod_key_mod_header_id(pcie_io_mod_proc_mod_2_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_2_mat_mod_key_mod_internal_offset(pcie_io_mod_proc_mod_2_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_2_mat_mod_key_mod_key_length(pcie_io_mod_proc_mod_2_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_2_mat_mod_table_mod_table_width(pcie_io_mod_proc_mod_2_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_2_mat_mod_table_mod_table_depth(pcie_io_mod_proc_mod_2_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_2_act_mod_en_0(pcie_io_mod_proc_mod_2_act_mod_en_0),
    .io_mod_proc_mod_2_act_mod_en_1(pcie_io_mod_proc_mod_2_act_mod_en_1),
    .io_mod_proc_mod_2_act_mod_addr(pcie_io_mod_proc_mod_2_act_mod_addr),
    .io_mod_proc_mod_2_act_mod_data_0(pcie_io_mod_proc_mod_2_act_mod_data_0),
    .io_mod_proc_mod_2_act_mod_data_1(pcie_io_mod_proc_mod_2_act_mod_data_1),
    .io_mod_proc_mod_3_par_mod_en(pcie_io_mod_proc_mod_3_par_mod_en),
    .io_mod_proc_mod_3_par_mod_last_mau_id_mod(pcie_io_mod_proc_mod_3_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_3_par_mod_last_mau_id(pcie_io_mod_proc_mod_3_par_mod_last_mau_id),
    .io_mod_proc_mod_3_par_mod_cs(pcie_io_mod_proc_mod_3_par_mod_cs),
    .io_mod_proc_mod_3_par_mod_module_mod_state_id_mod(pcie_io_mod_proc_mod_3_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_3_par_mod_module_mod_state_id(pcie_io_mod_proc_mod_3_par_mod_module_mod_state_id),
    .io_mod_proc_mod_3_par_mod_module_mod_sram_w_cs(pcie_io_mod_proc_mod_3_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_3_par_mod_module_mod_sram_w_addr(pcie_io_mod_proc_mod_3_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_3_par_mod_module_mod_sram_w_data(pcie_io_mod_proc_mod_3_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_3_mat_mod_en(pcie_io_mod_proc_mod_3_mat_mod_en),
    .io_mod_proc_mod_3_mat_mod_config_id(pcie_io_mod_proc_mod_3_mat_mod_config_id),
    .io_mod_proc_mod_3_mat_mod_key_mod_header_id(pcie_io_mod_proc_mod_3_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_3_mat_mod_key_mod_internal_offset(pcie_io_mod_proc_mod_3_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_3_mat_mod_key_mod_key_length(pcie_io_mod_proc_mod_3_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_3_mat_mod_table_mod_table_width(pcie_io_mod_proc_mod_3_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_3_mat_mod_table_mod_table_depth(pcie_io_mod_proc_mod_3_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_3_act_mod_en_0(pcie_io_mod_proc_mod_3_act_mod_en_0),
    .io_mod_proc_mod_3_act_mod_en_1(pcie_io_mod_proc_mod_3_act_mod_en_1),
    .io_mod_proc_mod_3_act_mod_addr(pcie_io_mod_proc_mod_3_act_mod_addr),
    .io_mod_proc_mod_3_act_mod_data_0(pcie_io_mod_proc_mod_3_act_mod_data_0),
    .io_mod_proc_mod_3_act_mod_data_1(pcie_io_mod_proc_mod_3_act_mod_data_1),
    .io_mod_proc_mod_4_par_mod_en(pcie_io_mod_proc_mod_4_par_mod_en),
    .io_mod_proc_mod_4_par_mod_last_mau_id_mod(pcie_io_mod_proc_mod_4_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_4_par_mod_last_mau_id(pcie_io_mod_proc_mod_4_par_mod_last_mau_id),
    .io_mod_proc_mod_4_par_mod_cs(pcie_io_mod_proc_mod_4_par_mod_cs),
    .io_mod_proc_mod_4_par_mod_module_mod_state_id_mod(pcie_io_mod_proc_mod_4_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_4_par_mod_module_mod_state_id(pcie_io_mod_proc_mod_4_par_mod_module_mod_state_id),
    .io_mod_proc_mod_4_par_mod_module_mod_sram_w_cs(pcie_io_mod_proc_mod_4_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_4_par_mod_module_mod_sram_w_addr(pcie_io_mod_proc_mod_4_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_4_par_mod_module_mod_sram_w_data(pcie_io_mod_proc_mod_4_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_4_mat_mod_en(pcie_io_mod_proc_mod_4_mat_mod_en),
    .io_mod_proc_mod_4_mat_mod_config_id(pcie_io_mod_proc_mod_4_mat_mod_config_id),
    .io_mod_proc_mod_4_mat_mod_key_mod_header_id(pcie_io_mod_proc_mod_4_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_4_mat_mod_key_mod_internal_offset(pcie_io_mod_proc_mod_4_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_4_mat_mod_key_mod_key_length(pcie_io_mod_proc_mod_4_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_4_mat_mod_table_mod_table_width(pcie_io_mod_proc_mod_4_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_4_mat_mod_table_mod_table_depth(pcie_io_mod_proc_mod_4_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_4_act_mod_en_0(pcie_io_mod_proc_mod_4_act_mod_en_0),
    .io_mod_proc_mod_4_act_mod_en_1(pcie_io_mod_proc_mod_4_act_mod_en_1),
    .io_mod_proc_mod_4_act_mod_addr(pcie_io_mod_proc_mod_4_act_mod_addr),
    .io_mod_proc_mod_4_act_mod_data_0(pcie_io_mod_proc_mod_4_act_mod_data_0),
    .io_mod_proc_mod_4_act_mod_data_1(pcie_io_mod_proc_mod_4_act_mod_data_1),
    .io_mod_proc_mod_5_par_mod_en(pcie_io_mod_proc_mod_5_par_mod_en),
    .io_mod_proc_mod_5_par_mod_last_mau_id_mod(pcie_io_mod_proc_mod_5_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_5_par_mod_last_mau_id(pcie_io_mod_proc_mod_5_par_mod_last_mau_id),
    .io_mod_proc_mod_5_par_mod_cs(pcie_io_mod_proc_mod_5_par_mod_cs),
    .io_mod_proc_mod_5_par_mod_module_mod_state_id_mod(pcie_io_mod_proc_mod_5_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_5_par_mod_module_mod_state_id(pcie_io_mod_proc_mod_5_par_mod_module_mod_state_id),
    .io_mod_proc_mod_5_par_mod_module_mod_sram_w_cs(pcie_io_mod_proc_mod_5_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_5_par_mod_module_mod_sram_w_addr(pcie_io_mod_proc_mod_5_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_5_par_mod_module_mod_sram_w_data(pcie_io_mod_proc_mod_5_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_5_mat_mod_en(pcie_io_mod_proc_mod_5_mat_mod_en),
    .io_mod_proc_mod_5_mat_mod_config_id(pcie_io_mod_proc_mod_5_mat_mod_config_id),
    .io_mod_proc_mod_5_mat_mod_key_mod_header_id(pcie_io_mod_proc_mod_5_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_5_mat_mod_key_mod_internal_offset(pcie_io_mod_proc_mod_5_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_5_mat_mod_key_mod_key_length(pcie_io_mod_proc_mod_5_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_5_mat_mod_table_mod_table_width(pcie_io_mod_proc_mod_5_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_5_mat_mod_table_mod_table_depth(pcie_io_mod_proc_mod_5_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_5_act_mod_en_0(pcie_io_mod_proc_mod_5_act_mod_en_0),
    .io_mod_proc_mod_5_act_mod_en_1(pcie_io_mod_proc_mod_5_act_mod_en_1),
    .io_mod_proc_mod_5_act_mod_addr(pcie_io_mod_proc_mod_5_act_mod_addr),
    .io_mod_proc_mod_5_act_mod_data_0(pcie_io_mod_proc_mod_5_act_mod_data_0),
    .io_mod_proc_mod_5_act_mod_data_1(pcie_io_mod_proc_mod_5_act_mod_data_1),
    .io_mod_proc_mod_6_par_mod_en(pcie_io_mod_proc_mod_6_par_mod_en),
    .io_mod_proc_mod_6_par_mod_last_mau_id_mod(pcie_io_mod_proc_mod_6_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_6_par_mod_last_mau_id(pcie_io_mod_proc_mod_6_par_mod_last_mau_id),
    .io_mod_proc_mod_6_par_mod_cs(pcie_io_mod_proc_mod_6_par_mod_cs),
    .io_mod_proc_mod_6_par_mod_module_mod_state_id_mod(pcie_io_mod_proc_mod_6_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_6_par_mod_module_mod_state_id(pcie_io_mod_proc_mod_6_par_mod_module_mod_state_id),
    .io_mod_proc_mod_6_par_mod_module_mod_sram_w_cs(pcie_io_mod_proc_mod_6_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_6_par_mod_module_mod_sram_w_addr(pcie_io_mod_proc_mod_6_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_6_par_mod_module_mod_sram_w_data(pcie_io_mod_proc_mod_6_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_6_mat_mod_en(pcie_io_mod_proc_mod_6_mat_mod_en),
    .io_mod_proc_mod_6_mat_mod_config_id(pcie_io_mod_proc_mod_6_mat_mod_config_id),
    .io_mod_proc_mod_6_mat_mod_key_mod_header_id(pcie_io_mod_proc_mod_6_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_6_mat_mod_key_mod_internal_offset(pcie_io_mod_proc_mod_6_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_6_mat_mod_key_mod_key_length(pcie_io_mod_proc_mod_6_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_6_mat_mod_table_mod_table_width(pcie_io_mod_proc_mod_6_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_6_mat_mod_table_mod_table_depth(pcie_io_mod_proc_mod_6_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_6_act_mod_en_0(pcie_io_mod_proc_mod_6_act_mod_en_0),
    .io_mod_proc_mod_6_act_mod_en_1(pcie_io_mod_proc_mod_6_act_mod_en_1),
    .io_mod_proc_mod_6_act_mod_addr(pcie_io_mod_proc_mod_6_act_mod_addr),
    .io_mod_proc_mod_6_act_mod_data_0(pcie_io_mod_proc_mod_6_act_mod_data_0),
    .io_mod_proc_mod_6_act_mod_data_1(pcie_io_mod_proc_mod_6_act_mod_data_1),
    .io_mod_proc_mod_7_par_mod_en(pcie_io_mod_proc_mod_7_par_mod_en),
    .io_mod_proc_mod_7_par_mod_last_mau_id_mod(pcie_io_mod_proc_mod_7_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_7_par_mod_last_mau_id(pcie_io_mod_proc_mod_7_par_mod_last_mau_id),
    .io_mod_proc_mod_7_par_mod_cs(pcie_io_mod_proc_mod_7_par_mod_cs),
    .io_mod_proc_mod_7_par_mod_module_mod_state_id_mod(pcie_io_mod_proc_mod_7_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_7_par_mod_module_mod_state_id(pcie_io_mod_proc_mod_7_par_mod_module_mod_state_id),
    .io_mod_proc_mod_7_par_mod_module_mod_sram_w_cs(pcie_io_mod_proc_mod_7_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_7_par_mod_module_mod_sram_w_addr(pcie_io_mod_proc_mod_7_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_7_par_mod_module_mod_sram_w_data(pcie_io_mod_proc_mod_7_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_7_mat_mod_en(pcie_io_mod_proc_mod_7_mat_mod_en),
    .io_mod_proc_mod_7_mat_mod_config_id(pcie_io_mod_proc_mod_7_mat_mod_config_id),
    .io_mod_proc_mod_7_mat_mod_key_mod_header_id(pcie_io_mod_proc_mod_7_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_7_mat_mod_key_mod_internal_offset(pcie_io_mod_proc_mod_7_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_7_mat_mod_key_mod_key_length(pcie_io_mod_proc_mod_7_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_7_mat_mod_table_mod_table_width(pcie_io_mod_proc_mod_7_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_7_mat_mod_table_mod_table_depth(pcie_io_mod_proc_mod_7_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_7_act_mod_en_0(pcie_io_mod_proc_mod_7_act_mod_en_0),
    .io_mod_proc_mod_7_act_mod_en_1(pcie_io_mod_proc_mod_7_act_mod_en_1),
    .io_mod_proc_mod_7_act_mod_addr(pcie_io_mod_proc_mod_7_act_mod_addr),
    .io_mod_proc_mod_7_act_mod_data_0(pcie_io_mod_proc_mod_7_act_mod_data_0),
    .io_mod_proc_mod_7_act_mod_data_1(pcie_io_mod_proc_mod_7_act_mod_data_1),
    .io_mod_proc_mod_8_par_mod_en(pcie_io_mod_proc_mod_8_par_mod_en),
    .io_mod_proc_mod_8_par_mod_last_mau_id_mod(pcie_io_mod_proc_mod_8_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_8_par_mod_last_mau_id(pcie_io_mod_proc_mod_8_par_mod_last_mau_id),
    .io_mod_proc_mod_8_par_mod_cs(pcie_io_mod_proc_mod_8_par_mod_cs),
    .io_mod_proc_mod_8_par_mod_module_mod_state_id_mod(pcie_io_mod_proc_mod_8_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_8_par_mod_module_mod_state_id(pcie_io_mod_proc_mod_8_par_mod_module_mod_state_id),
    .io_mod_proc_mod_8_par_mod_module_mod_sram_w_cs(pcie_io_mod_proc_mod_8_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_8_par_mod_module_mod_sram_w_addr(pcie_io_mod_proc_mod_8_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_8_par_mod_module_mod_sram_w_data(pcie_io_mod_proc_mod_8_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_8_mat_mod_en(pcie_io_mod_proc_mod_8_mat_mod_en),
    .io_mod_proc_mod_8_mat_mod_config_id(pcie_io_mod_proc_mod_8_mat_mod_config_id),
    .io_mod_proc_mod_8_mat_mod_key_mod_header_id(pcie_io_mod_proc_mod_8_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_8_mat_mod_key_mod_internal_offset(pcie_io_mod_proc_mod_8_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_8_mat_mod_key_mod_key_length(pcie_io_mod_proc_mod_8_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_8_mat_mod_table_mod_table_width(pcie_io_mod_proc_mod_8_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_8_mat_mod_table_mod_table_depth(pcie_io_mod_proc_mod_8_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_8_act_mod_en_0(pcie_io_mod_proc_mod_8_act_mod_en_0),
    .io_mod_proc_mod_8_act_mod_en_1(pcie_io_mod_proc_mod_8_act_mod_en_1),
    .io_mod_proc_mod_8_act_mod_addr(pcie_io_mod_proc_mod_8_act_mod_addr),
    .io_mod_proc_mod_8_act_mod_data_0(pcie_io_mod_proc_mod_8_act_mod_data_0),
    .io_mod_proc_mod_8_act_mod_data_1(pcie_io_mod_proc_mod_8_act_mod_data_1),
    .io_mod_proc_mod_9_par_mod_en(pcie_io_mod_proc_mod_9_par_mod_en),
    .io_mod_proc_mod_9_par_mod_last_mau_id_mod(pcie_io_mod_proc_mod_9_par_mod_last_mau_id_mod),
    .io_mod_proc_mod_9_par_mod_last_mau_id(pcie_io_mod_proc_mod_9_par_mod_last_mau_id),
    .io_mod_proc_mod_9_par_mod_cs(pcie_io_mod_proc_mod_9_par_mod_cs),
    .io_mod_proc_mod_9_par_mod_module_mod_state_id_mod(pcie_io_mod_proc_mod_9_par_mod_module_mod_state_id_mod),
    .io_mod_proc_mod_9_par_mod_module_mod_state_id(pcie_io_mod_proc_mod_9_par_mod_module_mod_state_id),
    .io_mod_proc_mod_9_par_mod_module_mod_sram_w_cs(pcie_io_mod_proc_mod_9_par_mod_module_mod_sram_w_cs),
    .io_mod_proc_mod_9_par_mod_module_mod_sram_w_addr(pcie_io_mod_proc_mod_9_par_mod_module_mod_sram_w_addr),
    .io_mod_proc_mod_9_par_mod_module_mod_sram_w_data(pcie_io_mod_proc_mod_9_par_mod_module_mod_sram_w_data),
    .io_mod_proc_mod_9_mat_mod_en(pcie_io_mod_proc_mod_9_mat_mod_en),
    .io_mod_proc_mod_9_mat_mod_config_id(pcie_io_mod_proc_mod_9_mat_mod_config_id),
    .io_mod_proc_mod_9_mat_mod_key_mod_header_id(pcie_io_mod_proc_mod_9_mat_mod_key_mod_header_id),
    .io_mod_proc_mod_9_mat_mod_key_mod_internal_offset(pcie_io_mod_proc_mod_9_mat_mod_key_mod_internal_offset),
    .io_mod_proc_mod_9_mat_mod_key_mod_key_length(pcie_io_mod_proc_mod_9_mat_mod_key_mod_key_length),
    .io_mod_proc_mod_9_mat_mod_table_mod_table_width(pcie_io_mod_proc_mod_9_mat_mod_table_mod_table_width),
    .io_mod_proc_mod_9_mat_mod_table_mod_table_depth(pcie_io_mod_proc_mod_9_mat_mod_table_mod_table_depth),
    .io_mod_proc_mod_9_act_mod_en_0(pcie_io_mod_proc_mod_9_act_mod_en_0),
    .io_mod_proc_mod_9_act_mod_en_1(pcie_io_mod_proc_mod_9_act_mod_en_1),
    .io_mod_proc_mod_9_act_mod_addr(pcie_io_mod_proc_mod_9_act_mod_addr),
    .io_mod_proc_mod_9_act_mod_data_0(pcie_io_mod_proc_mod_9_act_mod_data_0),
    .io_mod_proc_mod_9_act_mod_data_1(pcie_io_mod_proc_mod_9_act_mod_data_1),
    .io_mod_xbar_mod_en(pcie_io_mod_xbar_mod_en),
    .io_mod_xbar_mod_first_proc_id(pcie_io_mod_xbar_mod_first_proc_id),
    .io_mod_xbar_mod_last_proc_id(pcie_io_mod_xbar_mod_last_proc_id),
    .io_mod_xbar_mod_next_proc_id_0(pcie_io_mod_xbar_mod_next_proc_id_0),
    .io_mod_xbar_mod_next_proc_id_1(pcie_io_mod_xbar_mod_next_proc_id_1),
    .io_mod_xbar_mod_next_proc_id_2(pcie_io_mod_xbar_mod_next_proc_id_2),
    .io_mod_xbar_mod_next_proc_id_3(pcie_io_mod_xbar_mod_next_proc_id_3),
    .io_mod_xbar_mod_next_proc_id_4(pcie_io_mod_xbar_mod_next_proc_id_4),
    .io_mod_xbar_mod_next_proc_id_5(pcie_io_mod_xbar_mod_next_proc_id_5),
    .io_mod_xbar_mod_next_proc_id_6(pcie_io_mod_xbar_mod_next_proc_id_6),
    .io_mod_xbar_mod_next_proc_id_7(pcie_io_mod_xbar_mod_next_proc_id_7),
    .io_mod_xbar_mod_next_proc_id_8(pcie_io_mod_xbar_mod_next_proc_id_8),
    .io_mod_xbar_mod_next_proc_id_9(pcie_io_mod_xbar_mod_next_proc_id_9),
    .io_w_0_wcs(pcie_io_w_0_wcs),
    .io_w_0_w_en(pcie_io_w_0_w_en),
    .io_w_0_w_addr(pcie_io_w_0_w_addr),
    .io_w_0_w_data(pcie_io_w_0_w_data),
    .io_w_1_wcs(pcie_io_w_1_wcs),
    .io_w_1_w_en(pcie_io_w_1_w_en),
    .io_w_1_w_addr(pcie_io_w_1_w_addr),
    .io_w_1_w_data(pcie_io_w_1_w_data),
    .io_w_2_wcs(pcie_io_w_2_wcs),
    .io_w_2_w_en(pcie_io_w_2_w_en),
    .io_w_2_w_addr(pcie_io_w_2_w_addr),
    .io_w_2_w_data(pcie_io_w_2_w_data),
    .io_w_3_wcs(pcie_io_w_3_wcs),
    .io_w_3_w_en(pcie_io_w_3_w_en),
    .io_w_3_w_addr(pcie_io_w_3_w_addr),
    .io_w_3_w_data(pcie_io_w_3_w_data),
    .io_w_4_wcs(pcie_io_w_4_wcs),
    .io_w_4_w_en(pcie_io_w_4_w_en),
    .io_w_4_w_addr(pcie_io_w_4_w_addr),
    .io_w_4_w_data(pcie_io_w_4_w_data)
  );
  OutPort outp ( // @[ipsa_pcie.scala 15:22]
    .clock(outp_clock),
    .io_phv_in_data_32(outp_io_phv_in_data_32),
    .io_phv_in_data_33(outp_io_phv_in_data_33),
    .io_phv_in_data_34(outp_io_phv_in_data_34),
    .io_phv_in_data_35(outp_io_phv_in_data_35),
    .io_phv_in_data_36(outp_io_phv_in_data_36),
    .io_phv_in_data_37(outp_io_phv_in_data_37),
    .io_phv_in_data_38(outp_io_phv_in_data_38),
    .io_phv_in_data_39(outp_io_phv_in_data_39),
    .io_phv_in_data_40(outp_io_phv_in_data_40),
    .io_phv_in_data_41(outp_io_phv_in_data_41),
    .io_phv_in_data_42(outp_io_phv_in_data_42),
    .io_phv_in_data_43(outp_io_phv_in_data_43),
    .io_phv_in_data_44(outp_io_phv_in_data_44),
    .io_phv_in_data_45(outp_io_phv_in_data_45),
    .io_phv_in_data_46(outp_io_phv_in_data_46),
    .io_phv_in_data_47(outp_io_phv_in_data_47),
    .io_phv_in_data_48(outp_io_phv_in_data_48),
    .io_phv_in_data_49(outp_io_phv_in_data_49),
    .io_phv_in_data_50(outp_io_phv_in_data_50),
    .io_phv_in_data_51(outp_io_phv_in_data_51),
    .io_phv_in_data_52(outp_io_phv_in_data_52),
    .io_phv_in_data_53(outp_io_phv_in_data_53),
    .io_phv_in_data_54(outp_io_phv_in_data_54),
    .io_phv_in_data_55(outp_io_phv_in_data_55),
    .io_phv_in_data_56(outp_io_phv_in_data_56),
    .io_phv_in_data_57(outp_io_phv_in_data_57),
    .io_phv_in_data_58(outp_io_phv_in_data_58),
    .io_phv_in_data_59(outp_io_phv_in_data_59),
    .io_phv_in_data_60(outp_io_phv_in_data_60),
    .io_phv_in_data_61(outp_io_phv_in_data_61),
    .io_phv_in_data_62(outp_io_phv_in_data_62),
    .io_phv_in_data_63(outp_io_phv_in_data_63),
    .io_phv_in_data_64(outp_io_phv_in_data_64),
    .io_phv_in_data_65(outp_io_phv_in_data_65),
    .io_phv_in_data_66(outp_io_phv_in_data_66),
    .io_phv_in_data_67(outp_io_phv_in_data_67),
    .io_phv_in_data_68(outp_io_phv_in_data_68),
    .io_phv_in_data_69(outp_io_phv_in_data_69),
    .io_phv_in_data_70(outp_io_phv_in_data_70),
    .io_phv_in_data_71(outp_io_phv_in_data_71),
    .io_phv_in_data_72(outp_io_phv_in_data_72),
    .io_phv_in_data_73(outp_io_phv_in_data_73),
    .io_phv_in_data_74(outp_io_phv_in_data_74),
    .io_phv_in_data_75(outp_io_phv_in_data_75),
    .io_phv_in_data_76(outp_io_phv_in_data_76),
    .io_phv_in_data_77(outp_io_phv_in_data_77),
    .io_phv_in_data_78(outp_io_phv_in_data_78),
    .io_phv_in_data_79(outp_io_phv_in_data_79),
    .io_phv_in_data_80(outp_io_phv_in_data_80),
    .io_phv_in_data_81(outp_io_phv_in_data_81),
    .io_phv_in_data_82(outp_io_phv_in_data_82),
    .io_phv_in_data_83(outp_io_phv_in_data_83),
    .io_phv_in_data_84(outp_io_phv_in_data_84),
    .io_phv_in_data_85(outp_io_phv_in_data_85),
    .io_phv_in_data_86(outp_io_phv_in_data_86),
    .io_phv_in_data_87(outp_io_phv_in_data_87),
    .io_phv_in_data_88(outp_io_phv_in_data_88),
    .io_phv_in_data_89(outp_io_phv_in_data_89),
    .io_phv_in_data_90(outp_io_phv_in_data_90),
    .io_phv_in_data_91(outp_io_phv_in_data_91),
    .io_phv_in_data_92(outp_io_phv_in_data_92),
    .io_phv_in_data_93(outp_io_phv_in_data_93),
    .io_phv_in_data_94(outp_io_phv_in_data_94),
    .io_phv_in_data_95(outp_io_phv_in_data_95),
    .io_phv_in_data_96(outp_io_phv_in_data_96),
    .io_phv_in_data_97(outp_io_phv_in_data_97),
    .io_phv_in_data_98(outp_io_phv_in_data_98),
    .io_phv_in_data_99(outp_io_phv_in_data_99),
    .io_phv_in_data_100(outp_io_phv_in_data_100),
    .io_phv_in_data_101(outp_io_phv_in_data_101),
    .io_phv_in_data_102(outp_io_phv_in_data_102),
    .io_phv_in_data_103(outp_io_phv_in_data_103),
    .io_phv_in_data_104(outp_io_phv_in_data_104),
    .io_phv_in_data_105(outp_io_phv_in_data_105),
    .io_phv_in_data_106(outp_io_phv_in_data_106),
    .io_phv_in_data_107(outp_io_phv_in_data_107),
    .io_phv_in_data_108(outp_io_phv_in_data_108),
    .io_phv_in_data_109(outp_io_phv_in_data_109),
    .io_phv_in_data_110(outp_io_phv_in_data_110),
    .io_phv_in_data_111(outp_io_phv_in_data_111),
    .io_phv_in_data_112(outp_io_phv_in_data_112),
    .io_phv_in_data_113(outp_io_phv_in_data_113),
    .io_phv_in_data_114(outp_io_phv_in_data_114),
    .io_phv_in_data_115(outp_io_phv_in_data_115),
    .io_phv_in_data_116(outp_io_phv_in_data_116),
    .io_phv_in_data_117(outp_io_phv_in_data_117),
    .io_phv_in_data_118(outp_io_phv_in_data_118),
    .io_phv_in_data_119(outp_io_phv_in_data_119),
    .io_phv_in_data_120(outp_io_phv_in_data_120),
    .io_phv_in_data_121(outp_io_phv_in_data_121),
    .io_phv_in_data_122(outp_io_phv_in_data_122),
    .io_phv_in_data_123(outp_io_phv_in_data_123),
    .io_phv_in_data_124(outp_io_phv_in_data_124),
    .io_phv_in_data_125(outp_io_phv_in_data_125),
    .io_phv_in_data_126(outp_io_phv_in_data_126),
    .io_phv_in_data_127(outp_io_phv_in_data_127),
    .io_phv_in_data_128(outp_io_phv_in_data_128),
    .io_phv_in_data_129(outp_io_phv_in_data_129),
    .io_phv_in_data_130(outp_io_phv_in_data_130),
    .io_phv_in_data_131(outp_io_phv_in_data_131),
    .io_phv_in_data_132(outp_io_phv_in_data_132),
    .io_phv_in_data_133(outp_io_phv_in_data_133),
    .io_phv_in_data_134(outp_io_phv_in_data_134),
    .io_phv_in_data_135(outp_io_phv_in_data_135),
    .io_phv_in_data_136(outp_io_phv_in_data_136),
    .io_phv_in_data_137(outp_io_phv_in_data_137),
    .io_phv_in_data_138(outp_io_phv_in_data_138),
    .io_phv_in_data_139(outp_io_phv_in_data_139),
    .io_phv_in_data_140(outp_io_phv_in_data_140),
    .io_phv_in_data_141(outp_io_phv_in_data_141),
    .io_phv_in_data_142(outp_io_phv_in_data_142),
    .io_phv_in_data_143(outp_io_phv_in_data_143),
    .io_phv_in_data_144(outp_io_phv_in_data_144),
    .io_phv_in_data_145(outp_io_phv_in_data_145),
    .io_phv_in_data_146(outp_io_phv_in_data_146),
    .io_phv_in_data_147(outp_io_phv_in_data_147),
    .io_phv_in_data_148(outp_io_phv_in_data_148),
    .io_phv_in_data_149(outp_io_phv_in_data_149),
    .io_phv_in_data_150(outp_io_phv_in_data_150),
    .io_phv_in_data_151(outp_io_phv_in_data_151),
    .io_phv_in_data_152(outp_io_phv_in_data_152),
    .io_phv_in_data_153(outp_io_phv_in_data_153),
    .io_phv_in_data_154(outp_io_phv_in_data_154),
    .io_phv_in_data_155(outp_io_phv_in_data_155),
    .io_phv_in_data_156(outp_io_phv_in_data_156),
    .io_phv_in_data_157(outp_io_phv_in_data_157),
    .io_phv_in_data_158(outp_io_phv_in_data_158),
    .io_phv_in_data_159(outp_io_phv_in_data_159),
    .io_pcie_o_cs(outp_io_pcie_o_cs),
    .io_pcie_o_r_en(outp_io_pcie_o_r_en),
    .io_pcie_o_r_addr(outp_io_pcie_o_r_addr),
    .io_pcie_o_r_data(outp_io_pcie_o_r_data)
  );
  InPort inp ( // @[ipsa_pcie.scala 16:22]
    .clock(inp_clock),
    .reset(inp_reset),
    .io_phv_out_data_0(inp_io_phv_out_data_0),
    .io_phv_out_data_1(inp_io_phv_out_data_1),
    .io_phv_out_data_2(inp_io_phv_out_data_2),
    .io_phv_out_data_3(inp_io_phv_out_data_3),
    .io_phv_out_data_4(inp_io_phv_out_data_4),
    .io_phv_out_data_5(inp_io_phv_out_data_5),
    .io_phv_out_data_6(inp_io_phv_out_data_6),
    .io_phv_out_data_7(inp_io_phv_out_data_7),
    .io_phv_out_data_8(inp_io_phv_out_data_8),
    .io_phv_out_data_9(inp_io_phv_out_data_9),
    .io_phv_out_data_10(inp_io_phv_out_data_10),
    .io_phv_out_data_11(inp_io_phv_out_data_11),
    .io_phv_out_data_12(inp_io_phv_out_data_12),
    .io_phv_out_data_13(inp_io_phv_out_data_13),
    .io_phv_out_data_14(inp_io_phv_out_data_14),
    .io_phv_out_data_15(inp_io_phv_out_data_15),
    .io_phv_out_data_16(inp_io_phv_out_data_16),
    .io_phv_out_data_17(inp_io_phv_out_data_17),
    .io_phv_out_data_18(inp_io_phv_out_data_18),
    .io_phv_out_data_19(inp_io_phv_out_data_19),
    .io_phv_out_data_20(inp_io_phv_out_data_20),
    .io_phv_out_data_21(inp_io_phv_out_data_21),
    .io_phv_out_data_22(inp_io_phv_out_data_22),
    .io_phv_out_data_23(inp_io_phv_out_data_23),
    .io_phv_out_data_24(inp_io_phv_out_data_24),
    .io_phv_out_data_25(inp_io_phv_out_data_25),
    .io_phv_out_data_26(inp_io_phv_out_data_26),
    .io_phv_out_data_27(inp_io_phv_out_data_27),
    .io_phv_out_data_28(inp_io_phv_out_data_28),
    .io_phv_out_data_29(inp_io_phv_out_data_29),
    .io_phv_out_data_30(inp_io_phv_out_data_30),
    .io_phv_out_data_31(inp_io_phv_out_data_31),
    .io_phv_out_data_32(inp_io_phv_out_data_32),
    .io_phv_out_data_33(inp_io_phv_out_data_33),
    .io_phv_out_data_34(inp_io_phv_out_data_34),
    .io_phv_out_data_35(inp_io_phv_out_data_35),
    .io_phv_out_data_36(inp_io_phv_out_data_36),
    .io_phv_out_data_37(inp_io_phv_out_data_37),
    .io_phv_out_data_38(inp_io_phv_out_data_38),
    .io_phv_out_data_39(inp_io_phv_out_data_39),
    .io_phv_out_data_40(inp_io_phv_out_data_40),
    .io_phv_out_data_41(inp_io_phv_out_data_41),
    .io_phv_out_data_42(inp_io_phv_out_data_42),
    .io_phv_out_data_43(inp_io_phv_out_data_43),
    .io_phv_out_data_44(inp_io_phv_out_data_44),
    .io_phv_out_data_45(inp_io_phv_out_data_45),
    .io_phv_out_data_46(inp_io_phv_out_data_46),
    .io_phv_out_data_47(inp_io_phv_out_data_47),
    .io_phv_out_data_48(inp_io_phv_out_data_48),
    .io_phv_out_data_49(inp_io_phv_out_data_49),
    .io_phv_out_data_50(inp_io_phv_out_data_50),
    .io_phv_out_data_51(inp_io_phv_out_data_51),
    .io_phv_out_data_52(inp_io_phv_out_data_52),
    .io_phv_out_data_53(inp_io_phv_out_data_53),
    .io_phv_out_data_54(inp_io_phv_out_data_54),
    .io_phv_out_data_55(inp_io_phv_out_data_55),
    .io_phv_out_data_56(inp_io_phv_out_data_56),
    .io_phv_out_data_57(inp_io_phv_out_data_57),
    .io_phv_out_data_58(inp_io_phv_out_data_58),
    .io_phv_out_data_59(inp_io_phv_out_data_59),
    .io_phv_out_data_60(inp_io_phv_out_data_60),
    .io_phv_out_data_61(inp_io_phv_out_data_61),
    .io_phv_out_data_62(inp_io_phv_out_data_62),
    .io_phv_out_data_63(inp_io_phv_out_data_63),
    .io_phv_out_data_64(inp_io_phv_out_data_64),
    .io_phv_out_data_65(inp_io_phv_out_data_65),
    .io_phv_out_data_66(inp_io_phv_out_data_66),
    .io_phv_out_data_67(inp_io_phv_out_data_67),
    .io_phv_out_data_68(inp_io_phv_out_data_68),
    .io_phv_out_data_69(inp_io_phv_out_data_69),
    .io_phv_out_data_70(inp_io_phv_out_data_70),
    .io_phv_out_data_71(inp_io_phv_out_data_71),
    .io_phv_out_data_72(inp_io_phv_out_data_72),
    .io_phv_out_data_73(inp_io_phv_out_data_73),
    .io_phv_out_data_74(inp_io_phv_out_data_74),
    .io_phv_out_data_75(inp_io_phv_out_data_75),
    .io_phv_out_data_76(inp_io_phv_out_data_76),
    .io_phv_out_data_77(inp_io_phv_out_data_77),
    .io_phv_out_data_78(inp_io_phv_out_data_78),
    .io_phv_out_data_79(inp_io_phv_out_data_79),
    .io_phv_out_data_80(inp_io_phv_out_data_80),
    .io_phv_out_data_81(inp_io_phv_out_data_81),
    .io_phv_out_data_82(inp_io_phv_out_data_82),
    .io_phv_out_data_83(inp_io_phv_out_data_83),
    .io_phv_out_data_84(inp_io_phv_out_data_84),
    .io_phv_out_data_85(inp_io_phv_out_data_85),
    .io_phv_out_data_86(inp_io_phv_out_data_86),
    .io_phv_out_data_87(inp_io_phv_out_data_87),
    .io_phv_out_data_88(inp_io_phv_out_data_88),
    .io_phv_out_data_89(inp_io_phv_out_data_89),
    .io_phv_out_data_90(inp_io_phv_out_data_90),
    .io_phv_out_data_91(inp_io_phv_out_data_91),
    .io_phv_out_data_92(inp_io_phv_out_data_92),
    .io_phv_out_data_93(inp_io_phv_out_data_93),
    .io_phv_out_data_94(inp_io_phv_out_data_94),
    .io_phv_out_data_95(inp_io_phv_out_data_95),
    .io_phv_out_data_96(inp_io_phv_out_data_96),
    .io_phv_out_data_97(inp_io_phv_out_data_97),
    .io_phv_out_data_98(inp_io_phv_out_data_98),
    .io_phv_out_data_99(inp_io_phv_out_data_99),
    .io_phv_out_data_100(inp_io_phv_out_data_100),
    .io_phv_out_data_101(inp_io_phv_out_data_101),
    .io_phv_out_data_102(inp_io_phv_out_data_102),
    .io_phv_out_data_103(inp_io_phv_out_data_103),
    .io_phv_out_data_104(inp_io_phv_out_data_104),
    .io_phv_out_data_105(inp_io_phv_out_data_105),
    .io_phv_out_data_106(inp_io_phv_out_data_106),
    .io_phv_out_data_107(inp_io_phv_out_data_107),
    .io_phv_out_data_108(inp_io_phv_out_data_108),
    .io_phv_out_data_109(inp_io_phv_out_data_109),
    .io_phv_out_data_110(inp_io_phv_out_data_110),
    .io_phv_out_data_111(inp_io_phv_out_data_111),
    .io_phv_out_data_112(inp_io_phv_out_data_112),
    .io_phv_out_data_113(inp_io_phv_out_data_113),
    .io_phv_out_data_114(inp_io_phv_out_data_114),
    .io_phv_out_data_115(inp_io_phv_out_data_115),
    .io_phv_out_data_116(inp_io_phv_out_data_116),
    .io_phv_out_data_117(inp_io_phv_out_data_117),
    .io_phv_out_data_118(inp_io_phv_out_data_118),
    .io_phv_out_data_119(inp_io_phv_out_data_119),
    .io_phv_out_data_120(inp_io_phv_out_data_120),
    .io_phv_out_data_121(inp_io_phv_out_data_121),
    .io_phv_out_data_122(inp_io_phv_out_data_122),
    .io_phv_out_data_123(inp_io_phv_out_data_123),
    .io_phv_out_data_124(inp_io_phv_out_data_124),
    .io_phv_out_data_125(inp_io_phv_out_data_125),
    .io_phv_out_data_126(inp_io_phv_out_data_126),
    .io_phv_out_data_127(inp_io_phv_out_data_127)
  );
  assign io_pcie_r_data = pcie_io_pcie_r_data; // @[ipsa_pcie.scala 20:20]
  assign ipsa_clock = clock;
  assign ipsa_io_pipe_phv_in_data_0 = inp_io_phv_out_data_0; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_1 = inp_io_phv_out_data_1; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_2 = inp_io_phv_out_data_2; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_3 = inp_io_phv_out_data_3; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_4 = inp_io_phv_out_data_4; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_5 = inp_io_phv_out_data_5; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_6 = inp_io_phv_out_data_6; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_7 = inp_io_phv_out_data_7; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_8 = inp_io_phv_out_data_8; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_9 = inp_io_phv_out_data_9; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_10 = inp_io_phv_out_data_10; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_11 = inp_io_phv_out_data_11; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_12 = inp_io_phv_out_data_12; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_13 = inp_io_phv_out_data_13; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_14 = inp_io_phv_out_data_14; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_15 = inp_io_phv_out_data_15; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_16 = inp_io_phv_out_data_16; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_17 = inp_io_phv_out_data_17; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_18 = inp_io_phv_out_data_18; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_19 = inp_io_phv_out_data_19; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_20 = inp_io_phv_out_data_20; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_21 = inp_io_phv_out_data_21; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_22 = inp_io_phv_out_data_22; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_23 = inp_io_phv_out_data_23; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_24 = inp_io_phv_out_data_24; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_25 = inp_io_phv_out_data_25; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_26 = inp_io_phv_out_data_26; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_27 = inp_io_phv_out_data_27; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_28 = inp_io_phv_out_data_28; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_29 = inp_io_phv_out_data_29; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_30 = inp_io_phv_out_data_30; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_31 = inp_io_phv_out_data_31; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_32 = inp_io_phv_out_data_32; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_33 = inp_io_phv_out_data_33; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_34 = inp_io_phv_out_data_34; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_35 = inp_io_phv_out_data_35; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_36 = inp_io_phv_out_data_36; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_37 = inp_io_phv_out_data_37; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_38 = inp_io_phv_out_data_38; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_39 = inp_io_phv_out_data_39; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_40 = inp_io_phv_out_data_40; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_41 = inp_io_phv_out_data_41; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_42 = inp_io_phv_out_data_42; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_43 = inp_io_phv_out_data_43; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_44 = inp_io_phv_out_data_44; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_45 = inp_io_phv_out_data_45; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_46 = inp_io_phv_out_data_46; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_47 = inp_io_phv_out_data_47; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_48 = inp_io_phv_out_data_48; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_49 = inp_io_phv_out_data_49; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_50 = inp_io_phv_out_data_50; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_51 = inp_io_phv_out_data_51; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_52 = inp_io_phv_out_data_52; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_53 = inp_io_phv_out_data_53; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_54 = inp_io_phv_out_data_54; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_55 = inp_io_phv_out_data_55; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_56 = inp_io_phv_out_data_56; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_57 = inp_io_phv_out_data_57; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_58 = inp_io_phv_out_data_58; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_59 = inp_io_phv_out_data_59; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_60 = inp_io_phv_out_data_60; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_61 = inp_io_phv_out_data_61; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_62 = inp_io_phv_out_data_62; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_63 = inp_io_phv_out_data_63; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_64 = inp_io_phv_out_data_64; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_65 = inp_io_phv_out_data_65; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_66 = inp_io_phv_out_data_66; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_67 = inp_io_phv_out_data_67; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_68 = inp_io_phv_out_data_68; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_69 = inp_io_phv_out_data_69; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_70 = inp_io_phv_out_data_70; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_71 = inp_io_phv_out_data_71; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_72 = inp_io_phv_out_data_72; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_73 = inp_io_phv_out_data_73; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_74 = inp_io_phv_out_data_74; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_75 = inp_io_phv_out_data_75; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_76 = inp_io_phv_out_data_76; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_77 = inp_io_phv_out_data_77; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_78 = inp_io_phv_out_data_78; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_79 = inp_io_phv_out_data_79; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_80 = inp_io_phv_out_data_80; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_81 = inp_io_phv_out_data_81; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_82 = inp_io_phv_out_data_82; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_83 = inp_io_phv_out_data_83; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_84 = inp_io_phv_out_data_84; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_85 = inp_io_phv_out_data_85; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_86 = inp_io_phv_out_data_86; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_87 = inp_io_phv_out_data_87; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_88 = inp_io_phv_out_data_88; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_89 = inp_io_phv_out_data_89; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_90 = inp_io_phv_out_data_90; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_91 = inp_io_phv_out_data_91; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_92 = inp_io_phv_out_data_92; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_93 = inp_io_phv_out_data_93; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_94 = inp_io_phv_out_data_94; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_95 = inp_io_phv_out_data_95; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_96 = inp_io_phv_out_data_96; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_97 = inp_io_phv_out_data_97; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_98 = inp_io_phv_out_data_98; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_99 = inp_io_phv_out_data_99; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_100 = inp_io_phv_out_data_100; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_101 = inp_io_phv_out_data_101; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_102 = inp_io_phv_out_data_102; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_103 = inp_io_phv_out_data_103; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_104 = inp_io_phv_out_data_104; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_105 = inp_io_phv_out_data_105; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_106 = inp_io_phv_out_data_106; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_107 = inp_io_phv_out_data_107; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_108 = inp_io_phv_out_data_108; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_109 = inp_io_phv_out_data_109; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_110 = inp_io_phv_out_data_110; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_111 = inp_io_phv_out_data_111; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_112 = inp_io_phv_out_data_112; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_113 = inp_io_phv_out_data_113; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_114 = inp_io_phv_out_data_114; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_115 = inp_io_phv_out_data_115; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_116 = inp_io_phv_out_data_116; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_117 = inp_io_phv_out_data_117; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_118 = inp_io_phv_out_data_118; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_119 = inp_io_phv_out_data_119; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_120 = inp_io_phv_out_data_120; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_121 = inp_io_phv_out_data_121; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_122 = inp_io_phv_out_data_122; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_123 = inp_io_phv_out_data_123; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_124 = inp_io_phv_out_data_124; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_125 = inp_io_phv_out_data_125; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_126 = inp_io_phv_out_data_126; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_pipe_phv_in_data_127 = inp_io_phv_out_data_127; // @[ipsa_pcie.scala 18:26]
  assign ipsa_io_mod_proc_mod_0_par_mod_en = pcie_io_mod_proc_mod_0_par_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_par_mod_last_mau_id_mod = pcie_io_mod_proc_mod_0_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_par_mod_last_mau_id = pcie_io_mod_proc_mod_0_par_mod_last_mau_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_par_mod_cs = pcie_io_mod_proc_mod_0_par_mod_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_par_mod_module_mod_state_id_mod = pcie_io_mod_proc_mod_0_par_mod_module_mod_state_id_mod
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_par_mod_module_mod_state_id = pcie_io_mod_proc_mod_0_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_par_mod_module_mod_sram_w_cs = pcie_io_mod_proc_mod_0_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_par_mod_module_mod_sram_w_addr = pcie_io_mod_proc_mod_0_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_par_mod_module_mod_sram_w_data = pcie_io_mod_proc_mod_0_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_mat_mod_en = pcie_io_mod_proc_mod_0_mat_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_mat_mod_config_id = pcie_io_mod_proc_mod_0_mat_mod_config_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_mat_mod_key_mod_header_id = pcie_io_mod_proc_mod_0_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_mat_mod_key_mod_internal_offset = pcie_io_mod_proc_mod_0_mat_mod_key_mod_internal_offset
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_mat_mod_key_mod_key_length = pcie_io_mod_proc_mod_0_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_mat_mod_table_mod_table_width = pcie_io_mod_proc_mod_0_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_mat_mod_table_mod_table_depth = pcie_io_mod_proc_mod_0_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_act_mod_en_0 = pcie_io_mod_proc_mod_0_act_mod_en_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_act_mod_en_1 = pcie_io_mod_proc_mod_0_act_mod_en_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_act_mod_addr = pcie_io_mod_proc_mod_0_act_mod_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_act_mod_data_0 = pcie_io_mod_proc_mod_0_act_mod_data_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_0_act_mod_data_1 = pcie_io_mod_proc_mod_0_act_mod_data_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_par_mod_en = pcie_io_mod_proc_mod_1_par_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_par_mod_last_mau_id_mod = pcie_io_mod_proc_mod_1_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_par_mod_last_mau_id = pcie_io_mod_proc_mod_1_par_mod_last_mau_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_par_mod_cs = pcie_io_mod_proc_mod_1_par_mod_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_par_mod_module_mod_state_id_mod = pcie_io_mod_proc_mod_1_par_mod_module_mod_state_id_mod
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_par_mod_module_mod_state_id = pcie_io_mod_proc_mod_1_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_par_mod_module_mod_sram_w_cs = pcie_io_mod_proc_mod_1_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_par_mod_module_mod_sram_w_addr = pcie_io_mod_proc_mod_1_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_par_mod_module_mod_sram_w_data = pcie_io_mod_proc_mod_1_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_mat_mod_en = pcie_io_mod_proc_mod_1_mat_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_mat_mod_config_id = pcie_io_mod_proc_mod_1_mat_mod_config_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_mat_mod_key_mod_header_id = pcie_io_mod_proc_mod_1_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_mat_mod_key_mod_internal_offset = pcie_io_mod_proc_mod_1_mat_mod_key_mod_internal_offset
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_mat_mod_key_mod_key_length = pcie_io_mod_proc_mod_1_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_mat_mod_table_mod_table_width = pcie_io_mod_proc_mod_1_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_mat_mod_table_mod_table_depth = pcie_io_mod_proc_mod_1_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_act_mod_en_0 = pcie_io_mod_proc_mod_1_act_mod_en_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_act_mod_en_1 = pcie_io_mod_proc_mod_1_act_mod_en_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_act_mod_addr = pcie_io_mod_proc_mod_1_act_mod_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_act_mod_data_0 = pcie_io_mod_proc_mod_1_act_mod_data_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_1_act_mod_data_1 = pcie_io_mod_proc_mod_1_act_mod_data_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_par_mod_en = pcie_io_mod_proc_mod_2_par_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_par_mod_last_mau_id_mod = pcie_io_mod_proc_mod_2_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_par_mod_last_mau_id = pcie_io_mod_proc_mod_2_par_mod_last_mau_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_par_mod_cs = pcie_io_mod_proc_mod_2_par_mod_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_par_mod_module_mod_state_id_mod = pcie_io_mod_proc_mod_2_par_mod_module_mod_state_id_mod
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_par_mod_module_mod_state_id = pcie_io_mod_proc_mod_2_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_par_mod_module_mod_sram_w_cs = pcie_io_mod_proc_mod_2_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_par_mod_module_mod_sram_w_addr = pcie_io_mod_proc_mod_2_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_par_mod_module_mod_sram_w_data = pcie_io_mod_proc_mod_2_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_mat_mod_en = pcie_io_mod_proc_mod_2_mat_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_mat_mod_config_id = pcie_io_mod_proc_mod_2_mat_mod_config_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_mat_mod_key_mod_header_id = pcie_io_mod_proc_mod_2_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_mat_mod_key_mod_internal_offset = pcie_io_mod_proc_mod_2_mat_mod_key_mod_internal_offset
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_mat_mod_key_mod_key_length = pcie_io_mod_proc_mod_2_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_mat_mod_table_mod_table_width = pcie_io_mod_proc_mod_2_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_mat_mod_table_mod_table_depth = pcie_io_mod_proc_mod_2_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_act_mod_en_0 = pcie_io_mod_proc_mod_2_act_mod_en_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_act_mod_en_1 = pcie_io_mod_proc_mod_2_act_mod_en_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_act_mod_addr = pcie_io_mod_proc_mod_2_act_mod_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_act_mod_data_0 = pcie_io_mod_proc_mod_2_act_mod_data_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_2_act_mod_data_1 = pcie_io_mod_proc_mod_2_act_mod_data_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_par_mod_en = pcie_io_mod_proc_mod_3_par_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_par_mod_last_mau_id_mod = pcie_io_mod_proc_mod_3_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_par_mod_last_mau_id = pcie_io_mod_proc_mod_3_par_mod_last_mau_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_par_mod_cs = pcie_io_mod_proc_mod_3_par_mod_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_par_mod_module_mod_state_id_mod = pcie_io_mod_proc_mod_3_par_mod_module_mod_state_id_mod
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_par_mod_module_mod_state_id = pcie_io_mod_proc_mod_3_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_par_mod_module_mod_sram_w_cs = pcie_io_mod_proc_mod_3_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_par_mod_module_mod_sram_w_addr = pcie_io_mod_proc_mod_3_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_par_mod_module_mod_sram_w_data = pcie_io_mod_proc_mod_3_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_mat_mod_en = pcie_io_mod_proc_mod_3_mat_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_mat_mod_config_id = pcie_io_mod_proc_mod_3_mat_mod_config_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_mat_mod_key_mod_header_id = pcie_io_mod_proc_mod_3_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_mat_mod_key_mod_internal_offset = pcie_io_mod_proc_mod_3_mat_mod_key_mod_internal_offset
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_mat_mod_key_mod_key_length = pcie_io_mod_proc_mod_3_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_mat_mod_table_mod_table_width = pcie_io_mod_proc_mod_3_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_mat_mod_table_mod_table_depth = pcie_io_mod_proc_mod_3_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_act_mod_en_0 = pcie_io_mod_proc_mod_3_act_mod_en_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_act_mod_en_1 = pcie_io_mod_proc_mod_3_act_mod_en_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_act_mod_addr = pcie_io_mod_proc_mod_3_act_mod_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_act_mod_data_0 = pcie_io_mod_proc_mod_3_act_mod_data_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_3_act_mod_data_1 = pcie_io_mod_proc_mod_3_act_mod_data_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_par_mod_en = pcie_io_mod_proc_mod_4_par_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_par_mod_last_mau_id_mod = pcie_io_mod_proc_mod_4_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_par_mod_last_mau_id = pcie_io_mod_proc_mod_4_par_mod_last_mau_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_par_mod_cs = pcie_io_mod_proc_mod_4_par_mod_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_par_mod_module_mod_state_id_mod = pcie_io_mod_proc_mod_4_par_mod_module_mod_state_id_mod
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_par_mod_module_mod_state_id = pcie_io_mod_proc_mod_4_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_par_mod_module_mod_sram_w_cs = pcie_io_mod_proc_mod_4_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_par_mod_module_mod_sram_w_addr = pcie_io_mod_proc_mod_4_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_par_mod_module_mod_sram_w_data = pcie_io_mod_proc_mod_4_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_mat_mod_en = pcie_io_mod_proc_mod_4_mat_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_mat_mod_config_id = pcie_io_mod_proc_mod_4_mat_mod_config_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_mat_mod_key_mod_header_id = pcie_io_mod_proc_mod_4_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_mat_mod_key_mod_internal_offset = pcie_io_mod_proc_mod_4_mat_mod_key_mod_internal_offset
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_mat_mod_key_mod_key_length = pcie_io_mod_proc_mod_4_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_mat_mod_table_mod_table_width = pcie_io_mod_proc_mod_4_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_mat_mod_table_mod_table_depth = pcie_io_mod_proc_mod_4_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_act_mod_en_0 = pcie_io_mod_proc_mod_4_act_mod_en_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_act_mod_en_1 = pcie_io_mod_proc_mod_4_act_mod_en_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_act_mod_addr = pcie_io_mod_proc_mod_4_act_mod_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_act_mod_data_0 = pcie_io_mod_proc_mod_4_act_mod_data_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_4_act_mod_data_1 = pcie_io_mod_proc_mod_4_act_mod_data_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_par_mod_en = pcie_io_mod_proc_mod_5_par_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_par_mod_last_mau_id_mod = pcie_io_mod_proc_mod_5_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_par_mod_last_mau_id = pcie_io_mod_proc_mod_5_par_mod_last_mau_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_par_mod_cs = pcie_io_mod_proc_mod_5_par_mod_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_par_mod_module_mod_state_id_mod = pcie_io_mod_proc_mod_5_par_mod_module_mod_state_id_mod
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_par_mod_module_mod_state_id = pcie_io_mod_proc_mod_5_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_par_mod_module_mod_sram_w_cs = pcie_io_mod_proc_mod_5_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_par_mod_module_mod_sram_w_addr = pcie_io_mod_proc_mod_5_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_par_mod_module_mod_sram_w_data = pcie_io_mod_proc_mod_5_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_mat_mod_en = pcie_io_mod_proc_mod_5_mat_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_mat_mod_config_id = pcie_io_mod_proc_mod_5_mat_mod_config_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_mat_mod_key_mod_header_id = pcie_io_mod_proc_mod_5_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_mat_mod_key_mod_internal_offset = pcie_io_mod_proc_mod_5_mat_mod_key_mod_internal_offset
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_mat_mod_key_mod_key_length = pcie_io_mod_proc_mod_5_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_mat_mod_table_mod_table_width = pcie_io_mod_proc_mod_5_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_mat_mod_table_mod_table_depth = pcie_io_mod_proc_mod_5_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_act_mod_en_0 = pcie_io_mod_proc_mod_5_act_mod_en_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_act_mod_en_1 = pcie_io_mod_proc_mod_5_act_mod_en_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_act_mod_addr = pcie_io_mod_proc_mod_5_act_mod_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_act_mod_data_0 = pcie_io_mod_proc_mod_5_act_mod_data_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_5_act_mod_data_1 = pcie_io_mod_proc_mod_5_act_mod_data_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_par_mod_en = pcie_io_mod_proc_mod_6_par_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_par_mod_last_mau_id_mod = pcie_io_mod_proc_mod_6_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_par_mod_last_mau_id = pcie_io_mod_proc_mod_6_par_mod_last_mau_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_par_mod_cs = pcie_io_mod_proc_mod_6_par_mod_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_par_mod_module_mod_state_id_mod = pcie_io_mod_proc_mod_6_par_mod_module_mod_state_id_mod
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_par_mod_module_mod_state_id = pcie_io_mod_proc_mod_6_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_par_mod_module_mod_sram_w_cs = pcie_io_mod_proc_mod_6_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_par_mod_module_mod_sram_w_addr = pcie_io_mod_proc_mod_6_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_par_mod_module_mod_sram_w_data = pcie_io_mod_proc_mod_6_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_mat_mod_en = pcie_io_mod_proc_mod_6_mat_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_mat_mod_config_id = pcie_io_mod_proc_mod_6_mat_mod_config_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_mat_mod_key_mod_header_id = pcie_io_mod_proc_mod_6_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_mat_mod_key_mod_internal_offset = pcie_io_mod_proc_mod_6_mat_mod_key_mod_internal_offset
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_mat_mod_key_mod_key_length = pcie_io_mod_proc_mod_6_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_mat_mod_table_mod_table_width = pcie_io_mod_proc_mod_6_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_mat_mod_table_mod_table_depth = pcie_io_mod_proc_mod_6_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_act_mod_en_0 = pcie_io_mod_proc_mod_6_act_mod_en_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_act_mod_en_1 = pcie_io_mod_proc_mod_6_act_mod_en_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_act_mod_addr = pcie_io_mod_proc_mod_6_act_mod_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_act_mod_data_0 = pcie_io_mod_proc_mod_6_act_mod_data_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_6_act_mod_data_1 = pcie_io_mod_proc_mod_6_act_mod_data_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_par_mod_en = pcie_io_mod_proc_mod_7_par_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_par_mod_last_mau_id_mod = pcie_io_mod_proc_mod_7_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_par_mod_last_mau_id = pcie_io_mod_proc_mod_7_par_mod_last_mau_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_par_mod_cs = pcie_io_mod_proc_mod_7_par_mod_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_par_mod_module_mod_state_id_mod = pcie_io_mod_proc_mod_7_par_mod_module_mod_state_id_mod
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_par_mod_module_mod_state_id = pcie_io_mod_proc_mod_7_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_par_mod_module_mod_sram_w_cs = pcie_io_mod_proc_mod_7_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_par_mod_module_mod_sram_w_addr = pcie_io_mod_proc_mod_7_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_par_mod_module_mod_sram_w_data = pcie_io_mod_proc_mod_7_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_mat_mod_en = pcie_io_mod_proc_mod_7_mat_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_mat_mod_config_id = pcie_io_mod_proc_mod_7_mat_mod_config_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_mat_mod_key_mod_header_id = pcie_io_mod_proc_mod_7_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_mat_mod_key_mod_internal_offset = pcie_io_mod_proc_mod_7_mat_mod_key_mod_internal_offset
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_mat_mod_key_mod_key_length = pcie_io_mod_proc_mod_7_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_mat_mod_table_mod_table_width = pcie_io_mod_proc_mod_7_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_mat_mod_table_mod_table_depth = pcie_io_mod_proc_mod_7_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_act_mod_en_0 = pcie_io_mod_proc_mod_7_act_mod_en_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_act_mod_en_1 = pcie_io_mod_proc_mod_7_act_mod_en_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_act_mod_addr = pcie_io_mod_proc_mod_7_act_mod_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_act_mod_data_0 = pcie_io_mod_proc_mod_7_act_mod_data_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_7_act_mod_data_1 = pcie_io_mod_proc_mod_7_act_mod_data_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_par_mod_en = pcie_io_mod_proc_mod_8_par_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_par_mod_last_mau_id_mod = pcie_io_mod_proc_mod_8_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_par_mod_last_mau_id = pcie_io_mod_proc_mod_8_par_mod_last_mau_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_par_mod_cs = pcie_io_mod_proc_mod_8_par_mod_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_par_mod_module_mod_state_id_mod = pcie_io_mod_proc_mod_8_par_mod_module_mod_state_id_mod
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_par_mod_module_mod_state_id = pcie_io_mod_proc_mod_8_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_par_mod_module_mod_sram_w_cs = pcie_io_mod_proc_mod_8_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_par_mod_module_mod_sram_w_addr = pcie_io_mod_proc_mod_8_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_par_mod_module_mod_sram_w_data = pcie_io_mod_proc_mod_8_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_mat_mod_en = pcie_io_mod_proc_mod_8_mat_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_mat_mod_config_id = pcie_io_mod_proc_mod_8_mat_mod_config_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_mat_mod_key_mod_header_id = pcie_io_mod_proc_mod_8_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_mat_mod_key_mod_internal_offset = pcie_io_mod_proc_mod_8_mat_mod_key_mod_internal_offset
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_mat_mod_key_mod_key_length = pcie_io_mod_proc_mod_8_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_mat_mod_table_mod_table_width = pcie_io_mod_proc_mod_8_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_mat_mod_table_mod_table_depth = pcie_io_mod_proc_mod_8_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_act_mod_en_0 = pcie_io_mod_proc_mod_8_act_mod_en_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_act_mod_en_1 = pcie_io_mod_proc_mod_8_act_mod_en_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_act_mod_addr = pcie_io_mod_proc_mod_8_act_mod_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_act_mod_data_0 = pcie_io_mod_proc_mod_8_act_mod_data_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_8_act_mod_data_1 = pcie_io_mod_proc_mod_8_act_mod_data_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_par_mod_en = pcie_io_mod_proc_mod_9_par_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_par_mod_last_mau_id_mod = pcie_io_mod_proc_mod_9_par_mod_last_mau_id_mod; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_par_mod_last_mau_id = pcie_io_mod_proc_mod_9_par_mod_last_mau_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_par_mod_cs = pcie_io_mod_proc_mod_9_par_mod_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_par_mod_module_mod_state_id_mod = pcie_io_mod_proc_mod_9_par_mod_module_mod_state_id_mod
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_par_mod_module_mod_state_id = pcie_io_mod_proc_mod_9_par_mod_module_mod_state_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_par_mod_module_mod_sram_w_cs = pcie_io_mod_proc_mod_9_par_mod_module_mod_sram_w_cs; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_par_mod_module_mod_sram_w_addr = pcie_io_mod_proc_mod_9_par_mod_module_mod_sram_w_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_par_mod_module_mod_sram_w_data = pcie_io_mod_proc_mod_9_par_mod_module_mod_sram_w_data; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_mat_mod_en = pcie_io_mod_proc_mod_9_mat_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_mat_mod_config_id = pcie_io_mod_proc_mod_9_mat_mod_config_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_mat_mod_key_mod_header_id = pcie_io_mod_proc_mod_9_mat_mod_key_mod_header_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_mat_mod_key_mod_internal_offset = pcie_io_mod_proc_mod_9_mat_mod_key_mod_internal_offset
    ; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_mat_mod_key_mod_key_length = pcie_io_mod_proc_mod_9_mat_mod_key_mod_key_length; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_mat_mod_table_mod_table_width = pcie_io_mod_proc_mod_9_mat_mod_table_mod_table_width; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_mat_mod_table_mod_table_depth = pcie_io_mod_proc_mod_9_mat_mod_table_mod_table_depth; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_act_mod_en_0 = pcie_io_mod_proc_mod_9_act_mod_en_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_act_mod_en_1 = pcie_io_mod_proc_mod_9_act_mod_en_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_act_mod_addr = pcie_io_mod_proc_mod_9_act_mod_addr; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_act_mod_data_0 = pcie_io_mod_proc_mod_9_act_mod_data_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_proc_mod_9_act_mod_data_1 = pcie_io_mod_proc_mod_9_act_mod_data_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_xbar_mod_en = pcie_io_mod_xbar_mod_en; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_xbar_mod_first_proc_id = pcie_io_mod_xbar_mod_first_proc_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_xbar_mod_last_proc_id = pcie_io_mod_xbar_mod_last_proc_id; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_xbar_mod_next_proc_id_0 = pcie_io_mod_xbar_mod_next_proc_id_0; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_xbar_mod_next_proc_id_1 = pcie_io_mod_xbar_mod_next_proc_id_1; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_xbar_mod_next_proc_id_2 = pcie_io_mod_xbar_mod_next_proc_id_2; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_xbar_mod_next_proc_id_3 = pcie_io_mod_xbar_mod_next_proc_id_3; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_xbar_mod_next_proc_id_4 = pcie_io_mod_xbar_mod_next_proc_id_4; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_xbar_mod_next_proc_id_5 = pcie_io_mod_xbar_mod_next_proc_id_5; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_xbar_mod_next_proc_id_6 = pcie_io_mod_xbar_mod_next_proc_id_6; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_xbar_mod_next_proc_id_7 = pcie_io_mod_xbar_mod_next_proc_id_7; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_xbar_mod_next_proc_id_8 = pcie_io_mod_xbar_mod_next_proc_id_8; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_mod_xbar_mod_next_proc_id_9 = pcie_io_mod_xbar_mod_next_proc_id_9; // @[ipsa_pcie.scala 22:20]
  assign ipsa_io_w_0_wcs = pcie_io_w_0_wcs; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_0_w_en = pcie_io_w_0_w_en; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_0_w_addr = pcie_io_w_0_w_addr; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_0_w_data = pcie_io_w_0_w_data; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_1_wcs = pcie_io_w_1_wcs; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_1_w_en = pcie_io_w_1_w_en; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_1_w_addr = pcie_io_w_1_w_addr; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_1_w_data = pcie_io_w_1_w_data; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_2_wcs = pcie_io_w_2_wcs; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_2_w_en = pcie_io_w_2_w_en; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_2_w_addr = pcie_io_w_2_w_addr; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_2_w_data = pcie_io_w_2_w_data; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_3_wcs = pcie_io_w_3_wcs; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_3_w_en = pcie_io_w_3_w_en; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_3_w_addr = pcie_io_w_3_w_addr; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_3_w_data = pcie_io_w_3_w_data; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_4_wcs = pcie_io_w_4_wcs; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_4_w_en = pcie_io_w_4_w_en; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_4_w_addr = pcie_io_w_4_w_addr; // @[ipsa_pcie.scala 23:20]
  assign ipsa_io_w_4_w_data = pcie_io_w_4_w_data; // @[ipsa_pcie.scala 23:20]
  assign pcie_clock = clock;
  assign pcie_io_pcie_r_en = io_pcie_r_en; // @[ipsa_pcie.scala 20:20]
  assign pcie_io_pcie_r_addr = io_pcie_r_addr; // @[ipsa_pcie.scala 20:20]
  assign pcie_io_pcie_w_en = io_pcie_w_en; // @[ipsa_pcie.scala 21:20]
  assign pcie_io_pcie_w_addr = io_pcie_w_addr; // @[ipsa_pcie.scala 21:20]
  assign pcie_io_pcie_w_data = io_pcie_w_data; // @[ipsa_pcie.scala 21:20]
  assign pcie_io_pcie_o_r_data = outp_io_pcie_o_r_data; // @[ipsa_pcie.scala 26:26]
  assign outp_clock = clock;
  assign outp_io_phv_in_data_32 = ipsa_io_pipe_phv_out_data_32; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_33 = ipsa_io_pipe_phv_out_data_33; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_34 = ipsa_io_pipe_phv_out_data_34; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_35 = ipsa_io_pipe_phv_out_data_35; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_36 = ipsa_io_pipe_phv_out_data_36; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_37 = ipsa_io_pipe_phv_out_data_37; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_38 = ipsa_io_pipe_phv_out_data_38; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_39 = ipsa_io_pipe_phv_out_data_39; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_40 = ipsa_io_pipe_phv_out_data_40; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_41 = ipsa_io_pipe_phv_out_data_41; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_42 = ipsa_io_pipe_phv_out_data_42; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_43 = ipsa_io_pipe_phv_out_data_43; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_44 = ipsa_io_pipe_phv_out_data_44; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_45 = ipsa_io_pipe_phv_out_data_45; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_46 = ipsa_io_pipe_phv_out_data_46; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_47 = ipsa_io_pipe_phv_out_data_47; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_48 = ipsa_io_pipe_phv_out_data_48; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_49 = ipsa_io_pipe_phv_out_data_49; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_50 = ipsa_io_pipe_phv_out_data_50; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_51 = ipsa_io_pipe_phv_out_data_51; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_52 = ipsa_io_pipe_phv_out_data_52; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_53 = ipsa_io_pipe_phv_out_data_53; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_54 = ipsa_io_pipe_phv_out_data_54; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_55 = ipsa_io_pipe_phv_out_data_55; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_56 = ipsa_io_pipe_phv_out_data_56; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_57 = ipsa_io_pipe_phv_out_data_57; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_58 = ipsa_io_pipe_phv_out_data_58; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_59 = ipsa_io_pipe_phv_out_data_59; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_60 = ipsa_io_pipe_phv_out_data_60; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_61 = ipsa_io_pipe_phv_out_data_61; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_62 = ipsa_io_pipe_phv_out_data_62; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_63 = ipsa_io_pipe_phv_out_data_63; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_64 = ipsa_io_pipe_phv_out_data_64; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_65 = ipsa_io_pipe_phv_out_data_65; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_66 = ipsa_io_pipe_phv_out_data_66; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_67 = ipsa_io_pipe_phv_out_data_67; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_68 = ipsa_io_pipe_phv_out_data_68; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_69 = ipsa_io_pipe_phv_out_data_69; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_70 = ipsa_io_pipe_phv_out_data_70; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_71 = ipsa_io_pipe_phv_out_data_71; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_72 = ipsa_io_pipe_phv_out_data_72; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_73 = ipsa_io_pipe_phv_out_data_73; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_74 = ipsa_io_pipe_phv_out_data_74; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_75 = ipsa_io_pipe_phv_out_data_75; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_76 = ipsa_io_pipe_phv_out_data_76; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_77 = ipsa_io_pipe_phv_out_data_77; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_78 = ipsa_io_pipe_phv_out_data_78; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_79 = ipsa_io_pipe_phv_out_data_79; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_80 = ipsa_io_pipe_phv_out_data_80; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_81 = ipsa_io_pipe_phv_out_data_81; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_82 = ipsa_io_pipe_phv_out_data_82; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_83 = ipsa_io_pipe_phv_out_data_83; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_84 = ipsa_io_pipe_phv_out_data_84; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_85 = ipsa_io_pipe_phv_out_data_85; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_86 = ipsa_io_pipe_phv_out_data_86; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_87 = ipsa_io_pipe_phv_out_data_87; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_88 = ipsa_io_pipe_phv_out_data_88; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_89 = ipsa_io_pipe_phv_out_data_89; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_90 = ipsa_io_pipe_phv_out_data_90; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_91 = ipsa_io_pipe_phv_out_data_91; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_92 = ipsa_io_pipe_phv_out_data_92; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_93 = ipsa_io_pipe_phv_out_data_93; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_94 = ipsa_io_pipe_phv_out_data_94; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_95 = ipsa_io_pipe_phv_out_data_95; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_96 = ipsa_io_pipe_phv_out_data_96; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_97 = ipsa_io_pipe_phv_out_data_97; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_98 = ipsa_io_pipe_phv_out_data_98; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_99 = ipsa_io_pipe_phv_out_data_99; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_100 = ipsa_io_pipe_phv_out_data_100; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_101 = ipsa_io_pipe_phv_out_data_101; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_102 = ipsa_io_pipe_phv_out_data_102; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_103 = ipsa_io_pipe_phv_out_data_103; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_104 = ipsa_io_pipe_phv_out_data_104; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_105 = ipsa_io_pipe_phv_out_data_105; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_106 = ipsa_io_pipe_phv_out_data_106; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_107 = ipsa_io_pipe_phv_out_data_107; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_108 = ipsa_io_pipe_phv_out_data_108; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_109 = ipsa_io_pipe_phv_out_data_109; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_110 = ipsa_io_pipe_phv_out_data_110; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_111 = ipsa_io_pipe_phv_out_data_111; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_112 = ipsa_io_pipe_phv_out_data_112; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_113 = ipsa_io_pipe_phv_out_data_113; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_114 = ipsa_io_pipe_phv_out_data_114; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_115 = ipsa_io_pipe_phv_out_data_115; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_116 = ipsa_io_pipe_phv_out_data_116; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_117 = ipsa_io_pipe_phv_out_data_117; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_118 = ipsa_io_pipe_phv_out_data_118; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_119 = ipsa_io_pipe_phv_out_data_119; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_120 = ipsa_io_pipe_phv_out_data_120; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_121 = ipsa_io_pipe_phv_out_data_121; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_122 = ipsa_io_pipe_phv_out_data_122; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_123 = ipsa_io_pipe_phv_out_data_123; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_124 = ipsa_io_pipe_phv_out_data_124; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_125 = ipsa_io_pipe_phv_out_data_125; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_126 = ipsa_io_pipe_phv_out_data_126; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_127 = ipsa_io_pipe_phv_out_data_127; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_128 = ipsa_io_pipe_phv_out_data_128; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_129 = ipsa_io_pipe_phv_out_data_129; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_130 = ipsa_io_pipe_phv_out_data_130; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_131 = ipsa_io_pipe_phv_out_data_131; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_132 = ipsa_io_pipe_phv_out_data_132; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_133 = ipsa_io_pipe_phv_out_data_133; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_134 = ipsa_io_pipe_phv_out_data_134; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_135 = ipsa_io_pipe_phv_out_data_135; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_136 = ipsa_io_pipe_phv_out_data_136; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_137 = ipsa_io_pipe_phv_out_data_137; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_138 = ipsa_io_pipe_phv_out_data_138; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_139 = ipsa_io_pipe_phv_out_data_139; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_140 = ipsa_io_pipe_phv_out_data_140; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_141 = ipsa_io_pipe_phv_out_data_141; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_142 = ipsa_io_pipe_phv_out_data_142; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_143 = ipsa_io_pipe_phv_out_data_143; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_144 = ipsa_io_pipe_phv_out_data_144; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_145 = ipsa_io_pipe_phv_out_data_145; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_146 = ipsa_io_pipe_phv_out_data_146; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_147 = ipsa_io_pipe_phv_out_data_147; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_148 = ipsa_io_pipe_phv_out_data_148; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_149 = ipsa_io_pipe_phv_out_data_149; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_150 = ipsa_io_pipe_phv_out_data_150; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_151 = ipsa_io_pipe_phv_out_data_151; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_152 = ipsa_io_pipe_phv_out_data_152; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_153 = ipsa_io_pipe_phv_out_data_153; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_154 = ipsa_io_pipe_phv_out_data_154; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_155 = ipsa_io_pipe_phv_out_data_155; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_156 = ipsa_io_pipe_phv_out_data_156; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_157 = ipsa_io_pipe_phv_out_data_157; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_158 = ipsa_io_pipe_phv_out_data_158; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_159 = ipsa_io_pipe_phv_out_data_159; // @[ipsa_pcie.scala 25:26]
  assign outp_io_pcie_o_cs = pcie_io_pcie_o_cs; // @[ipsa_pcie.scala 26:26]
  assign outp_io_pcie_o_r_en = pcie_io_pcie_o_r_en; // @[ipsa_pcie.scala 26:26]
  assign outp_io_pcie_o_r_addr = pcie_io_pcie_o_r_addr; // @[ipsa_pcie.scala 26:26]
  assign inp_clock = clock;
  assign inp_reset = reset;
endmodule
