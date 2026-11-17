Function Glf_0(args)
	On Error Resume Next
		Dim kwargs : Set kwargs = GlfKwargs()
	kwargs.Add "action",  "left"
	Set Glf_0 = kwargs
	If Err Then Glf_0 = Null
End Function
Function Glf_1(args)
	On Error Resume Next
		Dim kwargs : Set kwargs = GlfKwargs()
	kwargs.Add "action",  "right"
	Set Glf_1 = kwargs
	If Err Then Glf_1 = Null
End Function
Function Glf_2(args)
	On Error Resume Next
		Dim kwargs : Set kwargs = GlfKwargs()
	kwargs.Add "action",  "select"
	Set Glf_2 = kwargs
	If Err Then Glf_2 = Null
End Function
Function Glf_3(args)
	Glf_3 = 4000
End Function
Function Glf_4(args)
	Glf_4 = 20000
End Function
Function Glf_5(args)
	Glf_5 = 0
End Function
Function Glf_6(args)
	On Error Resume Next
	    Glf_6 = glf_dispatch_current_kwargs("num")=1
	If Err Then Glf_6 = False
End Function
Function Glf_7(args)
	On Error Resume Next
	    Glf_7 = glf_dispatch_current_kwargs("num")=2
	If Err Then Glf_7 = False
End Function
Function Glf_8(args)
	On Error Resume Next
	    Glf_8 = glf_dispatch_current_kwargs("num")=3
	If Err Then Glf_8 = False
End Function
Function Glf_9(args)
	On Error Resume Next
	    Glf_9 = glf_dispatch_current_kwargs("num")=4
	If Err Then Glf_9 = False
End Function
Function Glf_10(args)
	Glf_10 = ""
End Function
Function Glf_11(args)
	Glf_11 = "WARNING"
End Function
Function Glf_12(args)
	Glf_12 = "TILT"
End Function
Function Glf_13(args)
	On Error Resume Next
	    Glf_13 = devices.timers.attract_display.ticks = 1
	If Err Then Glf_13 = False
End Function
Function Glf_14(args)
	On Error Resume Next
	    Glf_14 = devices.timers.attract_display.ticks = 7
	If Err Then Glf_14 = False
End Function
Function Glf_15(args)
	On Error Resume Next
	    Glf_15 = devices.timers.attract_display.ticks = 11
	If Err Then Glf_15 = False
End Function
Function Glf_16(args)
	On Error Resume Next
	    Glf_16 = devices.timers.attract_display.ticks = 15
	If Err Then Glf_16 = False
End Function
Function Glf_17(args)
	On Error Resume Next
	    Glf_17 = devices.timers.attract_display.ticks = 19
	If Err Then Glf_17 = False
End Function
Function Glf_18(args)
	On Error Resume Next
	    Glf_18 = devices.timers.attract_display.ticks = 23
	If Err Then Glf_18 = False
End Function
Function Glf_19(args)
	On Error Resume Next
	    Glf_19 = devices.timers.attract_display.ticks = 26
	If Err Then Glf_19 = False
End Function
Function Glf_20(args)
	Glf_20 = -1
End Function
Function Glf_21(args)
	Glf_21 = 30
End Function
Function Glf_22(args)
	Glf_22 = "GLF"
End Function
Function Glf_23(args)
	Glf_23 = "EXAMPLE"
End Function
Function Glf_24(args)
	Glf_24 = "TABLE  "
End Function
Function Glf_25(args)
	Glf_25 = glf_machine_vars("score_1_label").GetValue()
End Function
Function Glf_26(args)
	Glf_26 = glf_machine_vars("score_1_name").GetValue()
End Function
Function Glf_27(args)
	Glf_27 = glf_machine_vars("score_1_value").GetValue()
End Function
Function Glf_28(args)
	Glf_28 = glf_machine_vars("score_2_label").GetValue()
End Function
Function Glf_29(args)
	Glf_29 = glf_machine_vars("score_2_name").GetValue()
End Function
Function Glf_30(args)
	Glf_30 = glf_machine_vars("score_2_value").GetValue()
End Function
Function Glf_31(args)
	Glf_31 = glf_machine_vars("score_3_label").GetValue()
End Function
Function Glf_32(args)
	Glf_32 = glf_machine_vars("score_3_name").GetValue()
End Function
Function Glf_33(args)
	Glf_33 = glf_machine_vars("score_3_value").GetValue()
End Function
Function Glf_34(args)
	Glf_34 = glf_machine_vars("score_4_label").GetValue()
End Function
Function Glf_35(args)
	Glf_35 = glf_machine_vars("score_4_name").GetValue()
End Function
Function Glf_36(args)
	Glf_36 = glf_machine_vars("score_4_value").GetValue()
End Function
Function Glf_37(args)
	Glf_37 = "LAST "
End Function
Function Glf_38(args)
	Glf_38 = "SCORES "
End Function
Function Glf_39(args)
	Glf_39 = glf_machine_vars("player1_score").GetValue()
End Function
Function Glf_40(args)
	Glf_40 = glf_machine_vars("player2_score").GetValue()
End Function
Function Glf_41(args)
	Glf_41 = glf_machine_vars("player3_score").GetValue()
End Function
Function Glf_42(args)
	Glf_42 = glf_machine_vars("player4_score").GetValue()
End Function
Function Glf_43(args)
	On Error Resume Next
	    Glf_43 = GetPlayerState("ball_just_started") = 1
	If Err Then Glf_43 = False
End Function
Function Glf_44(args)
	On Error Resume Next
	    Glf_44 = GetPlayerState("number") = 1
	If Err Then Glf_44 = False
End Function
Function Glf_45(args)
	On Error Resume Next
	    Glf_45 = GetPlayerState("number") = 2
	If Err Then Glf_45 = False
End Function
Function Glf_46(args)
	On Error Resume Next
	    Glf_46 = GetPlayerState("number") = 3
	If Err Then Glf_46 = False
End Function
Function Glf_47(args)
	On Error Resume Next
	    Glf_47 = GetPlayerState("number") = 4
	If Err Then Glf_47 = False
End Function
Function Glf_48(args)
	Glf_48 = 6000
End Function
Function Glf_49(args)
	Glf_49 = 3000
End Function
Function Glf_50(args)
	Glf_50 = 2000
End Function
Function Glf_51(args)
	Glf_51 = 500
End Function
Function Glf_52(args)
	Glf_52 = Glf_FormatValue(GetPlayerStateForPlayer(0, "score"),"0>2,")
End Function
Function Glf_53(args)
	Glf_53 = Glf_FormatValue(GetPlayerStateForPlayer(1, "score"),"0>2,")
End Function
Function Glf_54(args)
	Glf_54 = Glf_FormatValue(GetPlayerStateForPlayer(2, "score"),"0>2,")
End Function
Function Glf_55(args)
	Glf_55 = Glf_FormatValue(GetPlayerStateForPlayer(3, "score"),"0>2,")
End Function
Function Glf_56(args)
	Glf_56 = Glf_FormatValue(GetPlayerState("ball"),"0>2")
End Function
Function Glf_57(args)
	Glf_57 = Glf_FormatValue(GetPlayerStateForPlayer(0, "score"),"0>2")
End Function
Function Glf_58(args)
	Glf_58 = Glf_FormatValue(GetPlayerStateForPlayer(1, "score"),"0>2")
End Function
Function Glf_59(args)
	Glf_59 = Glf_FormatValue(GetPlayerStateForPlayer(2, "score"),"0>2")
End Function
Function Glf_60(args)
	Glf_60 = Glf_FormatValue(GetPlayerStateForPlayer(3, "score"),"0>2")
End Function
Function Glf_61(args)
	Glf_61 = 1
End Function
Function Glf_62(args)
	On Error Resume Next
	    Glf_62 = GetPlayerState("ball_just_started") = 1
	If Err Then Glf_62 = False
End Function
Function Glf_63(args)
	On Error Resume Next
	    Glf_63 = GetPlayerState("shot_ss1") = 1
	If Err Then Glf_63 = False
End Function
Function Glf_64(args)
	On Error Resume Next
	    Glf_64 = GetPlayerState("shot_ss2") = 1
	If Err Then Glf_64 = False
End Function
Function Glf_65(args)
	On Error Resume Next
	    Glf_65 = GetPlayerState("shot_ss3") = 1
	If Err Then Glf_65 = False
End Function
Function Glf_66(args)
	On Error Resume Next
	    Glf_66 = GetPlayerState("shot_ss4") = 1
	If Err Then Glf_66 = False
End Function
Function Glf_67(args)
	Glf_67 = 5
End Function
Function Glf_68(args)
	On Error Resume Next
	    Glf_68 = GetPlayerState("shot_kickback_ready") > 0
	If Err Then Glf_68 = False
End Function
Function Glf_69(args)
	On Error Resume Next
	    Glf_69 = GetPlayerState("ss_running") = 0
	If Err Then Glf_69 = False
End Function
Function Glf_70(args)
	Glf_70 = 3
End Function
Function Glf_71(args)
	On Error Resume Next
	    Glf_71 = GetPlayerState("target_hit_count") >= 6
	If Err Then Glf_71 = False
End Function
Function Glf_72(args)
	On Error Resume Next
	    Glf_72 = GetPlayerState("shot_bank_target1") = 1
	If Err Then Glf_72 = False
End Function
Function Glf_73(args)
	On Error Resume Next
	    Glf_73 = GetPlayerState("shot_bank_target2") = 1
	If Err Then Glf_73 = False
End Function
Function Glf_74(args)
	On Error Resume Next
	    Glf_74 = GetPlayerState("shot_bank_target3") = 1
	If Err Then Glf_74 = False
End Function
Function Glf_75(args)
	On Error Resume Next
	    Glf_75 = GetPlayerState("shot_bank_target4") = 1
	If Err Then Glf_75 = False
End Function
Function Glf_76(args)
	On Error Resume Next
	    Glf_76 = GetPlayerState("shot_bank_target5") = 1
	If Err Then Glf_76 = False
End Function
Function Glf_77(args)
	On Error Resume Next
	    Glf_77 = GetPlayerState("shot_bank_target6") = 1
	If Err Then Glf_77 = False
End Function
Function Glf_78(args)
	On Error Resume Next
	    Glf_78 = GetPlayerState("extra_balls") = 0
	If Err Then Glf_78 = False
End Function
Function Glf_79(args)
	On Error Resume Next
	    Glf_79 = GetPlayerState("extra_balls") > 0
	If Err Then Glf_79 = False
End Function
Function Glf_80(args)
	On Error Resume Next
	    Glf_80 = GetPlayerState("shot_eb_ready") = 1
	If Err Then Glf_80 = False
End Function
Function Glf_81(args)
	On Error Resume Next
	    Glf_81 = GetPlayerState("extra_ball_eb_awarded") < 3
	If Err Then Glf_81 = False
End Function
Function Glf_82(args)
	Glf_82 = " EXTRA "
End Function
Function Glf_83(args)
	Glf_83 = " BALL "
End Function
Function Glf_84(args)
	On Error Resume Next
	    Glf_84 = GetPlayerState("shot_left_inlane") = 1
	If Err Then Glf_84 = False
End Function
Function Glf_85(args)
	On Error Resume Next
	    Glf_85 = GetPlayerState("shot_right_inlane") = 1
	If Err Then Glf_85 = False
End Function
Function Glf_86(args)
	On Error Resume Next
	    Glf_86 = GetPlayerState("shot_left_orbit") = 1
	If Err Then Glf_86 = False
End Function
Function Glf_87(args)
	On Error Resume Next
	    Glf_87 = GetPlayerState("shot_right_orbit") = 1
	If Err Then Glf_87 = False
End Function
Function Glf_88(args)
	On Error Resume Next
	    Glf_88 = GetPlayerState("shot_left_orbit") = 0
	If Err Then Glf_88 = False
End Function
Function Glf_89(args)
	On Error Resume Next
	    Glf_89 = GetPlayerState("shot_left_orbit") = 1
	If Err Then Glf_89 = False
End Function
Function Glf_90(args)
	On Error Resume Next
	    Glf_90 = GetPlayerState("spin_show") = 1
	If Err Then Glf_90 = False
End Function
Function Glf_91(args)
	On Error Resume Next
	    Glf_91 = GetPlayerState("spin_show") = 2
	If Err Then Glf_91 = False
End Function
Function Glf_92(args)
	On Error Resume Next
	    Glf_92 = GetPlayerState("shot_right_orbit") = 0
	If Err Then Glf_92 = False
End Function
Function Glf_93(args)
	On Error Resume Next
	    Glf_93 = GetPlayerState("shot_right_orbit") = 1
	If Err Then Glf_93 = False
End Function
Function Glf_94(args)
	On Error Resume Next
	    Glf_94 = GetPlayerState("spin_show") = 1
	If Err Then Glf_94 = False
End Function
Function Glf_95(args)
	On Error Resume Next
	    Glf_95 = GetPlayerState("spin_show") = 2
	If Err Then Glf_95 = False
End Function
Function Glf_96(args)
	Glf_96 = 4
End Function
Function Glf_97(args)
	Glf_97 = 2
End Function
Function Glf_98(args)
	On Error Resume Next
	    Glf_98 = GetPlayerState("shot_ramp") = 1
	If Err Then Glf_98 = False
End Function
Function Glf_99(args)
	On Error Resume Next
	    Glf_99 = glf_machine_vars("top_ball_locked").GetValue() = 1
	If Err Then Glf_99 = False
End Function
Function Glf_100(args)
	On Error Resume Next
	    Glf_100 = glf_machine_vars("top_ball_locked").GetValue() = 0 And GetPlayerState("locks_qualfiied") = 1
	If Err Then Glf_100 = False
End Function
Function Glf_101(args)
	On Error Resume Next
	    Glf_101 = glf_machine_vars("top_ball_locked").GetValue() = 0 And GetPlayerState("locks_qualfiied") = 0 And GetPlayerState("shot_top_lock") = 2
	If Err Then Glf_101 = False
End Function
Function Glf_102(args)
	On Error Resume Next
	    Glf_102 = glf_machine_vars("bottom_ball_locked").GetValue() = 1
	If Err Then Glf_102 = False
End Function
Function Glf_103(args)
	On Error Resume Next
	    Glf_103 = glf_machine_vars("bottom_ball_locked").GetValue() = 0 And GetPlayerState("locks_qualfiied") = 1
	If Err Then Glf_103 = False
End Function
Function Glf_104(args)
	On Error Resume Next
	    Glf_104 = glf_machine_vars("bottom_ball_locked").GetValue() = 0 And GetPlayerState("locks_qualfiied") = 0 And GetPlayerState("shot_bottom_lock") = 2
	If Err Then Glf_104 = False
End Function
Function Glf_105(args)
	On Error Resume Next
	    Glf_105 = GetPlayerState("shot_left_jackpot") = 1
	If Err Then Glf_105 = False
End Function
Function Glf_106(args)
	On Error Resume Next
	    Glf_106 = GetPlayerState("shot_right_jackpot") = 1
	If Err Then Glf_106 = False
End Function
Function Glf_107(args)
	Glf_107 = 5000
End Function
Function Glf_108(args)
	Glf_108 = 10000
End Function
Function Glf_109(args)
	Glf_109 = 15000
End Function
Function Glf_110(args)
	On Error Resume Next
	    Glf_110 = glf_machine_vars("top_ball_locked").GetValue() = 1 And glf_machine_vars("bottom_ball_locked").GetValue() = 1
	If Err Then Glf_110 = False
End Function
Function Glf_111(args)
	On Error Resume Next
	    Glf_111 = glf_machine_vars("top_ball_locked").GetValue() = 0 OR glf_machine_vars("bottom_ball_locked").GetValue() = 0
	If Err Then Glf_111 = False
End Function
Function Glf_112(args)
	On Error Resume Next
	    Glf_112 = GetPlayerState("shot_top_lock") <> 1 And GetPlayerState("shot_bottom_lock") <> 1
	If Err Then Glf_112 = False
End Function
Function Glf_113(args)
	On Error Resume Next
	    Glf_113 = GetPlayerState("shot_top_lock") = 1 And GetPlayerState("shot_bottom_lock") = 1
	If Err Then Glf_113 = False
End Function
Function Glf_114(args)
	On Error Resume Next
	    Glf_114 = GetPlayerState("shot_top_lock") = 1 And GetPlayerState("shot_bottom_lock") <> 1
	If Err Then Glf_114 = False
End Function
Function Glf_115(args)
	On Error Resume Next
	    Glf_115 = GetPlayerState("shot_top_lock") <> 1 And GetPlayerState("shot_bottom_lock") = 1
	If Err Then Glf_115 = False
End Function
Function Glf_116(args)
	On Error Resume Next
	    Glf_116 = GetPlayerState("shot_bottom_lock") = 0 And GetPlayerState("shot_top_lock") = 0
	If Err Then Glf_116 = False
End Function
Function Glf_117(args)
	On Error Resume Next
	    Glf_117 = GetPlayerState("shot_bottom_lock") = 2 And GetPlayerState("shot_top_lock") = 0
	If Err Then Glf_117 = False
End Function
Function Glf_118(args)
	On Error Resume Next
	    Glf_118 = GetPlayerState("shot_bottom_lock") = 0 And GetPlayerState("shot_top_lock") = 2
	If Err Then Glf_118 = False
End Function
Function Glf_119(args)
	On Error Resume Next
	    Glf_119 = GetPlayerState("shot_mb_start") = 1
	If Err Then Glf_119 = False
End Function
Function Glf_120(args)
	Glf_120 = 10
End Function
Function Glf_121(args)
	On Error Resume Next
	    Glf_121 = glf_state_machines("multiball").GetValue("state")<>"mb_running"
	If Err Then Glf_121 = False
End Function
Function Glf_122(args)
	Glf_122 = glf_machine_vars("bottom_ball_locked").GetValue() + glf_machine_vars("top_ball_locked").GetValue()
End Function
Function Glf_123(args)
	Glf_123 = 1 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_124(args)
	Glf_124 = 10 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_125(args)
	Glf_125 = 100 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_126(args)
	Glf_126 = 333 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_127(args)
	Glf_127 = 500 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_128(args)
	Glf_128 = 1000 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_129(args)
	Glf_129 = 2000 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_130(args)
	Glf_130 = 3000 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_131(args)
	Glf_131 = 3333 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_132(args)
	Glf_132 = 5000 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_133(args)
	Glf_133 = 10000 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_134(args)
	Glf_134 = 20000 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_135(args)
	Glf_135 = 30000 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_136(args)
	Glf_136 = 33333 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_137(args)
	Glf_137 = 50000 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_138(args)
	Glf_138 = 100000 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_139(args)
	Glf_139 = 200000 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_140(args)
	Glf_140 = 500000 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_141(args)
	Glf_141 = 1000000 * GetPlayerState("scoring_multiplier")
End Function
Function Glf_142(args)
	On Error Resume Next
	    Glf_142 = GetPlayerState("shot_bonus_light1") = 0
	If Err Then Glf_142 = False
End Function
Function Glf_143(args)
	On Error Resume Next
	    Glf_143 = GetPlayerState("shot_bonus_light1") = 1 And GetPlayerState("shot_bonus_light2") = 0
	If Err Then Glf_143 = False
End Function
Function Glf_144(args)
	On Error Resume Next
	    Glf_144 = GetPlayerState("shot_bonus_light2") = 1 And GetPlayerState("shot_bonus_light3") = 0
	If Err Then Glf_144 = False
End Function
Function Glf_145(args)
	On Error Resume Next
	    Glf_145 = GetPlayerState("shot_bonus_light3") = 1 And GetPlayerState("shot_bonus_light4") = 0
	If Err Then Glf_145 = False
End Function
Function Glf_146(args)
	On Error Resume Next
	    Glf_146 = GetPlayerState("shot_bonus_light4") = 1 And GetPlayerState("shot_bonus_light5") = 0
	If Err Then Glf_146 = False
End Function
Function Glf_147(args)
	On Error Resume Next
	    Glf_147 = GetPlayerState("shot_bonus_light5") = 1 And GetPlayerState("shot_bonus_light6") = 0
	If Err Then Glf_147 = False
End Function
Function Glf_148(args)
	On Error Resume Next
	    Glf_148 = GetPlayerState("shot_bonus_light6") = 1 And GetPlayerState("shot_bonus_light7") = 0
	If Err Then Glf_148 = False
End Function
Function Glf_149(args)
	On Error Resume Next
	    Glf_149 = GetPlayerState("shot_bonus_light7") = 1 And GetPlayerState("shot_bonus_light8") = 0
	If Err Then Glf_149 = False
End Function
Function Glf_150(args)
	On Error Resume Next
	    Glf_150 = GetPlayerState("shot_bonus_light8") = 1
	If Err Then Glf_150 = False
End Function
Function Glf_151(args)
	On Error Resume Next
	    Glf_151 = Glf_GameVariable("tilted") = False
	If Err Then Glf_151 = False
End Function
Function Glf_152(args)
	On Error Resume Next
	    Glf_152 = GetPlayerState("shot_bonus_light1") = 1
	If Err Then Glf_152 = False
End Function
Function Glf_153(args)
	On Error Resume Next
	    Glf_153 = GetPlayerState("shot_bonus_light1") = 0
	If Err Then Glf_153 = False
End Function
Function Glf_154(args)
	On Error Resume Next
	    Glf_154 = GetPlayerState("shot_bonus_light2") = 1
	If Err Then Glf_154 = False
End Function
Function Glf_155(args)
	On Error Resume Next
	    Glf_155 = GetPlayerState("shot_bonus_light2") = 0
	If Err Then Glf_155 = False
End Function
Function Glf_156(args)
	On Error Resume Next
	    Glf_156 = GetPlayerState("shot_bonus_light3") = 1
	If Err Then Glf_156 = False
End Function
Function Glf_157(args)
	On Error Resume Next
	    Glf_157 = GetPlayerState("shot_bonus_light3") = 0
	If Err Then Glf_157 = False
End Function
Function Glf_158(args)
	On Error Resume Next
	    Glf_158 = GetPlayerState("shot_bonus_light4") = 1
	If Err Then Glf_158 = False
End Function
Function Glf_159(args)
	On Error Resume Next
	    Glf_159 = GetPlayerState("shot_bonus_light4") = 0
	If Err Then Glf_159 = False
End Function
Function Glf_160(args)
	On Error Resume Next
	    Glf_160 = GetPlayerState("shot_bonus_light5") = 1
	If Err Then Glf_160 = False
End Function
Function Glf_161(args)
	On Error Resume Next
	    Glf_161 = GetPlayerState("shot_bonus_light5") = 0
	If Err Then Glf_161 = False
End Function
Function Glf_162(args)
	On Error Resume Next
	    Glf_162 = GetPlayerState("shot_bonus_light6") = 1
	If Err Then Glf_162 = False
End Function
Function Glf_163(args)
	On Error Resume Next
	    Glf_163 = GetPlayerState("shot_bonus_light6") = 0
	If Err Then Glf_163 = False
End Function
Function Glf_164(args)
	On Error Resume Next
	    Glf_164 = GetPlayerState("shot_bonus_light7") = 1
	If Err Then Glf_164 = False
End Function
Function Glf_165(args)
	On Error Resume Next
	    Glf_165 = GetPlayerState("shot_bonus_light7") = 0
	If Err Then Glf_165 = False
End Function
Function Glf_166(args)
	On Error Resume Next
	    Glf_166 = GetPlayerState("shot_bonus_light8") = 1
	If Err Then Glf_166 = False
End Function
Function Glf_167(args)
	On Error Resume Next
	    Glf_167 = GetPlayerState("shot_bonus_light8") = 0
	If Err Then Glf_167 = False
End Function
Function Glf_168(args)
	On Error Resume Next
	    Glf_168 = GetPlayerState("shot_bonus_light1") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_168 = False
End Function
Function Glf_169(args)
	On Error Resume Next
	    Glf_169 = GetPlayerState("shot_bonus_light2") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_169 = False
End Function
Function Glf_170(args)
	On Error Resume Next
	    Glf_170 = GetPlayerState("shot_bonus_light3") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_170 = False
End Function
Function Glf_171(args)
	On Error Resume Next
	    Glf_171 = GetPlayerState("shot_bonus_light4") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_171 = False
End Function
Function Glf_172(args)
	On Error Resume Next
	    Glf_172 = GetPlayerState("shot_bonus_light5") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_172 = False
End Function
Function Glf_173(args)
	On Error Resume Next
	    Glf_173 = GetPlayerState("shot_bonus_light6") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_173 = False
End Function
Function Glf_174(args)
	On Error Resume Next
	    Glf_174 = GetPlayerState("shot_bonus_light7") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_174 = False
End Function
Function Glf_175(args)
	On Error Resume Next
	    Glf_175 = GetPlayerState("shot_bonus_light8") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_175 = False
End Function
Function Glf_176(args)
	Glf_176 = 500000 * GetPlayerState("bonus_multiplier")
End Function
Function Glf_177(args)
	Glf_177 = GetPlayerState("bonus_total")
End Function
Function Glf_178(args)
	Glf_178 = GetPlayerState("bonus_count") + 2
End Function
Function Glf_179(args)
	Glf_179 = "BONUS"
End Function
Function Glf_180(args)
	Glf_180 = "00"
End Function
Function Glf_181(args)
	Glf_181 = "500000 * " & GetPlayerState("bonus_multiplier")
End Function
Function Glf_182(args)
	Glf_182 = "1000000 * " & GetPlayerState("bonus_multiplier")
