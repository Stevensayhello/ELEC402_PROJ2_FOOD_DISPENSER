
// Generated by Cadence Encounter(R) RTL Compiler RC14.13 - v14.10-s027_1

// Verification Directory fv/food_dispenser_fsm 

module food_dispenser_fsm(reset, clk, timesup, food_weight,
     set_food_weight, refill_detector, cap_detector,
     play_function_pedal, initialize_flag, newday, food_gate, warning,
     play_function_flag, play_function_fail_flag);
  input reset, clk, timesup, refill_detector, cap_detector,
       play_function_pedal, initialize_flag, newday;
  input [6:0] food_weight, set_food_weight;
  output food_gate, warning, play_function_flag,
       play_function_fail_flag;
  wire reset, clk, timesup, refill_detector, cap_detector,
       play_function_pedal, initialize_flag, newday;
  wire [6:0] food_weight, set_food_weight;
  wire food_gate, warning, play_function_flag, play_function_fail_flag;
  wire [3:0] state;
  wire [3:0] play_function_counter;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52, n_53, n_54, n_55;
  wire n_56, n_57, n_58, n_59, n_60, n_61, n_62, n_63;
  wire n_64, n_65, n_66, n_67, n_68, n_69, n_70, n_71;
  wire n_72, n_73, n_74, n_75, n_76, n_77, n_78, n_79;
  wire n_80, n_81, n_82, n_83, n_84, n_85, n_86, n_87;
  wire n_88, n_89, n_90, n_91, n_92, n_93, n_94, n_95;
  wire n_96, n_97, n_98, n_99, n_100, n_101, n_102, n_103;
  wire n_104, n_105, n_106, n_107, n_108, n_109, n_110, n_111;
  wire n_112, n_113, n_114, n_116, n_117, n_118, n_119, n_120;
  wire n_121, n_122, n_123, n_124, n_125, n_126, n_127, n_128;
  wire n_129, n_130, n_131, n_132, n_133, n_134, n_135, n_136;
  wire n_137, n_138, n_139, n_140, n_141, n_142, n_143, n_144;
  wire n_145;
  DFFSNQ_X1 warning_reg(.SN (1'b1), .CLK (clk), .D (n_145), .Q
       (warning));
  NAND2_X1 g3725(.A1 (n_144), .A2 (n_83), .ZN (n_145));
  NAND4_X1 g3726(.A1 (n_143), .A2 (n_73), .A3 (n_92), .A4 (n_53), .ZN
       (n_144));
  AOI22_X1 g3727(.A1 (n_142), .A2 (n_90), .B1 (n_11), .B2 (n_3), .ZN
       (n_143));
  AND2_X1 g3728(.A1 (n_141), .A2 (n_121), .Z (n_142));
  AOI22_X1 g3729(.A1 (n_140), .A2 (n_123), .B1 (n_139), .B2
       (food_weight[2]), .ZN (n_141));
  AOI22_X1 g3730(.A1 (n_137), .A2 (n_44), .B1 (n_127), .B2 (n_138), .ZN
       (n_140));
  AOI21_X1 g3731(.A1 (n_122), .A2 (n_138), .B (n_137), .ZN (n_139));
  OAI21_X1 g3732(.A1 (n_133), .A2 (food_weight[0]), .B (n_136), .ZN
       (n_137));
  AOI21_X1 g3733(.A1 (n_134), .A2 (n_35), .B (n_135), .ZN (n_136));
  AOI21_X1 g3735(.A1 (n_132), .A2 (food_weight[0]), .B
       (food_weight[1]), .ZN (n_135));
  XNOR2_X1 g3742(.A1 (n_128), .A2 (set_food_weight[3]), .ZN (n_134));
  DFFRNQ_X1 \state_reg[0] (.RN (n_130), .CLK (clk), .D (n_129), .Q
       (state[0]));
  NAND2_X1 g3739(.A1 (n_131), .A2 (set_food_weight[1]), .ZN (n_133));
  AOI21_X1 g3740(.A1 (set_food_weight[1]), .A2 (set_food_weight[0]), .B
       (n_131), .ZN (n_132));
  DFFRNQ_X1 \state_reg[1] (.RN (n_130), .CLK (clk), .D (n_126), .Q
       (state[1]));
  OR4_X1 g3741(.A1 (n_119), .A2 (n_75), .A3 (n_86), .A4 (n_51), .Z
       (n_129));
  XOR2_X1 g3745(.A1 (n_124), .A2 (set_food_weight[2]), .Z (n_131));
  NAND2_X1 g3747(.A1 (n_125), .A2 (n_127), .ZN (n_128));
  NOR4_X1 g3737(.A1 (n_88), .A2 (n_118), .A3 (n_108), .A4 (n_93), .ZN
       (n_126));
  AOI22_X1 g3756(.A1 (n_120), .A2 (n_19), .B1 (n_116), .B2
       (set_food_weight[2]), .ZN (n_125));
  AOI21_X1 g3752(.A1 (n_123), .A2 (n_122), .B (n_114), .ZN (n_124));
  AOI22_X1 g3754(.A1 (n_120), .A2 (food_weight[3]), .B1 (n_99), .B2
       (food_weight[4]), .ZN (n_121));
  NAND2_X1 g3743(.A1 (n_117), .A2 (n_107), .ZN (n_119));
  INV_X1 g3748(.I (n_117), .ZN (n_118));
  NAND2_X1 g3749(.A1 (n_87), .A2 (n_113), .ZN (n_117));
  INV_X1 g3765(.I (n_123), .ZN (n_116));
  DFFSNQ_X1 \play_function_counter_reg[3] (.SN (1'b1), .CLK (clk), .D
       (n_110), .Q (play_function_counter[3]));
  INV_X1 g3763(.I (n_127), .ZN (n_114));
  OAI21_X1 g3766(.A1 (set_food_weight[3]), .A2 (set_food_weight[2]), .B
       (n_109), .ZN (n_123));
  INV_X1 g3767(.I (n_122), .ZN (n_120));
  AOI21_X1 g3751(.A1 (n_97), .A2 (n_7), .B (play_function_flag), .ZN
       (n_113));
  NAND3_X1 g3764(.A1 (n_111), .A2 (n_112), .A3 (n_4), .ZN (n_127));
  OAI21_X1 g3768(.A1 (n_112), .A2 (n_15), .B (n_111), .ZN (n_122));
  DFFSNQ_X1 \play_function_counter_reg[2] (.SN (1'b1), .CLK (clk), .D
       (n_102), .Q (play_function_counter[2]));
  DFFSNQ_X1 \play_function_counter_reg[0] (.SN (1'b1), .CLK (clk), .D
       (n_96), .Q (play_function_counter[0]));
  DFFSNQ_X1 \play_function_counter_reg[1] (.SN (1'b1), .CLK (clk), .D
       (n_104), .Q (play_function_counter[1]));
  DFFRNQ_X1 \state_reg[2] (.RN (n_130), .CLK (clk), .D (n_94), .Q
       (state[2]));
  DFFSNQ_X1 play_function_flag_reg(.SN (1'b1), .CLK (clk), .D (n_95),
       .Q (play_function_flag));
  DFFSNQ_X1 food_gate_reg(.SN (1'b1), .CLK (clk), .D (n_100), .Q
       (food_gate));
  OAI21_X1 g3744(.A1 (n_85), .A2 (n_103), .B (n_77), .ZN (n_110));
  DFFRNQ_X1 \state_reg[3] (.RN (n_130), .CLK (clk), .D (n_106), .Q
       (state[3]));
  INV_X1 g3775(.I (n_111), .ZN (n_109));
  NAND2_X1 g3750(.A1 (n_107), .A2 (n_105), .ZN (n_108));
  AOI22_X1 g3776(.A1 (n_82), .A2 (set_food_weight[4]), .B1 (n_46), .B2
       (n_98), .ZN (n_111));
  NAND4_X1 g3777(.A1 (n_68), .A2 (n_61), .A3 (n_105), .A4 (n_65), .ZN
       (n_106));
  OAI22_X1 g3778(.A1 (n_37), .A2 (n_103), .B1 (n_24), .B2 (n_101), .ZN
       (n_104));
  OAI22_X1 g3753(.A1 (n_79), .A2 (n_103), .B1 (n_78), .B2 (n_101), .ZN
       (n_102));
  INV_X1 g3786(.I (n_89), .ZN (n_100));
  AOI22_X1 g3788(.A1 (n_99), .A2 (set_food_weight[4]), .B1 (n_91), .B2
       (n_98), .ZN (n_112));
  DFFSNQ_X1 play_function_fail_flag_reg(.SN (1'b1), .CLK (clk), .D
       (n_81), .Q (play_function_fail_flag));
  NOR4_X1 g3769(.A1 (n_66), .A2 (n_28), .A3 (n_33), .A4 (n_34), .ZN
       (n_97));
  NAND2_X1 g3771(.A1 (n_84), .A2 (n_63), .ZN (n_96));
  OAI22_X1 g3772(.A1 (n_41), .A2 (n_80), .B1 (n_1), .B2 (n_69), .ZN
       (n_95));
  NAND3_X1 g3774(.A1 (n_71), .A2 (n_74), .A3 (n_59), .ZN (n_94));
  AOI21_X1 g3783(.A1 (n_39), .A2 (n_47), .B (n_60), .ZN (n_93));
  NAND3_X1 g3785(.A1 (n_91), .A2 (n_90), .A3 (n_17), .ZN (n_92));
  AOI22_X1 g3787(.A1 (food_gate), .A2 (n_49), .B1 (n_88), .B2 (n_32),
       .ZN (n_89));
  NAND3_X1 g3757(.A1 (n_87), .A2 (play_function_flag), .A3 (n_45), .ZN
       (n_107));
  OAI22_X1 g3800(.A1 (n_43), .A2 (n_72), .B1 (n_30), .B2 (n_70), .ZN
       (n_86));
  XOR2_X1 g3755(.A1 (n_58), .A2 (play_function_counter[3]), .Z (n_85));
  OAI21_X1 g3781(.A1 (n_8), .A2 (n_76), .B (play_function_counter[0]),
       .ZN (n_84));
  NAND2_X1 g3782(.A1 (warning), .A2 (n_56), .ZN (n_83));
  NOR2_X1 g3790(.A1 (n_99), .A2 (set_food_weight[5]), .ZN (n_82));
  OAI21_X1 g3797(.A1 (n_55), .A2 (n_80), .B (n_52), .ZN (n_81));
  XOR2_X1 g3779(.A1 (n_57), .A2 (n_78), .Z (n_79));
  NAND2_X1 g3789(.A1 (play_function_counter[3]), .A2 (n_76), .ZN
       (n_77));
  NOR2_X1 g3791(.A1 (state[3]), .A2 (n_40), .ZN (n_75));
  AOI21_X1 g3792(.A1 (n_73), .A2 (n_23), .B (n_87), .ZN (n_74));
  NAND3_X1 g3793(.A1 (n_64), .A2 (n_72), .A3 (play_function_pedal), .ZN
       (n_105));
  NAND3_X1 g3794(.A1 (n_67), .A2 (n_70), .A3 (state[3]), .ZN (n_71));
  AOI21_X1 g3795(.A1 (n_54), .A2 (state[3]), .B (n_76), .ZN (n_69));
  NAND2_X1 g3796(.A1 (n_42), .A2 (n_67), .ZN (n_68));
  NAND4_X1 g3799(.A1 (n_18), .A2 (n_29), .A3 (n_16), .A4 (n_20), .ZN
       (n_66));
  NAND2_X1 g3801(.A1 (n_50), .A2 (n_62), .ZN (n_103));
  NAND2_X1 g3803(.A1 (n_64), .A2 (newday), .ZN (n_65));
  NAND2_X1 g3809(.A1 (n_36), .A2 (n_62), .ZN (n_63));
  NAND3_X1 g3811(.A1 (n_60), .A2 (n_26), .A3 (play_function_flag), .ZN
       (n_61));
  NAND3_X1 g3813(.A1 (n_64), .A2 (n_2), .A3 (refill_detector), .ZN
       (n_59));
  INV_X1 g3818(.I (n_99), .ZN (n_91));
  NAND2_X1 g3784(.A1 (n_57), .A2 (play_function_counter[2]), .ZN
       (n_58));
  NAND4_X1 g3798(.A1 (n_55), .A2 (n_54), .A3 (n_48), .A4 (n_53), .ZN
       (n_56));
  NAND2_X1 g3806(.A1 (play_function_fail_flag), .A2 (n_21), .ZN (n_52));
  INV_X1 g3807(.I (n_76), .ZN (n_101));
  NOR3_X1 g3810(.A1 (n_50), .A2 (n_31), .A3 (n_22), .ZN (n_51));
  NAND4_X1 g3815(.A1 (n_48), .A2 (n_9), .A3 (n_6), .A4 (n_130), .ZN
       (n_49));
  OAI21_X1 g3816(.A1 (n_12), .A2 (n_38), .B (n_48), .ZN (n_47));
  AOI22_X1 g3819(.A1 (n_46), .A2 (set_food_weight[4]), .B1 (n_27), .B2
       (set_food_weight[6]), .ZN (n_99));
  NAND4_X1 g3773(.A1 (n_5), .A2 (n_138), .A3 (n_44), .A4
       (food_weight[0]), .ZN (n_45));
  INV_X1 g3833(.I (n_64), .ZN (n_43));
  NOR2_X1 g3802(.A1 (n_70), .A2 (n_48), .ZN (n_42));
  NAND2_X1 g3804(.A1 (n_70), .A2 (n_88), .ZN (n_41));
  AOI21_X1 g3805(.A1 (n_10), .A2 (food_weight[5]), .B (food_weight[6]),
       .ZN (n_90));
  OAI21_X1 g3808(.A1 (n_88), .A2 (state[3]), .B (n_53), .ZN (n_76));
  AOI21_X1 g3812(.A1 (n_39), .A2 (n_38), .B (n_88), .ZN (n_40));
  XOR2_X1 g3817(.A1 (n_25), .A2 (play_function_counter[1]), .Z (n_37));
  NOR2_X1 g3820(.A1 (n_54), .A2 (play_function_counter[0]), .ZN (n_36));
  INV_X1 g3825(.I (n_80), .ZN (n_62));
  NAND2_X1 g3827(.A1 (n_34), .A2 (n_33), .ZN (n_35));
  NOR2_X1 g3828(.A1 (n_31), .A2 (reset), .ZN (n_32));
  NOR2_X1 g3829(.A1 (n_31), .A2 (state[1]), .ZN (n_87));
  INV_X1 g3830(.I (n_30), .ZN (n_67));
  NOR3_X1 g3834(.A1 (n_54), .A2 (state[2]), .A3 (state[3]), .ZN (n_64));
  AOI22_X1 g3840(.A1 (n_14), .A2 (set_food_weight[1]), .B1 (n_44), .B2
       (set_food_weight[2]), .ZN (n_29));
  XNOR2_X1 g3841(.A1 (n_27), .A2 (food_weight[5]), .ZN (n_28));
  INV_X1 g3860(.I (n_31), .ZN (n_60));
  INV_X1 g3856(.I (n_54), .ZN (n_26));
  NOR2_X1 g3821(.A1 (n_25), .A2 (n_24), .ZN (n_57));
  NOR2_X1 g3822(.A1 (n_50), .A2 (state[3]), .ZN (n_73));
  NAND2_X1 g3823(.A1 (state[2]), .A2 (n_22), .ZN (n_23));
  NAND2_X1 g3824(.A1 (n_88), .A2 (n_53), .ZN (n_21));
  NAND2_X1 g3826(.A1 (state[3]), .A2 (n_53), .ZN (n_80));
  NAND2_X1 g3831(.A1 (n_88), .A2 (n_39), .ZN (n_30));
  AOI22_X1 g3837(.A1 (n_19), .A2 (food_weight[2]), .B1 (n_13), .B2
       (set_food_weight[0]), .ZN (n_20));
  AOI22_X1 g3838(.A1 (n_138), .A2 (set_food_weight[3]), .B1 (n_17), .B2
       (set_food_weight[4]), .ZN (n_18));
  AOI22_X1 g3839(.A1 (n_15), .A2 (food_weight[3]), .B1 (n_98), .B2
       (food_weight[4]), .ZN (n_16));
  NOR2_X1 g3858(.A1 (n_27), .A2 (set_food_weight[6]), .ZN (n_46));
  NOR2_X1 g3843(.A1 (n_14), .A2 (set_food_weight[1]), .ZN (n_34));
  NOR2_X1 g3842(.A1 (n_13), .A2 (set_food_weight[0]), .ZN (n_33));
  INV_X1 g3846(.I (n_50), .ZN (n_12));
  INV_X1 g3851(.I (n_10), .ZN (n_11));
  NAND2_X1 g3855(.A1 (state[0]), .A2 (n_0), .ZN (n_55));
  NAND2_X1 g3859(.A1 (n_39), .A2 (state[1]), .ZN (n_9));
  NOR2_X1 g3862(.A1 (n_48), .A2 (state[1]), .ZN (n_8));
  XNOR2_X1 g3835(.A1 (food_weight[6]), .A2 (set_food_weight[6]), .ZN
       (n_7));
  NAND2_X1 g3857(.A1 (n_6), .A2 (state[1]), .ZN (n_54));
  NAND2_X1 g3861(.A1 (state[2]), .A2 (n_48), .ZN (n_31));
  NOR4_X1 g3814(.A1 (food_weight[4]), .A2 (food_weight[1]), .A3
       (food_weight[6]), .A4 (food_weight[5]), .ZN (n_5));
  NOR3_X1 g3832(.A1 (refill_detector), .A2 (timesup), .A3 (newday), .ZN
       (n_72));
  NAND4_X1 g3836(.A1 (play_function_counter[1]), .A2
       (play_function_counter[2]), .A3 (play_function_counter[3]), .A4
       (play_function_counter[0]), .ZN (n_70));
  NAND2_X1 g3854(.A1 (set_food_weight[3]), .A2 (set_food_weight[2]),
       .ZN (n_4));
  NOR2_X1 g3844(.A1 (state[1]), .A2 (initialize_flag), .ZN (n_38));
  NOR2_X1 g3849(.A1 (food_weight[6]), .A2 (food_weight[5]), .ZN (n_3));
  NOR2_X1 g3853(.A1 (state[2]), .A2 (reset), .ZN (n_53));
  NOR2_X1 g3848(.A1 (state[0]), .A2 (state[1]), .ZN (n_88));
  NOR2_X1 g3850(.A1 (refill_detector), .A2 (cap_detector), .ZN (n_22));
  NAND2_X1 g3852(.A1 (set_food_weight[6]), .A2 (set_food_weight[5]),
       .ZN (n_10));
  NAND2_X1 g3845(.A1 (state[1]), .A2 (play_function_counter[0]), .ZN
       (n_25));
  NAND2_X1 g3847(.A1 (state[0]), .A2 (state[1]), .ZN (n_50));
  INV_X1 g3877(.I (reset), .ZN (n_130));
  INV_X1 g3872(.I (food_weight[1]), .ZN (n_14));
  INV_X1 g3871(.I (food_weight[4]), .ZN (n_17));
  INV_X1 g3868(.I (play_function_counter[2]), .ZN (n_78));
  INV_X1 g3880(.I (food_weight[2]), .ZN (n_44));
  INV_X1 g3874(.I (newday), .ZN (n_2));
  INV_X1 g3873(.I (food_weight[3]), .ZN (n_138));
  INV_X1 g3863(.I (state[2]), .ZN (n_39));
  INV_X1 g3879(.I (set_food_weight[4]), .ZN (n_98));
  INV_X1 g3878(.I (set_food_weight[3]), .ZN (n_15));
  INV_X1 g3865(.I (state[3]), .ZN (n_48));
  INV_X1 g3869(.I (play_function_counter[1]), .ZN (n_24));
  INV_X1 g3867(.I (play_function_flag), .ZN (n_1));
  INV_X1 g3875(.I (set_food_weight[2]), .ZN (n_19));
  INV_X1 g3866(.I (state[0]), .ZN (n_6));
  INV_X1 g3870(.I (food_weight[0]), .ZN (n_13));
  INV_X1 g3864(.I (state[1]), .ZN (n_0));
  INV_X1 g3876(.I (set_food_weight[5]), .ZN (n_27));
endmodule

