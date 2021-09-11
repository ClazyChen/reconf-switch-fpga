module IPSAPCIE(
  input           clock,
  input           reset,
  input           io_en_in,
  input           io_last_in,
  input  [1023:0] io_data_in,
  output          io_en_out,
  output          io_last_out,
  output [1023:0] io_data_out
);
  wire  ipsa_clock; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_0; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_1; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_2; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_3; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_4; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_5; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_6; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_7; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_8; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_9; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_10; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_11; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_12; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_13; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_14; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_15; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_16; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_17; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_18; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_19; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_20; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_21; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_22; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_23; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_24; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_25; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_26; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_27; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_28; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_29; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_30; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_31; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_32; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_33; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_34; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_35; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_36; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_37; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_38; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_39; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_40; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_41; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_42; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_43; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_44; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_45; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_46; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_47; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_48; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_49; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_50; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_51; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_52; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_53; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_54; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_55; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_56; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_57; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_58; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_59; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_60; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_61; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_62; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_63; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_64; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_65; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_66; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_67; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_68; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_69; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_70; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_71; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_72; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_73; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_74; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_75; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_76; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_77; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_78; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_79; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_80; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_81; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_82; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_83; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_84; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_85; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_86; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_87; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_88; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_89; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_90; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_91; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_92; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_93; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_94; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_95; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_96; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_97; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_98; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_99; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_100; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_101; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_102; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_103; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_104; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_105; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_106; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_107; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_108; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_109; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_110; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_111; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_112; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_113; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_114; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_115; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_116; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_117; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_118; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_119; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_120; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_121; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_122; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_123; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_124; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_125; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_126; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_in_data_127; // @[ipsa_pcie.scala 20:22]
  wire  ipsa_io_pipe_phv_in_valid; // @[ipsa_pcie.scala 20:22]
  wire  ipsa_io_pipe_phv_in_last; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_0; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_1; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_2; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_3; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_4; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_5; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_6; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_7; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_8; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_9; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_10; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_11; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_12; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_13; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_14; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_15; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_16; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_17; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_18; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_19; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_20; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_21; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_22; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_23; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_24; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_25; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_26; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_27; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_28; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_29; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_30; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_31; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_32; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_33; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_34; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_35; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_36; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_37; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_38; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_39; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_40; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_41; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_42; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_43; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_44; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_45; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_46; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_47; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_48; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_49; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_50; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_51; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_52; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_53; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_54; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_55; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_56; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_57; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_58; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_59; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_60; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_61; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_62; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_63; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_64; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_65; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_66; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_67; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_68; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_69; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_70; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_71; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_72; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_73; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_74; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_75; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_76; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_77; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_78; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_79; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_80; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_81; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_82; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_83; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_84; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_85; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_86; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_87; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_88; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_89; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_90; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_91; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_92; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_93; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_94; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_95; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_96; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_97; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_98; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_99; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_100; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_101; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_102; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_103; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_104; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_105; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_106; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_107; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_108; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_109; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_110; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_111; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_112; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_113; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_114; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_115; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_116; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_117; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_118; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_119; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_120; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_121; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_122; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_123; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_124; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_125; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_126; // @[ipsa_pcie.scala 20:22]
  wire [7:0] ipsa_io_pipe_phv_out_data_127; // @[ipsa_pcie.scala 20:22]
  wire  ipsa_io_pipe_phv_out_valid; // @[ipsa_pcie.scala 20:22]
  wire  ipsa_io_pipe_phv_out_last; // @[ipsa_pcie.scala 20:22]
  wire [7:0] outp_io_phv_in_data_0; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_1; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_2; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_3; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_4; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_5; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_6; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_7; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_8; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_9; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_10; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_11; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_12; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_13; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_14; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_15; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_16; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_17; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_18; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_19; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_20; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_21; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_22; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_23; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_24; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_25; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_26; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_27; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_28; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_29; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_30; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_31; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_32; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_33; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_34; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_35; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_36; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_37; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_38; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_39; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_40; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_41; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_42; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_43; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_44; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_45; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_46; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_47; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_48; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_49; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_50; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_51; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_52; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_53; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_54; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_55; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_56; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_57; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_58; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_59; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_60; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_61; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_62; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_63; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_64; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_65; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_66; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_67; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_68; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_69; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_70; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_71; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_72; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_73; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_74; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_75; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_76; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_77; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_78; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_79; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_80; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_81; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_82; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_83; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_84; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_85; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_86; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_87; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_88; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_89; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_90; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_91; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_92; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_93; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_94; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_95; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_96; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_97; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_98; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_99; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_100; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_101; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_102; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_103; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_104; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_105; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_106; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_107; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_108; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_109; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_110; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_111; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_112; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_113; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_114; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_115; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_116; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_117; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_118; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_119; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_120; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_121; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_122; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_123; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_124; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_125; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_126; // @[ipsa_pcie.scala 22:22]
  wire [7:0] outp_io_phv_in_data_127; // @[ipsa_pcie.scala 22:22]
  wire  outp_io_phv_in_valid; // @[ipsa_pcie.scala 22:22]
  wire  outp_io_phv_in_last; // @[ipsa_pcie.scala 22:22]
  wire [1023:0] outp_io_data; // @[ipsa_pcie.scala 22:22]
  wire  outp_io_last; // @[ipsa_pcie.scala 22:22]
  wire  outp_io_en; // @[ipsa_pcie.scala 22:22]
  wire  inp_io_en; // @[ipsa_pcie.scala 23:22]
  wire  inp_io_last; // @[ipsa_pcie.scala 23:22]
  wire [1023:0] inp_io_data; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_0; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_1; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_2; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_3; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_4; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_5; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_6; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_7; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_8; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_9; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_10; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_11; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_12; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_13; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_14; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_15; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_16; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_17; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_18; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_19; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_20; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_21; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_22; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_23; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_24; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_25; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_26; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_27; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_28; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_29; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_30; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_31; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_32; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_33; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_34; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_35; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_36; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_37; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_38; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_39; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_40; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_41; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_42; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_43; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_44; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_45; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_46; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_47; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_48; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_49; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_50; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_51; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_52; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_53; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_54; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_55; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_56; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_57; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_58; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_59; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_60; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_61; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_62; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_63; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_64; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_65; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_66; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_67; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_68; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_69; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_70; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_71; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_72; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_73; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_74; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_75; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_76; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_77; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_78; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_79; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_80; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_81; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_82; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_83; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_84; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_85; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_86; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_87; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_88; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_89; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_90; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_91; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_92; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_93; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_94; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_95; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_96; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_97; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_98; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_99; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_100; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_101; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_102; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_103; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_104; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_105; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_106; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_107; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_108; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_109; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_110; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_111; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_112; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_113; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_114; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_115; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_116; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_117; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_118; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_119; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_120; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_121; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_122; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_123; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_124; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_125; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_126; // @[ipsa_pcie.scala 23:22]
  wire [7:0] inp_io_phv_out_data_127; // @[ipsa_pcie.scala 23:22]
  wire  inp_io_phv_out_valid; // @[ipsa_pcie.scala 23:22]
  wire  inp_io_phv_out_last; // @[ipsa_pcie.scala 23:22]
  IPSA ipsa ( // @[ipsa_pcie.scala 20:22]
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
    .io_pipe_phv_in_valid(ipsa_io_pipe_phv_in_valid),
    .io_pipe_phv_in_last(ipsa_io_pipe_phv_in_last),
    .io_pipe_phv_out_data_0(ipsa_io_pipe_phv_out_data_0),
    .io_pipe_phv_out_data_1(ipsa_io_pipe_phv_out_data_1),
    .io_pipe_phv_out_data_2(ipsa_io_pipe_phv_out_data_2),
    .io_pipe_phv_out_data_3(ipsa_io_pipe_phv_out_data_3),
    .io_pipe_phv_out_data_4(ipsa_io_pipe_phv_out_data_4),
    .io_pipe_phv_out_data_5(ipsa_io_pipe_phv_out_data_5),
    .io_pipe_phv_out_data_6(ipsa_io_pipe_phv_out_data_6),
    .io_pipe_phv_out_data_7(ipsa_io_pipe_phv_out_data_7),
    .io_pipe_phv_out_data_8(ipsa_io_pipe_phv_out_data_8),
    .io_pipe_phv_out_data_9(ipsa_io_pipe_phv_out_data_9),
    .io_pipe_phv_out_data_10(ipsa_io_pipe_phv_out_data_10),
    .io_pipe_phv_out_data_11(ipsa_io_pipe_phv_out_data_11),
    .io_pipe_phv_out_data_12(ipsa_io_pipe_phv_out_data_12),
    .io_pipe_phv_out_data_13(ipsa_io_pipe_phv_out_data_13),
    .io_pipe_phv_out_data_14(ipsa_io_pipe_phv_out_data_14),
    .io_pipe_phv_out_data_15(ipsa_io_pipe_phv_out_data_15),
    .io_pipe_phv_out_data_16(ipsa_io_pipe_phv_out_data_16),
    .io_pipe_phv_out_data_17(ipsa_io_pipe_phv_out_data_17),
    .io_pipe_phv_out_data_18(ipsa_io_pipe_phv_out_data_18),
    .io_pipe_phv_out_data_19(ipsa_io_pipe_phv_out_data_19),
    .io_pipe_phv_out_data_20(ipsa_io_pipe_phv_out_data_20),
    .io_pipe_phv_out_data_21(ipsa_io_pipe_phv_out_data_21),
    .io_pipe_phv_out_data_22(ipsa_io_pipe_phv_out_data_22),
    .io_pipe_phv_out_data_23(ipsa_io_pipe_phv_out_data_23),
    .io_pipe_phv_out_data_24(ipsa_io_pipe_phv_out_data_24),
    .io_pipe_phv_out_data_25(ipsa_io_pipe_phv_out_data_25),
    .io_pipe_phv_out_data_26(ipsa_io_pipe_phv_out_data_26),
    .io_pipe_phv_out_data_27(ipsa_io_pipe_phv_out_data_27),
    .io_pipe_phv_out_data_28(ipsa_io_pipe_phv_out_data_28),
    .io_pipe_phv_out_data_29(ipsa_io_pipe_phv_out_data_29),
    .io_pipe_phv_out_data_30(ipsa_io_pipe_phv_out_data_30),
    .io_pipe_phv_out_data_31(ipsa_io_pipe_phv_out_data_31),
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
    .io_pipe_phv_out_valid(ipsa_io_pipe_phv_out_valid),
    .io_pipe_phv_out_last(ipsa_io_pipe_phv_out_last)
  );
  OutPort outp ( // @[ipsa_pcie.scala 22:22]
    .io_phv_in_data_0(outp_io_phv_in_data_0),
    .io_phv_in_data_1(outp_io_phv_in_data_1),
    .io_phv_in_data_2(outp_io_phv_in_data_2),
    .io_phv_in_data_3(outp_io_phv_in_data_3),
    .io_phv_in_data_4(outp_io_phv_in_data_4),
    .io_phv_in_data_5(outp_io_phv_in_data_5),
    .io_phv_in_data_6(outp_io_phv_in_data_6),
    .io_phv_in_data_7(outp_io_phv_in_data_7),
    .io_phv_in_data_8(outp_io_phv_in_data_8),
    .io_phv_in_data_9(outp_io_phv_in_data_9),
    .io_phv_in_data_10(outp_io_phv_in_data_10),
    .io_phv_in_data_11(outp_io_phv_in_data_11),
    .io_phv_in_data_12(outp_io_phv_in_data_12),
    .io_phv_in_data_13(outp_io_phv_in_data_13),
    .io_phv_in_data_14(outp_io_phv_in_data_14),
    .io_phv_in_data_15(outp_io_phv_in_data_15),
    .io_phv_in_data_16(outp_io_phv_in_data_16),
    .io_phv_in_data_17(outp_io_phv_in_data_17),
    .io_phv_in_data_18(outp_io_phv_in_data_18),
    .io_phv_in_data_19(outp_io_phv_in_data_19),
    .io_phv_in_data_20(outp_io_phv_in_data_20),
    .io_phv_in_data_21(outp_io_phv_in_data_21),
    .io_phv_in_data_22(outp_io_phv_in_data_22),
    .io_phv_in_data_23(outp_io_phv_in_data_23),
    .io_phv_in_data_24(outp_io_phv_in_data_24),
    .io_phv_in_data_25(outp_io_phv_in_data_25),
    .io_phv_in_data_26(outp_io_phv_in_data_26),
    .io_phv_in_data_27(outp_io_phv_in_data_27),
    .io_phv_in_data_28(outp_io_phv_in_data_28),
    .io_phv_in_data_29(outp_io_phv_in_data_29),
    .io_phv_in_data_30(outp_io_phv_in_data_30),
    .io_phv_in_data_31(outp_io_phv_in_data_31),
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
    .io_phv_in_valid(outp_io_phv_in_valid),
    .io_phv_in_last(outp_io_phv_in_last),
    .io_data(outp_io_data),
    .io_last(outp_io_last),
    .io_en(outp_io_en)
  );
  InPort inp ( // @[ipsa_pcie.scala 23:22]
    .io_en(inp_io_en),
    .io_last(inp_io_last),
    .io_data(inp_io_data),
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
    .io_phv_out_data_127(inp_io_phv_out_data_127),
    .io_phv_out_valid(inp_io_phv_out_valid),
    .io_phv_out_last(inp_io_phv_out_last)
  );
  assign io_en_out = outp_io_en; // @[ipsa_pcie.scala 45:20]
  assign io_last_out = outp_io_last; // @[ipsa_pcie.scala 44:20]
  assign io_data_out = outp_io_data; // @[ipsa_pcie.scala 43:20]
  assign ipsa_clock = clock;
  assign ipsa_io_pipe_phv_in_data_0 = inp_io_phv_out_data_0; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_1 = inp_io_phv_out_data_1; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_2 = inp_io_phv_out_data_2; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_3 = inp_io_phv_out_data_3; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_4 = inp_io_phv_out_data_4; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_5 = inp_io_phv_out_data_5; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_6 = inp_io_phv_out_data_6; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_7 = inp_io_phv_out_data_7; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_8 = inp_io_phv_out_data_8; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_9 = inp_io_phv_out_data_9; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_10 = inp_io_phv_out_data_10; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_11 = inp_io_phv_out_data_11; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_12 = inp_io_phv_out_data_12; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_13 = inp_io_phv_out_data_13; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_14 = inp_io_phv_out_data_14; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_15 = inp_io_phv_out_data_15; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_16 = inp_io_phv_out_data_16; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_17 = inp_io_phv_out_data_17; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_18 = inp_io_phv_out_data_18; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_19 = inp_io_phv_out_data_19; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_20 = inp_io_phv_out_data_20; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_21 = inp_io_phv_out_data_21; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_22 = inp_io_phv_out_data_22; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_23 = inp_io_phv_out_data_23; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_24 = inp_io_phv_out_data_24; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_25 = inp_io_phv_out_data_25; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_26 = inp_io_phv_out_data_26; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_27 = inp_io_phv_out_data_27; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_28 = inp_io_phv_out_data_28; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_29 = inp_io_phv_out_data_29; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_30 = inp_io_phv_out_data_30; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_31 = inp_io_phv_out_data_31; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_32 = inp_io_phv_out_data_32; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_33 = inp_io_phv_out_data_33; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_34 = inp_io_phv_out_data_34; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_35 = inp_io_phv_out_data_35; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_36 = inp_io_phv_out_data_36; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_37 = inp_io_phv_out_data_37; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_38 = inp_io_phv_out_data_38; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_39 = inp_io_phv_out_data_39; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_40 = inp_io_phv_out_data_40; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_41 = inp_io_phv_out_data_41; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_42 = inp_io_phv_out_data_42; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_43 = inp_io_phv_out_data_43; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_44 = inp_io_phv_out_data_44; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_45 = inp_io_phv_out_data_45; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_46 = inp_io_phv_out_data_46; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_47 = inp_io_phv_out_data_47; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_48 = inp_io_phv_out_data_48; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_49 = inp_io_phv_out_data_49; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_50 = inp_io_phv_out_data_50; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_51 = inp_io_phv_out_data_51; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_52 = inp_io_phv_out_data_52; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_53 = inp_io_phv_out_data_53; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_54 = inp_io_phv_out_data_54; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_55 = inp_io_phv_out_data_55; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_56 = inp_io_phv_out_data_56; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_57 = inp_io_phv_out_data_57; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_58 = inp_io_phv_out_data_58; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_59 = inp_io_phv_out_data_59; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_60 = inp_io_phv_out_data_60; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_61 = inp_io_phv_out_data_61; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_62 = inp_io_phv_out_data_62; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_63 = inp_io_phv_out_data_63; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_64 = inp_io_phv_out_data_64; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_65 = inp_io_phv_out_data_65; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_66 = inp_io_phv_out_data_66; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_67 = inp_io_phv_out_data_67; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_68 = inp_io_phv_out_data_68; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_69 = inp_io_phv_out_data_69; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_70 = inp_io_phv_out_data_70; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_71 = inp_io_phv_out_data_71; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_72 = inp_io_phv_out_data_72; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_73 = inp_io_phv_out_data_73; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_74 = inp_io_phv_out_data_74; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_75 = inp_io_phv_out_data_75; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_76 = inp_io_phv_out_data_76; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_77 = inp_io_phv_out_data_77; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_78 = inp_io_phv_out_data_78; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_79 = inp_io_phv_out_data_79; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_80 = inp_io_phv_out_data_80; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_81 = inp_io_phv_out_data_81; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_82 = inp_io_phv_out_data_82; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_83 = inp_io_phv_out_data_83; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_84 = inp_io_phv_out_data_84; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_85 = inp_io_phv_out_data_85; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_86 = inp_io_phv_out_data_86; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_87 = inp_io_phv_out_data_87; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_88 = inp_io_phv_out_data_88; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_89 = inp_io_phv_out_data_89; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_90 = inp_io_phv_out_data_90; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_91 = inp_io_phv_out_data_91; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_92 = inp_io_phv_out_data_92; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_93 = inp_io_phv_out_data_93; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_94 = inp_io_phv_out_data_94; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_95 = inp_io_phv_out_data_95; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_96 = inp_io_phv_out_data_96; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_97 = inp_io_phv_out_data_97; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_98 = inp_io_phv_out_data_98; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_99 = inp_io_phv_out_data_99; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_100 = inp_io_phv_out_data_100; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_101 = inp_io_phv_out_data_101; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_102 = inp_io_phv_out_data_102; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_103 = inp_io_phv_out_data_103; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_104 = inp_io_phv_out_data_104; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_105 = inp_io_phv_out_data_105; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_106 = inp_io_phv_out_data_106; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_107 = inp_io_phv_out_data_107; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_108 = inp_io_phv_out_data_108; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_109 = inp_io_phv_out_data_109; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_110 = inp_io_phv_out_data_110; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_111 = inp_io_phv_out_data_111; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_112 = inp_io_phv_out_data_112; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_113 = inp_io_phv_out_data_113; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_114 = inp_io_phv_out_data_114; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_115 = inp_io_phv_out_data_115; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_116 = inp_io_phv_out_data_116; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_117 = inp_io_phv_out_data_117; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_118 = inp_io_phv_out_data_118; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_119 = inp_io_phv_out_data_119; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_120 = inp_io_phv_out_data_120; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_121 = inp_io_phv_out_data_121; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_122 = inp_io_phv_out_data_122; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_123 = inp_io_phv_out_data_123; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_124 = inp_io_phv_out_data_124; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_125 = inp_io_phv_out_data_125; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_126 = inp_io_phv_out_data_126; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_data_127 = inp_io_phv_out_data_127; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_valid = inp_io_phv_out_valid; // @[ipsa_pcie.scala 25:26]
  assign ipsa_io_pipe_phv_in_last = inp_io_phv_out_last; // @[ipsa_pcie.scala 25:26]
  assign outp_io_phv_in_data_0 = ipsa_io_pipe_phv_out_data_0; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_1 = ipsa_io_pipe_phv_out_data_1; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_2 = ipsa_io_pipe_phv_out_data_2; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_3 = ipsa_io_pipe_phv_out_data_3; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_4 = ipsa_io_pipe_phv_out_data_4; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_5 = ipsa_io_pipe_phv_out_data_5; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_6 = ipsa_io_pipe_phv_out_data_6; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_7 = ipsa_io_pipe_phv_out_data_7; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_8 = ipsa_io_pipe_phv_out_data_8; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_9 = ipsa_io_pipe_phv_out_data_9; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_10 = ipsa_io_pipe_phv_out_data_10; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_11 = ipsa_io_pipe_phv_out_data_11; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_12 = ipsa_io_pipe_phv_out_data_12; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_13 = ipsa_io_pipe_phv_out_data_13; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_14 = ipsa_io_pipe_phv_out_data_14; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_15 = ipsa_io_pipe_phv_out_data_15; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_16 = ipsa_io_pipe_phv_out_data_16; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_17 = ipsa_io_pipe_phv_out_data_17; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_18 = ipsa_io_pipe_phv_out_data_18; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_19 = ipsa_io_pipe_phv_out_data_19; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_20 = ipsa_io_pipe_phv_out_data_20; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_21 = ipsa_io_pipe_phv_out_data_21; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_22 = ipsa_io_pipe_phv_out_data_22; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_23 = ipsa_io_pipe_phv_out_data_23; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_24 = ipsa_io_pipe_phv_out_data_24; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_25 = ipsa_io_pipe_phv_out_data_25; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_26 = ipsa_io_pipe_phv_out_data_26; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_27 = ipsa_io_pipe_phv_out_data_27; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_28 = ipsa_io_pipe_phv_out_data_28; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_29 = ipsa_io_pipe_phv_out_data_29; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_30 = ipsa_io_pipe_phv_out_data_30; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_31 = ipsa_io_pipe_phv_out_data_31; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_32 = ipsa_io_pipe_phv_out_data_32; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_33 = ipsa_io_pipe_phv_out_data_33; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_34 = ipsa_io_pipe_phv_out_data_34; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_35 = ipsa_io_pipe_phv_out_data_35; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_36 = ipsa_io_pipe_phv_out_data_36; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_37 = ipsa_io_pipe_phv_out_data_37; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_38 = ipsa_io_pipe_phv_out_data_38; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_39 = ipsa_io_pipe_phv_out_data_39; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_40 = ipsa_io_pipe_phv_out_data_40; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_41 = ipsa_io_pipe_phv_out_data_41; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_42 = ipsa_io_pipe_phv_out_data_42; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_43 = ipsa_io_pipe_phv_out_data_43; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_44 = ipsa_io_pipe_phv_out_data_44; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_45 = ipsa_io_pipe_phv_out_data_45; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_46 = ipsa_io_pipe_phv_out_data_46; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_47 = ipsa_io_pipe_phv_out_data_47; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_48 = ipsa_io_pipe_phv_out_data_48; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_49 = ipsa_io_pipe_phv_out_data_49; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_50 = ipsa_io_pipe_phv_out_data_50; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_51 = ipsa_io_pipe_phv_out_data_51; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_52 = ipsa_io_pipe_phv_out_data_52; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_53 = ipsa_io_pipe_phv_out_data_53; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_54 = ipsa_io_pipe_phv_out_data_54; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_55 = ipsa_io_pipe_phv_out_data_55; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_56 = ipsa_io_pipe_phv_out_data_56; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_57 = ipsa_io_pipe_phv_out_data_57; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_58 = ipsa_io_pipe_phv_out_data_58; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_59 = ipsa_io_pipe_phv_out_data_59; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_60 = ipsa_io_pipe_phv_out_data_60; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_61 = ipsa_io_pipe_phv_out_data_61; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_62 = ipsa_io_pipe_phv_out_data_62; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_63 = ipsa_io_pipe_phv_out_data_63; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_64 = ipsa_io_pipe_phv_out_data_64; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_65 = ipsa_io_pipe_phv_out_data_65; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_66 = ipsa_io_pipe_phv_out_data_66; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_67 = ipsa_io_pipe_phv_out_data_67; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_68 = ipsa_io_pipe_phv_out_data_68; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_69 = ipsa_io_pipe_phv_out_data_69; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_70 = ipsa_io_pipe_phv_out_data_70; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_71 = ipsa_io_pipe_phv_out_data_71; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_72 = ipsa_io_pipe_phv_out_data_72; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_73 = ipsa_io_pipe_phv_out_data_73; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_74 = ipsa_io_pipe_phv_out_data_74; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_75 = ipsa_io_pipe_phv_out_data_75; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_76 = ipsa_io_pipe_phv_out_data_76; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_77 = ipsa_io_pipe_phv_out_data_77; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_78 = ipsa_io_pipe_phv_out_data_78; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_79 = ipsa_io_pipe_phv_out_data_79; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_80 = ipsa_io_pipe_phv_out_data_80; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_81 = ipsa_io_pipe_phv_out_data_81; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_82 = ipsa_io_pipe_phv_out_data_82; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_83 = ipsa_io_pipe_phv_out_data_83; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_84 = ipsa_io_pipe_phv_out_data_84; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_85 = ipsa_io_pipe_phv_out_data_85; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_86 = ipsa_io_pipe_phv_out_data_86; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_87 = ipsa_io_pipe_phv_out_data_87; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_88 = ipsa_io_pipe_phv_out_data_88; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_89 = ipsa_io_pipe_phv_out_data_89; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_90 = ipsa_io_pipe_phv_out_data_90; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_91 = ipsa_io_pipe_phv_out_data_91; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_92 = ipsa_io_pipe_phv_out_data_92; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_93 = ipsa_io_pipe_phv_out_data_93; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_94 = ipsa_io_pipe_phv_out_data_94; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_95 = ipsa_io_pipe_phv_out_data_95; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_96 = ipsa_io_pipe_phv_out_data_96; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_97 = ipsa_io_pipe_phv_out_data_97; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_98 = ipsa_io_pipe_phv_out_data_98; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_99 = ipsa_io_pipe_phv_out_data_99; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_100 = ipsa_io_pipe_phv_out_data_100; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_101 = ipsa_io_pipe_phv_out_data_101; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_102 = ipsa_io_pipe_phv_out_data_102; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_103 = ipsa_io_pipe_phv_out_data_103; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_104 = ipsa_io_pipe_phv_out_data_104; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_105 = ipsa_io_pipe_phv_out_data_105; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_106 = ipsa_io_pipe_phv_out_data_106; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_107 = ipsa_io_pipe_phv_out_data_107; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_108 = ipsa_io_pipe_phv_out_data_108; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_109 = ipsa_io_pipe_phv_out_data_109; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_110 = ipsa_io_pipe_phv_out_data_110; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_111 = ipsa_io_pipe_phv_out_data_111; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_112 = ipsa_io_pipe_phv_out_data_112; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_113 = ipsa_io_pipe_phv_out_data_113; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_114 = ipsa_io_pipe_phv_out_data_114; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_115 = ipsa_io_pipe_phv_out_data_115; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_116 = ipsa_io_pipe_phv_out_data_116; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_117 = ipsa_io_pipe_phv_out_data_117; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_118 = ipsa_io_pipe_phv_out_data_118; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_119 = ipsa_io_pipe_phv_out_data_119; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_120 = ipsa_io_pipe_phv_out_data_120; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_121 = ipsa_io_pipe_phv_out_data_121; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_122 = ipsa_io_pipe_phv_out_data_122; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_123 = ipsa_io_pipe_phv_out_data_123; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_124 = ipsa_io_pipe_phv_out_data_124; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_125 = ipsa_io_pipe_phv_out_data_125; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_126 = ipsa_io_pipe_phv_out_data_126; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_data_127 = ipsa_io_pipe_phv_out_data_127; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_valid = ipsa_io_pipe_phv_out_valid; // @[ipsa_pcie.scala 42:26]
  assign outp_io_phv_in_last = ipsa_io_pipe_phv_out_last; // @[ipsa_pcie.scala 42:26]
  assign inp_io_en = io_en_in; // @[ipsa_pcie.scala 27:26]
  assign inp_io_last = io_last_in; // @[ipsa_pcie.scala 28:26]
  assign inp_io_data = io_data_in; // @[ipsa_pcie.scala 26:26]
endmodule