End Function
Function Glf_183(args)
	Glf_183 = "1500000 * " & GetPlayerState("bonus_multiplier")
End Function
Function Glf_184(args)
	Glf_184 = "2000000 * " & GetPlayerState("bonus_multiplier")
End Function
Function Glf_185(args)
	Glf_185 = "2500000 * " & GetPlayerState("bonus_multiplier")
End Function
Function Glf_186(args)
	Glf_186 = "3000000 * " & GetPlayerState("bonus_multiplier")
End Function
Function Glf_187(args)
	Glf_187 = "3500000 * " & GetPlayerState("bonus_multiplier")
End Function
Function Glf_188(args)
	Glf_188 = "4000000 * " & GetPlayerState("bonus_multiplier")
End Function
Function Glf_189(args)
	On Error Resume Next
	    Glf_189 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_189 = False
End Function
Function Glf_190(args)
	On Error Resume Next
	    Glf_190 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_190 = False
End Function
Function Glf_191(args)
	On Error Resume Next
	    Glf_191 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_191 = False
End Function
Function Glf_192(args)
	On Error Resume Next
	    Glf_192 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_192 = False
End Function
Function Glf_193(args)
	On Error Resume Next
	    Glf_193 = glf_machine_vars("high_score_initials_chars").GetValue() = 3
	If Err Then Glf_193 = False
End Function
Function Glf_194(args)
	On Error Resume Next
		Dim kwargs : Set kwargs = GlfKwargs()
	kwargs.Add "text",  glf_machine_vars("high_score_initials").GetValue()
	Set Glf_194 = kwargs
	If Err Then Glf_194 = Null
End Function
Function Glf_195(args)
	On Error Resume Next
		Dim kwargs : Set kwargs = GlfKwargs()
	kwargs.Add "text",  glf_machine_vars("high_score_initials").GetValue()
	Set Glf_195 = kwargs
	If Err Then Glf_195 = Null
End Function
Function Glf_196(args)
	On Error Resume Next
	    Glf_196 = glf_machine_vars("high_score_initials_chars").GetValue() < 3
	If Err Then Glf_196 = False
End Function
Function Glf_197(args)
	On Error Resume Next
	    Glf_197 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_197 = False
End Function
Function Glf_198(args)
	On Error Resume Next
	    Glf_198 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_198 = False
End Function
Function Glf_199(args)
	On Error Resume Next
	    Glf_199 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 0
	If Err Then Glf_199 = False
End Function
Function Glf_200(args)
	Glf_200 = glf_machine_vars("high_score_initials").GetValue() & "A"
End Function
Function Glf_201(args)
	On Error Resume Next
	    Glf_201 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 1
	If Err Then Glf_201 = False
End Function
Function Glf_202(args)
	Glf_202 = glf_machine_vars("high_score_initials").GetValue() & "B"
End Function
Function Glf_203(args)
	On Error Resume Next
	    Glf_203 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 2
	If Err Then Glf_203 = False
End Function
Function Glf_204(args)
	Glf_204 = glf_machine_vars("high_score_initials").GetValue() & "C"
End Function
Function Glf_205(args)
	On Error Resume Next
	    Glf_205 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 3
	If Err Then Glf_205 = False
End Function
Function Glf_206(args)
	Glf_206 = glf_machine_vars("high_score_initials").GetValue() & "D"
End Function
Function Glf_207(args)
	On Error Resume Next
	    Glf_207 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 4
	If Err Then Glf_207 = False
End Function
Function Glf_208(args)
	Glf_208 = glf_machine_vars("high_score_initials").GetValue() & "E"
End Function
Function Glf_209(args)
	On Error Resume Next
	    Glf_209 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 5
	If Err Then Glf_209 = False
End Function
Function Glf_210(args)
	Glf_210 = glf_machine_vars("high_score_initials").GetValue() & "F"
End Function
Function Glf_211(args)
	On Error Resume Next
	    Glf_211 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 6
	If Err Then Glf_211 = False
End Function
Function Glf_212(args)
	Glf_212 = glf_machine_vars("high_score_initials").GetValue() & "G"
End Function
Function Glf_213(args)
	On Error Resume Next
	    Glf_213 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 7
	If Err Then Glf_213 = False
End Function
Function Glf_214(args)
	Glf_214 = glf_machine_vars("high_score_initials").GetValue() & "H"
End Function
Function Glf_215(args)
	On Error Resume Next
	    Glf_215 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 8
	If Err Then Glf_215 = False
End Function
Function Glf_216(args)
	Glf_216 = glf_machine_vars("high_score_initials").GetValue() & "I"
End Function
Function Glf_217(args)
	On Error Resume Next
	    Glf_217 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 9
	If Err Then Glf_217 = False
End Function
Function Glf_218(args)
	Glf_218 = glf_machine_vars("high_score_initials").GetValue() & "J"
End Function
Function Glf_219(args)
	On Error Resume Next
	    Glf_219 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 10
	If Err Then Glf_219 = False
End Function
Function Glf_220(args)
	Glf_220 = glf_machine_vars("high_score_initials").GetValue() & "K"
End Function
Function Glf_221(args)
	On Error Resume Next
	    Glf_221 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 11
	If Err Then Glf_221 = False
End Function
Function Glf_222(args)
	Glf_222 = glf_machine_vars("high_score_initials").GetValue() & "L"
End Function
Function Glf_223(args)
	On Error Resume Next
	    Glf_223 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 12
	If Err Then Glf_223 = False
End Function
Function Glf_224(args)
	Glf_224 = glf_machine_vars("high_score_initials").GetValue() & "M"
End Function
Function Glf_225(args)
	On Error Resume Next
	    Glf_225 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 13
	If Err Then Glf_225 = False
End Function
Function Glf_226(args)
	Glf_226 = glf_machine_vars("high_score_initials").GetValue() & "N"
End Function
Function Glf_227(args)
	On Error Resume Next
	    Glf_227 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 14
	If Err Then Glf_227 = False
End Function
Function Glf_228(args)
	Glf_228 = glf_machine_vars("high_score_initials").GetValue() & "O"
End Function
Function Glf_229(args)
	On Error Resume Next
	    Glf_229 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 15
	If Err Then Glf_229 = False
End Function
Function Glf_230(args)
	Glf_230 = glf_machine_vars("high_score_initials").GetValue() & "P"
End Function
Function Glf_231(args)
	On Error Resume Next
	    Glf_231 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 16
	If Err Then Glf_231 = False
End Function
Function Glf_232(args)
	Glf_232 = glf_machine_vars("high_score_initials").GetValue() & "Q"
End Function
Function Glf_233(args)
	On Error Resume Next
	    Glf_233 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 17
	If Err Then Glf_233 = False
End Function
Function Glf_234(args)
	Glf_234 = glf_machine_vars("high_score_initials").GetValue() & "R"
End Function
Function Glf_235(args)
	On Error Resume Next
	    Glf_235 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 18
	If Err Then Glf_235 = False
End Function
Function Glf_236(args)
	Glf_236 = glf_machine_vars("high_score_initials").GetValue() & "S"
End Function
Function Glf_237(args)
	On Error Resume Next
	    Glf_237 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 19
	If Err Then Glf_237 = False
End Function
Function Glf_238(args)
	Glf_238 = glf_machine_vars("high_score_initials").GetValue() & "T"
End Function
Function Glf_239(args)
	On Error Resume Next
	    Glf_239 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 20
	If Err Then Glf_239 = False
End Function
Function Glf_240(args)
	Glf_240 = glf_machine_vars("high_score_initials").GetValue() & "U"
End Function
Function Glf_241(args)
	On Error Resume Next
	    Glf_241 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 21
	If Err Then Glf_241 = False
End Function
Function Glf_242(args)
	Glf_242 = glf_machine_vars("high_score_initials").GetValue() & "V"
End Function
Function Glf_243(args)
	On Error Resume Next
	    Glf_243 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 22
	If Err Then Glf_243 = False
End Function
Function Glf_244(args)
	Glf_244 = glf_machine_vars("high_score_initials").GetValue() & "W"
End Function
Function Glf_245(args)
	On Error Resume Next
	    Glf_245 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 23
	If Err Then Glf_245 = False
End Function
Function Glf_246(args)
	Glf_246 = glf_machine_vars("high_score_initials").GetValue() & "X"
End Function
Function Glf_247(args)
	On Error Resume Next
	    Glf_247 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 24
	If Err Then Glf_247 = False
End Function
Function Glf_248(args)
	Glf_248 = glf_machine_vars("high_score_initials").GetValue() & "Y"
End Function
Function Glf_249(args)
	On Error Resume Next
	    Glf_249 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 25
	If Err Then Glf_249 = False
End Function
Function Glf_250(args)
	Glf_250 = glf_machine_vars("high_score_initials").GetValue() & "Z"
End Function
Function Glf_251(args)
	On Error Resume Next
	    Glf_251 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 26
	If Err Then Glf_251 = False
End Function
Function Glf_252(args)
	Glf_252 = glf_machine_vars("high_score_initials").GetValue() & "0"
End Function
Function Glf_253(args)
	On Error Resume Next
	    Glf_253 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 27
	If Err Then Glf_253 = False
End Function
Function Glf_254(args)
	Glf_254 = glf_machine_vars("high_score_initials").GetValue() & "1"
End Function
Function Glf_255(args)
	On Error Resume Next
	    Glf_255 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 28
	If Err Then Glf_255 = False
End Function
Function Glf_256(args)
	Glf_256 = glf_machine_vars("high_score_initials").GetValue() & "2"
End Function
Function Glf_257(args)
	On Error Resume Next
	    Glf_257 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 29
	If Err Then Glf_257 = False
End Function
Function Glf_258(args)
	Glf_258 = glf_machine_vars("high_score_initials").GetValue() & "3"
End Function
Function Glf_259(args)
	On Error Resume Next
	    Glf_259 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 30
	If Err Then Glf_259 = False
End Function
Function Glf_260(args)
	Glf_260 = glf_machine_vars("high_score_initials").GetValue() & "4"
End Function
Function Glf_261(args)
	On Error Resume Next
	    Glf_261 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 31
	If Err Then Glf_261 = False
End Function
Function Glf_262(args)
	Glf_262 = glf_machine_vars("high_score_initials").GetValue() & "5"
End Function
Function Glf_263(args)
	On Error Resume Next
	    Glf_263 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 32
	If Err Then Glf_263 = False
End Function
Function Glf_264(args)
	Glf_264 = glf_machine_vars("high_score_initials").GetValue() & "6"
End Function
Function Glf_265(args)
	On Error Resume Next
	    Glf_265 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 33
	If Err Then Glf_265 = False
End Function
Function Glf_266(args)
	Glf_266 = glf_machine_vars("high_score_initials").GetValue() & "7"
End Function
Function Glf_267(args)
	On Error Resume Next
	    Glf_267 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 34
	If Err Then Glf_267 = False
End Function
Function Glf_268(args)
	Glf_268 = glf_machine_vars("high_score_initials").GetValue() & "8"
End Function
Function Glf_269(args)
	On Error Resume Next
	    Glf_269 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 35
	If Err Then Glf_269 = False
End Function
Function Glf_270(args)
	Glf_270 = glf_machine_vars("high_score_initials").GetValue() & "9"
End Function
Function Glf_271(args)
	On Error Resume Next
	    Glf_271 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 36
	If Err Then Glf_271 = False
End Function
Function Glf_272(args)
	Glf_272 = glf_machine_vars("high_score_initials").GetValue() & "_"
End Function
Function Glf_273(args)
	Glf_273 = 60
End Function
Function Glf_274(args)
	Glf_274 = Glf_FormatValue(glf_timers("high_score_timeout").GetValue("ticks"),"0>2")
End Function
Function Glf_275(args)
	On Error Resume Next
	    Glf_275 = glf_dispatch_current_kwargs("player_num")=1
	If Err Then Glf_275 = False
End Function
Function Glf_276(args)
	Glf_276 = "P1 "
End Function
Function Glf_277(args)
	On Error Resume Next
	    Glf_277 = glf_dispatch_current_kwargs("player_num")=2
	If Err Then Glf_277 = False
End Function
Function Glf_278(args)
	Glf_278 = "P2 "
End Function
Function Glf_279(args)
	On Error Resume Next
	    Glf_279 = glf_dispatch_current_kwargs("player_num")=3
	If Err Then Glf_279 = False
End Function
Function Glf_280(args)
	Glf_280 = "P3 "
End Function
Function Glf_281(args)
	On Error Resume Next
	    Glf_281 = glf_dispatch_current_kwargs("player_num")=4
	If Err Then Glf_281 = False
End Function
Function Glf_282(args)
	Glf_282 = "P4 "
End Function
Function Glf_283(args)
	Glf_283 = "INITIALS"
End Function
Function Glf_284(args)
	Glf_284 = "A"
End Function
Function Glf_285(args)
	On Error Resume Next
	    Glf_285 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 0 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_285 = False
End Function
Function Glf_286(args)
	Glf_286 = glf_machine_vars("high_score_initials").GetValue() & " A"
End Function
Function Glf_287(args)
	On Error Resume Next
	    Glf_287 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 0 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_287 = False
End Function
Function Glf_288(args)
	On Error Resume Next
	    Glf_288 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 1 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_288 = False
End Function
Function Glf_289(args)
	Glf_289 = glf_machine_vars("high_score_initials").GetValue() & " B"
End Function
Function Glf_290(args)
	On Error Resume Next
	    Glf_290 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 1 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_290 = False
End Function
Function Glf_291(args)
	On Error Resume Next
	    Glf_291 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 2 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_291 = False
End Function
Function Glf_292(args)
	Glf_292 = glf_machine_vars("high_score_initials").GetValue() & " C"
End Function
Function Glf_293(args)
	On Error Resume Next
	    Glf_293 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 2 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_293 = False
End Function
Function Glf_294(args)
	On Error Resume Next
	    Glf_294 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 3 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_294 = False
End Function
Function Glf_295(args)
	Glf_295 = glf_machine_vars("high_score_initials").GetValue() & " D"
End Function
Function Glf_296(args)
	On Error Resume Next
	    Glf_296 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 3 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_296 = False
End Function
Function Glf_297(args)
	On Error Resume Next
	    Glf_297 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 4 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_297 = False
End Function
Function Glf_298(args)
	Glf_298 = glf_machine_vars("high_score_initials").GetValue() & " E"
End Function
Function Glf_299(args)
	On Error Resume Next
	    Glf_299 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 4 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_299 = False
End Function
Function Glf_300(args)
	On Error Resume Next
	    Glf_300 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 5 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_300 = False
End Function
Function Glf_301(args)
	Glf_301 = glf_machine_vars("high_score_initials").GetValue() & " F"
End Function
Function Glf_302(args)
	On Error Resume Next
	    Glf_302 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 5 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_302 = False
End Function
Function Glf_303(args)
	On Error Resume Next
	    Glf_303 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 6 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_303 = False
End Function
Function Glf_304(args)
	Glf_304 = glf_machine_vars("high_score_initials").GetValue() & " G"
End Function
Function Glf_305(args)
	On Error Resume Next
	    Glf_305 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 6 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_305 = False
End Function
Function Glf_306(args)
	On Error Resume Next
	    Glf_306 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 7 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_306 = False
End Function
Function Glf_307(args)
	Glf_307 = glf_machine_vars("high_score_initials").GetValue() & " H"
End Function
Function Glf_308(args)
	On Error Resume Next
	    Glf_308 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 7 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_308 = False
End Function
Function Glf_309(args)
	On Error Resume Next
	    Glf_309 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 8 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_309 = False
End Function
Function Glf_310(args)
	Glf_310 = glf_machine_vars("high_score_initials").GetValue() & " I"
End Function
Function Glf_311(args)
	On Error Resume Next
	    Glf_311 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 8 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_311 = False
End Function
Function Glf_312(args)
	On Error Resume Next
	    Glf_312 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 9 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_312 = False
End Function
Function Glf_313(args)
	Glf_313 = glf_machine_vars("high_score_initials").GetValue() & " J"
End Function
Function Glf_314(args)
	On Error Resume Next
	    Glf_314 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 9 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_314 = False
End Function
Function Glf_315(args)
	On Error Resume Next
	    Glf_315 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 10 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_315 = False
End Function
Function Glf_316(args)
	Glf_316 = glf_machine_vars("high_score_initials").GetValue() & " K"
End Function
Function Glf_317(args)
	On Error Resume Next
	    Glf_317 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 10 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_317 = False
End Function
Function Glf_318(args)
	On Error Resume Next
	    Glf_318 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 11 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_318 = False
End Function
Function Glf_319(args)
	Glf_319 = glf_machine_vars("high_score_initials").GetValue() & " L"
End Function
Function Glf_320(args)
	On Error Resume Next
	    Glf_320 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 11 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_320 = False
End Function
Function Glf_321(args)
	On Error Resume Next
	    Glf_321 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 12 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_321 = False
End Function
Function Glf_322(args)
	Glf_322 = glf_machine_vars("high_score_initials").GetValue() & " M"
End Function
Function Glf_323(args)
	On Error Resume Next
	    Glf_323 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 12 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_323 = False
End Function
Function Glf_324(args)
	On Error Resume Next
	    Glf_324 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 13 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_324 = False
End Function
Function Glf_325(args)
	Glf_325 = glf_machine_vars("high_score_initials").GetValue() & " N"
End Function
Function Glf_326(args)
	On Error Resume Next
	    Glf_326 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 13 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_326 = False
End Function
Function Glf_327(args)
	On Error Resume Next
	    Glf_327 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 14 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_327 = False
End Function
Function Glf_328(args)
	Glf_328 = glf_machine_vars("high_score_initials").GetValue() & " O"
End Function
Function Glf_329(args)
	On Error Resume Next
	    Glf_329 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 14 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_329 = False
End Function
Function Glf_330(args)
	On Error Resume Next
	    Glf_330 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 15 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_330 = False
End Function
Function Glf_331(args)
	Glf_331 = glf_machine_vars("high_score_initials").GetValue() & " P"
End Function
Function Glf_332(args)
	On Error Resume Next
	    Glf_332 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 15 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_332 = False
End Function
Function Glf_333(args)
	On Error Resume Next
	    Glf_333 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 16 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_333 = False
End Function
Function Glf_334(args)
	Glf_334 = glf_machine_vars("high_score_initials").GetValue() & " Q"
End Function
Function Glf_335(args)
	On Error Resume Next
	    Glf_335 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 16 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_335 = False
End Function
Function Glf_336(args)
	On Error Resume Next
	    Glf_336 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 17 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_336 = False
End Function
Function Glf_337(args)
	Glf_337 = glf_machine_vars("high_score_initials").GetValue() & " R"
End Function
Function Glf_338(args)
	On Error Resume Next
	    Glf_338 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 17 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_338 = False
End Function
Function Glf_339(args)
	On Error Resume Next
	    Glf_339 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 18 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_339 = False
End Function
Function Glf_340(args)
	Glf_340 = glf_machine_vars("high_score_initials").GetValue() & " S"
End Function
Function Glf_341(args)
	On Error Resume Next
	    Glf_341 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 18 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_341 = False
End Function
Function Glf_342(args)
	On Error Resume Next
	    Glf_342 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 19 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_342 = False
End Function
Function Glf_343(args)
	Glf_343 = glf_machine_vars("high_score_initials").GetValue() & " T"
End Function
Function Glf_344(args)
	On Error Resume Next
	    Glf_344 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 19 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_344 = False
End Function
Function Glf_345(args)
	On Error Resume Next
	    Glf_345 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 20 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_345 = False
End Function
Function Glf_346(args)
	Glf_346 = glf_machine_vars("high_score_initials").GetValue() & " U"
End Function
Function Glf_347(args)
	On Error Resume Next
	    Glf_347 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 20 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_347 = False
End Function
Function Glf_348(args)
	On Error Resume Next
	    Glf_348 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 21 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_348 = False
End Function
Function Glf_349(args)
	Glf_349 = glf_machine_vars("high_score_initials").GetValue() & " V"
End Function
Function Glf_350(args)
	On Error Resume Next
	    Glf_350 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 21 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_350 = False
End Function
Function Glf_351(args)
	On Error Resume Next
	    Glf_351 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 22 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_351 = False
End Function
Function Glf_352(args)
	Glf_352 = glf_machine_vars("high_score_initials").GetValue() & " W"
End Function
Function Glf_353(args)
	On Error Resume Next
	    Glf_353 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 22 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_353 = False
End Function
Function Glf_354(args)
	On Error Resume Next
	    Glf_354 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 23 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_354 = False
End Function
Function Glf_355(args)
	Glf_355 = glf_machine_vars("high_score_initials").GetValue() & " X"
End Function
Function Glf_356(args)
	On Error Resume Next
	    Glf_356 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 23 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_356 = False
End Function
Function Glf_357(args)
	On Error Resume Next
	    Glf_357 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 24 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_357 = False
End Function
Function Glf_358(args)
	Glf_358 = glf_machine_vars("high_score_initials").GetValue() & " Y"
End Function
Function Glf_359(args)
	On Error Resume Next
	    Glf_359 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 24 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_359 = False
End Function
Function Glf_360(args)
	On Error Resume Next
	    Glf_360 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 25 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_360 = False
End Function
Function Glf_361(args)
	Glf_361 = glf_machine_vars("high_score_initials").GetValue() & " Z"
End Function
Function Glf_362(args)
	On Error Resume Next
	    Glf_362 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 25 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_362 = False
End Function
Function Glf_363(args)
	On Error Resume Next
	    Glf_363 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 26 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_363 = False
End Function
Function Glf_364(args)
	Glf_364 = glf_machine_vars("high_score_initials").GetValue() & " 0"
End Function
Function Glf_365(args)
	On Error Resume Next
	    Glf_365 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 26 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_365 = False
End Function
Function Glf_366(args)
	On Error Resume Next
	    Glf_366 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 27 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_366 = False
End Function
Function Glf_367(args)
	Glf_367 = glf_machine_vars("high_score_initials").GetValue() & " 1"
End Function
Function Glf_368(args)
	On Error Resume Next
	    Glf_368 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 27 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_368 = False
End Function
Function Glf_369(args)
	On Error Resume Next
	    Glf_369 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 28 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_369 = False
End Function
Function Glf_370(args)
	Glf_370 = glf_machine_vars("high_score_initials").GetValue() & " 2"
End Function
Function Glf_371(args)
	On Error Resume Next
	    Glf_371 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 28 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_371 = False
End Function
Function Glf_372(args)
	On Error Resume Next
	    Glf_372 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 29 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_372 = False
End Function
Function Glf_373(args)
	Glf_373 = glf_machine_vars("high_score_initials").GetValue() & " 3"
End Function
Function Glf_374(args)
	On Error Resume Next
	    Glf_374 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 29 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_374 = False
End Function
Function Glf_375(args)
	On Error Resume Next
	    Glf_375 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 30 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_375 = False
End Function
Function Glf_376(args)
	Glf_376 = glf_machine_vars("high_score_initials").GetValue() & " 4"
End Function
Function Glf_377(args)
	On Error Resume Next
	    Glf_377 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 30 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_377 = False
End Function
Function Glf_378(args)
	On Error Resume Next
	    Glf_378 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 31 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_378 = False
End Function
Function Glf_379(args)
	Glf_379 = glf_machine_vars("high_score_initials").GetValue() & " 5"
End Function
Function Glf_380(args)
	On Error Resume Next
	    Glf_380 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 31 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_380 = False
End Function
Function Glf_381(args)
	On Error Resume Next
	    Glf_381 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 32 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_381 = False
End Function
Function Glf_382(args)
	Glf_382 = glf_machine_vars("high_score_initials").GetValue() & " 6"
End Function
Function Glf_383(args)
	On Error Resume Next
	    Glf_383 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 32 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_383 = False
End Function
Function Glf_384(args)
	On Error Resume Next
	    Glf_384 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 33 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_384 = False
End Function
Function Glf_385(args)
	Glf_385 = glf_machine_vars("high_score_initials").GetValue() & " 7"
End Function
Function Glf_386(args)
	On Error Resume Next
	    Glf_386 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 33 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_386 = False
End Function
Function Glf_387(args)
	On Error Resume Next
	    Glf_387 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 34 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_387 = False
End Function
Function Glf_388(args)
	Glf_388 = glf_machine_vars("high_score_initials").GetValue() & " 8"
End Function
Function Glf_389(args)
	On Error Resume Next
	    Glf_389 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 34 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_389 = False
End Function
Function Glf_390(args)
	On Error Resume Next
	    Glf_390 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 35 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_390 = False
End Function
Function Glf_391(args)
	Glf_391 = glf_machine_vars("high_score_initials").GetValue() & " 9"
End Function
Function Glf_392(args)
	On Error Resume Next
	    Glf_392 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 35 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_392 = False
End Function
Function Glf_393(args)
	On Error Resume Next
	    Glf_393 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 36 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_393 = False
End Function
Function Glf_394(args)
	Glf_394 = glf_machine_vars("high_score_initials").GetValue() & " _"
End Function
Function Glf_395(args)
	On Error Resume Next
	    Glf_395 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 36 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_395 = False
End Function
Function Glf_396(args)
	On Error Resume Next
	    Glf_396 = glf_machine_vars("high_score_initials_chars").GetValue()<3
	If Err Then Glf_396 = False
End Function
Function Glf_397(args)
	On Error Resume Next
	    Glf_397 = glf_dispatch_current_kwargs("position") = 1
	If Err Then Glf_397 = False
End Function
Function Glf_398(args)
	Glf_398 = "  GRAND "
End Function
Function Glf_399(args)
	Glf_399 = "CHAMPION"
End Function
Function Glf_400(args)
	Glf_400 = "     " & glf_machine_vars("high_score_initials").GetValue()
End Function
Function Glf_401(args)
	On Error Resume Next
	    Glf_401 = glf_dispatch_current_kwargs("position") = 2
	If Err Then Glf_401 = False
End Function
Function Glf_402(args)
	Glf_402 = "   HIGH "
End Function
Function Glf_403(args)
	Glf_403 = "SCORE 1 "
End Function
Function Glf_404(args)
	On Error Resume Next
	    Glf_404 = glf_dispatch_current_kwargs("position") = 3
	If Err Then Glf_404 = False
End Function
Function Glf_405(args)
	Glf_405 = "SCORE 2 "
End Function
Function Glf_406(args)
	On Error Resume Next
	    Glf_406 = glf_dispatch_current_kwargs("position") = 4
	If Err Then Glf_406 = False
End Function
Function Glf_407(args)
	Glf_407 = "SCORE 3 "
End Function
Function Glf_408(args)
	Glf_408 = 1000
End Function
Function Glf_409(args)
	Glf_409 = 250
End Function
Function Glf_410(args)
	Glf_410 = 50
End Function
Function Glf_411(args)
	Glf_411 = 1500
End Function
Function Glf_412(args)
	Glf_412 = 100
End Function
Function Glf_413(args)
	Glf_413 = "  "
End Function
Function Glf_414(args)
	Glf_414 = "        "
End Function
Function Glf_415(args)
	Glf_415 = "                                "
End Function
Function Glf_416(args)
	Glf_416 = "                "
End Function
Dim glf_ball_seg18_lmarr : glf_ball_seg18_lmarr = Array(p_ball_seg18_vr)
glf_lightMaps.Add "ball_seg18", glf_ball_seg18_lmarr
Dim glf_p4_seg120_lmarr : glf_p4_seg120_lmarr = Array(p_p4_seg120_vr)
glf_lightMaps.Add "p4_seg120", glf_p4_seg120_lmarr
Dim glf_p4_seg119_lmarr : glf_p4_seg119_lmarr = Array(p_p4_seg119_vr)
glf_lightMaps.Add "p4_seg119", glf_p4_seg119_lmarr
Dim glf_p4_seg118_lmarr : glf_p4_seg118_lmarr = Array(p_p4_seg118_vr)
glf_lightMaps.Add "p4_seg118", glf_p4_seg118_lmarr
Dim glf_p4_seg117_lmarr : glf_p4_seg117_lmarr = Array(p_p4_seg117_vr)
glf_lightMaps.Add "p4_seg117", glf_p4_seg117_lmarr
Dim glf_p4_seg116_lmarr : glf_p4_seg116_lmarr = Array(p_p4_seg116_vr)
glf_lightMaps.Add "p4_seg116", glf_p4_seg116_lmarr
Dim glf_p4_seg115_lmarr : glf_p4_seg115_lmarr = Array(p_p4_seg115_vr)
glf_lightMaps.Add "p4_seg115", glf_p4_seg115_lmarr
Dim glf_p4_seg114_lmarr : glf_p4_seg114_lmarr = Array(p_p4_seg114_vr)
glf_lightMaps.Add "p4_seg114", glf_p4_seg114_lmarr
Dim glf_p4_seg113_lmarr : glf_p4_seg113_lmarr = Array(p_p4_seg113_vr)
glf_lightMaps.Add "p4_seg113", glf_p4_seg113_lmarr
Dim glf_p4_seg112_lmarr : glf_p4_seg112_lmarr = Array(p_p4_seg112_vr)
glf_lightMaps.Add "p4_seg112", glf_p4_seg112_lmarr
Dim glf_p4_seg111_lmarr : glf_p4_seg111_lmarr = Array(p_p4_seg111_vr)
glf_lightMaps.Add "p4_seg111", glf_p4_seg111_lmarr
Dim glf_p4_seg110_lmarr : glf_p4_seg110_lmarr = Array(p_p4_seg110_vr)
glf_lightMaps.Add "p4_seg110", glf_p4_seg110_lmarr
Dim glf_p4_seg109_lmarr : glf_p4_seg109_lmarr = Array(p_p4_seg109_vr)
glf_lightMaps.Add "p4_seg109", glf_p4_seg109_lmarr
Dim glf_p4_seg108_lmarr : glf_p4_seg108_lmarr = Array(p_p4_seg108_vr)
glf_lightMaps.Add "p4_seg108", glf_p4_seg108_lmarr
Dim glf_p4_seg107_lmarr : glf_p4_seg107_lmarr = Array(p_p4_seg107_vr)
glf_lightMaps.Add "p4_seg107", glf_p4_seg107_lmarr
Dim glf_p4_seg106_lmarr : glf_p4_seg106_lmarr = Array(p_p4_seg106_vr)
glf_lightMaps.Add "p4_seg106", glf_p4_seg106_lmarr
Dim glf_p3_seg120_lmarr : glf_p3_seg120_lmarr = Array(p_p3_seg120_vr)
glf_lightMaps.Add "p3_seg120", glf_p3_seg120_lmarr
Dim glf_p3_seg119_lmarr : glf_p3_seg119_lmarr = Array(p_p3_seg119_vr)
glf_lightMaps.Add "p3_seg119", glf_p3_seg119_lmarr
Dim glf_p3_seg118_lmarr : glf_p3_seg118_lmarr = Array(p_p3_seg118_vr)
glf_lightMaps.Add "p3_seg118", glf_p3_seg118_lmarr
Dim glf_p3_seg117_lmarr : glf_p3_seg117_lmarr = Array(p_p3_seg117_vr)
glf_lightMaps.Add "p3_seg117", glf_p3_seg117_lmarr
Dim glf_p3_seg116_lmarr : glf_p3_seg116_lmarr = Array(p_p3_seg116_vr)
glf_lightMaps.Add "p3_seg116", glf_p3_seg116_lmarr
Dim glf_p3_seg115_lmarr : glf_p3_seg115_lmarr = Array(p_p3_seg115_vr)
glf_lightMaps.Add "p3_seg115", glf_p3_seg115_lmarr
Dim glf_p3_seg114_lmarr : glf_p3_seg114_lmarr = Array(p_p3_seg114_vr)
glf_lightMaps.Add "p3_seg114", glf_p3_seg114_lmarr
Dim glf_p3_seg113_lmarr : glf_p3_seg113_lmarr = Array(p_p3_seg113_vr)
glf_lightMaps.Add "p3_seg113", glf_p3_seg113_lmarr
Dim glf_p3_seg112_lmarr : glf_p3_seg112_lmarr = Array(p_p3_seg112_vr)
glf_lightMaps.Add "p3_seg112", glf_p3_seg112_lmarr
Dim glf_p3_seg111_lmarr : glf_p3_seg111_lmarr = Array(p_p3_seg111_vr)
glf_lightMaps.Add "p3_seg111", glf_p3_seg111_lmarr
Dim glf_p3_seg110_lmarr : glf_p3_seg110_lmarr = Array(p_p3_seg110_vr)
glf_lightMaps.Add "p3_seg110", glf_p3_seg110_lmarr
Dim glf_p3_seg109_lmarr : glf_p3_seg109_lmarr = Array(p_p3_seg109_vr)
glf_lightMaps.Add "p3_seg109", glf_p3_seg109_lmarr
Dim glf_p3_seg108_lmarr : glf_p3_seg108_lmarr = Array(p_p3_seg108_vr)
glf_lightMaps.Add "p3_seg108", glf_p3_seg108_lmarr
Dim glf_p3_seg107_lmarr : glf_p3_seg107_lmarr = Array(p_p3_seg107_vr)
glf_lightMaps.Add "p3_seg107", glf_p3_seg107_lmarr
Dim glf_p3_seg106_lmarr : glf_p3_seg106_lmarr = Array(p_p3_seg106_vr)
glf_lightMaps.Add "p3_seg106", glf_p3_seg106_lmarr
Dim glf_p2_seg120_lmarr : glf_p2_seg120_lmarr = Array(p_p2_seg120_vr)
glf_lightMaps.Add "p2_seg120", glf_p2_seg120_lmarr
Dim glf_p2_seg119_lmarr : glf_p2_seg119_lmarr = Array(p_p2_seg119_vr)
glf_lightMaps.Add "p2_seg119", glf_p2_seg119_lmarr
Dim glf_p2_seg118_lmarr : glf_p2_seg118_lmarr = Array(p_p2_seg118_vr)
glf_lightMaps.Add "p2_seg118", glf_p2_seg118_lmarr
Dim glf_p2_seg117_lmarr : glf_p2_seg117_lmarr = Array(p_p2_seg117_vr)
glf_lightMaps.Add "p2_seg117", glf_p2_seg117_lmarr
Dim glf_p2_seg116_lmarr : glf_p2_seg116_lmarr = Array(p_p2_seg116_vr)
glf_lightMaps.Add "p2_seg116", glf_p2_seg116_lmarr
Dim glf_p2_seg115_lmarr : glf_p2_seg115_lmarr = Array(p_p2_seg115_vr)
glf_lightMaps.Add "p2_seg115", glf_p2_seg115_lmarr
Dim glf_p2_seg114_lmarr : glf_p2_seg114_lmarr = Array(p_p2_seg114_vr)
glf_lightMaps.Add "p2_seg114", glf_p2_seg114_lmarr
Dim glf_p2_seg113_lmarr : glf_p2_seg113_lmarr = Array(p_p2_seg113_vr)
glf_lightMaps.Add "p2_seg113", glf_p2_seg113_lmarr
Dim glf_p2_seg112_lmarr : glf_p2_seg112_lmarr = Array(p_p2_seg112_vr)
glf_lightMaps.Add "p2_seg112", glf_p2_seg112_lmarr
Dim glf_p2_seg111_lmarr : glf_p2_seg111_lmarr = Array(p_p2_seg111_vr)
glf_lightMaps.Add "p2_seg111", glf_p2_seg111_lmarr
Dim glf_p2_seg110_lmarr : glf_p2_seg110_lmarr = Array(p_p2_seg110_vr)
glf_lightMaps.Add "p2_seg110", glf_p2_seg110_lmarr
Dim glf_p2_seg109_lmarr : glf_p2_seg109_lmarr = Array(p_p2_seg109_vr)
glf_lightMaps.Add "p2_seg109", glf_p2_seg109_lmarr
Dim glf_p2_seg108_lmarr : glf_p2_seg108_lmarr = Array(p_p2_seg108_vr)
glf_lightMaps.Add "p2_seg108", glf_p2_seg108_lmarr
Dim glf_p2_seg107_lmarr : glf_p2_seg107_lmarr = Array(p_p2_seg107_vr)
glf_lightMaps.Add "p2_seg107", glf_p2_seg107_lmarr
Dim glf_p2_seg106_lmarr : glf_p2_seg106_lmarr = Array(p_p2_seg106_vr)
glf_lightMaps.Add "p2_seg106", glf_p2_seg106_lmarr
Dim glf_p1_seg120_lmarr : glf_p1_seg120_lmarr = Array(p_p1_seg120_vr)
glf_lightMaps.Add "p1_seg120", glf_p1_seg120_lmarr
Dim glf_p1_seg119_lmarr : glf_p1_seg119_lmarr = Array(p_p1_seg119_vr)
glf_lightMaps.Add "p1_seg119", glf_p1_seg119_lmarr
Dim glf_p1_seg118_lmarr : glf_p1_seg118_lmarr = Array(p_p1_seg118_vr)
glf_lightMaps.Add "p1_seg118", glf_p1_seg118_lmarr
Dim glf_p1_seg117_lmarr : glf_p1_seg117_lmarr = Array(p_p1_seg117_vr)
glf_lightMaps.Add "p1_seg117", glf_p1_seg117_lmarr
Dim glf_p1_seg116_lmarr : glf_p1_seg116_lmarr = Array(p_p1_seg116_vr)
glf_lightMaps.Add "p1_seg116", glf_p1_seg116_lmarr
Dim glf_p1_seg115_lmarr : glf_p1_seg115_lmarr = Array(p_p1_seg115_vr)
glf_lightMaps.Add "p1_seg115", glf_p1_seg115_lmarr
Dim glf_p1_seg114_lmarr : glf_p1_seg114_lmarr = Array(p_p1_seg114_vr)
glf_lightMaps.Add "p1_seg114", glf_p1_seg114_lmarr
Dim glf_p1_seg113_lmarr : glf_p1_seg113_lmarr = Array(p_p1_seg113_vr)
glf_lightMaps.Add "p1_seg113", glf_p1_seg113_lmarr
Dim glf_p1_seg112_lmarr : glf_p1_seg112_lmarr = Array(p_p1_seg112_vr)
glf_lightMaps.Add "p1_seg112", glf_p1_seg112_lmarr
Dim glf_p1_seg111_lmarr : glf_p1_seg111_lmarr = Array(p_p1_seg111_vr)
glf_lightMaps.Add "p1_seg111", glf_p1_seg111_lmarr
Dim glf_p1_seg110_lmarr : glf_p1_seg110_lmarr = Array(p_p1_seg110_vr)
glf_lightMaps.Add "p1_seg110", glf_p1_seg110_lmarr
Dim glf_p1_seg109_lmarr : glf_p1_seg109_lmarr = Array(p_p1_seg109_vr)
glf_lightMaps.Add "p1_seg109", glf_p1_seg109_lmarr
Dim glf_p1_seg108_lmarr : glf_p1_seg108_lmarr = Array(p_p1_seg108_vr)
glf_lightMaps.Add "p1_seg108", glf_p1_seg108_lmarr
Dim glf_p1_seg107_lmarr : glf_p1_seg107_lmarr = Array(p_p1_seg107_vr)
glf_lightMaps.Add "p1_seg107", glf_p1_seg107_lmarr
Dim glf_p1_seg106_lmarr : glf_p1_seg106_lmarr = Array(p_p1_seg106_vr)
glf_lightMaps.Add "p1_seg106", glf_p1_seg106_lmarr
Dim glf_p4_seg105_lmarr : glf_p4_seg105_lmarr = Array(p_p4_seg105_vr)
glf_lightMaps.Add "p4_seg105", glf_p4_seg105_lmarr
Dim glf_p3_seg105_lmarr : glf_p3_seg105_lmarr = Array(p_p3_seg105_vr)
glf_lightMaps.Add "p3_seg105", glf_p3_seg105_lmarr
Dim glf_p2_seg105_lmarr : glf_p2_seg105_lmarr = Array(p_p2_seg105_vr)
glf_lightMaps.Add "p2_seg105", glf_p2_seg105_lmarr
Dim glf_p4_seg104_lmarr : glf_p4_seg104_lmarr = Array(p_p4_seg104_vr)
glf_lightMaps.Add "p4_seg104", glf_p4_seg104_lmarr
Dim glf_p3_seg104_lmarr : glf_p3_seg104_lmarr = Array(p_p3_seg104_vr)
glf_lightMaps.Add "p3_seg104", glf_p3_seg104_lmarr
Dim glf_p2_seg104_lmarr : glf_p2_seg104_lmarr = Array(p_p2_seg104_vr)
glf_lightMaps.Add "p2_seg104", glf_p2_seg104_lmarr
Dim glf_p4_seg103_lmarr : glf_p4_seg103_lmarr = Array(p_p4_seg103_vr)
glf_lightMaps.Add "p4_seg103", glf_p4_seg103_lmarr
Dim glf_p3_seg103_lmarr : glf_p3_seg103_lmarr = Array(p_p3_seg103_vr)
glf_lightMaps.Add "p3_seg103", glf_p3_seg103_lmarr
Dim glf_p2_seg103_lmarr : glf_p2_seg103_lmarr = Array(p_p2_seg103_vr)
glf_lightMaps.Add "p2_seg103", glf_p2_seg103_lmarr
Dim glf_p4_seg102_lmarr : glf_p4_seg102_lmarr = Array(p_p4_seg102_vr)
glf_lightMaps.Add "p4_seg102", glf_p4_seg102_lmarr
Dim glf_p3_seg102_lmarr : glf_p3_seg102_lmarr = Array(p_p3_seg102_vr)
glf_lightMaps.Add "p3_seg102", glf_p3_seg102_lmarr
Dim glf_p2_seg102_lmarr : glf_p2_seg102_lmarr = Array(p_p2_seg102_vr)
glf_lightMaps.Add "p2_seg102", glf_p2_seg102_lmarr
Dim glf_p4_seg101_lmarr : glf_p4_seg101_lmarr = Array(p_p4_seg101_vr)
glf_lightMaps.Add "p4_seg101", glf_p4_seg101_lmarr
Dim glf_p3_seg101_lmarr : glf_p3_seg101_lmarr = Array(p_p3_seg101_vr)
glf_lightMaps.Add "p3_seg101", glf_p3_seg101_lmarr
Dim glf_p2_seg101_lmarr : glf_p2_seg101_lmarr = Array(p_p2_seg101_vr)
glf_lightMaps.Add "p2_seg101", glf_p2_seg101_lmarr
Dim glf_p4_seg100_lmarr : glf_p4_seg100_lmarr = Array(p_p4_seg100_vr)
glf_lightMaps.Add "p4_seg100", glf_p4_seg100_lmarr
Dim glf_p3_seg100_lmarr : glf_p3_seg100_lmarr = Array(p_p3_seg100_vr)
glf_lightMaps.Add "p3_seg100", glf_p3_seg100_lmarr
Dim glf_p2_seg100_lmarr : glf_p2_seg100_lmarr = Array(p_p2_seg100_vr)
glf_lightMaps.Add "p2_seg100", glf_p2_seg100_lmarr
Dim glf_p4_seg99_lmarr : glf_p4_seg99_lmarr = Array(p_p4_seg99_vr)
glf_lightMaps.Add "p4_seg99", glf_p4_seg99_lmarr
Dim glf_p3_seg99_lmarr : glf_p3_seg99_lmarr = Array(p_p3_seg99_vr)
glf_lightMaps.Add "p3_seg99", glf_p3_seg99_lmarr
Dim glf_p2_seg99_lmarr : glf_p2_seg99_lmarr = Array(p_p2_seg99_vr)
glf_lightMaps.Add "p2_seg99", glf_p2_seg99_lmarr
Dim glf_p4_seg98_lmarr : glf_p4_seg98_lmarr = Array(p_p4_seg98_vr)
glf_lightMaps.Add "p4_seg98", glf_p4_seg98_lmarr
Dim glf_p3_seg98_lmarr : glf_p3_seg98_lmarr = Array(p_p3_seg98_vr)
glf_lightMaps.Add "p3_seg98", glf_p3_seg98_lmarr
Dim glf_p2_seg98_lmarr : glf_p2_seg98_lmarr = Array(p_p2_seg98_vr)
glf_lightMaps.Add "p2_seg98", glf_p2_seg98_lmarr
Dim glf_p4_seg97_lmarr : glf_p4_seg97_lmarr = Array(p_p4_seg97_vr)
glf_lightMaps.Add "p4_seg97", glf_p4_seg97_lmarr
Dim glf_p3_seg97_lmarr : glf_p3_seg97_lmarr = Array(p_p3_seg97_vr)
glf_lightMaps.Add "p3_seg97", glf_p3_seg97_lmarr
Dim glf_p2_seg97_lmarr : glf_p2_seg97_lmarr = Array(p_p2_seg97_vr)
glf_lightMaps.Add "p2_seg97", glf_p2_seg97_lmarr
Dim glf_p4_seg96_lmarr : glf_p4_seg96_lmarr = Array(p_p4_seg96_vr)
glf_lightMaps.Add "p4_seg96", glf_p4_seg96_lmarr
Dim glf_p3_seg96_lmarr : glf_p3_seg96_lmarr = Array(p_p3_seg96_vr)
glf_lightMaps.Add "p3_seg96", glf_p3_seg96_lmarr
Dim glf_p2_seg96_lmarr : glf_p2_seg96_lmarr = Array(p_p2_seg96_vr)
glf_lightMaps.Add "p2_seg96", glf_p2_seg96_lmarr
Dim glf_p4_seg95_lmarr : glf_p4_seg95_lmarr = Array(p_p4_seg95_vr)
glf_lightMaps.Add "p4_seg95", glf_p4_seg95_lmarr
Dim glf_p3_seg95_lmarr : glf_p3_seg95_lmarr = Array(p_p3_seg95_vr)
glf_lightMaps.Add "p3_seg95", glf_p3_seg95_lmarr
Dim glf_p2_seg95_lmarr : glf_p2_seg95_lmarr = Array(p_p2_seg95_vr)
glf_lightMaps.Add "p2_seg95", glf_p2_seg95_lmarr
Dim glf_p4_seg94_lmarr : glf_p4_seg94_lmarr = Array(p_p4_seg94_vr)
glf_lightMaps.Add "p4_seg94", glf_p4_seg94_lmarr
Dim glf_p3_seg94_lmarr : glf_p3_seg94_lmarr = Array(p_p3_seg94_vr)
glf_lightMaps.Add "p3_seg94", glf_p3_seg94_lmarr
Dim glf_p2_seg94_lmarr : glf_p2_seg94_lmarr = Array(p_p2_seg94_vr)
glf_lightMaps.Add "p2_seg94", glf_p2_seg94_lmarr
Dim glf_p4_seg93_lmarr : glf_p4_seg93_lmarr = Array(p_p4_seg93_vr)
glf_lightMaps.Add "p4_seg93", glf_p4_seg93_lmarr
Dim glf_p3_seg93_lmarr : glf_p3_seg93_lmarr = Array(p_p3_seg93_vr)
glf_lightMaps.Add "p3_seg93", glf_p3_seg93_lmarr
Dim glf_p2_seg93_lmarr : glf_p2_seg93_lmarr = Array(p_p2_seg93_vr)
glf_lightMaps.Add "p2_seg93", glf_p2_seg93_lmarr
Dim glf_p4_seg92_lmarr : glf_p4_seg92_lmarr = Array(p_p4_seg92_vr)
glf_lightMaps.Add "p4_seg92", glf_p4_seg92_lmarr
Dim glf_p3_seg92_lmarr : glf_p3_seg92_lmarr = Array(p_p3_seg92_vr)
glf_lightMaps.Add "p3_seg92", glf_p3_seg92_lmarr
Dim glf_p2_seg92_lmarr : glf_p2_seg92_lmarr = Array(p_p2_seg92_vr)
glf_lightMaps.Add "p2_seg92", glf_p2_seg92_lmarr
Dim glf_p4_seg91_lmarr : glf_p4_seg91_lmarr = Array(p_p4_seg91_vr)
glf_lightMaps.Add "p4_seg91", glf_p4_seg91_lmarr
Dim glf_p3_seg91_lmarr : glf_p3_seg91_lmarr = Array(p_p3_seg91_vr)
glf_lightMaps.Add "p3_seg91", glf_p3_seg91_lmarr
Dim glf_p2_seg91_lmarr : glf_p2_seg91_lmarr = Array(p_p2_seg91_vr)
glf_lightMaps.Add "p2_seg91", glf_p2_seg91_lmarr
Dim glf_p4_seg90_lmarr : glf_p4_seg90_lmarr = Array(p_p4_seg90_vr)
glf_lightMaps.Add "p4_seg90", glf_p4_seg90_lmarr
Dim glf_p3_seg90_lmarr : glf_p3_seg90_lmarr = Array(p_p3_seg90_vr)
glf_lightMaps.Add "p3_seg90", glf_p3_seg90_lmarr
Dim glf_p2_seg90_lmarr : glf_p2_seg90_lmarr = Array(p_p2_seg90_vr)
glf_lightMaps.Add "p2_seg90", glf_p2_seg90_lmarr
Dim glf_p4_seg89_lmarr : glf_p4_seg89_lmarr = Array(p_p4_seg89_vr)
glf_lightMaps.Add "p4_seg89", glf_p4_seg89_lmarr
Dim glf_p3_seg89_lmarr : glf_p3_seg89_lmarr = Array(p_p3_seg89_vr)
glf_lightMaps.Add "p3_seg89", glf_p3_seg89_lmarr
Dim glf_p2_seg89_lmarr : glf_p2_seg89_lmarr = Array(p_p2_seg89_vr)
glf_lightMaps.Add "p2_seg89", glf_p2_seg89_lmarr
Dim glf_p4_seg88_lmarr : glf_p4_seg88_lmarr = Array(p_p4_seg88_vr)
glf_lightMaps.Add "p4_seg88", glf_p4_seg88_lmarr
Dim glf_p3_seg88_lmarr : glf_p3_seg88_lmarr = Array(p_p3_seg88_vr)
glf_lightMaps.Add "p3_seg88", glf_p3_seg88_lmarr
Dim glf_p2_seg88_lmarr : glf_p2_seg88_lmarr = Array(p_p2_seg88_vr)
glf_lightMaps.Add "p2_seg88", glf_p2_seg88_lmarr
Dim glf_p4_seg87_lmarr : glf_p4_seg87_lmarr = Array(p_p4_seg87_vr)
glf_lightMaps.Add "p4_seg87", glf_p4_seg87_lmarr
Dim glf_p3_seg87_lmarr : glf_p3_seg87_lmarr = Array(p_p3_seg87_vr)
glf_lightMaps.Add "p3_seg87", glf_p3_seg87_lmarr
Dim glf_p2_seg87_lmarr : glf_p2_seg87_lmarr = Array(p_p2_seg87_vr)
glf_lightMaps.Add "p2_seg87", glf_p2_seg87_lmarr
Dim glf_p4_seg86_lmarr : glf_p4_seg86_lmarr = Array(p_p4_seg86_vr)
glf_lightMaps.Add "p4_seg86", glf_p4_seg86_lmarr
Dim glf_p3_seg86_lmarr : glf_p3_seg86_lmarr = Array(p_p3_seg86_vr)
glf_lightMaps.Add "p3_seg86", glf_p3_seg86_lmarr
Dim glf_p2_seg86_lmarr : glf_p2_seg86_lmarr = Array(p_p2_seg86_vr)
glf_lightMaps.Add "p2_seg86", glf_p2_seg86_lmarr
Dim glf_p4_seg85_lmarr : glf_p4_seg85_lmarr = Array(p_p4_seg85_vr)
glf_lightMaps.Add "p4_seg85", glf_p4_seg85_lmarr
Dim glf_p3_seg85_lmarr : glf_p3_seg85_lmarr = Array(p_p3_seg85_vr)
glf_lightMaps.Add "p3_seg85", glf_p3_seg85_lmarr
Dim glf_p2_seg85_lmarr : glf_p2_seg85_lmarr = Array(p_p2_seg85_vr)
glf_lightMaps.Add "p2_seg85", glf_p2_seg85_lmarr
Dim glf_p4_seg84_lmarr : glf_p4_seg84_lmarr = Array(p_p4_seg84_vr)
glf_lightMaps.Add "p4_seg84", glf_p4_seg84_lmarr
Dim glf_p3_seg84_lmarr : glf_p3_seg84_lmarr = Array(p_p3_seg84_vr)
glf_lightMaps.Add "p3_seg84", glf_p3_seg84_lmarr
Dim glf_p2_seg84_lmarr : glf_p2_seg84_lmarr = Array(p_p2_seg84_vr)
glf_lightMaps.Add "p2_seg84", glf_p2_seg84_lmarr
Dim glf_p4_seg83_lmarr : glf_p4_seg83_lmarr = Array(p_p4_seg83_vr)
glf_lightMaps.Add "p4_seg83", glf_p4_seg83_lmarr
Dim glf_p3_seg83_lmarr : glf_p3_seg83_lmarr = Array(p_p3_seg83_vr)
glf_lightMaps.Add "p3_seg83", glf_p3_seg83_lmarr
Dim glf_p2_seg83_lmarr : glf_p2_seg83_lmarr = Array(p_p2_seg83_vr)
glf_lightMaps.Add "p2_seg83", glf_p2_seg83_lmarr
Dim glf_p4_seg82_lmarr : glf_p4_seg82_lmarr = Array(p_p4_seg82_vr)
glf_lightMaps.Add "p4_seg82", glf_p4_seg82_lmarr
Dim glf_p3_seg82_lmarr : glf_p3_seg82_lmarr = Array(p_p3_seg82_vr)
glf_lightMaps.Add "p3_seg82", glf_p3_seg82_lmarr
Dim glf_p2_seg82_lmarr : glf_p2_seg82_lmarr = Array(p_p2_seg82_vr)
glf_lightMaps.Add "p2_seg82", glf_p2_seg82_lmarr
Dim glf_p4_seg81_lmarr : glf_p4_seg81_lmarr = Array(p_p4_seg81_vr)
glf_lightMaps.Add "p4_seg81", glf_p4_seg81_lmarr
Dim glf_p3_seg81_lmarr : glf_p3_seg81_lmarr = Array(p_p3_seg81_vr)
glf_lightMaps.Add "p3_seg81", glf_p3_seg81_lmarr
Dim glf_p2_seg81_lmarr : glf_p2_seg81_lmarr = Array(p_p2_seg81_vr)
glf_lightMaps.Add "p2_seg81", glf_p2_seg81_lmarr
Dim glf_p4_seg80_lmarr : glf_p4_seg80_lmarr = Array(p_p4_seg80_vr)
glf_lightMaps.Add "p4_seg80", glf_p4_seg80_lmarr
Dim glf_p3_seg80_lmarr : glf_p3_seg80_lmarr = Array(p_p3_seg80_vr)
glf_lightMaps.Add "p3_seg80", glf_p3_seg80_lmarr
Dim glf_p2_seg80_lmarr : glf_p2_seg80_lmarr = Array(p_p2_seg80_vr)
glf_lightMaps.Add "p2_seg80", glf_p2_seg80_lmarr
Dim glf_p4_seg79_lmarr : glf_p4_seg79_lmarr = Array(p_p4_seg79_vr)
glf_lightMaps.Add "p4_seg79", glf_p4_seg79_lmarr
Dim glf_p3_seg79_lmarr : glf_p3_seg79_lmarr = Array(p_p3_seg79_vr)
glf_lightMaps.Add "p3_seg79", glf_p3_seg79_lmarr
Dim glf_p2_seg79_lmarr : glf_p2_seg79_lmarr = Array(p_p2_seg79_vr)
glf_lightMaps.Add "p2_seg79", glf_p2_seg79_lmarr
Dim glf_p4_seg78_lmarr : glf_p4_seg78_lmarr = Array(p_p4_seg78_vr)
glf_lightMaps.Add "p4_seg78", glf_p4_seg78_lmarr
Dim glf_p3_seg78_lmarr : glf_p3_seg78_lmarr = Array(p_p3_seg78_vr)
glf_lightMaps.Add "p3_seg78", glf_p3_seg78_lmarr
Dim glf_p2_seg78_lmarr : glf_p2_seg78_lmarr = Array(p_p2_seg78_vr)
glf_lightMaps.Add "p2_seg78", glf_p2_seg78_lmarr
Dim glf_p4_seg77_lmarr : glf_p4_seg77_lmarr = Array(p_p4_seg77_vr)
glf_lightMaps.Add "p4_seg77", glf_p4_seg77_lmarr
Dim glf_p3_seg77_lmarr : glf_p3_seg77_lmarr = Array(p_p3_seg77_vr)
glf_lightMaps.Add "p3_seg77", glf_p3_seg77_lmarr
Dim glf_p2_seg77_lmarr : glf_p2_seg77_lmarr = Array(p_p2_seg77_vr)
glf_lightMaps.Add "p2_seg77", glf_p2_seg77_lmarr
Dim glf_p4_seg76_lmarr : glf_p4_seg76_lmarr = Array(p_p4_seg76_vr)
glf_lightMaps.Add "p4_seg76", glf_p4_seg76_lmarr
Dim glf_p3_seg76_lmarr : glf_p3_seg76_lmarr = Array(p_p3_seg76_vr)
glf_lightMaps.Add "p3_seg76", glf_p3_seg76_lmarr
Dim glf_p2_seg76_lmarr : glf_p2_seg76_lmarr = Array(p_p2_seg76_vr)
glf_lightMaps.Add "p2_seg76", glf_p2_seg76_lmarr
Dim glf_p4_seg75_lmarr : glf_p4_seg75_lmarr = Array(p_p4_seg75_vr)
glf_lightMaps.Add "p4_seg75", glf_p4_seg75_lmarr
Dim glf_p3_seg75_lmarr : glf_p3_seg75_lmarr = Array(p_p3_seg75_vr)
glf_lightMaps.Add "p3_seg75", glf_p3_seg75_lmarr
Dim glf_p2_seg75_lmarr : glf_p2_seg75_lmarr = Array(p_p2_seg75_vr)
glf_lightMaps.Add "p2_seg75", glf_p2_seg75_lmarr
Dim glf_p4_seg74_lmarr : glf_p4_seg74_lmarr = Array(p_p4_seg74_vr)
glf_lightMaps.Add "p4_seg74", glf_p4_seg74_lmarr
Dim glf_p3_seg74_lmarr : glf_p3_seg74_lmarr = Array(p_p3_seg74_vr)
glf_lightMaps.Add "p3_seg74", glf_p3_seg74_lmarr
Dim glf_p2_seg74_lmarr : glf_p2_seg74_lmarr = Array(p_p2_seg74_vr)
glf_lightMaps.Add "p2_seg74", glf_p2_seg74_lmarr
Dim glf_p4_seg73_lmarr : glf_p4_seg73_lmarr = Array(p_p4_seg73_vr)
glf_lightMaps.Add "p4_seg73", glf_p4_seg73_lmarr
Dim glf_p3_seg73_lmarr : glf_p3_seg73_lmarr = Array(p_p3_seg73_vr)
glf_lightMaps.Add "p3_seg73", glf_p3_seg73_lmarr
Dim glf_p2_seg73_lmarr : glf_p2_seg73_lmarr = Array(p_p2_seg73_vr)
glf_lightMaps.Add "p2_seg73", glf_p2_seg73_lmarr
Dim glf_p4_seg72_lmarr : glf_p4_seg72_lmarr = Array(p_p4_seg72_vr)
glf_lightMaps.Add "p4_seg72", glf_p4_seg72_lmarr
Dim glf_p3_seg72_lmarr : glf_p3_seg72_lmarr = Array(p_p3_seg72_vr)
glf_lightMaps.Add "p3_seg72", glf_p3_seg72_lmarr
Dim glf_p2_seg72_lmarr : glf_p2_seg72_lmarr = Array(p_p2_seg72_vr)
glf_lightMaps.Add "p2_seg72", glf_p2_seg72_lmarr
Dim glf_p4_seg71_lmarr : glf_p4_seg71_lmarr = Array(p_p4_seg71_vr)
glf_lightMaps.Add "p4_seg71", glf_p4_seg71_lmarr
Dim glf_p3_seg71_lmarr : glf_p3_seg71_lmarr = Array(p_p3_seg71_vr)
glf_lightMaps.Add "p3_seg71", glf_p3_seg71_lmarr
Dim glf_p2_seg71_lmarr : glf_p2_seg71_lmarr = Array(p_p2_seg71_vr)
glf_lightMaps.Add "p2_seg71", glf_p2_seg71_lmarr
Dim glf_p4_seg70_lmarr : glf_p4_seg70_lmarr = Array(p_p4_seg70_vr)
glf_lightMaps.Add "p4_seg70", glf_p4_seg70_lmarr
Dim glf_p3_seg70_lmarr : glf_p3_seg70_lmarr = Array(p_p3_seg70_vr)
glf_lightMaps.Add "p3_seg70", glf_p3_seg70_lmarr
Dim glf_p2_seg70_lmarr : glf_p2_seg70_lmarr = Array(p_p2_seg70_vr)
glf_lightMaps.Add "p2_seg70", glf_p2_seg70_lmarr
Dim glf_p4_seg69_lmarr : glf_p4_seg69_lmarr = Array(p_p4_seg69_vr)
glf_lightMaps.Add "p4_seg69", glf_p4_seg69_lmarr
Dim glf_p3_seg69_lmarr : glf_p3_seg69_lmarr = Array(p_p3_seg69_vr)
glf_lightMaps.Add "p3_seg69", glf_p3_seg69_lmarr
Dim glf_p2_seg69_lmarr : glf_p2_seg69_lmarr = Array(p_p2_seg69_vr)
glf_lightMaps.Add "p2_seg69", glf_p2_seg69_lmarr
Dim glf_p4_seg68_lmarr : glf_p4_seg68_lmarr = Array(p_p4_seg68_vr)
glf_lightMaps.Add "p4_seg68", glf_p4_seg68_lmarr
Dim glf_p3_seg68_lmarr : glf_p3_seg68_lmarr = Array(p_p3_seg68_vr)
glf_lightMaps.Add "p3_seg68", glf_p3_seg68_lmarr
Dim glf_p2_seg68_lmarr : glf_p2_seg68_lmarr = Array(p_p2_seg68_vr)
glf_lightMaps.Add "p2_seg68", glf_p2_seg68_lmarr
Dim glf_p4_seg67_lmarr : glf_p4_seg67_lmarr = Array(p_p4_seg67_vr)
glf_lightMaps.Add "p4_seg67", glf_p4_seg67_lmarr
Dim glf_p3_seg67_lmarr : glf_p3_seg67_lmarr = Array(p_p3_seg67_vr)
glf_lightMaps.Add "p3_seg67", glf_p3_seg67_lmarr
Dim glf_p2_seg67_lmarr : glf_p2_seg67_lmarr = Array(p_p2_seg67_vr)
glf_lightMaps.Add "p2_seg67", glf_p2_seg67_lmarr
Dim glf_p4_seg66_lmarr : glf_p4_seg66_lmarr = Array(p_p4_seg66_vr)
glf_lightMaps.Add "p4_seg66", glf_p4_seg66_lmarr
Dim glf_p3_seg66_lmarr : glf_p3_seg66_lmarr = Array(p_p3_seg66_vr)
glf_lightMaps.Add "p3_seg66", glf_p3_seg66_lmarr
Dim glf_p2_seg66_lmarr : glf_p2_seg66_lmarr = Array(p_p2_seg66_vr)
glf_lightMaps.Add "p2_seg66", glf_p2_seg66_lmarr
Dim glf_p4_seg65_lmarr : glf_p4_seg65_lmarr = Array(p_p4_seg65_vr)
glf_lightMaps.Add "p4_seg65", glf_p4_seg65_lmarr
Dim glf_p3_seg65_lmarr : glf_p3_seg65_lmarr = Array(p_p3_seg65_vr)
glf_lightMaps.Add "p3_seg65", glf_p3_seg65_lmarr
Dim glf_p2_seg65_lmarr : glf_p2_seg65_lmarr = Array(p_p2_seg65_vr)
glf_lightMaps.Add "p2_seg65", glf_p2_seg65_lmarr
Dim glf_p4_seg64_lmarr : glf_p4_seg64_lmarr = Array(p_p4_seg64_vr)
glf_lightMaps.Add "p4_seg64", glf_p4_seg64_lmarr
Dim glf_p3_seg64_lmarr : glf_p3_seg64_lmarr = Array(p_p3_seg64_vr)
glf_lightMaps.Add "p3_seg64", glf_p3_seg64_lmarr
Dim glf_p2_seg64_lmarr : glf_p2_seg64_lmarr = Array(p_p2_seg64_vr)
glf_lightMaps.Add "p2_seg64", glf_p2_seg64_lmarr
Dim glf_p4_seg63_lmarr : glf_p4_seg63_lmarr = Array(p_p4_seg63_vr)
glf_lightMaps.Add "p4_seg63", glf_p4_seg63_lmarr
Dim glf_p3_seg63_lmarr : glf_p3_seg63_lmarr = Array(p_p3_seg63_vr)
glf_lightMaps.Add "p3_seg63", glf_p3_seg63_lmarr
Dim glf_p2_seg63_lmarr : glf_p2_seg63_lmarr = Array(p_p2_seg63_vr)
glf_lightMaps.Add "p2_seg63", glf_p2_seg63_lmarr
Dim glf_p4_seg62_lmarr : glf_p4_seg62_lmarr = Array(p_p4_seg62_vr)
glf_lightMaps.Add "p4_seg62", glf_p4_seg62_lmarr
Dim glf_p3_seg62_lmarr : glf_p3_seg62_lmarr = Array(p_p3_seg62_vr)
glf_lightMaps.Add "p3_seg62", glf_p3_seg62_lmarr
Dim glf_p2_seg62_lmarr : glf_p2_seg62_lmarr = Array(p_p2_seg62_vr)
glf_lightMaps.Add "p2_seg62", glf_p2_seg62_lmarr
Dim glf_p4_seg61_lmarr : glf_p4_seg61_lmarr = Array(p_p4_seg61_vr)
glf_lightMaps.Add "p4_seg61", glf_p4_seg61_lmarr
Dim glf_p3_seg61_lmarr : glf_p3_seg61_lmarr = Array(p_p3_seg61_vr)
glf_lightMaps.Add "p3_seg61", glf_p3_seg61_lmarr
Dim glf_p2_seg61_lmarr : glf_p2_seg61_lmarr = Array(p_p2_seg61_vr)
glf_lightMaps.Add "p2_seg61", glf_p2_seg61_lmarr
Dim glf_p4_seg60_lmarr : glf_p4_seg60_lmarr = Array(p_p4_seg60_vr)
glf_lightMaps.Add "p4_seg60", glf_p4_seg60_lmarr
Dim glf_p3_seg60_lmarr : glf_p3_seg60_lmarr = Array(p_p3_seg60_vr)
glf_lightMaps.Add "p3_seg60", glf_p3_seg60_lmarr
Dim glf_p2_seg60_lmarr : glf_p2_seg60_lmarr = Array(p_p2_seg60_vr)
glf_lightMaps.Add "p2_seg60", glf_p2_seg60_lmarr
Dim glf_p4_seg59_lmarr : glf_p4_seg59_lmarr = Array(p_p4_seg59_vr)
glf_lightMaps.Add "p4_seg59", glf_p4_seg59_lmarr
Dim glf_p3_seg59_lmarr : glf_p3_seg59_lmarr = Array(p_p3_seg59_vr)
glf_lightMaps.Add "p3_seg59", glf_p3_seg59_lmarr
Dim glf_p2_seg59_lmarr : glf_p2_seg59_lmarr = Array(p_p2_seg59_vr)
glf_lightMaps.Add "p2_seg59", glf_p2_seg59_lmarr
Dim glf_p4_seg58_lmarr : glf_p4_seg58_lmarr = Array(p_p4_seg58_vr)
glf_lightMaps.Add "p4_seg58", glf_p4_seg58_lmarr
Dim glf_p3_seg58_lmarr : glf_p3_seg58_lmarr = Array(p_p3_seg58_vr)
glf_lightMaps.Add "p3_seg58", glf_p3_seg58_lmarr
Dim glf_p2_seg58_lmarr : glf_p2_seg58_lmarr = Array(p_p2_seg58_vr)
glf_lightMaps.Add "p2_seg58", glf_p2_seg58_lmarr
Dim glf_p4_seg57_lmarr : glf_p4_seg57_lmarr = Array(p_p4_seg57_vr)
glf_lightMaps.Add "p4_seg57", glf_p4_seg57_lmarr
Dim glf_p3_seg57_lmarr : glf_p3_seg57_lmarr = Array(p_p3_seg57_vr)
glf_lightMaps.Add "p3_seg57", glf_p3_seg57_lmarr
Dim glf_p2_seg57_lmarr : glf_p2_seg57_lmarr = Array(p_p2_seg57_vr)
glf_lightMaps.Add "p2_seg57", glf_p2_seg57_lmarr
Dim glf_p4_seg56_lmarr : glf_p4_seg56_lmarr = Array(p_p4_seg56_vr)
glf_lightMaps.Add "p4_seg56", glf_p4_seg56_lmarr
Dim glf_p3_seg56_lmarr : glf_p3_seg56_lmarr = Array(p_p3_seg56_vr)
glf_lightMaps.Add "p3_seg56", glf_p3_seg56_lmarr
Dim glf_p2_seg56_lmarr : glf_p2_seg56_lmarr = Array(p_p2_seg56_vr)
glf_lightMaps.Add "p2_seg56", glf_p2_seg56_lmarr
Dim glf_p4_seg55_lmarr : glf_p4_seg55_lmarr = Array(p_p4_seg55_vr)
glf_lightMaps.Add "p4_seg55", glf_p4_seg55_lmarr
Dim glf_p3_seg55_lmarr : glf_p3_seg55_lmarr = Array(p_p3_seg55_vr)
glf_lightMaps.Add "p3_seg55", glf_p3_seg55_lmarr
Dim glf_p2_seg55_lmarr : glf_p2_seg55_lmarr = Array(p_p2_seg55_vr)
glf_lightMaps.Add "p2_seg55", glf_p2_seg55_lmarr
Dim glf_p4_seg54_lmarr : glf_p4_seg54_lmarr = Array(p_p4_seg54_vr)
glf_lightMaps.Add "p4_seg54", glf_p4_seg54_lmarr
Dim glf_p3_seg54_lmarr : glf_p3_seg54_lmarr = Array(p_p3_seg54_vr)
glf_lightMaps.Add "p3_seg54", glf_p3_seg54_lmarr
Dim glf_p2_seg54_lmarr : glf_p2_seg54_lmarr = Array(p_p2_seg54_vr)
glf_lightMaps.Add "p2_seg54", glf_p2_seg54_lmarr
Dim glf_p4_seg53_lmarr : glf_p4_seg53_lmarr = Array(p_p4_seg53_vr)
glf_lightMaps.Add "p4_seg53", glf_p4_seg53_lmarr
Dim glf_p3_seg53_lmarr : glf_p3_seg53_lmarr = Array(p_p3_seg53_vr)
glf_lightMaps.Add "p3_seg53", glf_p3_seg53_lmarr
Dim glf_p2_seg53_lmarr : glf_p2_seg53_lmarr = Array(p_p2_seg53_vr)
glf_lightMaps.Add "p2_seg53", glf_p2_seg53_lmarr
Dim glf_p4_seg52_lmarr : glf_p4_seg52_lmarr = Array(p_p4_seg52_vr)
glf_lightMaps.Add "p4_seg52", glf_p4_seg52_lmarr
Dim glf_p3_seg52_lmarr : glf_p3_seg52_lmarr = Array(p_p3_seg52_vr)
glf_lightMaps.Add "p3_seg52", glf_p3_seg52_lmarr
Dim glf_p2_seg52_lmarr : glf_p2_seg52_lmarr = Array(p_p2_seg52_vr)
glf_lightMaps.Add "p2_seg52", glf_p2_seg52_lmarr
Dim glf_p4_seg51_lmarr : glf_p4_seg51_lmarr = Array(p_p4_seg51_vr)
glf_lightMaps.Add "p4_seg51", glf_p4_seg51_lmarr
Dim glf_p3_seg51_lmarr : glf_p3_seg51_lmarr = Array(p_p3_seg51_vr)
glf_lightMaps.Add "p3_seg51", glf_p3_seg51_lmarr
Dim glf_p2_seg51_lmarr : glf_p2_seg51_lmarr = Array(p_p2_seg51_vr)
glf_lightMaps.Add "p2_seg51", glf_p2_seg51_lmarr
Dim glf_p4_seg50_lmarr : glf_p4_seg50_lmarr = Array(p_p4_seg50_vr)
glf_lightMaps.Add "p4_seg50", glf_p4_seg50_lmarr
Dim glf_p3_seg50_lmarr : glf_p3_seg50_lmarr = Array(p_p3_seg50_vr)
glf_lightMaps.Add "p3_seg50", glf_p3_seg50_lmarr
Dim glf_p2_seg50_lmarr : glf_p2_seg50_lmarr = Array(p_p2_seg50_vr)
glf_lightMaps.Add "p2_seg50", glf_p2_seg50_lmarr
Dim glf_p4_seg49_lmarr : glf_p4_seg49_lmarr = Array(p_p4_seg49_vr)
glf_lightMaps.Add "p4_seg49", glf_p4_seg49_lmarr
Dim glf_p3_seg49_lmarr : glf_p3_seg49_lmarr = Array(p_p3_seg49_vr)
glf_lightMaps.Add "p3_seg49", glf_p3_seg49_lmarr
Dim glf_p2_seg49_lmarr : glf_p2_seg49_lmarr = Array(p_p2_seg49_vr)
glf_lightMaps.Add "p2_seg49", glf_p2_seg49_lmarr
Dim glf_p4_seg48_lmarr : glf_p4_seg48_lmarr = Array(p_p4_seg48_vr)
glf_lightMaps.Add "p4_seg48", glf_p4_seg48_lmarr
Dim glf_p3_seg48_lmarr : glf_p3_seg48_lmarr = Array(p_p3_seg48_vr)
glf_lightMaps.Add "p3_seg48", glf_p3_seg48_lmarr
Dim glf_p2_seg48_lmarr : glf_p2_seg48_lmarr = Array(p_p2_seg48_vr)
glf_lightMaps.Add "p2_seg48", glf_p2_seg48_lmarr
Dim glf_p4_seg47_lmarr : glf_p4_seg47_lmarr = Array(p_p4_seg47_vr)
glf_lightMaps.Add "p4_seg47", glf_p4_seg47_lmarr
Dim glf_p3_seg47_lmarr : glf_p3_seg47_lmarr = Array(p_p3_seg47_vr)
glf_lightMaps.Add "p3_seg47", glf_p3_seg47_lmarr
Dim glf_p2_seg47_lmarr : glf_p2_seg47_lmarr = Array(p_p2_seg47_vr)
glf_lightMaps.Add "p2_seg47", glf_p2_seg47_lmarr
Dim glf_p4_seg46_lmarr : glf_p4_seg46_lmarr = Array(p_p4_seg46_vr)
glf_lightMaps.Add "p4_seg46", glf_p4_seg46_lmarr
Dim glf_p3_seg46_lmarr : glf_p3_seg46_lmarr = Array(p_p3_seg46_vr)
glf_lightMaps.Add "p3_seg46", glf_p3_seg46_lmarr
Dim glf_p2_seg46_lmarr : glf_p2_seg46_lmarr = Array(p_p2_seg46_vr)
glf_lightMaps.Add "p2_seg46", glf_p2_seg46_lmarr
Dim glf_p4_seg45_lmarr : glf_p4_seg45_lmarr = Array(p_p4_seg45_vr)
glf_lightMaps.Add "p4_seg45", glf_p4_seg45_lmarr
Dim glf_p3_seg45_lmarr : glf_p3_seg45_lmarr = Array(p_p3_seg45_vr)
glf_lightMaps.Add "p3_seg45", glf_p3_seg45_lmarr
Dim glf_p2_seg45_lmarr : glf_p2_seg45_lmarr = Array(p_p2_seg45_vr)
glf_lightMaps.Add "p2_seg45", glf_p2_seg45_lmarr
Dim glf_p4_seg44_lmarr : glf_p4_seg44_lmarr = Array(p_p4_seg44_vr)
glf_lightMaps.Add "p4_seg44", glf_p4_seg44_lmarr
Dim glf_p3_seg44_lmarr : glf_p3_seg44_lmarr = Array(p_p3_seg44_vr)
glf_lightMaps.Add "p3_seg44", glf_p3_seg44_lmarr
Dim glf_p2_seg44_lmarr : glf_p2_seg44_lmarr = Array(p_p2_seg44_vr)
glf_lightMaps.Add "p2_seg44", glf_p2_seg44_lmarr
Dim glf_p4_seg43_lmarr : glf_p4_seg43_lmarr = Array(p_p4_seg43_vr)
glf_lightMaps.Add "p4_seg43", glf_p4_seg43_lmarr
Dim glf_p3_seg43_lmarr : glf_p3_seg43_lmarr = Array(p_p3_seg43_vr)
glf_lightMaps.Add "p3_seg43", glf_p3_seg43_lmarr
Dim glf_p2_seg43_lmarr : glf_p2_seg43_lmarr = Array(p_p2_seg43_vr)
glf_lightMaps.Add "p2_seg43", glf_p2_seg43_lmarr
Dim glf_p4_seg42_lmarr : glf_p4_seg42_lmarr = Array(p_p4_seg42_vr)
glf_lightMaps.Add "p4_seg42", glf_p4_seg42_lmarr
Dim glf_p3_seg42_lmarr : glf_p3_seg42_lmarr = Array(p_p3_seg42_vr)
glf_lightMaps.Add "p3_seg42", glf_p3_seg42_lmarr
Dim glf_p2_seg42_lmarr : glf_p2_seg42_lmarr = Array(p_p2_seg42_vr)
glf_lightMaps.Add "p2_seg42", glf_p2_seg42_lmarr
Dim glf_p4_seg41_lmarr : glf_p4_seg41_lmarr = Array(p_p4_seg41_vr)
glf_lightMaps.Add "p4_seg41", glf_p4_seg41_lmarr
Dim glf_p3_seg41_lmarr : glf_p3_seg41_lmarr = Array(p_p3_seg41_vr)
glf_lightMaps.Add "p3_seg41", glf_p3_seg41_lmarr
Dim glf_p2_seg41_lmarr : glf_p2_seg41_lmarr = Array(p_p2_seg41_vr)
glf_lightMaps.Add "p2_seg41", glf_p2_seg41_lmarr
Dim glf_p4_seg40_lmarr : glf_p4_seg40_lmarr = Array(p_p4_seg40_vr)
glf_lightMaps.Add "p4_seg40", glf_p4_seg40_lmarr
Dim glf_p3_seg40_lmarr : glf_p3_seg40_lmarr = Array(p_p3_seg40_vr)
glf_lightMaps.Add "p3_seg40", glf_p3_seg40_lmarr
Dim glf_p2_seg40_lmarr : glf_p2_seg40_lmarr = Array(p_p2_seg40_vr)
glf_lightMaps.Add "p2_seg40", glf_p2_seg40_lmarr
Dim glf_p4_seg39_lmarr : glf_p4_seg39_lmarr = Array(p_p4_seg39_vr)
glf_lightMaps.Add "p4_seg39", glf_p4_seg39_lmarr
Dim glf_p3_seg39_lmarr : glf_p3_seg39_lmarr = Array(p_p3_seg39_vr)
glf_lightMaps.Add "p3_seg39", glf_p3_seg39_lmarr
Dim glf_p2_seg39_lmarr : glf_p2_seg39_lmarr = Array(p_p2_seg39_vr)
glf_lightMaps.Add "p2_seg39", glf_p2_seg39_lmarr
Dim glf_p4_seg38_lmarr : glf_p4_seg38_lmarr = Array(p_p4_seg38_vr)
glf_lightMaps.Add "p4_seg38", glf_p4_seg38_lmarr
Dim glf_p3_seg38_lmarr : glf_p3_seg38_lmarr = Array(p_p3_seg38_vr)
glf_lightMaps.Add "p3_seg38", glf_p3_seg38_lmarr
Dim glf_p2_seg38_lmarr : glf_p2_seg38_lmarr = Array(p_p2_seg38_vr)
glf_lightMaps.Add "p2_seg38", glf_p2_seg38_lmarr
Dim glf_p4_seg37_lmarr : glf_p4_seg37_lmarr = Array(p_p4_seg37_vr)
glf_lightMaps.Add "p4_seg37", glf_p4_seg37_lmarr
Dim glf_p3_seg37_lmarr : glf_p3_seg37_lmarr = Array(p_p3_seg37_vr)
glf_lightMaps.Add "p3_seg37", glf_p3_seg37_lmarr
Dim glf_p2_seg37_lmarr : glf_p2_seg37_lmarr = Array(p_p2_seg37_vr)
glf_lightMaps.Add "p2_seg37", glf_p2_seg37_lmarr
Dim glf_p4_seg36_lmarr : glf_p4_seg36_lmarr = Array(p_p4_seg36_vr)
glf_lightMaps.Add "p4_seg36", glf_p4_seg36_lmarr
Dim glf_p3_seg36_lmarr : glf_p3_seg36_lmarr = Array(p_p3_seg36_vr)
glf_lightMaps.Add "p3_seg36", glf_p3_seg36_lmarr
Dim glf_p2_seg36_lmarr : glf_p2_seg36_lmarr = Array(p_p2_seg36_vr)
glf_lightMaps.Add "p2_seg36", glf_p2_seg36_lmarr
Dim glf_p4_seg35_lmarr : glf_p4_seg35_lmarr = Array(p_p4_seg35_vr)
glf_lightMaps.Add "p4_seg35", glf_p4_seg35_lmarr
Dim glf_p3_seg35_lmarr : glf_p3_seg35_lmarr = Array(p_p3_seg35_vr)
glf_lightMaps.Add "p3_seg35", glf_p3_seg35_lmarr
Dim glf_p2_seg35_lmarr : glf_p2_seg35_lmarr = Array(p_p2_seg35_vr)
glf_lightMaps.Add "p2_seg35", glf_p2_seg35_lmarr
Dim glf_p4_seg34_lmarr : glf_p4_seg34_lmarr = Array(p_p4_seg34_vr)
glf_lightMaps.Add "p4_seg34", glf_p4_seg34_lmarr
Dim glf_p3_seg34_lmarr : glf_p3_seg34_lmarr = Array(p_p3_seg34_vr)
glf_lightMaps.Add "p3_seg34", glf_p3_seg34_lmarr
Dim glf_p2_seg34_lmarr : glf_p2_seg34_lmarr = Array(p_p2_seg34_vr)
glf_lightMaps.Add "p2_seg34", glf_p2_seg34_lmarr
Dim glf_p4_seg33_lmarr : glf_p4_seg33_lmarr = Array(p_p4_seg33_vr)
glf_lightMaps.Add "p4_seg33", glf_p4_seg33_lmarr
Dim glf_p3_seg33_lmarr : glf_p3_seg33_lmarr = Array(p_p3_seg33_vr)
glf_lightMaps.Add "p3_seg33", glf_p3_seg33_lmarr
Dim glf_p2_seg33_lmarr : glf_p2_seg33_lmarr = Array(p_p2_seg33_vr)
glf_lightMaps.Add "p2_seg33", glf_p2_seg33_lmarr
Dim glf_p4_seg32_lmarr : glf_p4_seg32_lmarr = Array(p_p4_seg32_vr)
glf_lightMaps.Add "p4_seg32", glf_p4_seg32_lmarr
Dim glf_p3_seg32_lmarr : glf_p3_seg32_lmarr = Array(p_p3_seg32_vr)
glf_lightMaps.Add "p3_seg32", glf_p3_seg32_lmarr
Dim glf_p2_seg32_lmarr : glf_p2_seg32_lmarr = Array(p_p2_seg32_vr)
glf_lightMaps.Add "p2_seg32", glf_p2_seg32_lmarr
Dim glf_p4_seg31_lmarr : glf_p4_seg31_lmarr = Array(p_p4_seg31_vr)
glf_lightMaps.Add "p4_seg31", glf_p4_seg31_lmarr
Dim glf_p3_seg31_lmarr : glf_p3_seg31_lmarr = Array(p_p3_seg31_vr)
glf_lightMaps.Add "p3_seg31", glf_p3_seg31_lmarr
Dim glf_p2_seg31_lmarr : glf_p2_seg31_lmarr = Array(p_p2_seg31_vr)
glf_lightMaps.Add "p2_seg31", glf_p2_seg31_lmarr
Dim glf_p4_seg30_lmarr : glf_p4_seg30_lmarr = Array(p_p4_seg30_vr)
glf_lightMaps.Add "p4_seg30", glf_p4_seg30_lmarr
Dim glf_p3_seg30_lmarr : glf_p3_seg30_lmarr = Array(p_p3_seg30_vr)
glf_lightMaps.Add "p3_seg30", glf_p3_seg30_lmarr
Dim glf_p2_seg30_lmarr : glf_p2_seg30_lmarr = Array(p_p2_seg30_vr)
glf_lightMaps.Add "p2_seg30", glf_p2_seg30_lmarr
Dim glf_p4_seg29_lmarr : glf_p4_seg29_lmarr = Array(p_p4_seg29_vr)
glf_lightMaps.Add "p4_seg29", glf_p4_seg29_lmarr
Dim glf_p3_seg29_lmarr : glf_p3_seg29_lmarr = Array(p_p3_seg29_vr)
glf_lightMaps.Add "p3_seg29", glf_p3_seg29_lmarr
Dim glf_p2_seg29_lmarr : glf_p2_seg29_lmarr = Array(p_p2_seg29_vr)
glf_lightMaps.Add "p2_seg29", glf_p2_seg29_lmarr
Dim glf_p4_seg28_lmarr : glf_p4_seg28_lmarr = Array(p_p4_seg28_vr)
glf_lightMaps.Add "p4_seg28", glf_p4_seg28_lmarr
Dim glf_p3_seg28_lmarr : glf_p3_seg28_lmarr = Array(p_p3_seg28_vr)
glf_lightMaps.Add "p3_seg28", glf_p3_seg28_lmarr
Dim glf_p2_seg28_lmarr : glf_p2_seg28_lmarr = Array(p_p2_seg28_vr)
glf_lightMaps.Add "p2_seg28", glf_p2_seg28_lmarr
Dim glf_p4_seg27_lmarr : glf_p4_seg27_lmarr = Array(p_p4_seg27_vr)
glf_lightMaps.Add "p4_seg27", glf_p4_seg27_lmarr
Dim glf_p3_seg27_lmarr : glf_p3_seg27_lmarr = Array(p_p3_seg27_vr)
glf_lightMaps.Add "p3_seg27", glf_p3_seg27_lmarr
Dim glf_p2_seg27_lmarr : glf_p2_seg27_lmarr = Array(p_p2_seg27_vr)
glf_lightMaps.Add "p2_seg27", glf_p2_seg27_lmarr
Dim glf_p4_seg26_lmarr : glf_p4_seg26_lmarr = Array(p_p4_seg26_vr)
glf_lightMaps.Add "p4_seg26", glf_p4_seg26_lmarr
Dim glf_p3_seg26_lmarr : glf_p3_seg26_lmarr = Array(p_p3_seg26_vr)
glf_lightMaps.Add "p3_seg26", glf_p3_seg26_lmarr
Dim glf_p2_seg26_lmarr : glf_p2_seg26_lmarr = Array(p_p2_seg26_vr)
glf_lightMaps.Add "p2_seg26", glf_p2_seg26_lmarr
Dim glf_p4_seg25_lmarr : glf_p4_seg25_lmarr = Array(p_p4_seg25_vr)
glf_lightMaps.Add "p4_seg25", glf_p4_seg25_lmarr
Dim glf_p3_seg25_lmarr : glf_p3_seg25_lmarr = Array(p_p3_seg25_vr)
glf_lightMaps.Add "p3_seg25", glf_p3_seg25_lmarr
Dim glf_p2_seg25_lmarr : glf_p2_seg25_lmarr = Array(p_p2_seg25_vr)
glf_lightMaps.Add "p2_seg25", glf_p2_seg25_lmarr
Dim glf_p4_seg24_lmarr : glf_p4_seg24_lmarr = Array(p_p4_seg24_vr)
glf_lightMaps.Add "p4_seg24", glf_p4_seg24_lmarr
Dim glf_p3_seg24_lmarr : glf_p3_seg24_lmarr = Array(p_p3_seg24_vr)
glf_lightMaps.Add "p3_seg24", glf_p3_seg24_lmarr
Dim glf_p2_seg24_lmarr : glf_p2_seg24_lmarr = Array(p_p2_seg24_vr)
glf_lightMaps.Add "p2_seg24", glf_p2_seg24_lmarr
Dim glf_p4_seg23_lmarr : glf_p4_seg23_lmarr = Array(p_p4_seg23_vr)
glf_lightMaps.Add "p4_seg23", glf_p4_seg23_lmarr
Dim glf_p3_seg23_lmarr : glf_p3_seg23_lmarr = Array(p_p3_seg23_vr)
glf_lightMaps.Add "p3_seg23", glf_p3_seg23_lmarr
Dim glf_p2_seg23_lmarr : glf_p2_seg23_lmarr = Array(p_p2_seg23_vr)
glf_lightMaps.Add "p2_seg23", glf_p2_seg23_lmarr
Dim glf_p4_seg22_lmarr : glf_p4_seg22_lmarr = Array(p_p4_seg22_vr)
glf_lightMaps.Add "p4_seg22", glf_p4_seg22_lmarr
Dim glf_p3_seg22_lmarr : glf_p3_seg22_lmarr = Array(p_p3_seg22_vr)
glf_lightMaps.Add "p3_seg22", glf_p3_seg22_lmarr
Dim glf_p2_seg22_lmarr : glf_p2_seg22_lmarr = Array(p_p2_seg22_vr)
glf_lightMaps.Add "p2_seg22", glf_p2_seg22_lmarr
Dim glf_p4_seg21_lmarr : glf_p4_seg21_lmarr = Array(p_p4_seg21_vr)
glf_lightMaps.Add "p4_seg21", glf_p4_seg21_lmarr
Dim glf_p3_seg21_lmarr : glf_p3_seg21_lmarr = Array(p_p3_seg21_vr)
glf_lightMaps.Add "p3_seg21", glf_p3_seg21_lmarr
Dim glf_p2_seg21_lmarr : glf_p2_seg21_lmarr = Array(p_p2_seg21_vr)
glf_lightMaps.Add "p2_seg21", glf_p2_seg21_lmarr
Dim glf_p4_seg20_lmarr : glf_p4_seg20_lmarr = Array(p_p4_seg20_vr)
glf_lightMaps.Add "p4_seg20", glf_p4_seg20_lmarr
Dim glf_p3_seg20_lmarr : glf_p3_seg20_lmarr = Array(p_p3_seg20_vr)
glf_lightMaps.Add "p3_seg20", glf_p3_seg20_lmarr
Dim glf_p2_seg20_lmarr : glf_p2_seg20_lmarr = Array(p_p2_seg20_vr)
glf_lightMaps.Add "p2_seg20", glf_p2_seg20_lmarr
Dim glf_p4_seg19_lmarr : glf_p4_seg19_lmarr = Array(p_p4_seg19_vr)
glf_lightMaps.Add "p4_seg19", glf_p4_seg19_lmarr
Dim glf_p3_seg19_lmarr : glf_p3_seg19_lmarr = Array(p_p3_seg19_vr)
glf_lightMaps.Add "p3_seg19", glf_p3_seg19_lmarr
Dim glf_p2_seg19_lmarr : glf_p2_seg19_lmarr = Array(p_p2_seg19_vr)
glf_lightMaps.Add "p2_seg19", glf_p2_seg19_lmarr
Dim glf_p4_seg18_lmarr : glf_p4_seg18_lmarr = Array(p_p4_seg18_vr)
glf_lightMaps.Add "p4_seg18", glf_p4_seg18_lmarr
Dim glf_p3_seg18_lmarr : glf_p3_seg18_lmarr = Array(p_p3_seg18_vr)
glf_lightMaps.Add "p3_seg18", glf_p3_seg18_lmarr
Dim glf_p2_seg18_lmarr : glf_p2_seg18_lmarr = Array(p_p2_seg18_vr)
glf_lightMaps.Add "p2_seg18", glf_p2_seg18_lmarr
Dim glf_p4_seg17_lmarr : glf_p4_seg17_lmarr = Array(p_p4_seg17_vr)
glf_lightMaps.Add "p4_seg17", glf_p4_seg17_lmarr
Dim glf_p3_seg17_lmarr : glf_p3_seg17_lmarr = Array(p_p3_seg17_vr)
glf_lightMaps.Add "p3_seg17", glf_p3_seg17_lmarr
Dim glf_p2_seg17_lmarr : glf_p2_seg17_lmarr = Array(p_p2_seg17_vr)
glf_lightMaps.Add "p2_seg17", glf_p2_seg17_lmarr
Dim glf_p4_seg16_lmarr : glf_p4_seg16_lmarr = Array(p_p4_seg16_vr)
glf_lightMaps.Add "p4_seg16", glf_p4_seg16_lmarr
Dim glf_p3_seg16_lmarr : glf_p3_seg16_lmarr = Array(p_p3_seg16_vr)
glf_lightMaps.Add "p3_seg16", glf_p3_seg16_lmarr
Dim glf_p2_seg16_lmarr : glf_p2_seg16_lmarr = Array(p_p2_seg16_vr)
glf_lightMaps.Add "p2_seg16", glf_p2_seg16_lmarr
Dim glf_p4_seg15_lmarr : glf_p4_seg15_lmarr = Array(p_p4_seg15_vr)
glf_lightMaps.Add "p4_seg15", glf_p4_seg15_lmarr
Dim glf_p3_seg15_lmarr : glf_p3_seg15_lmarr = Array(p_p3_seg15_vr)
glf_lightMaps.Add "p3_seg15", glf_p3_seg15_lmarr
Dim glf_p2_seg15_lmarr : glf_p2_seg15_lmarr = Array(p_p2_seg15_vr)
glf_lightMaps.Add "p2_seg15", glf_p2_seg15_lmarr
Dim glf_p4_seg14_lmarr : glf_p4_seg14_lmarr = Array(p_p4_seg14_vr)
glf_lightMaps.Add "p4_seg14", glf_p4_seg14_lmarr
Dim glf_p3_seg14_lmarr : glf_p3_seg14_lmarr = Array(p_p3_seg14_vr)
glf_lightMaps.Add "p3_seg14", glf_p3_seg14_lmarr
Dim glf_p2_seg14_lmarr : glf_p2_seg14_lmarr = Array(p_p2_seg14_vr)
glf_lightMaps.Add "p2_seg14", glf_p2_seg14_lmarr
Dim glf_p4_seg13_lmarr : glf_p4_seg13_lmarr = Array(p_p4_seg13_vr)
glf_lightMaps.Add "p4_seg13", glf_p4_seg13_lmarr
Dim glf_p3_seg13_lmarr : glf_p3_seg13_lmarr = Array(p_p3_seg13_vr)
glf_lightMaps.Add "p3_seg13", glf_p3_seg13_lmarr
Dim glf_p2_seg13_lmarr : glf_p2_seg13_lmarr = Array(p_p2_seg13_vr)
glf_lightMaps.Add "p2_seg13", glf_p2_seg13_lmarr
Dim glf_p4_seg12_lmarr : glf_p4_seg12_lmarr = Array(p_p4_seg12_vr)
glf_lightMaps.Add "p4_seg12", glf_p4_seg12_lmarr
Dim glf_p3_seg12_lmarr : glf_p3_seg12_lmarr = Array(p_p3_seg12_vr)
glf_lightMaps.Add "p3_seg12", glf_p3_seg12_lmarr
Dim glf_p2_seg12_lmarr : glf_p2_seg12_lmarr = Array(p_p2_seg12_vr)
glf_lightMaps.Add "p2_seg12", glf_p2_seg12_lmarr
Dim glf_p4_seg11_lmarr : glf_p4_seg11_lmarr = Array(p_p4_seg11_vr)
glf_lightMaps.Add "p4_seg11", glf_p4_seg11_lmarr
Dim glf_p3_seg11_lmarr : glf_p3_seg11_lmarr = Array(p_p3_seg11_vr)
glf_lightMaps.Add "p3_seg11", glf_p3_seg11_lmarr
Dim glf_p2_seg11_lmarr : glf_p2_seg11_lmarr = Array(p_p2_seg11_vr)
glf_lightMaps.Add "p2_seg11", glf_p2_seg11_lmarr
Dim glf_p4_seg10_lmarr : glf_p4_seg10_lmarr = Array(p_p4_seg10_vr)
glf_lightMaps.Add "p4_seg10", glf_p4_seg10_lmarr
Dim glf_p3_seg10_lmarr : glf_p3_seg10_lmarr = Array(p_p3_seg10_vr)
glf_lightMaps.Add "p3_seg10", glf_p3_seg10_lmarr
Dim glf_p2_seg10_lmarr : glf_p2_seg10_lmarr = Array(p_p2_seg10_vr)
glf_lightMaps.Add "p2_seg10", glf_p2_seg10_lmarr
Dim glf_p4_seg9_lmarr : glf_p4_seg9_lmarr = Array(p_p4_seg9_vr)
glf_lightMaps.Add "p4_seg9", glf_p4_seg9_lmarr
Dim glf_p3_seg9_lmarr : glf_p3_seg9_lmarr = Array(p_p3_seg9_vr)
glf_lightMaps.Add "p3_seg9", glf_p3_seg9_lmarr
Dim glf_p2_seg9_lmarr : glf_p2_seg9_lmarr = Array(p_p2_seg9_vr)
glf_lightMaps.Add "p2_seg9", glf_p2_seg9_lmarr
Dim glf_p4_seg8_lmarr : glf_p4_seg8_lmarr = Array(p_p4_seg8_vr)
glf_lightMaps.Add "p4_seg8", glf_p4_seg8_lmarr
Dim glf_p3_seg8_lmarr : glf_p3_seg8_lmarr = Array(p_p3_seg8_vr)
glf_lightMaps.Add "p3_seg8", glf_p3_seg8_lmarr
Dim glf_p2_seg8_lmarr : glf_p2_seg8_lmarr = Array(p_p2_seg8_vr)
glf_lightMaps.Add "p2_seg8", glf_p2_seg8_lmarr
Dim glf_p4_seg7_lmarr : glf_p4_seg7_lmarr = Array(p_p4_seg7_vr)
glf_lightMaps.Add "p4_seg7", glf_p4_seg7_lmarr
Dim glf_p3_seg7_lmarr : glf_p3_seg7_lmarr = Array(p_p3_seg7_vr)
glf_lightMaps.Add "p3_seg7", glf_p3_seg7_lmarr
Dim glf_p2_seg7_lmarr : glf_p2_seg7_lmarr = Array(p_p2_seg7_vr)
glf_lightMaps.Add "p2_seg7", glf_p2_seg7_lmarr
Dim glf_p4_seg6_lmarr : glf_p4_seg6_lmarr = Array(p_p4_seg6_vr)
glf_lightMaps.Add "p4_seg6", glf_p4_seg6_lmarr
Dim glf_p3_seg6_lmarr : glf_p3_seg6_lmarr = Array(p_p3_seg6_vr)
glf_lightMaps.Add "p3_seg6", glf_p3_seg6_lmarr
Dim glf_p2_seg6_lmarr : glf_p2_seg6_lmarr = Array(p_p2_seg6_vr)
glf_lightMaps.Add "p2_seg6", glf_p2_seg6_lmarr
Dim glf_p4_seg5_lmarr : glf_p4_seg5_lmarr = Array(p_p4_seg5_vr)
glf_lightMaps.Add "p4_seg5", glf_p4_seg5_lmarr
Dim glf_p3_seg5_lmarr : glf_p3_seg5_lmarr = Array(p_p3_seg5_vr)
glf_lightMaps.Add "p3_seg5", glf_p3_seg5_lmarr
Dim glf_p2_seg5_lmarr : glf_p2_seg5_lmarr = Array(p_p2_seg5_vr)
glf_lightMaps.Add "p2_seg5", glf_p2_seg5_lmarr
Dim glf_p4_seg4_lmarr : glf_p4_seg4_lmarr = Array(p_p4_seg4_vr)
glf_lightMaps.Add "p4_seg4", glf_p4_seg4_lmarr
Dim glf_p3_seg4_lmarr : glf_p3_seg4_lmarr = Array(p_p3_seg4_vr)
glf_lightMaps.Add "p3_seg4", glf_p3_seg4_lmarr
Dim glf_p2_seg4_lmarr : glf_p2_seg4_lmarr = Array(p_p2_seg4_vr)
glf_lightMaps.Add "p2_seg4", glf_p2_seg4_lmarr
Dim glf_p4_seg3_lmarr : glf_p4_seg3_lmarr = Array(p_p4_seg3_vr)
glf_lightMaps.Add "p4_seg3", glf_p4_seg3_lmarr
Dim glf_p3_seg3_lmarr : glf_p3_seg3_lmarr = Array(p_p3_seg3_vr)
glf_lightMaps.Add "p3_seg3", glf_p3_seg3_lmarr
Dim glf_p2_seg3_lmarr : glf_p2_seg3_lmarr = Array(p_p2_seg3_vr)
glf_lightMaps.Add "p2_seg3", glf_p2_seg3_lmarr
Dim glf_p4_seg2_lmarr : glf_p4_seg2_lmarr = Array(p_p4_seg2_vr)
glf_lightMaps.Add "p4_seg2", glf_p4_seg2_lmarr
Dim glf_p3_seg2_lmarr : glf_p3_seg2_lmarr = Array(p_p3_seg2_vr)
glf_lightMaps.Add "p3_seg2", glf_p3_seg2_lmarr
Dim glf_p2_seg2_lmarr : glf_p2_seg2_lmarr = Array(p_p2_seg2_vr)
glf_lightMaps.Add "p2_seg2", glf_p2_seg2_lmarr
Dim glf_p4_seg1_lmarr : glf_p4_seg1_lmarr = Array(p_p4_seg1_vr)
glf_lightMaps.Add "p4_seg1", glf_p4_seg1_lmarr
Dim glf_p3_seg1_lmarr : glf_p3_seg1_lmarr = Array(p_p3_seg1_vr)
glf_lightMaps.Add "p3_seg1", glf_p3_seg1_lmarr
Dim glf_p2_seg1_lmarr : glf_p2_seg1_lmarr = Array(p_p2_seg1_vr)
glf_lightMaps.Add "p2_seg1", glf_p2_seg1_lmarr
Dim glf_ball_seg30_lmarr : glf_ball_seg30_lmarr = Array(p_ball_seg30_vr)
glf_lightMaps.Add "ball_seg30", glf_ball_seg30_lmarr
Dim glf_ball_seg29_lmarr : glf_ball_seg29_lmarr = Array(p_ball_seg29_vr)
glf_lightMaps.Add "ball_seg29", glf_ball_seg29_lmarr
Dim glf_ball_seg28_lmarr : glf_ball_seg28_lmarr = Array(p_ball_seg28_vr)
glf_lightMaps.Add "ball_seg28", glf_ball_seg28_lmarr
Dim glf_ball_seg27_lmarr : glf_ball_seg27_lmarr = Array(p_ball_seg27_vr)
glf_lightMaps.Add "ball_seg27", glf_ball_seg27_lmarr
Dim glf_ball_seg26_lmarr : glf_ball_seg26_lmarr = Array(p_ball_seg26_vr)
glf_lightMaps.Add "ball_seg26", glf_ball_seg26_lmarr
Dim glf_ball_seg25_lmarr : glf_ball_seg25_lmarr = Array(p_ball_seg25_vr)
glf_lightMaps.Add "ball_seg25", glf_ball_seg25_lmarr
Dim glf_ball_seg24_lmarr : glf_ball_seg24_lmarr = Array(p_ball_seg24_vr)
glf_lightMaps.Add "ball_seg24", glf_ball_seg24_lmarr
Dim glf_ball_seg23_lmarr : glf_ball_seg23_lmarr = Array(p_ball_seg23_vr)
glf_lightMaps.Add "ball_seg23", glf_ball_seg23_lmarr
Dim glf_ball_seg22_lmarr : glf_ball_seg22_lmarr = Array(p_ball_seg22_vr)
glf_lightMaps.Add "ball_seg22", glf_ball_seg22_lmarr
Dim glf_ball_seg21_lmarr : glf_ball_seg21_lmarr = Array(p_ball_seg21_vr)
glf_lightMaps.Add "ball_seg21", glf_ball_seg21_lmarr
Dim glf_ball_seg20_lmarr : glf_ball_seg20_lmarr = Array(p_ball_seg20_vr)
glf_lightMaps.Add "ball_seg20", glf_ball_seg20_lmarr
Dim glf_ball_seg19_lmarr : glf_ball_seg19_lmarr = Array(p_ball_seg19_vr)
glf_lightMaps.Add "ball_seg19", glf_ball_seg19_lmarr
Dim glf_ball_seg17_lmarr : glf_ball_seg17_lmarr = Array(p_ball_seg17_vr)
glf_lightMaps.Add "ball_seg17", glf_ball_seg17_lmarr
Dim glf_ball_seg16_lmarr : glf_ball_seg16_lmarr = Array(p_ball_seg16_vr)
glf_lightMaps.Add "ball_seg16", glf_ball_seg16_lmarr
Dim glf_ball_seg15_lmarr : glf_ball_seg15_lmarr = Array(p_ball_seg15_vr)
glf_lightMaps.Add "ball_seg15", glf_ball_seg15_lmarr
Dim glf_ball_seg14_lmarr : glf_ball_seg14_lmarr = Array(p_ball_seg14_vr)
glf_lightMaps.Add "ball_seg14", glf_ball_seg14_lmarr
Dim glf_ball_seg13_lmarr : glf_ball_seg13_lmarr = Array(p_ball_seg13_vr)
glf_lightMaps.Add "ball_seg13", glf_ball_seg13_lmarr
Dim glf_ball_seg12_lmarr : glf_ball_seg12_lmarr = Array(p_ball_seg12_vr)
glf_lightMaps.Add "ball_seg12", glf_ball_seg12_lmarr
Dim glf_ball_seg11_lmarr : glf_ball_seg11_lmarr = Array(p_ball_seg11_vr)
glf_lightMaps.Add "ball_seg11", glf_ball_seg11_lmarr
Dim glf_ball_seg10_lmarr : glf_ball_seg10_lmarr = Array(p_ball_seg10_vr)
glf_lightMaps.Add "ball_seg10", glf_ball_seg10_lmarr
Dim glf_ball_seg9_lmarr : glf_ball_seg9_lmarr = Array(p_ball_seg9_vr)
glf_lightMaps.Add "ball_seg9", glf_ball_seg9_lmarr
Dim glf_ball_seg8_lmarr : glf_ball_seg8_lmarr = Array(p_ball_seg8_vr)
glf_lightMaps.Add "ball_seg8", glf_ball_seg8_lmarr
Dim glf_ball_seg7_lmarr : glf_ball_seg7_lmarr = Array(p_ball_seg7_vr)
glf_lightMaps.Add "ball_seg7", glf_ball_seg7_lmarr
Dim glf_ball_seg6_lmarr : glf_ball_seg6_lmarr = Array(p_ball_seg6_vr)
glf_lightMaps.Add "ball_seg6", glf_ball_seg6_lmarr
Dim glf_ball_seg5_lmarr : glf_ball_seg5_lmarr = Array(p_ball_seg5_vr)
glf_lightMaps.Add "ball_seg5", glf_ball_seg5_lmarr
Dim glf_ball_seg4_lmarr : glf_ball_seg4_lmarr = Array(p_ball_seg4_vr)
glf_lightMaps.Add "ball_seg4", glf_ball_seg4_lmarr
Dim glf_ball_seg3_lmarr : glf_ball_seg3_lmarr = Array(p_ball_seg3_vr)
glf_lightMaps.Add "ball_seg3", glf_ball_seg3_lmarr
Dim glf_ball_seg2_lmarr : glf_ball_seg2_lmarr = Array(p_ball_seg2_vr)
glf_lightMaps.Add "ball_seg2", glf_ball_seg2_lmarr
Dim glf_ball_seg1_lmarr : glf_ball_seg1_lmarr = Array(p_ball_seg1_vr)
glf_lightMaps.Add "ball_seg1", glf_ball_seg1_lmarr
Dim glf_p1_seg105_lmarr : glf_p1_seg105_lmarr = Array(p_p1_seg105_vr)
glf_lightMaps.Add "p1_seg105", glf_p1_seg105_lmarr
Dim glf_p1_seg104_lmarr : glf_p1_seg104_lmarr = Array(p_p1_seg104_vr)
glf_lightMaps.Add "p1_seg104", glf_p1_seg104_lmarr
Dim glf_p1_seg103_lmarr : glf_p1_seg103_lmarr = Array(p_p1_seg103_vr)
glf_lightMaps.Add "p1_seg103", glf_p1_seg103_lmarr
Dim glf_p1_seg102_lmarr : glf_p1_seg102_lmarr = Array(p_p1_seg102_vr)
glf_lightMaps.Add "p1_seg102", glf_p1_seg102_lmarr
Dim glf_p1_seg101_lmarr : glf_p1_seg101_lmarr = Array(p_p1_seg101_vr)
glf_lightMaps.Add "p1_seg101", glf_p1_seg101_lmarr
Dim glf_p1_seg100_lmarr : glf_p1_seg100_lmarr = Array(p_p1_seg100_vr)
glf_lightMaps.Add "p1_seg100", glf_p1_seg100_lmarr
Dim glf_p1_seg99_lmarr : glf_p1_seg99_lmarr = Array(p_p1_seg99_vr)
glf_lightMaps.Add "p1_seg99", glf_p1_seg99_lmarr
Dim glf_p1_seg98_lmarr : glf_p1_seg98_lmarr = Array(p_p1_seg98_vr)
glf_lightMaps.Add "p1_seg98", glf_p1_seg98_lmarr
Dim glf_p1_seg97_lmarr : glf_p1_seg97_lmarr = Array(p_p1_seg97_vr)
glf_lightMaps.Add "p1_seg97", glf_p1_seg97_lmarr
Dim glf_p1_seg96_lmarr : glf_p1_seg96_lmarr = Array(p_p1_seg96_vr)
glf_lightMaps.Add "p1_seg96", glf_p1_seg96_lmarr
Dim glf_p1_seg95_lmarr : glf_p1_seg95_lmarr = Array(p_p1_seg95_vr)
glf_lightMaps.Add "p1_seg95", glf_p1_seg95_lmarr
Dim glf_p1_seg94_lmarr : glf_p1_seg94_lmarr = Array(p_p1_seg94_vr)
glf_lightMaps.Add "p1_seg94", glf_p1_seg94_lmarr
Dim glf_p1_seg93_lmarr : glf_p1_seg93_lmarr = Array(p_p1_seg93_vr)
glf_lightMaps.Add "p1_seg93", glf_p1_seg93_lmarr
Dim glf_p1_seg92_lmarr : glf_p1_seg92_lmarr = Array(p_p1_seg92_vr)
glf_lightMaps.Add "p1_seg92", glf_p1_seg92_lmarr
Dim glf_p1_seg91_lmarr : glf_p1_seg91_lmarr = Array(p_p1_seg91_vr)
glf_lightMaps.Add "p1_seg91", glf_p1_seg91_lmarr
Dim glf_p1_seg90_lmarr : glf_p1_seg90_lmarr = Array(p_p1_seg90_vr)
glf_lightMaps.Add "p1_seg90", glf_p1_seg90_lmarr
Dim glf_p1_seg89_lmarr : glf_p1_seg89_lmarr = Array(p_p1_seg89_vr)
glf_lightMaps.Add "p1_seg89", glf_p1_seg89_lmarr
Dim glf_p1_seg88_lmarr : glf_p1_seg88_lmarr = Array(p_p1_seg88_vr)
glf_lightMaps.Add "p1_seg88", glf_p1_seg88_lmarr
Dim glf_p1_seg87_lmarr : glf_p1_seg87_lmarr = Array(p_p1_seg87_vr)
glf_lightMaps.Add "p1_seg87", glf_p1_seg87_lmarr
Dim glf_p1_seg86_lmarr : glf_p1_seg86_lmarr = Array(p_p1_seg86_vr)
glf_lightMaps.Add "p1_seg86", glf_p1_seg86_lmarr
Dim glf_p1_seg85_lmarr : glf_p1_seg85_lmarr = Array(p_p1_seg85_vr)
glf_lightMaps.Add "p1_seg85", glf_p1_seg85_lmarr
Dim glf_p1_seg84_lmarr : glf_p1_seg84_lmarr = Array(p_p1_seg84_vr)
glf_lightMaps.Add "p1_seg84", glf_p1_seg84_lmarr
Dim glf_p1_seg83_lmarr : glf_p1_seg83_lmarr = Array(p_p1_seg83_vr)
glf_lightMaps.Add "p1_seg83", glf_p1_seg83_lmarr
Dim glf_p1_seg82_lmarr : glf_p1_seg82_lmarr = Array(p_p1_seg82_vr)
glf_lightMaps.Add "p1_seg82", glf_p1_seg82_lmarr
Dim glf_p1_seg81_lmarr : glf_p1_seg81_lmarr = Array(p_p1_seg81_vr)
glf_lightMaps.Add "p1_seg81", glf_p1_seg81_lmarr
Dim glf_p1_seg80_lmarr : glf_p1_seg80_lmarr = Array(p_p1_seg80_vr)
glf_lightMaps.Add "p1_seg80", glf_p1_seg80_lmarr
Dim glf_p1_seg79_lmarr : glf_p1_seg79_lmarr = Array(p_p1_seg79_vr)
glf_lightMaps.Add "p1_seg79", glf_p1_seg79_lmarr
Dim glf_p1_seg78_lmarr : glf_p1_seg78_lmarr = Array(p_p1_seg78_vr)
glf_lightMaps.Add "p1_seg78", glf_p1_seg78_lmarr
Dim glf_p1_seg77_lmarr : glf_p1_seg77_lmarr = Array(p_p1_seg77_vr)
glf_lightMaps.Add "p1_seg77", glf_p1_seg77_lmarr
Dim glf_p1_seg76_lmarr : glf_p1_seg76_lmarr = Array(p_p1_seg76_vr)
glf_lightMaps.Add "p1_seg76", glf_p1_seg76_lmarr
Dim glf_p1_seg75_lmarr : glf_p1_seg75_lmarr = Array(p_p1_seg75_vr)
glf_lightMaps.Add "p1_seg75", glf_p1_seg75_lmarr
Dim glf_p1_seg74_lmarr : glf_p1_seg74_lmarr = Array(p_p1_seg74_vr)
glf_lightMaps.Add "p1_seg74", glf_p1_seg74_lmarr
Dim glf_p1_seg73_lmarr : glf_p1_seg73_lmarr = Array(p_p1_seg73_vr)
glf_lightMaps.Add "p1_seg73", glf_p1_seg73_lmarr
Dim glf_p1_seg72_lmarr : glf_p1_seg72_lmarr = Array(p_p1_seg72_vr)
glf_lightMaps.Add "p1_seg72", glf_p1_seg72_lmarr
Dim glf_p1_seg71_lmarr : glf_p1_seg71_lmarr = Array(p_p1_seg71_vr)
glf_lightMaps.Add "p1_seg71", glf_p1_seg71_lmarr
Dim glf_p1_seg70_lmarr : glf_p1_seg70_lmarr = Array(p_p1_seg70_vr)
glf_lightMaps.Add "p1_seg70", glf_p1_seg70_lmarr
Dim glf_p1_seg69_lmarr : glf_p1_seg69_lmarr = Array(p_p1_seg69_vr)
glf_lightMaps.Add "p1_seg69", glf_p1_seg69_lmarr
Dim glf_p1_seg68_lmarr : glf_p1_seg68_lmarr = Array(p_p1_seg68_vr)
glf_lightMaps.Add "p1_seg68", glf_p1_seg68_lmarr
Dim glf_p1_seg67_lmarr : glf_p1_seg67_lmarr = Array(p_p1_seg67_vr)
glf_lightMaps.Add "p1_seg67", glf_p1_seg67_lmarr
Dim glf_p1_seg66_lmarr : glf_p1_seg66_lmarr = Array(p_p1_seg66_vr)
glf_lightMaps.Add "p1_seg66", glf_p1_seg66_lmarr
Dim glf_p1_seg65_lmarr : glf_p1_seg65_lmarr = Array(p_p1_seg65_vr)
glf_lightMaps.Add "p1_seg65", glf_p1_seg65_lmarr
Dim glf_p1_seg64_lmarr : glf_p1_seg64_lmarr = Array(p_p1_seg64_vr)
glf_lightMaps.Add "p1_seg64", glf_p1_seg64_lmarr
Dim glf_p1_seg63_lmarr : glf_p1_seg63_lmarr = Array(p_p1_seg63_vr)
glf_lightMaps.Add "p1_seg63", glf_p1_seg63_lmarr
Dim glf_p1_seg62_lmarr : glf_p1_seg62_lmarr = Array(p_p1_seg62_vr)
glf_lightMaps.Add "p1_seg62", glf_p1_seg62_lmarr
Dim glf_p1_seg61_lmarr : glf_p1_seg61_lmarr = Array(p_p1_seg61_vr)
glf_lightMaps.Add "p1_seg61", glf_p1_seg61_lmarr
Dim glf_p1_seg60_lmarr : glf_p1_seg60_lmarr = Array(p_p1_seg60_vr)
glf_lightMaps.Add "p1_seg60", glf_p1_seg60_lmarr
Dim glf_p1_seg59_lmarr : glf_p1_seg59_lmarr = Array(p_p1_seg59_vr)
glf_lightMaps.Add "p1_seg59", glf_p1_seg59_lmarr
Dim glf_p1_seg58_lmarr : glf_p1_seg58_lmarr = Array(p_p1_seg58_vr)
glf_lightMaps.Add "p1_seg58", glf_p1_seg58_lmarr
Dim glf_p1_seg57_lmarr : glf_p1_seg57_lmarr = Array(p_p1_seg57_vr)
glf_lightMaps.Add "p1_seg57", glf_p1_seg57_lmarr
Dim glf_p1_seg56_lmarr : glf_p1_seg56_lmarr = Array(p_p1_seg56_vr)
glf_lightMaps.Add "p1_seg56", glf_p1_seg56_lmarr
Dim glf_p1_seg55_lmarr : glf_p1_seg55_lmarr = Array(p_p1_seg55_vr)
glf_lightMaps.Add "p1_seg55", glf_p1_seg55_lmarr
Dim glf_p1_seg54_lmarr : glf_p1_seg54_lmarr = Array(p_p1_seg54_vr)
glf_lightMaps.Add "p1_seg54", glf_p1_seg54_lmarr
Dim glf_p1_seg53_lmarr : glf_p1_seg53_lmarr = Array(p_p1_seg53_vr)
glf_lightMaps.Add "p1_seg53", glf_p1_seg53_lmarr
Dim glf_p1_seg52_lmarr : glf_p1_seg52_lmarr = Array(p_p1_seg52_vr)
glf_lightMaps.Add "p1_seg52", glf_p1_seg52_lmarr
Dim glf_p1_seg51_lmarr : glf_p1_seg51_lmarr = Array(p_p1_seg51_vr)
glf_lightMaps.Add "p1_seg51", glf_p1_seg51_lmarr
Dim glf_p1_seg50_lmarr : glf_p1_seg50_lmarr = Array(p_p1_seg50_vr)
glf_lightMaps.Add "p1_seg50", glf_p1_seg50_lmarr
Dim glf_p1_seg49_lmarr : glf_p1_seg49_lmarr = Array(p_p1_seg49_vr)
glf_lightMaps.Add "p1_seg49", glf_p1_seg49_lmarr
Dim glf_p1_seg48_lmarr : glf_p1_seg48_lmarr = Array(p_p1_seg48_vr)
glf_lightMaps.Add "p1_seg48", glf_p1_seg48_lmarr
Dim glf_p1_seg47_lmarr : glf_p1_seg47_lmarr = Array(p_p1_seg47_vr)
glf_lightMaps.Add "p1_seg47", glf_p1_seg47_lmarr
Dim glf_p1_seg46_lmarr : glf_p1_seg46_lmarr = Array(p_p1_seg46_vr)
glf_lightMaps.Add "p1_seg46", glf_p1_seg46_lmarr
Dim glf_p1_seg45_lmarr : glf_p1_seg45_lmarr = Array(p_p1_seg45_vr)
glf_lightMaps.Add "p1_seg45", glf_p1_seg45_lmarr
Dim glf_p1_seg44_lmarr : glf_p1_seg44_lmarr = Array(p_p1_seg44_vr)
glf_lightMaps.Add "p1_seg44", glf_p1_seg44_lmarr
Dim glf_p1_seg43_lmarr : glf_p1_seg43_lmarr = Array(p_p1_seg43_vr)
glf_lightMaps.Add "p1_seg43", glf_p1_seg43_lmarr
Dim glf_p1_seg42_lmarr : glf_p1_seg42_lmarr = Array(p_p1_seg42_vr)
glf_lightMaps.Add "p1_seg42", glf_p1_seg42_lmarr
Dim glf_p1_seg41_lmarr : glf_p1_seg41_lmarr = Array(p_p1_seg41_vr)
glf_lightMaps.Add "p1_seg41", glf_p1_seg41_lmarr
Dim glf_p1_seg40_lmarr : glf_p1_seg40_lmarr = Array(p_p1_seg40_vr)
glf_lightMaps.Add "p1_seg40", glf_p1_seg40_lmarr
Dim glf_p1_seg39_lmarr : glf_p1_seg39_lmarr = Array(p_p1_seg39_vr)
glf_lightMaps.Add "p1_seg39", glf_p1_seg39_lmarr
Dim glf_p1_seg38_lmarr : glf_p1_seg38_lmarr = Array(p_p1_seg38_vr)
glf_lightMaps.Add "p1_seg38", glf_p1_seg38_lmarr
Dim glf_p1_seg37_lmarr : glf_p1_seg37_lmarr = Array(p_p1_seg37_vr)
glf_lightMaps.Add "p1_seg37", glf_p1_seg37_lmarr
Dim glf_p1_seg36_lmarr : glf_p1_seg36_lmarr = Array(p_p1_seg36_vr)
glf_lightMaps.Add "p1_seg36", glf_p1_seg36_lmarr
Dim glf_p1_seg35_lmarr : glf_p1_seg35_lmarr = Array(p_p1_seg35_vr)
glf_lightMaps.Add "p1_seg35", glf_p1_seg35_lmarr
Dim glf_p1_seg34_lmarr : glf_p1_seg34_lmarr = Array(p_p1_seg34_vr)
glf_lightMaps.Add "p1_seg34", glf_p1_seg34_lmarr
Dim glf_p1_seg33_lmarr : glf_p1_seg33_lmarr = Array(p_p1_seg33_vr)
glf_lightMaps.Add "p1_seg33", glf_p1_seg33_lmarr
Dim glf_p1_seg32_lmarr : glf_p1_seg32_lmarr = Array(p_p1_seg32_vr)
glf_lightMaps.Add "p1_seg32", glf_p1_seg32_lmarr
Dim glf_p1_seg31_lmarr : glf_p1_seg31_lmarr = Array(p_p1_seg31_vr)
glf_lightMaps.Add "p1_seg31", glf_p1_seg31_lmarr
Dim glf_p1_seg30_lmarr : glf_p1_seg30_lmarr = Array(p_p1_seg30_vr)
glf_lightMaps.Add "p1_seg30", glf_p1_seg30_lmarr
Dim glf_p1_seg29_lmarr : glf_p1_seg29_lmarr = Array(p_p1_seg29_vr)
glf_lightMaps.Add "p1_seg29", glf_p1_seg29_lmarr
Dim glf_p1_seg28_lmarr : glf_p1_seg28_lmarr = Array(p_p1_seg28_vr)
glf_lightMaps.Add "p1_seg28", glf_p1_seg28_lmarr
Dim glf_p1_seg27_lmarr : glf_p1_seg27_lmarr = Array(p_p1_seg27_vr)
glf_lightMaps.Add "p1_seg27", glf_p1_seg27_lmarr
Dim glf_p1_seg26_lmarr : glf_p1_seg26_lmarr = Array(p_p1_seg26_vr)
glf_lightMaps.Add "p1_seg26", glf_p1_seg26_lmarr
Dim glf_p1_seg25_lmarr : glf_p1_seg25_lmarr = Array(p_p1_seg25_vr)
glf_lightMaps.Add "p1_seg25", glf_p1_seg25_lmarr
Dim glf_p1_seg24_lmarr : glf_p1_seg24_lmarr = Array(p_p1_seg24_vr)
glf_lightMaps.Add "p1_seg24", glf_p1_seg24_lmarr
Dim glf_p1_seg23_lmarr : glf_p1_seg23_lmarr = Array(p_p1_seg23_vr)
glf_lightMaps.Add "p1_seg23", glf_p1_seg23_lmarr
Dim glf_p1_seg22_lmarr : glf_p1_seg22_lmarr = Array(p_p1_seg22_vr)
glf_lightMaps.Add "p1_seg22", glf_p1_seg22_lmarr
Dim glf_p1_seg21_lmarr : glf_p1_seg21_lmarr = Array(p_p1_seg21_vr)
glf_lightMaps.Add "p1_seg21", glf_p1_seg21_lmarr
Dim glf_p1_seg20_lmarr : glf_p1_seg20_lmarr = Array(p_p1_seg20_vr)
glf_lightMaps.Add "p1_seg20", glf_p1_seg20_lmarr
Dim glf_p1_seg19_lmarr : glf_p1_seg19_lmarr = Array(p_p1_seg19_vr)
glf_lightMaps.Add "p1_seg19", glf_p1_seg19_lmarr
Dim glf_p1_seg18_lmarr : glf_p1_seg18_lmarr = Array(p_p1_seg18_vr)
glf_lightMaps.Add "p1_seg18", glf_p1_seg18_lmarr
Dim glf_p1_seg17_lmarr : glf_p1_seg17_lmarr = Array(p_p1_seg17_vr)
glf_lightMaps.Add "p1_seg17", glf_p1_seg17_lmarr
Dim glf_p1_seg16_lmarr : glf_p1_seg16_lmarr = Array(p_p1_seg16_vr)
glf_lightMaps.Add "p1_seg16", glf_p1_seg16_lmarr
Dim glf_p1_seg15_lmarr : glf_p1_seg15_lmarr = Array(p_p1_seg15_vr)
glf_lightMaps.Add "p1_seg15", glf_p1_seg15_lmarr
Dim glf_p1_seg14_lmarr : glf_p1_seg14_lmarr = Array(p_p1_seg14_vr)
glf_lightMaps.Add "p1_seg14", glf_p1_seg14_lmarr
Dim glf_p1_seg13_lmarr : glf_p1_seg13_lmarr = Array(p_p1_seg13_vr)
glf_lightMaps.Add "p1_seg13", glf_p1_seg13_lmarr
Dim glf_p1_seg12_lmarr : glf_p1_seg12_lmarr = Array(p_p1_seg12_vr)
glf_lightMaps.Add "p1_seg12", glf_p1_seg12_lmarr
Dim glf_p1_seg11_lmarr : glf_p1_seg11_lmarr = Array(p_p1_seg11_vr)
glf_lightMaps.Add "p1_seg11", glf_p1_seg11_lmarr
Dim glf_p1_seg10_lmarr : glf_p1_seg10_lmarr = Array(p_p1_seg10_vr)
glf_lightMaps.Add "p1_seg10", glf_p1_seg10_lmarr
Dim glf_p1_seg9_lmarr : glf_p1_seg9_lmarr = Array(p_p1_seg9_vr)
glf_lightMaps.Add "p1_seg9", glf_p1_seg9_lmarr
Dim glf_p1_seg8_lmarr : glf_p1_seg8_lmarr = Array(p_p1_seg8_vr)
glf_lightMaps.Add "p1_seg8", glf_p1_seg8_lmarr
Dim glf_p1_seg7_lmarr : glf_p1_seg7_lmarr = Array(p_p1_seg7_vr)
glf_lightMaps.Add "p1_seg7", glf_p1_seg7_lmarr
Dim glf_p1_seg6_lmarr : glf_p1_seg6_lmarr = Array(p_p1_seg6_vr)
glf_lightMaps.Add "p1_seg6", glf_p1_seg6_lmarr
Dim glf_p1_seg5_lmarr : glf_p1_seg5_lmarr = Array(p_p1_seg5_vr)
glf_lightMaps.Add "p1_seg5", glf_p1_seg5_lmarr
Dim glf_p1_seg4_lmarr : glf_p1_seg4_lmarr = Array(p_p1_seg4_vr)
glf_lightMaps.Add "p1_seg4", glf_p1_seg4_lmarr
Dim glf_p1_seg3_lmarr : glf_p1_seg3_lmarr = Array(p_p1_seg3_vr)
glf_lightMaps.Add "p1_seg3", glf_p1_seg3_lmarr
Dim glf_p1_seg2_lmarr : glf_p1_seg2_lmarr = Array(p_p1_seg2_vr)
glf_lightMaps.Add "p1_seg2", glf_p1_seg2_lmarr
Dim glf_p1_seg1_lmarr : glf_p1_seg1_lmarr = Array(p_p1_seg1_vr)
glf_lightMaps.Add "p1_seg1", glf_p1_seg1_lmarr
Dim glf_gi018_lmarr : glf_gi018_lmarr = Array()
glf_lightMaps.Add "gi018", glf_gi018_lmarr
Dim glf_gi001_lmarr : glf_gi001_lmarr = Array()
glf_lightMaps.Add "gi001", glf_gi001_lmarr
Dim glf_gi022_lmarr : glf_gi022_lmarr = Array()
glf_lightMaps.Add "gi022", glf_gi022_lmarr
Dim glf_gi024_lmarr : glf_gi024_lmarr = Array()
glf_lightMaps.Add "gi024", glf_gi024_lmarr
Dim glf_gi021_lmarr : glf_gi021_lmarr = Array()
glf_lightMaps.Add "gi021", glf_gi021_lmarr
Dim glf_gi020_lmarr : glf_gi020_lmarr = Array()
glf_lightMaps.Add "gi020", glf_gi020_lmarr
Dim glf_gi019_lmarr : glf_gi019_lmarr = Array()
glf_lightMaps.Add "gi019", glf_gi019_lmarr
Dim glf_gi017_lmarr : glf_gi017_lmarr = Array()
glf_lightMaps.Add "gi017", glf_gi017_lmarr
Dim glf_gi016_lmarr : glf_gi016_lmarr = Array()
glf_lightMaps.Add "gi016", glf_gi016_lmarr
Dim glf_gi015_lmarr : glf_gi015_lmarr = Array()
glf_lightMaps.Add "gi015", glf_gi015_lmarr
Dim glf_gi014_lmarr : glf_gi014_lmarr = Array()
glf_lightMaps.Add "gi014", glf_gi014_lmarr
Dim glf_gi013_lmarr : glf_gi013_lmarr = Array()
glf_lightMaps.Add "gi013", glf_gi013_lmarr
Dim glf_gi012_lmarr : glf_gi012_lmarr = Array()
glf_lightMaps.Add "gi012", glf_gi012_lmarr
Dim glf_gi011_lmarr : glf_gi011_lmarr = Array()
glf_lightMaps.Add "gi011", glf_gi011_lmarr
Dim glf_gi010_lmarr : glf_gi010_lmarr = Array()
glf_lightMaps.Add "gi010", glf_gi010_lmarr
Dim glf_gi009_lmarr : glf_gi009_lmarr = Array()
glf_lightMaps.Add "gi009", glf_gi009_lmarr
Dim glf_gi008_lmarr : glf_gi008_lmarr = Array()
glf_lightMaps.Add "gi008", glf_gi008_lmarr
Dim glf_gi007_lmarr : glf_gi007_lmarr = Array()
glf_lightMaps.Add "gi007", glf_gi007_lmarr
Dim glf_gi006_lmarr : glf_gi006_lmarr = Array()
glf_lightMaps.Add "gi006", glf_gi006_lmarr
Dim glf_gi050_lmarr : glf_gi050_lmarr = Array()
glf_lightMaps.Add "gi050", glf_gi050_lmarr
Dim glf_L18_lmarr : glf_L18_lmarr = Array(p_l18_,f_l18_bloom)
glf_lightMaps.Add "L18", glf_L18_lmarr
Dim glf_L14_lmarr : glf_L14_lmarr = Array(p_l14_,f_l14_bloom)
glf_lightMaps.Add "L14", glf_L14_lmarr
Dim glf_L15_lmarr : glf_L15_lmarr = Array(p_l15_,f_l15_bloom)
glf_lightMaps.Add "L15", glf_L15_lmarr
Dim glf_L17_lmarr : glf_L17_lmarr = Array(p_l17_,f_l17_bloom)
glf_lightMaps.Add "L17", glf_L17_lmarr
Dim glf_L13_lmarr : glf_L13_lmarr = Array(p_l13_,f_l13_bloom)
glf_lightMaps.Add "L13", glf_L13_lmarr
Dim glf_L12_lmarr : glf_L12_lmarr = Array(p_l12_,f_l12_bloom)
glf_lightMaps.Add "L12", glf_L12_lmarr
Dim glf_L11_lmarr : glf_L11_lmarr = Array(p_l11_,f_l11_bloom)
glf_lightMaps.Add "L11", glf_L11_lmarr
Dim glf_L19_lmarr : glf_L19_lmarr = Array(p_l19_,f_l19_bloom)
glf_lightMaps.Add "L19", glf_L19_lmarr
Dim glf_L24_lmarr : glf_L24_lmarr = Array(p_l24_,f_l24_bloom)
glf_lightMaps.Add "L24", glf_L24_lmarr
Dim glf_L09_lmarr : glf_L09_lmarr = Array(p_l09_,f_l09_bloom)
glf_lightMaps.Add "L09", glf_L09_lmarr
Dim glf_L25_lmarr : glf_L25_lmarr = Array(p_l25_,f_l25_bloom)
glf_lightMaps.Add "L25", glf_L25_lmarr
Dim glf_L20_lmarr : glf_L20_lmarr = Array(p_l20_,f_l20_bloom)
glf_lightMaps.Add "L20", glf_L20_lmarr
Dim glf_L04_lmarr : glf_L04_lmarr = Array(p_l04_,f_l04_bloom)
glf_lightMaps.Add "L04", glf_L04_lmarr
Dim glf_L01_lmarr : glf_L01_lmarr = Array(p_l01_,f_l01_bloom)
glf_lightMaps.Add "L01", glf_L01_lmarr
Dim glf_L02_lmarr : glf_L02_lmarr = Array(p_l02_,f_l02_bloom)
glf_lightMaps.Add "L02", glf_L02_lmarr
Dim glf_L03_lmarr : glf_L03_lmarr = Array(p_l03_,f_l03_bloom)
glf_lightMaps.Add "L03", glf_L03_lmarr
Dim glf_L07_lmarr : glf_L07_lmarr = Array(p_l07_,f_l07_bloom)
glf_lightMaps.Add "L07", glf_L07_lmarr
Dim glf_L08_lmarr : glf_L08_lmarr = Array(p_l08_,f_l08_bloom)
glf_lightMaps.Add "L08", glf_L08_lmarr
Dim glf_L23_lmarr : glf_L23_lmarr = Array(p_l23_,f_l23_bloom)
glf_lightMaps.Add "L23", glf_L23_lmarr
Dim glf_L32_lmarr : glf_L32_lmarr = Array(p_l32_)
glf_lightMaps.Add "L32", glf_L32_lmarr
Dim glf_L10_lmarr : glf_L10_lmarr = Array(p_l10_,f_l10_bloom)
glf_lightMaps.Add "L10", glf_L10_lmarr
Dim glf_L16_lmarr : glf_L16_lmarr = Array(p_l16_,f_l16_bloom)
glf_lightMaps.Add "L16", glf_L16_lmarr
Dim glf_L28_lmarr : glf_L28_lmarr = Array(p_l28_,f_l28_bloom)
glf_lightMaps.Add "L28", glf_L28_lmarr
Dim glf_L29_lmarr : glf_L29_lmarr = Array(p_l29_,f_l29_bloom)
glf_lightMaps.Add "L29", glf_L29_lmarr
Dim glf_L30_lmarr : glf_L30_lmarr = Array(p_l30_,f_l30_bloom)
glf_lightMaps.Add "L30", glf_L30_lmarr
Dim glf_L31_lmarr : glf_L31_lmarr = Array(p_l31_,f_l31_bloom)
glf_lightMaps.Add "L31", glf_L31_lmarr
Dim glf_L05_lmarr : glf_L05_lmarr = Array(p_l05_,f_l05_bloom)
glf_lightMaps.Add "L05", glf_L05_lmarr
Dim glf_L06_lmarr : glf_L06_lmarr = Array(p_l06_,f_l06_bloom)
glf_lightMaps.Add "L06", glf_L06_lmarr
Dim glf_L26_lmarr : glf_L26_lmarr = Array(p_l26_,f_l26_bloom)
glf_lightMaps.Add "L26", glf_L26_lmarr
Dim glf_L27_lmarr : glf_L27_lmarr = Array(p_l27_,f_l27_bloom)
glf_lightMaps.Add "L27", glf_L27_lmarr
Dim glf_L22_lmarr : glf_L22_lmarr = Array(p_l22_,f_l22_bloom)
glf_lightMaps.Add "L22", glf_L22_lmarr
Dim glf_L21_lmarr : glf_L21_lmarr = Array(p_l21_,f_l21_bloom)
glf_lightMaps.Add "L21", glf_L21_lmarr
Dim glf_FL2_lmarr : glf_FL2_lmarr = Array(p_base_fl2,f_fl2_,p_fl2_)
glf_lightMaps.Add "FL2", glf_FL2_lmarr
Dim glf_FL3_lmarr : glf_FL3_lmarr = Array(p_base_fl3,f_fl3_,p_fl3_)
glf_lightMaps.Add "FL3", glf_FL3_lmarr
Dim glf_FL1_lmarr : glf_FL1_lmarr = Array(p_base_fl1,f_fl1_,p_fl1_)
glf_lightMaps.Add "FL1", glf_FL1_lmarr
Dim glf_FL4_lmarr : glf_FL4_lmarr = Array(p_base_fl4,f_fl4_,p_fl4_)
glf_lightMaps.Add "FL4", glf_FL4_lmarr
Dim glf_L33_lmarr : glf_L33_lmarr = Array(p_l33_,f_l33_bloom)
glf_lightMaps.Add "L33", glf_L33_lmarr
Dim glf_L34_lmarr : glf_L34_lmarr = Array(p_l34_,f_l34_bloom)
glf_lightMaps.Add "L34", glf_L34_lmarr
Dim glf_L35_lmarr : glf_L35_lmarr = Array(p_l35_,f_l35_bloom)
glf_lightMaps.Add "L35", glf_L35_lmarr
Dim glf_L36_lmarr : glf_L36_lmarr = Array(p_l36_,f_l36_bloom)
glf_lightMaps.Add "L36", glf_L36_lmarr
Dim glf_L37_lmarr : glf_L37_lmarr = Array(p_l37_,f_l37_bloom)
glf_lightMaps.Add "L37", glf_L37_lmarr
Dim glf_L38_lmarr : glf_L38_lmarr = Array(p_l38_,f_l38_bloom)
glf_lightMaps.Add "L38", glf_L38_lmarr
Dim glf_L39_lmarr : glf_L39_lmarr = Array(p_l39_,f_l39_bloom)
glf_lightMaps.Add "L39", glf_L39_lmarr
Dim glf_LBG05_lmarr : glf_LBG05_lmarr = Array(f_lbg05_)
glf_lightMaps.Add "LBG05", glf_LBG05_lmarr
Dim glf_LBG07_lmarr : glf_LBG07_lmarr = Array(f_lbg07_)
glf_lightMaps.Add "LBG07", glf_LBG07_lmarr
Dim glf_LBG08_lmarr : glf_LBG08_lmarr = Array(f_lbg08_)
glf_lightMaps.Add "LBG08", glf_LBG08_lmarr
Dim glf_LBG06_lmarr : glf_LBG06_lmarr = Array(f_lbg06_)
glf_lightMaps.Add "LBG06", glf_LBG06_lmarr
Dim glf_LBG04_lmarr : glf_LBG04_lmarr = Array(f_lbg04_)
glf_lightMaps.Add "LBG04", glf_LBG04_lmarr
Dim glf_LBG03_lmarr : glf_LBG03_lmarr = Array(f_lbg03_)
glf_lightMaps.Add "LBG03", glf_LBG03_lmarr
Dim glf_LBG02_lmarr : glf_LBG02_lmarr = Array(f_lbg02_)
glf_lightMaps.Add "LBG02", glf_LBG02_lmarr
Dim glf_LBG01_lmarr : glf_LBG01_lmarr = Array(f_lbg01_)
glf_lightMaps.Add "LBG01", glf_LBG01_lmarr
Dim glf_L41_lmarr : glf_L41_lmarr = Array()
glf_lightMaps.Add "L41", glf_L41_lmarr
Dim glf_L40_lmarr : glf_L40_lmarr = Array()
glf_lightMaps.Add "L40", glf_L40_lmarr
Dim glf_BL3a_lmarr : glf_BL3a_lmarr = Array(lm_bl3a_top,f_bl3a_)
glf_lightMaps.Add "BL3a", glf_BL3a_lmarr
Dim glf_BL2a_lmarr : glf_BL2a_lmarr = Array(lm_bl2a_top2,f_bl2a_)
glf_lightMaps.Add "BL2a", glf_BL2a_lmarr
Dim glf_BL1a_lmarr : glf_BL1a_lmarr = Array(lm_bl1a_top2,f_bl1a_)
glf_lightMaps.Add "BL1a", glf_BL1a_lmarr
Dim glf_BL1b_lmarr : glf_BL1b_lmarr = Array()
glf_lightMaps.Add "BL1b", glf_BL1b_lmarr
Dim glf_BL3b_lmarr : glf_BL3b_lmarr = Array()
glf_lightMaps.Add "BL3b", glf_BL3b_lmarr
Dim glf_BL2b_lmarr : glf_BL2b_lmarr = Array()
glf_lightMaps.Add "BL2b", glf_BL2b_lmarr

glf_funcRefMap.Add "text_input: {action: ""left""}", "Glf_0"
glf_funcRefMap.Add "text_input: {action: ""right""}", "Glf_1"
glf_funcRefMap.Add "text_input: {action: ""select""}", "Glf_2"
glf_funcRefMap.Add "4000", "Glf_3"
glf_funcRefMap.Add "20000", "Glf_4"
glf_funcRefMap.Add "0", "Glf_5"
glf_funcRefMap.Add "player_added{kwargs.num==1}", "Glf_6"
glf_funcRefMap.Add "player_added{kwargs.num==2}", "Glf_7"
glf_funcRefMap.Add "player_added{kwargs.num==3}", "Glf_8"
glf_funcRefMap.Add "player_added{kwargs.num==4}", "Glf_9"
glf_funcRefMap.Add """""", "Glf_10"
glf_funcRefMap.Add """WARNING""", "Glf_11"
glf_funcRefMap.Add """TILT""", "Glf_12"
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 1}", "Glf_13"
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 7}", "Glf_14"
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 11}", "Glf_15"
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 15}", "Glf_16"
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 19}", "Glf_17"
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 23}", "Glf_18"
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 26}", "Glf_19"
glf_funcRefMap.Add "-1", "Glf_20"
glf_funcRefMap.Add "30", "Glf_21"
glf_funcRefMap.Add """GLF""", "Glf_22"
glf_funcRefMap.Add """EXAMPLE""", "Glf_23"
glf_funcRefMap.Add """TABLE  """, "Glf_24"
glf_funcRefMap.Add "machine.score_1_label", "Glf_25"
glf_funcRefMap.Add "machine.score_1_name", "Glf_26"
glf_funcRefMap.Add "machine.score_1_value", "Glf_27"
glf_funcRefMap.Add "machine.score_2_label", "Glf_28"
glf_funcRefMap.Add "machine.score_2_name", "Glf_29"
glf_funcRefMap.Add "machine.score_2_value", "Glf_30"
glf_funcRefMap.Add "machine.score_3_label", "Glf_31"
glf_funcRefMap.Add "machine.score_3_name", "Glf_32"
glf_funcRefMap.Add "machine.score_3_value", "Glf_33"
glf_funcRefMap.Add "machine.score_4_label", "Glf_34"
glf_funcRefMap.Add "machine.score_4_name", "Glf_35"
glf_funcRefMap.Add "machine.score_4_value", "Glf_36"
glf_funcRefMap.Add """LAST """, "Glf_37"
glf_funcRefMap.Add """SCORES """, "Glf_38"
glf_funcRefMap.Add "machine.player1_score", "Glf_39"
glf_funcRefMap.Add "machine.player2_score", "Glf_40"
glf_funcRefMap.Add "machine.player3_score", "Glf_41"
glf_funcRefMap.Add "machine.player4_score", "Glf_42"
glf_funcRefMap.Add "s_Plunger1_inactive{current_player.ball_just_started == 1}", "Glf_43"
glf_funcRefMap.Add "mode_base_started{current_player.number == 1}", "Glf_44"
glf_funcRefMap.Add "mode_base_started{current_player.number == 2}", "Glf_45"
glf_funcRefMap.Add "mode_base_started{current_player.number == 3}", "Glf_46"
glf_funcRefMap.Add "mode_base_started{current_player.number == 4}", "Glf_47"
glf_funcRefMap.Add "6000", "Glf_48"
glf_funcRefMap.Add "3000", "Glf_49"
glf_funcRefMap.Add "2000", "Glf_50"
glf_funcRefMap.Add "500", "Glf_51"
glf_funcRefMap.Add "Glf_FormatValue(players[0].score,""0>2,"")", "Glf_52"
glf_funcRefMap.Add "Glf_FormatValue(players[1].score,""0>2,"")", "Glf_53"
glf_funcRefMap.Add "Glf_FormatValue(players[2].score,""0>2,"")", "Glf_54"
glf_funcRefMap.Add "Glf_FormatValue(players[3].score,""0>2,"")", "Glf_55"
glf_funcRefMap.Add "Glf_FormatValue(current_player.ball,""0>2"")", "Glf_56"
glf_funcRefMap.Add "Glf_FormatValue(players[0].score,""0>2"")", "Glf_57"
glf_funcRefMap.Add "Glf_FormatValue(players[1].score,""0>2"")", "Glf_58"
glf_funcRefMap.Add "Glf_FormatValue(players[2].score,""0>2"")", "Glf_59"
glf_funcRefMap.Add "Glf_FormatValue(players[3].score,""0>2"")", "Glf_60"
glf_funcRefMap.Add "1", "Glf_61"
glf_funcRefMap.Add "mode_skillshots_started{current_player.ball_just_started == 1}", "Glf_62"
glf_funcRefMap.Add "s_TopLane1_active{current_player.shot_ss1 == 1}", "Glf_63"
glf_funcRefMap.Add "s_TopLane2_active{current_player.shot_ss2 == 1}", "Glf_64"
glf_funcRefMap.Add "s_TopLane3_active{current_player.shot_ss3 == 1}", "Glf_65"
glf_funcRefMap.Add "s_TopLane4_active{current_player.shot_ss4 == 1}", "Glf_66"
glf_funcRefMap.Add "5", "Glf_67"
glf_funcRefMap.Add "s_LeftInOutlane_inactive{current_player.shot_kickback_ready > 0}", "Glf_68"
glf_funcRefMap.Add "qualify_kickback_on_complete{current_player.ss_running == 0}", "Glf_69"
glf_funcRefMap.Add "3", "Glf_70"
glf_funcRefMap.Add "add_hit_count.1{current_player.target_hit_count >= 6}", "Glf_71"
glf_funcRefMap.Add "s_DT1_active{current_player.shot_bank_target1 == 1}", "Glf_72"
glf_funcRefMap.Add "s_DT2_active{current_player.shot_bank_target2 == 1}", "Glf_73"
glf_funcRefMap.Add "s_DT3_active{current_player.shot_bank_target3 == 1}", "Glf_74"
glf_funcRefMap.Add "s_DT4_active{current_player.shot_bank_target4 == 1}", "Glf_75"
glf_funcRefMap.Add "s_DT5_active{current_player.shot_bank_target5 == 1}", "Glf_76"
glf_funcRefMap.Add "s_DT6_active{current_player.shot_bank_target6 == 1}", "Glf_77"
glf_funcRefMap.Add "check_eb{current_player.extra_balls == 0}", "Glf_78"
glf_funcRefMap.Add "check_eb{current_player.extra_balls > 0}", "Glf_79"
glf_funcRefMap.Add "s_ST3_active{current_player.shot_eb_ready == 1}", "Glf_80"
glf_funcRefMap.Add "eb_now_lit{current_player.extra_ball_eb_awarded < 3}", "Glf_81"
glf_funcRefMap.Add """ EXTRA """, "Glf_82"
glf_funcRefMap.Add """ BALL """, "Glf_83"
glf_funcRefMap.Add "s_LeftInlane_active{current_player.shot_left_inlane == 1}", "Glf_84"
glf_funcRefMap.Add "s_RightInlane_active{current_player.shot_right_inlane == 1}", "Glf_85"
glf_funcRefMap.Add "left_orbit_hit{current_player.shot_left_orbit == 1}", "Glf_86"
glf_funcRefMap.Add "right_orbit_hit{current_player.shot_right_orbit == 1}", "Glf_87"
glf_funcRefMap.Add "s_spinner_active{current_player.shot_left_orbit == 0}", "Glf_88"
glf_funcRefMap.Add "s_spinner_active{current_player.shot_left_orbit == 1}", "Glf_89"
glf_funcRefMap.Add "do_spin1_super_show{current_player.spin_show == 1}", "Glf_90"
glf_funcRefMap.Add "do_spin1_super_show{current_player.spin_show == 2}", "Glf_91"
glf_funcRefMap.Add "s_spinner2_active{current_player.shot_right_orbit == 0}", "Glf_92"
glf_funcRefMap.Add "s_spinner2_active{current_player.shot_right_orbit == 1}", "Glf_93"
glf_funcRefMap.Add "do_spin2_super_show{current_player.spin_show == 1}", "Glf_94"
glf_funcRefMap.Add "do_spin2_super_show{current_player.spin_show == 2}", "Glf_95"
glf_funcRefMap.Add "4", "Glf_96"
glf_funcRefMap.Add "2", "Glf_97"
glf_funcRefMap.Add "s_RampHit_active{current_player.shot_ramp == 1}", "Glf_98"
glf_funcRefMap.Add "update_lock_shots.6{machine.top_ball_locked == 1}", "Glf_99"
glf_funcRefMap.Add "update_lock_shots.5{machine.top_ball_locked == 0 && current_player.locks_qualfiied == 1}", "Glf_100"
glf_funcRefMap.Add "update_lock_shots.4{machine.top_ball_locked == 0 && current_player.locks_qualfiied == 0 && current_player.shot_top_lock == 2}", "Glf_101"
glf_funcRefMap.Add "update_lock_shots.3{machine.bottom_ball_locked == 1}", "Glf_102"
glf_funcRefMap.Add "update_lock_shots.2{machine.bottom_ball_locked == 0 && current_player.locks_qualfiied == 1}", "Glf_103"
glf_funcRefMap.Add "update_lock_shots.1{machine.bottom_ball_locked == 0 && current_player.locks_qualfiied == 0 && current_player.shot_bottom_lock == 2}", "Glf_104"
glf_funcRefMap.Add "s_RampHit_active{current_player.shot_left_jackpot == 1}", "Glf_105"
glf_funcRefMap.Add "balldevice_kicker2_ball_entered{current_player.shot_right_jackpot == 1}", "Glf_106"
glf_funcRefMap.Add "5000", "Glf_107"
glf_funcRefMap.Add "10000", "Glf_108"
glf_funcRefMap.Add "15000", "Glf_109"
glf_funcRefMap.Add "check_locks{machine.top_ball_locked == 1 && machine.bottom_ball_locked == 1}", "Glf_110"
glf_funcRefMap.Add "check_locks{machine.top_ball_locked == 0 OR machine.bottom_ball_locked == 0}", "Glf_111"
glf_funcRefMap.Add "timer_check_locking_delay_complete{current_player.shot_top_lock <> 1 && current_player.shot_bottom_lock <> 1}", "Glf_112"
glf_funcRefMap.Add "timer_check_locking_delay_complete{current_player.shot_top_lock == 1 && current_player.shot_bottom_lock == 1}", "Glf_113"
glf_funcRefMap.Add "timer_check_locking_delay_complete{current_player.shot_top_lock == 1 && current_player.shot_bottom_lock <> 1}", "Glf_114"
glf_funcRefMap.Add "timer_check_locking_delay_complete{current_player.shot_top_lock <> 1 && current_player.shot_bottom_lock == 1}", "Glf_115"
glf_funcRefMap.Add "qualify_lock_on_complete{current_player.shot_bottom_lock == 0 && current_player.shot_top_lock == 0}", "Glf_116"
glf_funcRefMap.Add "qualify_lock_on_complete{current_player.shot_bottom_lock == 2 && current_player.shot_top_lock == 0}", "Glf_117"
glf_funcRefMap.Add "qualify_lock_on_complete{current_player.shot_bottom_lock == 0 && current_player.shot_top_lock == 2}", "Glf_118"
glf_funcRefMap.Add "s_RampHit_active{current_player.shot_mb_start == 1}", "Glf_119"
glf_funcRefMap.Add "10", "Glf_120"
glf_funcRefMap.Add "timer_diverter_reopen_complete{device.state_machines.multiball.state!=""mb_running""}", "Glf_121"
glf_funcRefMap.Add "machine.bottom_ball_locked + machine.top_ball_locked", "Glf_122"
glf_funcRefMap.Add "1 * current_player.scoring_multiplier", "Glf_123"
glf_funcRefMap.Add "10 * current_player.scoring_multiplier", "Glf_124"
glf_funcRefMap.Add "100 * current_player.scoring_multiplier", "Glf_125"
glf_funcRefMap.Add "333 * current_player.scoring_multiplier", "Glf_126"
glf_funcRefMap.Add "500 * current_player.scoring_multiplier", "Glf_127"
glf_funcRefMap.Add "1000 * current_player.scoring_multiplier", "Glf_128"
glf_funcRefMap.Add "2000 * current_player.scoring_multiplier", "Glf_129"
glf_funcRefMap.Add "3000 * current_player.scoring_multiplier", "Glf_130"
glf_funcRefMap.Add "3333 * current_player.scoring_multiplier", "Glf_131"
glf_funcRefMap.Add "5000 * current_player.scoring_multiplier", "Glf_132"
glf_funcRefMap.Add "10000 * current_player.scoring_multiplier", "Glf_133"
glf_funcRefMap.Add "20000 * current_player.scoring_multiplier", "Glf_134"
glf_funcRefMap.Add "30000 * current_player.scoring_multiplier", "Glf_135"
glf_funcRefMap.Add "33333 * current_player.scoring_multiplier", "Glf_136"
glf_funcRefMap.Add "50000 * current_player.scoring_multiplier", "Glf_137"
glf_funcRefMap.Add "100000 * current_player.scoring_multiplier", "Glf_138"
glf_funcRefMap.Add "200000 * current_player.scoring_multiplier", "Glf_139"
glf_funcRefMap.Add "500000 * current_player.scoring_multiplier", "Glf_140"
glf_funcRefMap.Add "1000000 * current_player.scoring_multiplier", "Glf_141"
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light1 == 0}", "Glf_142"
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light1 == 1 && current_player.shot_bonus_light2 == 0}", "Glf_143"
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light2 == 1 && current_player.shot_bonus_light3 == 0}", "Glf_144"
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light3 == 1 && current_player.shot_bonus_light4 == 0}", "Glf_145"
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light4 == 1 && current_player.shot_bonus_light5 == 0}", "Glf_146"
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light5 == 1 && current_player.shot_bonus_light6 == 0}", "Glf_147"
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light6 == 1 && current_player.shot_bonus_light7 == 0}", "Glf_148"
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light7 == 1 && current_player.shot_bonus_light8 == 0}", "Glf_149"
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light8 == 1}", "Glf_150"
glf_funcRefMap.Add "ball_ending{game.tilted == False}", "Glf_151"
glf_funcRefMap.Add "calc_bonus1{current_player.shot_bonus_light1 == 1}", "Glf_152"
glf_funcRefMap.Add "calc_bonus1{current_player.shot_bonus_light1 == 0}", "Glf_153"
glf_funcRefMap.Add "calc_bonus2{current_player.shot_bonus_light2 == 1}", "Glf_154"
glf_funcRefMap.Add "calc_bonus2{current_player.shot_bonus_light2 == 0}", "Glf_155"
glf_funcRefMap.Add "calc_bonus3{current_player.shot_bonus_light3 == 1}", "Glf_156"
glf_funcRefMap.Add "calc_bonus3{current_player.shot_bonus_light3 == 0}", "Glf_157"
glf_funcRefMap.Add "calc_bonus4{current_player.shot_bonus_light4 == 1}", "Glf_158"
glf_funcRefMap.Add "calc_bonus4{current_player.shot_bonus_light4 == 0}", "Glf_159"
glf_funcRefMap.Add "calc_bonus5{current_player.shot_bonus_light5 == 1}", "Glf_160"
glf_funcRefMap.Add "calc_bonus5{current_player.shot_bonus_light5 == 0}", "Glf_161"
glf_funcRefMap.Add "calc_bonus6{current_player.shot_bonus_light6 == 1}", "Glf_162"
glf_funcRefMap.Add "calc_bonus6{current_player.shot_bonus_light6 == 0}", "Glf_163"
glf_funcRefMap.Add "calc_bonus7{current_player.shot_bonus_light7 == 1}", "Glf_164"
glf_funcRefMap.Add "calc_bonus7{current_player.shot_bonus_light7 == 0}", "Glf_165"
glf_funcRefMap.Add "calc_bonus8{current_player.shot_bonus_light8 == 1}", "Glf_166"
glf_funcRefMap.Add "calc_bonus8{current_player.shot_bonus_light8 == 0}", "Glf_167"
glf_funcRefMap.Add "play_bonus_show1{current_player.shot_bonus_light1 == 1 && current_player.bonus_skip == 0}", "Glf_168"
glf_funcRefMap.Add "play_bonus_show2{current_player.shot_bonus_light2 == 1 && current_player.bonus_skip == 0}", "Glf_169"
glf_funcRefMap.Add "play_bonus_show3{current_player.shot_bonus_light3 == 1 && current_player.bonus_skip == 0}", "Glf_170"
glf_funcRefMap.Add "play_bonus_show4{current_player.shot_bonus_light4 == 1 && current_player.bonus_skip == 0}", "Glf_171"
glf_funcRefMap.Add "play_bonus_show5{current_player.shot_bonus_light5 == 1 && current_player.bonus_skip == 0}", "Glf_172"
glf_funcRefMap.Add "play_bonus_show6{current_player.shot_bonus_light6 == 1 && current_player.bonus_skip == 0}", "Glf_173"
glf_funcRefMap.Add "play_bonus_show7{current_player.shot_bonus_light7 == 1 && current_player.bonus_skip == 0}", "Glf_174"
glf_funcRefMap.Add "play_bonus_show8{current_player.shot_bonus_light8 == 1 && current_player.bonus_skip == 0}", "Glf_175"
glf_funcRefMap.Add "500000 * current_player.bonus_multiplier", "Glf_176"
glf_funcRefMap.Add "current_player.bonus_total", "Glf_177"
glf_funcRefMap.Add "current_player.bonus_count + 2", "Glf_178"
glf_funcRefMap.Add """BONUS""", "Glf_179"
glf_funcRefMap.Add """00""", "Glf_180"
glf_funcRefMap.Add """500000 * "" & current_player.bonus_multiplier", "Glf_181"
glf_funcRefMap.Add """1000000 * "" & current_player.bonus_multiplier", "Glf_182"
glf_funcRefMap.Add """1500000 * "" & current_player.bonus_multiplier", "Glf_183"
glf_funcRefMap.Add """2000000 * "" & current_player.bonus_multiplier", "Glf_184"
glf_funcRefMap.Add """2500000 * "" & current_player.bonus_multiplier", "Glf_185"
glf_funcRefMap.Add """3000000 * "" & current_player.bonus_multiplier", "Glf_186"
glf_funcRefMap.Add """3500000 * "" & current_player.bonus_multiplier", "Glf_187"
glf_funcRefMap.Add """4000000 * "" & current_player.bonus_multiplier", "Glf_188"
glf_funcRefMap.Add "s_right_magna_key_active{current_player.hs_input_ready == 1}", "Glf_189"
glf_funcRefMap.Add "s_plunger_key_active{current_player.hs_input_ready == 1}", "Glf_190"
glf_funcRefMap.Add "s_lockbar_key_active{current_player.hs_input_ready == 1}", "Glf_191"
glf_funcRefMap.Add "s_start_active{current_player.hs_input_ready == 1}", "Glf_192"
glf_funcRefMap.Add "text_inputted.1{machine.high_score_initials_chars == 3}", "Glf_193"
glf_funcRefMap.Add "text_input_high_score_complete:{text: machine.high_score_initials}", "Glf_194"
glf_funcRefMap.Add "text_inputted{machine.high_score_initials_chars < 3}", "Glf_196"
glf_funcRefMap.Add "s_left_flipper_active.2{current_player.hs_input_ready == 1}", "Glf_197"
glf_funcRefMap.Add "s_right_flipper_active.2{current_player.hs_input_ready == 1}", "Glf_198"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 0}", "Glf_199"
glf_funcRefMap.Add "machine.high_score_initials & ""A""", "Glf_200"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 1}", "Glf_201"
glf_funcRefMap.Add "machine.high_score_initials & ""B""", "Glf_202"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 2}", "Glf_203"
glf_funcRefMap.Add "machine.high_score_initials & ""C""", "Glf_204"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 3}", "Glf_205"
glf_funcRefMap.Add "machine.high_score_initials & ""D""", "Glf_206"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 4}", "Glf_207"
glf_funcRefMap.Add "machine.high_score_initials & ""E""", "Glf_208"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 5}", "Glf_209"
glf_funcRefMap.Add "machine.high_score_initials & ""F""", "Glf_210"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 6}", "Glf_211"
glf_funcRefMap.Add "machine.high_score_initials & ""G""", "Glf_212"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 7}", "Glf_213"
glf_funcRefMap.Add "machine.high_score_initials & ""H""", "Glf_214"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 8}", "Glf_215"
glf_funcRefMap.Add "machine.high_score_initials & ""I""", "Glf_216"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 9}", "Glf_217"
glf_funcRefMap.Add "machine.high_score_initials & ""J""", "Glf_218"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 10}", "Glf_219"
glf_funcRefMap.Add "machine.high_score_initials & ""K""", "Glf_220"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 11}", "Glf_221"
glf_funcRefMap.Add "machine.high_score_initials & ""L""", "Glf_222"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 12}", "Glf_223"
glf_funcRefMap.Add "machine.high_score_initials & ""M""", "Glf_224"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 13}", "Glf_225"
glf_funcRefMap.Add "machine.high_score_initials & ""N""", "Glf_226"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 14}", "Glf_227"
glf_funcRefMap.Add "machine.high_score_initials & ""O""", "Glf_228"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 15}", "Glf_229"
glf_funcRefMap.Add "machine.high_score_initials & ""P""", "Glf_230"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 16}", "Glf_231"
glf_funcRefMap.Add "machine.high_score_initials & ""Q""", "Glf_232"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 17}", "Glf_233"
glf_funcRefMap.Add "machine.high_score_initials & ""R""", "Glf_234"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 18}", "Glf_235"
glf_funcRefMap.Add "machine.high_score_initials & ""S""", "Glf_236"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 19}", "Glf_237"
glf_funcRefMap.Add "machine.high_score_initials & ""T""", "Glf_238"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 20}", "Glf_239"
glf_funcRefMap.Add "machine.high_score_initials & ""U""", "Glf_240"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 21}", "Glf_241"
glf_funcRefMap.Add "machine.high_score_initials & ""V""", "Glf_242"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 22}", "Glf_243"
glf_funcRefMap.Add "machine.high_score_initials & ""W""", "Glf_244"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 23}", "Glf_245"
glf_funcRefMap.Add "machine.high_score_initials & ""X""", "Glf_246"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 24}", "Glf_247"
glf_funcRefMap.Add "machine.high_score_initials & ""Y""", "Glf_248"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 25}", "Glf_249"
glf_funcRefMap.Add "machine.high_score_initials & ""Z""", "Glf_250"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 26}", "Glf_251"
glf_funcRefMap.Add "machine.high_score_initials & ""0""", "Glf_252"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 27}", "Glf_253"
glf_funcRefMap.Add "machine.high_score_initials & ""1""", "Glf_254"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 28}", "Glf_255"
glf_funcRefMap.Add "machine.high_score_initials & ""2""", "Glf_256"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 29}", "Glf_257"
glf_funcRefMap.Add "machine.high_score_initials & ""3""", "Glf_258"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 30}", "Glf_259"
glf_funcRefMap.Add "machine.high_score_initials & ""4""", "Glf_260"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 31}", "Glf_261"
glf_funcRefMap.Add "machine.high_score_initials & ""5""", "Glf_262"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 32}", "Glf_263"
glf_funcRefMap.Add "machine.high_score_initials & ""6""", "Glf_264"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 33}", "Glf_265"
glf_funcRefMap.Add "machine.high_score_initials & ""7""", "Glf_266"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 34}", "Glf_267"
glf_funcRefMap.Add "machine.high_score_initials & ""8""", "Glf_268"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 35}", "Glf_269"
glf_funcRefMap.Add "machine.high_score_initials & ""9""", "Glf_270"
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 36}", "Glf_271"
glf_funcRefMap.Add "machine.high_score_initials & ""_""", "Glf_272"
glf_funcRefMap.Add "60", "Glf_273"
glf_funcRefMap.Add "Glf_FormatValue(device.timers.high_score_timeout.ticks,""0>2"")", "Glf_274"
glf_funcRefMap.Add "high_score_enter_initials{kwargs.player_num==1}", "Glf_275"
glf_funcRefMap.Add """P1 """, "Glf_276"
glf_funcRefMap.Add "high_score_enter_initials{kwargs.player_num==2}", "Glf_277"
glf_funcRefMap.Add """P2 """, "Glf_278"
glf_funcRefMap.Add "high_score_enter_initials{kwargs.player_num==3}", "Glf_279"
glf_funcRefMap.Add """P3 """, "Glf_280"
glf_funcRefMap.Add "high_score_enter_initials{kwargs.player_num==4}", "Glf_281"
glf_funcRefMap.Add """P4 """, "Glf_282"
glf_funcRefMap.Add """INITIALS""", "Glf_283"
glf_funcRefMap.Add """A""", "Glf_284"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 0 && current_player.hs_input_ready == 1}", "Glf_285"
glf_funcRefMap.Add "machine.high_score_initials & "" A""", "Glf_286"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 0 && current_player.hs_input_ready == 1}", "Glf_287"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 1 && current_player.hs_input_ready == 1}", "Glf_288"
glf_funcRefMap.Add "machine.high_score_initials & "" B""", "Glf_289"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 1 && current_player.hs_input_ready == 1}", "Glf_290"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 2 && current_player.hs_input_ready == 1}", "Glf_291"
glf_funcRefMap.Add "machine.high_score_initials & "" C""", "Glf_292"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 2 && current_player.hs_input_ready == 1}", "Glf_293"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 3 && current_player.hs_input_ready == 1}", "Glf_294"
glf_funcRefMap.Add "machine.high_score_initials & "" D""", "Glf_295"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 3 && current_player.hs_input_ready == 1}", "Glf_296"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 4 && current_player.hs_input_ready == 1}", "Glf_297"
glf_funcRefMap.Add "machine.high_score_initials & "" E""", "Glf_298"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 4 && current_player.hs_input_ready == 1}", "Glf_299"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 5 && current_player.hs_input_ready == 1}", "Glf_300"
glf_funcRefMap.Add "machine.high_score_initials & "" F""", "Glf_301"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 5 && current_player.hs_input_ready == 1}", "Glf_302"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 6 && current_player.hs_input_ready == 1}", "Glf_303"
glf_funcRefMap.Add "machine.high_score_initials & "" G""", "Glf_304"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 6 && current_player.hs_input_ready == 1}", "Glf_305"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 7 && current_player.hs_input_ready == 1}", "Glf_306"
glf_funcRefMap.Add "machine.high_score_initials & "" H""", "Glf_307"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 7 && current_player.hs_input_ready == 1}", "Glf_308"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 8 && current_player.hs_input_ready == 1}", "Glf_309"
glf_funcRefMap.Add "machine.high_score_initials & "" I""", "Glf_310"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 8 && current_player.hs_input_ready == 1}", "Glf_311"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 9 && current_player.hs_input_ready == 1}", "Glf_312"
glf_funcRefMap.Add "machine.high_score_initials & "" J""", "Glf_313"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 9 && current_player.hs_input_ready == 1}", "Glf_314"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 10 && current_player.hs_input_ready == 1}", "Glf_315"
glf_funcRefMap.Add "machine.high_score_initials & "" K""", "Glf_316"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 10 && current_player.hs_input_ready == 1}", "Glf_317"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 11 && current_player.hs_input_ready == 1}", "Glf_318"
glf_funcRefMap.Add "machine.high_score_initials & "" L""", "Glf_319"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 11 && current_player.hs_input_ready == 1}", "Glf_320"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 12 && current_player.hs_input_ready == 1}", "Glf_321"
glf_funcRefMap.Add "machine.high_score_initials & "" M""", "Glf_322"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 12 && current_player.hs_input_ready == 1}", "Glf_323"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 13 && current_player.hs_input_ready == 1}", "Glf_324"
glf_funcRefMap.Add "machine.high_score_initials & "" N""", "Glf_325"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 13 && current_player.hs_input_ready == 1}", "Glf_326"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 14 && current_player.hs_input_ready == 1}", "Glf_327"
glf_funcRefMap.Add "machine.high_score_initials & "" O""", "Glf_328"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 14 && current_player.hs_input_ready == 1}", "Glf_329"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 15 && current_player.hs_input_ready == 1}", "Glf_330"
glf_funcRefMap.Add "machine.high_score_initials & "" P""", "Glf_331"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 15 && current_player.hs_input_ready == 1}", "Glf_332"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 16 && current_player.hs_input_ready == 1}", "Glf_333"
glf_funcRefMap.Add "machine.high_score_initials & "" Q""", "Glf_334"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 16 && current_player.hs_input_ready == 1}", "Glf_335"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 17 && current_player.hs_input_ready == 1}", "Glf_336"
glf_funcRefMap.Add "machine.high_score_initials & "" R""", "Glf_337"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 17 && current_player.hs_input_ready == 1}", "Glf_338"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 18 && current_player.hs_input_ready == 1}", "Glf_339"
glf_funcRefMap.Add "machine.high_score_initials & "" S""", "Glf_340"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 18 && current_player.hs_input_ready == 1}", "Glf_341"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 19 && current_player.hs_input_ready == 1}", "Glf_342"
glf_funcRefMap.Add "machine.high_score_initials & "" T""", "Glf_343"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 19 && current_player.hs_input_ready == 1}", "Glf_344"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 20 && current_player.hs_input_ready == 1}", "Glf_345"
glf_funcRefMap.Add "machine.high_score_initials & "" U""", "Glf_346"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 20 && current_player.hs_input_ready == 1}", "Glf_347"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 21 && current_player.hs_input_ready == 1}", "Glf_348"
glf_funcRefMap.Add "machine.high_score_initials & "" V""", "Glf_349"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 21 && current_player.hs_input_ready == 1}", "Glf_350"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 22 && current_player.hs_input_ready == 1}", "Glf_351"
glf_funcRefMap.Add "machine.high_score_initials & "" W""", "Glf_352"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 22 && current_player.hs_input_ready == 1}", "Glf_353"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 23 && current_player.hs_input_ready == 1}", "Glf_354"
glf_funcRefMap.Add "machine.high_score_initials & "" X""", "Glf_355"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 23 && current_player.hs_input_ready == 1}", "Glf_356"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 24 && current_player.hs_input_ready == 1}", "Glf_357"
glf_funcRefMap.Add "machine.high_score_initials & "" Y""", "Glf_358"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 24 && current_player.hs_input_ready == 1}", "Glf_359"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 25 && current_player.hs_input_ready == 1}", "Glf_360"
glf_funcRefMap.Add "machine.high_score_initials & "" Z""", "Glf_361"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 25 && current_player.hs_input_ready == 1}", "Glf_362"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 26 && current_player.hs_input_ready == 1}", "Glf_363"
glf_funcRefMap.Add "machine.high_score_initials & "" 0""", "Glf_364"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 26 && current_player.hs_input_ready == 1}", "Glf_365"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 27 && current_player.hs_input_ready == 1}", "Glf_366"
glf_funcRefMap.Add "machine.high_score_initials & "" 1""", "Glf_367"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 27 && current_player.hs_input_ready == 1}", "Glf_368"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 28 && current_player.hs_input_ready == 1}", "Glf_369"
glf_funcRefMap.Add "machine.high_score_initials & "" 2""", "Glf_370"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 28 && current_player.hs_input_ready == 1}", "Glf_371"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 29 && current_player.hs_input_ready == 1}", "Glf_372"
glf_funcRefMap.Add "machine.high_score_initials & "" 3""", "Glf_373"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 29 && current_player.hs_input_ready == 1}", "Glf_374"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 30 && current_player.hs_input_ready == 1}", "Glf_375"
glf_funcRefMap.Add "machine.high_score_initials & "" 4""", "Glf_376"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 30 && current_player.hs_input_ready == 1}", "Glf_377"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 31 && current_player.hs_input_ready == 1}", "Glf_378"
glf_funcRefMap.Add "machine.high_score_initials & "" 5""", "Glf_379"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 31 && current_player.hs_input_ready == 1}", "Glf_380"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 32 && current_player.hs_input_ready == 1}", "Glf_381"
glf_funcRefMap.Add "machine.high_score_initials & "" 6""", "Glf_382"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 32 && current_player.hs_input_ready == 1}", "Glf_383"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 33 && current_player.hs_input_ready == 1}", "Glf_384"
glf_funcRefMap.Add "machine.high_score_initials & "" 7""", "Glf_385"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 33 && current_player.hs_input_ready == 1}", "Glf_386"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 34 && current_player.hs_input_ready == 1}", "Glf_387"
glf_funcRefMap.Add "machine.high_score_initials & "" 8""", "Glf_388"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 34 && current_player.hs_input_ready == 1}", "Glf_389"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 35 && current_player.hs_input_ready == 1}", "Glf_390"
glf_funcRefMap.Add "machine.high_score_initials & "" 9""", "Glf_391"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 35 && current_player.hs_input_ready == 1}", "Glf_392"
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 36 && current_player.hs_input_ready == 1}", "Glf_393"
glf_funcRefMap.Add "machine.high_score_initials & "" _""", "Glf_394"
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 36 && current_player.hs_input_ready == 1}", "Glf_395"
glf_funcRefMap.Add "text_inputted.1{machine.high_score_initials_chars<3}", "Glf_396"
glf_funcRefMap.Add "high_score_award_display{kwargs.position == 1}", "Glf_397"
glf_funcRefMap.Add """  GRAND """, "Glf_398"
glf_funcRefMap.Add """CHAMPION""", "Glf_399"
glf_funcRefMap.Add """     "" & machine.high_score_initials", "Glf_400"
glf_funcRefMap.Add "high_score_award_display{kwargs.position == 2}", "Glf_401"
glf_funcRefMap.Add """   HIGH """, "Glf_402"
glf_funcRefMap.Add """SCORE 1 """, "Glf_403"
glf_funcRefMap.Add "high_score_award_display{kwargs.position == 3}", "Glf_404"
glf_funcRefMap.Add """SCORE 2 """, "Glf_405"
glf_funcRefMap.Add "high_score_award_display{kwargs.position == 4}", "Glf_406"
glf_funcRefMap.Add """SCORE 3 """, "Glf_407"
glf_funcRefMap.Add "1000", "Glf_408"
glf_funcRefMap.Add "250", "Glf_409"
glf_funcRefMap.Add "50", "Glf_410"
glf_funcRefMap.Add "1500", "Glf_411"
glf_funcRefMap.Add "100", "Glf_412"
glf_funcRefMap.Add """  """, "Glf_413"
glf_funcRefMap.Add """        """, "Glf_414"
glf_funcRefMap.Add """                                """, "Glf_415"
glf_funcRefMap.Add """                """, "Glf_416"

