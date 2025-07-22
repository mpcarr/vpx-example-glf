Function Glf_0(args)
	Glf_0 = 0
End Function
glf_funcRefMap.Add "0", "Glf_0"
Function Glf_1(args)
	On Error Resume Next
	    Glf_1 = glf_dispatch_current_kwargs("num")=1
	If Err Then Glf_1 = False
End Function
glf_funcRefMap.Add "player_added{kwargs.num==1}", "Glf_1"
Function Glf_2(args)
	On Error Resume Next
	    Glf_2 = glf_dispatch_current_kwargs("num")=2
	If Err Then Glf_2 = False
End Function
glf_funcRefMap.Add "player_added{kwargs.num==2}", "Glf_2"
Function Glf_3(args)
	On Error Resume Next
	    Glf_3 = glf_dispatch_current_kwargs("num")=3
	If Err Then Glf_3 = False
End Function
glf_funcRefMap.Add "player_added{kwargs.num==3}", "Glf_3"
Function Glf_4(args)
	On Error Resume Next
	    Glf_4 = glf_dispatch_current_kwargs("num")=4
	If Err Then Glf_4 = False
End Function
glf_funcRefMap.Add "player_added{kwargs.num==4}", "Glf_4"
Function Glf_5(args)
	Glf_5 = ""
End Function
glf_funcRefMap.Add """""", "Glf_5"
Function Glf_6(args)
	Glf_6 = "WARNING"
End Function
glf_funcRefMap.Add """WARNING""", "Glf_6"
Function Glf_7(args)
	Glf_7 = "TILT"
End Function
glf_funcRefMap.Add """TILT""", "Glf_7"
Function Glf_8(args)
	On Error Resume Next
	    Glf_8 = glf_timers("attract_display").GetValue("ticks") = 1
	If Err Then Glf_8 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 1}", "Glf_8"
Function Glf_9(args)
	On Error Resume Next
	    Glf_9 = glf_timers("attract_display").GetValue("ticks") = 7
	If Err Then Glf_9 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 7}", "Glf_9"
Function Glf_10(args)
	On Error Resume Next
	    Glf_10 = glf_timers("attract_display").GetValue("ticks") = 11
	If Err Then Glf_10 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 11}", "Glf_10"
Function Glf_11(args)
	On Error Resume Next
	    Glf_11 = glf_timers("attract_display").GetValue("ticks") = 15
	If Err Then Glf_11 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 15}", "Glf_11"
Function Glf_12(args)
	On Error Resume Next
	    Glf_12 = glf_timers("attract_display").GetValue("ticks") = 19
	If Err Then Glf_12 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 19}", "Glf_12"
Function Glf_13(args)
	On Error Resume Next
	    Glf_13 = glf_timers("attract_display").GetValue("ticks") = 23
	If Err Then Glf_13 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 23}", "Glf_13"
Function Glf_14(args)
	On Error Resume Next
	    Glf_14 = glf_timers("attract_display").GetValue("ticks") = 26
	If Err Then Glf_14 = False
End Function
glf_funcRefMap.Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 26}", "Glf_14"
Function Glf_15(args)
	Glf_15 = -1
End Function
glf_funcRefMap.Add "-1", "Glf_15"
Function Glf_16(args)
	Glf_16 = 30
End Function
glf_funcRefMap.Add "30", "Glf_16"
Function Glf_17(args)
	Glf_17 = "GLF"
End Function
glf_funcRefMap.Add """GLF""", "Glf_17"
Function Glf_18(args)
	Glf_18 = "EXAMPLE"
End Function
glf_funcRefMap.Add """EXAMPLE""", "Glf_18"
Function Glf_19(args)
	Glf_19 = "TABLE  "
End Function
glf_funcRefMap.Add """TABLE  """, "Glf_19"
Function Glf_20(args)
	Glf_20 = glf_machine_vars("score_1_label").GetValue()
End Function
glf_funcRefMap.Add "machine.score_1_label", "Glf_20"
Function Glf_21(args)
	Glf_21 = glf_machine_vars("score_1_name").GetValue()
End Function
glf_funcRefMap.Add "machine.score_1_name", "Glf_21"
Function Glf_22(args)
	Glf_22 = glf_machine_vars("score_1_value").GetValue()
End Function
glf_funcRefMap.Add "machine.score_1_value", "Glf_22"
Function Glf_23(args)
	Glf_23 = glf_machine_vars("score_2_label").GetValue()
End Function
glf_funcRefMap.Add "machine.score_2_label", "Glf_23"
Function Glf_24(args)
	Glf_24 = glf_machine_vars("score_2_name").GetValue()
End Function
glf_funcRefMap.Add "machine.score_2_name", "Glf_24"
Function Glf_25(args)
	Glf_25 = glf_machine_vars("score_2_value").GetValue()
End Function
glf_funcRefMap.Add "machine.score_2_value", "Glf_25"
Function Glf_26(args)
	Glf_26 = glf_machine_vars("score_3_label").GetValue()
End Function
glf_funcRefMap.Add "machine.score_3_label", "Glf_26"
Function Glf_27(args)
	Glf_27 = glf_machine_vars("score_3_name").GetValue()
End Function
glf_funcRefMap.Add "machine.score_3_name", "Glf_27"
Function Glf_28(args)
	Glf_28 = glf_machine_vars("score_3_value").GetValue()
End Function
glf_funcRefMap.Add "machine.score_3_value", "Glf_28"
Function Glf_29(args)
	Glf_29 = glf_machine_vars("score_4_label").GetValue()
End Function
glf_funcRefMap.Add "machine.score_4_label", "Glf_29"
Function Glf_30(args)
	Glf_30 = glf_machine_vars("score_4_name").GetValue()
End Function
glf_funcRefMap.Add "machine.score_4_name", "Glf_30"
Function Glf_31(args)
	Glf_31 = glf_machine_vars("score_4_value").GetValue()
End Function
glf_funcRefMap.Add "machine.score_4_value", "Glf_31"
Function Glf_32(args)
	Glf_32 = "LAST "
End Function
glf_funcRefMap.Add """LAST """, "Glf_32"
Function Glf_33(args)
	Glf_33 = "SCORES "
End Function
glf_funcRefMap.Add """SCORES """, "Glf_33"
Function Glf_34(args)
	Glf_34 = glf_machine_vars("player1_score").GetValue()
End Function
glf_funcRefMap.Add "machine.player1_score", "Glf_34"
Function Glf_35(args)
	Glf_35 = glf_machine_vars("player2_score").GetValue()
End Function
glf_funcRefMap.Add "machine.player2_score", "Glf_35"
Function Glf_36(args)
	Glf_36 = glf_machine_vars("player3_score").GetValue()
End Function
glf_funcRefMap.Add "machine.player3_score", "Glf_36"
Function Glf_37(args)
	Glf_37 = glf_machine_vars("player4_score").GetValue()
End Function
glf_funcRefMap.Add "machine.player4_score", "Glf_37"
Function Glf_38(args)
	On Error Resume Next
	    Glf_38 = GetPlayerState("ball_just_started") = 1
	If Err Then Glf_38 = False
End Function
glf_funcRefMap.Add "s_Plunger1_inactive{current_player.ball_just_started == 1}", "Glf_38"
Function Glf_39(args)
	On Error Resume Next
	    Glf_39 = GetPlayerState("number") = 1
	If Err Then Glf_39 = False
End Function
glf_funcRefMap.Add "mode_base_started{current_player.number == 1}", "Glf_39"
Function Glf_40(args)
	On Error Resume Next
	    Glf_40 = GetPlayerState("number") = 2
	If Err Then Glf_40 = False
End Function
glf_funcRefMap.Add "mode_base_started{current_player.number == 2}", "Glf_40"
Function Glf_41(args)
	On Error Resume Next
	    Glf_41 = GetPlayerState("number") = 3
	If Err Then Glf_41 = False
End Function
glf_funcRefMap.Add "mode_base_started{current_player.number == 3}", "Glf_41"
Function Glf_42(args)
	On Error Resume Next
	    Glf_42 = GetPlayerState("number") = 4
	If Err Then Glf_42 = False
End Function
glf_funcRefMap.Add "mode_base_started{current_player.number == 4}", "Glf_42"
Function Glf_43(args)
	Glf_43 = 6000
End Function
glf_funcRefMap.Add "6000", "Glf_43"
Function Glf_44(args)
	Glf_44 = 3000
End Function
glf_funcRefMap.Add "3000", "Glf_44"
Function Glf_45(args)
	Glf_45 = 2000
End Function
glf_funcRefMap.Add "2000", "Glf_45"
Function Glf_46(args)
	Glf_46 = 500
End Function
glf_funcRefMap.Add "500", "Glf_46"
Function Glf_47(args)
	Glf_47 = Glf_FormatValue(GetPlayerStateForPlayer(0, "score"), "0>2,")
End Function
glf_funcRefMap.Add "{players[0].score:0>2,}", "Glf_47"
Function Glf_48(args)
	Glf_48 = Glf_FormatValue(GetPlayerStateForPlayer(1, "score"), "0>2,")
End Function
glf_funcRefMap.Add "{players[1].score:0>2,}", "Glf_48"
Function Glf_49(args)
	Glf_49 = Glf_FormatValue(GetPlayerStateForPlayer(2, "score"), "0>2,")
End Function
glf_funcRefMap.Add "{players[2].score:0>2,}", "Glf_49"
Function Glf_50(args)
	Glf_50 = Glf_FormatValue(GetPlayerStateForPlayer(3, "score"), "0>2,")
End Function
glf_funcRefMap.Add "{players[3].score:0>2,}", "Glf_50"
Function Glf_51(args)
	Glf_51 = Glf_FormatValue(GetPlayerState("ball"), "0>2")
End Function
glf_funcRefMap.Add "{current_player.ball:0>2}", "Glf_51"
Function Glf_52(args)
	Glf_52 = Glf_FormatValue(GetPlayerStateForPlayer(0, "score"), "0>2")
End Function
glf_funcRefMap.Add "{players[0].score:0>2}", "Glf_52"
Function Glf_53(args)
	Glf_53 = Glf_FormatValue(GetPlayerStateForPlayer(1, "score"), "0>2")
End Function
glf_funcRefMap.Add "{players[1].score:0>2}", "Glf_53"
Function Glf_54(args)
	Glf_54 = Glf_FormatValue(GetPlayerStateForPlayer(2, "score"), "0>2")
End Function
glf_funcRefMap.Add "{players[2].score:0>2}", "Glf_54"
Function Glf_55(args)
	Glf_55 = Glf_FormatValue(GetPlayerStateForPlayer(3, "score"), "0>2")
End Function
glf_funcRefMap.Add "{players[3].score:0>2}", "Glf_55"
Function Glf_56(args)
	Glf_56 = 1
End Function
glf_funcRefMap.Add "1", "Glf_56"
Function Glf_57(args)
	On Error Resume Next
	    Glf_57 = GetPlayerState("ball_just_started") = 1
	If Err Then Glf_57 = False
End Function
glf_funcRefMap.Add "mode_skillshots_started{current_player.ball_just_started == 1}", "Glf_57"
Function Glf_58(args)
	On Error Resume Next
	    Glf_58 = GetPlayerState("shot_ss1") = 1
	If Err Then Glf_58 = False
End Function
glf_funcRefMap.Add "s_TopLane1_active{current_player.shot_ss1 == 1}", "Glf_58"
Function Glf_59(args)
	On Error Resume Next
	    Glf_59 = GetPlayerState("shot_ss2") = 1
	If Err Then Glf_59 = False
End Function
glf_funcRefMap.Add "s_TopLane2_active{current_player.shot_ss2 == 1}", "Glf_59"
Function Glf_60(args)
	On Error Resume Next
	    Glf_60 = GetPlayerState("shot_ss3") = 1
	If Err Then Glf_60 = False
End Function
glf_funcRefMap.Add "s_TopLane3_active{current_player.shot_ss3 == 1}", "Glf_60"
Function Glf_61(args)
	On Error Resume Next
	    Glf_61 = GetPlayerState("shot_ss4") = 1
	If Err Then Glf_61 = False
End Function
glf_funcRefMap.Add "s_TopLane4_active{current_player.shot_ss4 == 1}", "Glf_61"
Function Glf_62(args)
	Glf_62 = 5
End Function
glf_funcRefMap.Add "5", "Glf_62"
Function Glf_63(args)
	On Error Resume Next
	    Glf_63 = GetPlayerState("shot_kickback_ready") > 0
	If Err Then Glf_63 = False
End Function
glf_funcRefMap.Add "s_LeftInOutlane_inactive{current_player.shot_kickback_ready > 0}", "Glf_63"
Function Glf_64(args)
	On Error Resume Next
	    Glf_64 = GetPlayerState("ss_running") = 0
	If Err Then Glf_64 = False
End Function
glf_funcRefMap.Add "qualify_kickback_on_complete{current_player.ss_running == 0}", "Glf_64"
Function Glf_65(args)
	Glf_65 = 3
End Function
glf_funcRefMap.Add "3", "Glf_65"
Function Glf_66(args)
	On Error Resume Next
	    Glf_66 = GetPlayerState("target_hit_count") >= 6
	If Err Then Glf_66 = False
End Function
glf_funcRefMap.Add "add_hit_count.1{current_player.target_hit_count >= 6}", "Glf_66"
Function Glf_67(args)
	On Error Resume Next
	    Glf_67 = GetPlayerState("shot_bank_target1") = 1
	If Err Then Glf_67 = False
End Function
glf_funcRefMap.Add "s_DT1_active{current_player.shot_bank_target1 == 1}", "Glf_67"
Function Glf_68(args)
	On Error Resume Next
	    Glf_68 = GetPlayerState("shot_bank_target2") = 1
	If Err Then Glf_68 = False
End Function
glf_funcRefMap.Add "s_DT2_active{current_player.shot_bank_target2 == 1}", "Glf_68"
Function Glf_69(args)
	On Error Resume Next
	    Glf_69 = GetPlayerState("shot_bank_target3") = 1
	If Err Then Glf_69 = False
End Function
glf_funcRefMap.Add "s_DT3_active{current_player.shot_bank_target3 == 1}", "Glf_69"
Function Glf_70(args)
	On Error Resume Next
	    Glf_70 = GetPlayerState("shot_bank_target4") = 1
	If Err Then Glf_70 = False
End Function
glf_funcRefMap.Add "s_DT4_active{current_player.shot_bank_target4 == 1}", "Glf_70"
Function Glf_71(args)
	On Error Resume Next
	    Glf_71 = GetPlayerState("shot_bank_target5") = 1
	If Err Then Glf_71 = False
End Function
glf_funcRefMap.Add "s_DT5_active{current_player.shot_bank_target5 == 1}", "Glf_71"
Function Glf_72(args)
	On Error Resume Next
	    Glf_72 = GetPlayerState("shot_bank_target6") = 1
	If Err Then Glf_72 = False
End Function
glf_funcRefMap.Add "s_DT6_active{current_player.shot_bank_target6 == 1}", "Glf_72"
Function Glf_73(args)
	On Error Resume Next
	    Glf_73 = GetPlayerState("extra_balls") = 0
	If Err Then Glf_73 = False
End Function
glf_funcRefMap.Add "check_eb{current_player.extra_balls == 0}", "Glf_73"
Function Glf_74(args)
	On Error Resume Next
	    Glf_74 = GetPlayerState("extra_balls") > 0
	If Err Then Glf_74 = False
End Function
glf_funcRefMap.Add "check_eb{current_player.extra_balls > 0}", "Glf_74"
Function Glf_75(args)
	On Error Resume Next
	    Glf_75 = GetPlayerState("shot_eb_ready") = 1
	If Err Then Glf_75 = False
End Function
glf_funcRefMap.Add "s_ST3_active{current_player.shot_eb_ready == 1}", "Glf_75"
Function Glf_76(args)
	On Error Resume Next
	    Glf_76 = GetPlayerState("extra_ball_eb_awarded") < 3
	If Err Then Glf_76 = False
End Function
glf_funcRefMap.Add "eb_now_lit{current_player.extra_ball_eb_awarded < 3}", "Glf_76"
Function Glf_77(args)
	Glf_77 = " EXTRA "
End Function
glf_funcRefMap.Add """ EXTRA """, "Glf_77"
Function Glf_78(args)
	Glf_78 = " BALL "
End Function
glf_funcRefMap.Add """ BALL """, "Glf_78"
Function Glf_79(args)
	On Error Resume Next
	    Glf_79 = GetPlayerState("shot_left_inlane") = 1
	If Err Then Glf_79 = False
End Function
glf_funcRefMap.Add "s_LeftInlane_active{current_player.shot_left_inlane == 1}", "Glf_79"
Function Glf_80(args)
	On Error Resume Next
	    Glf_80 = GetPlayerState("shot_right_inlane") = 1
	If Err Then Glf_80 = False
End Function
glf_funcRefMap.Add "s_RightInlane_active{current_player.shot_right_inlane == 1}", "Glf_80"
Function Glf_81(args)
	On Error Resume Next
	    Glf_81 = GetPlayerState("shot_left_orbit") = 1
	If Err Then Glf_81 = False
End Function
glf_funcRefMap.Add "left_orbit_hit{current_player.shot_left_orbit == 1}", "Glf_81"
Function Glf_82(args)
	On Error Resume Next
	    Glf_82 = GetPlayerState("shot_right_orbit") = 1
	If Err Then Glf_82 = False
End Function
glf_funcRefMap.Add "right_orbit_hit{current_player.shot_right_orbit == 1}", "Glf_82"
Function Glf_83(args)
	On Error Resume Next
	    Glf_83 = GetPlayerState("shot_left_orbit") = 0
	If Err Then Glf_83 = False
End Function
glf_funcRefMap.Add "s_spinner_active{current_player.shot_left_orbit == 0}", "Glf_83"
Function Glf_84(args)
	On Error Resume Next
	    Glf_84 = GetPlayerState("shot_left_orbit") = 1
	If Err Then Glf_84 = False
End Function
glf_funcRefMap.Add "s_spinner_active{current_player.shot_left_orbit == 1}", "Glf_84"
Function Glf_85(args)
	On Error Resume Next
	    Glf_85 = GetPlayerState("spin_show") = 1
	If Err Then Glf_85 = False
End Function
glf_funcRefMap.Add "do_spin1_super_show{current_player.spin_show == 1}", "Glf_85"
Function Glf_86(args)
	On Error Resume Next
	    Glf_86 = GetPlayerState("spin_show") = 2
	If Err Then Glf_86 = False
End Function
glf_funcRefMap.Add "do_spin1_super_show{current_player.spin_show == 2}", "Glf_86"
Function Glf_87(args)
	On Error Resume Next
	    Glf_87 = GetPlayerState("shot_right_orbit") = 0
	If Err Then Glf_87 = False
End Function
glf_funcRefMap.Add "s_spinner2_active{current_player.shot_right_orbit == 0}", "Glf_87"
Function Glf_88(args)
	On Error Resume Next
	    Glf_88 = GetPlayerState("shot_right_orbit") = 1
	If Err Then Glf_88 = False
End Function
glf_funcRefMap.Add "s_spinner2_active{current_player.shot_right_orbit == 1}", "Glf_88"
Function Glf_89(args)
	On Error Resume Next
	    Glf_89 = GetPlayerState("spin_show") = 1
	If Err Then Glf_89 = False
End Function
glf_funcRefMap.Add "do_spin2_super_show{current_player.spin_show == 1}", "Glf_89"
Function Glf_90(args)
	On Error Resume Next
	    Glf_90 = GetPlayerState("spin_show") = 2
	If Err Then Glf_90 = False
End Function
glf_funcRefMap.Add "do_spin2_super_show{current_player.spin_show == 2}", "Glf_90"
Function Glf_91(args)
	Glf_91 = 4
End Function
glf_funcRefMap.Add "4", "Glf_91"
Function Glf_92(args)
	Glf_92 = 2
End Function
glf_funcRefMap.Add "2", "Glf_92"
Function Glf_93(args)
	On Error Resume Next
	    Glf_93 = GetPlayerState("shot_ramp") = 1
	If Err Then Glf_93 = False
End Function
glf_funcRefMap.Add "s_RampHit_active{current_player.shot_ramp == 1}", "Glf_93"
Function Glf_94(args)
	On Error Resume Next
	    Glf_94 = glf_machine_vars("top_ball_locked").GetValue() = 1
	If Err Then Glf_94 = False
End Function
glf_funcRefMap.Add "update_lock_shots{machine.top_ball_locked == 1}", "Glf_94"
Function Glf_95(args)
	On Error Resume Next
	    Glf_95 = glf_machine_vars("top_ball_locked").GetValue() = 0 And GetPlayerState("shot_top_lock") = 1
	If Err Then Glf_95 = False
End Function
glf_funcRefMap.Add "update_lock_shots{machine.top_ball_locked == 0 && current_player.shot_top_lock == 1}", "Glf_95"
Function Glf_96(args)
	On Error Resume Next
	    Glf_96 = glf_machine_vars("top_ball_locked").GetValue() = 0 And GetPlayerState("shot_top_lock") = 2
	If Err Then Glf_96 = False
End Function
glf_funcRefMap.Add "update_lock_shots{machine.top_ball_locked == 0 && current_player.shot_top_lock == 2}", "Glf_96"
Function Glf_97(args)
	On Error Resume Next
	    Glf_97 = glf_machine_vars("bottom_ball_locked").GetValue() = 1
	If Err Then Glf_97 = False
End Function
glf_funcRefMap.Add "update_lock_shots{machine.bottom_ball_locked == 1}", "Glf_97"
Function Glf_98(args)
	On Error Resume Next
	    Glf_98 = glf_machine_vars("bottom_ball_locked").GetValue() = 0 And GetPlayerState("shot_bottom_lock") = 1
	If Err Then Glf_98 = False
End Function
glf_funcRefMap.Add "update_lock_shots{machine.bottom_ball_locked == 0 && current_player.shot_bottom_lock == 1}", "Glf_98"
Function Glf_99(args)
	On Error Resume Next
	    Glf_99 = glf_machine_vars("bottom_ball_locked").GetValue() = 0 And GetPlayerState("shot_bottom_lock") = 2
	If Err Then Glf_99 = False
End Function
glf_funcRefMap.Add "update_lock_shots{machine.bottom_ball_locked == 0 && current_player.shot_bottom_lock == 2}", "Glf_99"
Function Glf_100(args)
	On Error Resume Next
	    Glf_100 = GetPlayerState("shot_left_jackpot") = 1
	If Err Then Glf_100 = False
End Function
glf_funcRefMap.Add "s_RampHit_active{current_player.shot_left_jackpot == 1}", "Glf_100"
Function Glf_101(args)
	On Error Resume Next
	    Glf_101 = GetPlayerState("shot_right_jackpot") = 1
	If Err Then Glf_101 = False
End Function
glf_funcRefMap.Add "balldevice_kicker2_ball_entered{current_player.shot_right_jackpot == 1}", "Glf_101"
Function Glf_102(args)
	Glf_102 = 5000
End Function
glf_funcRefMap.Add "5000", "Glf_102"
Function Glf_103(args)
	Glf_103 = 10000
End Function
glf_funcRefMap.Add "10000", "Glf_103"
Function Glf_104(args)
	Glf_104 = 15000
End Function
glf_funcRefMap.Add "15000", "Glf_104"
Function Glf_105(args)
	On Error Resume Next
	    Glf_105 = glf_machine_vars("top_ball_locked").GetValue() = 1 And glf_machine_vars("bottom_ball_locked").GetValue() = 1
	If Err Then Glf_105 = False
End Function
glf_funcRefMap.Add "check_locks{machine.top_ball_locked == 1 && machine.bottom_ball_locked == 1}", "Glf_105"
Function Glf_106(args)
	On Error Resume Next
	    Glf_106 = glf_machine_vars("top_ball_locked").GetValue() = 0 OR glf_machine_vars("bottom_ball_locked").GetValue() = 0
	If Err Then Glf_106 = False
End Function
glf_funcRefMap.Add "check_locks{machine.top_ball_locked == 0 OR machine.bottom_ball_locked == 0}", "Glf_106"
Function Glf_107(args)
	On Error Resume Next
	    Glf_107 = GetPlayerState("shot_top_lock") <> 1 And GetPlayerState("shot_bottom_lock") <> 1
	If Err Then Glf_107 = False
End Function
glf_funcRefMap.Add "timer_check_locking_delay_complete{current_player.shot_top_lock <> 1 && current_player.shot_bottom_lock <> 1}", "Glf_107"
Function Glf_108(args)
	On Error Resume Next
	    Glf_108 = GetPlayerState("shot_top_lock") = 1 And GetPlayerState("shot_bottom_lock") = 1
	If Err Then Glf_108 = False
End Function
glf_funcRefMap.Add "timer_check_locking_delay_complete{current_player.shot_top_lock == 1 && current_player.shot_bottom_lock == 1}", "Glf_108"
Function Glf_109(args)
	On Error Resume Next
	    Glf_109 = GetPlayerState("shot_top_lock") = 1 And GetPlayerState("shot_bottom_lock") <> 1
	If Err Then Glf_109 = False
End Function
glf_funcRefMap.Add "timer_check_locking_delay_complete{current_player.shot_top_lock == 1 && current_player.shot_bottom_lock <> 1}", "Glf_109"
Function Glf_110(args)
	On Error Resume Next
	    Glf_110 = GetPlayerState("shot_top_lock") <> 1 And GetPlayerState("shot_bottom_lock") = 1
	If Err Then Glf_110 = False
End Function
glf_funcRefMap.Add "timer_check_locking_delay_complete{current_player.shot_top_lock <> 1 && current_player.shot_bottom_lock == 1}", "Glf_110"
Function Glf_111(args)
	On Error Resume Next
	    Glf_111 = GetPlayerState("shot_bottom_lock") = 0 And GetPlayerState("shot_top_lock") = 0
	If Err Then Glf_111 = False
End Function
glf_funcRefMap.Add "qualify_lock_on_complete{current_player.shot_bottom_lock == 0 && current_player.shot_top_lock == 0}", "Glf_111"
Function Glf_112(args)
	On Error Resume Next
	    Glf_112 = GetPlayerState("shot_bottom_lock") = 2 And GetPlayerState("shot_top_lock") = 0
	If Err Then Glf_112 = False
End Function
glf_funcRefMap.Add "qualify_lock_on_complete{current_player.shot_bottom_lock == 2 && current_player.shot_top_lock == 0}", "Glf_112"
Function Glf_113(args)
	On Error Resume Next
	    Glf_113 = GetPlayerState("shot_bottom_lock") = 0 And GetPlayerState("shot_top_lock") = 2
	If Err Then Glf_113 = False
End Function
glf_funcRefMap.Add "qualify_lock_on_complete{current_player.shot_bottom_lock == 0 && current_player.shot_top_lock == 2}", "Glf_113"
Function Glf_114(args)
	On Error Resume Next
	    Glf_114 = GetPlayerState("shot_mb_start") = 1
	If Err Then Glf_114 = False
End Function
glf_funcRefMap.Add "s_RampHit_active{current_player.shot_mb_start == 1}", "Glf_114"
Function Glf_115(args)
	Glf_115 = 10
End Function
glf_funcRefMap.Add "10", "Glf_115"
Function Glf_116(args)
	Glf_116 = glf_machine_vars("bottom_ball_locked").GetValue() + glf_machine_vars("top_ball_locked").GetValue()
End Function
glf_funcRefMap.Add "machine.bottom_ball_locked + machine.top_ball_locked", "Glf_116"
Function Glf_117(args)
	Glf_117 = 1 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "1 * current_player.scoring_multiplier", "Glf_117"
Function Glf_118(args)
	Glf_118 = 10 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "10 * current_player.scoring_multiplier", "Glf_118"
Function Glf_119(args)
	Glf_119 = 100 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "100 * current_player.scoring_multiplier", "Glf_119"
Function Glf_120(args)
	Glf_120 = 333 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "333 * current_player.scoring_multiplier", "Glf_120"
Function Glf_121(args)
	Glf_121 = 500 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "500 * current_player.scoring_multiplier", "Glf_121"
Function Glf_122(args)
	Glf_122 = 1000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "1000 * current_player.scoring_multiplier", "Glf_122"
Function Glf_123(args)
	Glf_123 = 2000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "2000 * current_player.scoring_multiplier", "Glf_123"
Function Glf_124(args)
	Glf_124 = 3000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "3000 * current_player.scoring_multiplier", "Glf_124"
Function Glf_125(args)
	Glf_125 = 3333 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "3333 * current_player.scoring_multiplier", "Glf_125"
Function Glf_126(args)
	Glf_126 = 5000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "5000 * current_player.scoring_multiplier", "Glf_126"
Function Glf_127(args)
	Glf_127 = 10000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "10000 * current_player.scoring_multiplier", "Glf_127"
Function Glf_128(args)
	Glf_128 = 20000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "20000 * current_player.scoring_multiplier", "Glf_128"
Function Glf_129(args)
	Glf_129 = 30000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "30000 * current_player.scoring_multiplier", "Glf_129"
Function Glf_130(args)
	Glf_130 = 33333 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "33333 * current_player.scoring_multiplier", "Glf_130"
Function Glf_131(args)
	Glf_131 = 50000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "50000 * current_player.scoring_multiplier", "Glf_131"
Function Glf_132(args)
	Glf_132 = 100000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "100000 * current_player.scoring_multiplier", "Glf_132"
Function Glf_133(args)
	Glf_133 = 200000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "200000 * current_player.scoring_multiplier", "Glf_133"
Function Glf_134(args)
	Glf_134 = 500000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "500000 * current_player.scoring_multiplier", "Glf_134"
Function Glf_135(args)
	Glf_135 = 1000000 * GetPlayerState("scoring_multiplier")
End Function
glf_funcRefMap.Add "1000000 * current_player.scoring_multiplier", "Glf_135"
Function Glf_136(args)
	On Error Resume Next
	    Glf_136 = GetPlayerState("shot_bonus_light1") = 0
	If Err Then Glf_136 = False
End Function
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light1 == 0}", "Glf_136"
Function Glf_137(args)
	On Error Resume Next
	    Glf_137 = GetPlayerState("shot_bonus_light1") = 1 And GetPlayerState("shot_bonus_light2") = 0
	If Err Then Glf_137 = False
End Function
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light1 == 1 && current_player.shot_bonus_light2 == 0}", "Glf_137"
Function Glf_138(args)
	On Error Resume Next
	    Glf_138 = GetPlayerState("shot_bonus_light2") = 1 And GetPlayerState("shot_bonus_light3") = 0
	If Err Then Glf_138 = False
End Function
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light2 == 1 && current_player.shot_bonus_light3 == 0}", "Glf_138"
Function Glf_139(args)
	On Error Resume Next
	    Glf_139 = GetPlayerState("shot_bonus_light3") = 1 And GetPlayerState("shot_bonus_light4") = 0
	If Err Then Glf_139 = False
End Function
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light3 == 1 && current_player.shot_bonus_light4 == 0}", "Glf_139"
Function Glf_140(args)
	On Error Resume Next
	    Glf_140 = GetPlayerState("shot_bonus_light4") = 1 And GetPlayerState("shot_bonus_light5") = 0
	If Err Then Glf_140 = False
End Function
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light4 == 1 && current_player.shot_bonus_light5 == 0}", "Glf_140"
Function Glf_141(args)
	On Error Resume Next
	    Glf_141 = GetPlayerState("shot_bonus_light5") = 1 And GetPlayerState("shot_bonus_light6") = 0
	If Err Then Glf_141 = False
End Function
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light5 == 1 && current_player.shot_bonus_light6 == 0}", "Glf_141"
Function Glf_142(args)
	On Error Resume Next
	    Glf_142 = GetPlayerState("shot_bonus_light6") = 1 And GetPlayerState("shot_bonus_light7") = 0
	If Err Then Glf_142 = False
End Function
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light6 == 1 && current_player.shot_bonus_light7 == 0}", "Glf_142"
Function Glf_143(args)
	On Error Resume Next
	    Glf_143 = GetPlayerState("shot_bonus_light7") = 1 And GetPlayerState("shot_bonus_light8") = 0
	If Err Then Glf_143 = False
End Function
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light7 == 1 && current_player.shot_bonus_light8 == 0}", "Glf_143"
Function Glf_144(args)
	On Error Resume Next
	    Glf_144 = GetPlayerState("shot_bonus_light8") = 1
	If Err Then Glf_144 = False
End Function
glf_funcRefMap.Add "add_bonus{current_player.shot_bonus_light8 == 1}", "Glf_144"
Function Glf_145(args)
	On Error Resume Next
	    Glf_145 = Glf_GameVariable("tilted") = False
	If Err Then Glf_145 = False
End Function
glf_funcRefMap.Add "ball_ending{game.tilted == False}", "Glf_145"
Function Glf_146(args)
	On Error Resume Next
	    Glf_146 = GetPlayerState("shot_bonus_light1") = 1
	If Err Then Glf_146 = False
End Function
glf_funcRefMap.Add "calc_bonus1{current_player.shot_bonus_light1 == 1}", "Glf_146"
Function Glf_147(args)
	On Error Resume Next
	    Glf_147 = GetPlayerState("shot_bonus_light1") = 0
	If Err Then Glf_147 = False
End Function
glf_funcRefMap.Add "calc_bonus1{current_player.shot_bonus_light1 == 0}", "Glf_147"
Function Glf_148(args)
	On Error Resume Next
	    Glf_148 = GetPlayerState("shot_bonus_light2") = 1
	If Err Then Glf_148 = False
End Function
glf_funcRefMap.Add "calc_bonus2{current_player.shot_bonus_light2 == 1}", "Glf_148"
Function Glf_149(args)
	On Error Resume Next
	    Glf_149 = GetPlayerState("shot_bonus_light2") = 0
	If Err Then Glf_149 = False
End Function
glf_funcRefMap.Add "calc_bonus2{current_player.shot_bonus_light2 == 0}", "Glf_149"
Function Glf_150(args)
	On Error Resume Next
	    Glf_150 = GetPlayerState("shot_bonus_light3") = 1
	If Err Then Glf_150 = False
End Function
glf_funcRefMap.Add "calc_bonus3{current_player.shot_bonus_light3 == 1}", "Glf_150"
Function Glf_151(args)
	On Error Resume Next
	    Glf_151 = GetPlayerState("shot_bonus_light3") = 0
	If Err Then Glf_151 = False
End Function
glf_funcRefMap.Add "calc_bonus3{current_player.shot_bonus_light3 == 0}", "Glf_151"
Function Glf_152(args)
	On Error Resume Next
	    Glf_152 = GetPlayerState("shot_bonus_light4") = 1
	If Err Then Glf_152 = False
End Function
glf_funcRefMap.Add "calc_bonus4{current_player.shot_bonus_light4 == 1}", "Glf_152"
Function Glf_153(args)
	On Error Resume Next
	    Glf_153 = GetPlayerState("shot_bonus_light4") = 0
	If Err Then Glf_153 = False
End Function
glf_funcRefMap.Add "calc_bonus4{current_player.shot_bonus_light4 == 0}", "Glf_153"
Function Glf_154(args)
	On Error Resume Next
	    Glf_154 = GetPlayerState("shot_bonus_light5") = 1
	If Err Then Glf_154 = False
End Function
glf_funcRefMap.Add "calc_bonus5{current_player.shot_bonus_light5 == 1}", "Glf_154"
Function Glf_155(args)
	On Error Resume Next
	    Glf_155 = GetPlayerState("shot_bonus_light5") = 0
	If Err Then Glf_155 = False
End Function
glf_funcRefMap.Add "calc_bonus5{current_player.shot_bonus_light5 == 0}", "Glf_155"
Function Glf_156(args)
	On Error Resume Next
	    Glf_156 = GetPlayerState("shot_bonus_light6") = 1
	If Err Then Glf_156 = False
End Function
glf_funcRefMap.Add "calc_bonus6{current_player.shot_bonus_light6 == 1}", "Glf_156"
Function Glf_157(args)
	On Error Resume Next
	    Glf_157 = GetPlayerState("shot_bonus_light6") = 0
	If Err Then Glf_157 = False
End Function
glf_funcRefMap.Add "calc_bonus6{current_player.shot_bonus_light6 == 0}", "Glf_157"
Function Glf_158(args)
	On Error Resume Next
	    Glf_158 = GetPlayerState("shot_bonus_light7") = 1
	If Err Then Glf_158 = False
End Function
glf_funcRefMap.Add "calc_bonus7{current_player.shot_bonus_light7 == 1}", "Glf_158"
Function Glf_159(args)
	On Error Resume Next
	    Glf_159 = GetPlayerState("shot_bonus_light7") = 0
	If Err Then Glf_159 = False
End Function
glf_funcRefMap.Add "calc_bonus7{current_player.shot_bonus_light7 == 0}", "Glf_159"
Function Glf_160(args)
	On Error Resume Next
	    Glf_160 = GetPlayerState("shot_bonus_light8") = 1
	If Err Then Glf_160 = False
End Function
glf_funcRefMap.Add "calc_bonus8{current_player.shot_bonus_light8 == 1}", "Glf_160"
Function Glf_161(args)
	On Error Resume Next
	    Glf_161 = GetPlayerState("shot_bonus_light8") = 0
	If Err Then Glf_161 = False
End Function
glf_funcRefMap.Add "calc_bonus8{current_player.shot_bonus_light8 == 0}", "Glf_161"
Function Glf_162(args)
	On Error Resume Next
	    Glf_162 = GetPlayerState("shot_bonus_light1") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_162 = False
End Function
glf_funcRefMap.Add "play_bonus_show1{current_player.shot_bonus_light1 == 1 && current_player.bonus_skip == 0}", "Glf_162"
Function Glf_163(args)
	On Error Resume Next
	    Glf_163 = GetPlayerState("shot_bonus_light2") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_163 = False
End Function
glf_funcRefMap.Add "play_bonus_show2{current_player.shot_bonus_light2 == 1 && current_player.bonus_skip == 0}", "Glf_163"
Function Glf_164(args)
	On Error Resume Next
	    Glf_164 = GetPlayerState("shot_bonus_light3") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_164 = False
End Function
glf_funcRefMap.Add "play_bonus_show3{current_player.shot_bonus_light3 == 1 && current_player.bonus_skip == 0}", "Glf_164"
Function Glf_165(args)
	On Error Resume Next
	    Glf_165 = GetPlayerState("shot_bonus_light4") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_165 = False
End Function
glf_funcRefMap.Add "play_bonus_show4{current_player.shot_bonus_light4 == 1 && current_player.bonus_skip == 0}", "Glf_165"
Function Glf_166(args)
	On Error Resume Next
	    Glf_166 = GetPlayerState("shot_bonus_light5") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_166 = False
End Function
glf_funcRefMap.Add "play_bonus_show5{current_player.shot_bonus_light5 == 1 && current_player.bonus_skip == 0}", "Glf_166"
Function Glf_167(args)
	On Error Resume Next
	    Glf_167 = GetPlayerState("shot_bonus_light6") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_167 = False
End Function
glf_funcRefMap.Add "play_bonus_show6{current_player.shot_bonus_light6 == 1 && current_player.bonus_skip == 0}", "Glf_167"
Function Glf_168(args)
	On Error Resume Next
	    Glf_168 = GetPlayerState("shot_bonus_light7") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_168 = False
End Function
glf_funcRefMap.Add "play_bonus_show7{current_player.shot_bonus_light7 == 1 && current_player.bonus_skip == 0}", "Glf_168"
Function Glf_169(args)
	On Error Resume Next
	    Glf_169 = GetPlayerState("shot_bonus_light8") = 1 And GetPlayerState("bonus_skip") = 0
	If Err Then Glf_169 = False
End Function
glf_funcRefMap.Add "play_bonus_show8{current_player.shot_bonus_light8 == 1 && current_player.bonus_skip == 0}", "Glf_169"
Function Glf_170(args)
	Glf_170 = 500000 * GetPlayerState("bonus_multiplier")
End Function
glf_funcRefMap.Add "500000 * current_player.bonus_multiplier", "Glf_170"
Function Glf_171(args)
	Glf_171 = GetPlayerState("bonus_total")
End Function
glf_funcRefMap.Add "current_player.bonus_total", "Glf_171"
Function Glf_172(args)
	Glf_172 = GetPlayerState("bonus_count") + 2
End Function
glf_funcRefMap.Add "current_player.bonus_count + 2", "Glf_172"
Function Glf_173(args)
	Glf_173 = "BONUS"
End Function
glf_funcRefMap.Add """BONUS""", "Glf_173"
Function Glf_174(args)
	Glf_174 = "00"
End Function
glf_funcRefMap.Add """00""", "Glf_174"
Function Glf_175(args)
	Glf_175 = 1000000 * GetPlayerState("bonus_multiplier")
End Function
glf_funcRefMap.Add "1000000 * current_player.bonus_multiplier", "Glf_175"
Function Glf_176(args)
	Glf_176 = 1500000 * GetPlayerState("bonus_multiplier")
End Function
glf_funcRefMap.Add "1500000 * current_player.bonus_multiplier", "Glf_176"
Function Glf_177(args)
	Glf_177 = 2000000 * GetPlayerState("bonus_multiplier")
End Function
glf_funcRefMap.Add "2000000 * current_player.bonus_multiplier", "Glf_177"
Function Glf_178(args)
	Glf_178 = 2500000 * GetPlayerState("bonus_multiplier")
End Function
glf_funcRefMap.Add "2500000 * current_player.bonus_multiplier", "Glf_178"
Function Glf_179(args)
	Glf_179 = 3000000 * GetPlayerState("bonus_multiplier")
End Function
glf_funcRefMap.Add "3000000 * current_player.bonus_multiplier", "Glf_179"
Function Glf_180(args)
	Glf_180 = 3500000 * GetPlayerState("bonus_multiplier")
End Function
glf_funcRefMap.Add "3500000 * current_player.bonus_multiplier", "Glf_180"
Function Glf_181(args)
	Glf_181 = 4000000 * GetPlayerState("bonus_multiplier")
End Function
glf_funcRefMap.Add "4000000 * current_player.bonus_multiplier", "Glf_181"
Function Glf_182(args)
	On Error Resume Next
	    Glf_182 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_182 = False
End Function
glf_funcRefMap.Add "s_right_magna_key_active{current_player.hs_input_ready == 1}", "Glf_182"
Function Glf_183(args)
	On Error Resume Next
	    Glf_183 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_183 = False
End Function
glf_funcRefMap.Add "s_plunger_key_active{current_player.hs_input_ready == 1}", "Glf_183"
Function Glf_184(args)
	On Error Resume Next
	    Glf_184 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_184 = False
End Function
glf_funcRefMap.Add "s_lockbar_key_active{current_player.hs_input_ready == 1}", "Glf_184"
Function Glf_185(args)
	On Error Resume Next
	    Glf_185 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_185 = False
End Function
glf_funcRefMap.Add "s_start_active{current_player.hs_input_ready == 1}", "Glf_185"
Function Glf_186(args)
	On Error Resume Next
	    Glf_186 = glf_machine_vars("high_score_initials_chars").GetValue() = 3
	If Err Then Glf_186 = False
End Function
glf_funcRefMap.Add "text_inputted.1{machine.high_score_initials_chars == 3}", "Glf_186"
Function Glf_189(args)
	On Error Resume Next
	    Glf_189 = glf_machine_vars("high_score_initials_chars").GetValue() < 3
	If Err Then Glf_189 = False
End Function
glf_funcRefMap.Add "text_inputted{machine.high_score_initials_chars < 3}", "Glf_189"
Function Glf_190(args)
	On Error Resume Next
	    Glf_190 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_190 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.2{current_player.hs_input_ready == 1}", "Glf_190"
Function Glf_191(args)
	On Error Resume Next
	    Glf_191 = GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_191 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.2{current_player.hs_input_ready == 1}", "Glf_191"
Function Glf_192(args)
	On Error Resume Next
	    Glf_192 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 0
	If Err Then Glf_192 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 0}", "Glf_192"
Function Glf_193(args)
	Glf_193 = glf_machine_vars("high_score_initials").GetValue() & "A"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""A""", "Glf_193"
Function Glf_194(args)
	On Error Resume Next
	    Glf_194 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 1
	If Err Then Glf_194 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 1}", "Glf_194"
Function Glf_195(args)
	Glf_195 = glf_machine_vars("high_score_initials").GetValue() & "B"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""B""", "Glf_195"
Function Glf_196(args)
	On Error Resume Next
	    Glf_196 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 2
	If Err Then Glf_196 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 2}", "Glf_196"
Function Glf_197(args)
	Glf_197 = glf_machine_vars("high_score_initials").GetValue() & "C"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""C""", "Glf_197"
Function Glf_198(args)
	On Error Resume Next
	    Glf_198 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 3
	If Err Then Glf_198 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 3}", "Glf_198"
Function Glf_199(args)
	Glf_199 = glf_machine_vars("high_score_initials").GetValue() & "D"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""D""", "Glf_199"
Function Glf_200(args)
	On Error Resume Next
	    Glf_200 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 4
	If Err Then Glf_200 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 4}", "Glf_200"
Function Glf_201(args)
	Glf_201 = glf_machine_vars("high_score_initials").GetValue() & "E"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""E""", "Glf_201"
Function Glf_202(args)
	On Error Resume Next
	    Glf_202 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 5
	If Err Then Glf_202 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 5}", "Glf_202"
Function Glf_203(args)
	Glf_203 = glf_machine_vars("high_score_initials").GetValue() & "F"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""F""", "Glf_203"
Function Glf_204(args)
	On Error Resume Next
	    Glf_204 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 6
	If Err Then Glf_204 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 6}", "Glf_204"
Function Glf_205(args)
	Glf_205 = glf_machine_vars("high_score_initials").GetValue() & "G"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""G""", "Glf_205"
Function Glf_206(args)
	On Error Resume Next
	    Glf_206 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 7
	If Err Then Glf_206 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 7}", "Glf_206"
Function Glf_207(args)
	Glf_207 = glf_machine_vars("high_score_initials").GetValue() & "H"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""H""", "Glf_207"
Function Glf_208(args)
	On Error Resume Next
	    Glf_208 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 8
	If Err Then Glf_208 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 8}", "Glf_208"
Function Glf_209(args)
	Glf_209 = glf_machine_vars("high_score_initials").GetValue() & "I"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""I""", "Glf_209"
Function Glf_210(args)
	On Error Resume Next
	    Glf_210 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 9
	If Err Then Glf_210 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 9}", "Glf_210"
Function Glf_211(args)
	Glf_211 = glf_machine_vars("high_score_initials").GetValue() & "J"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""J""", "Glf_211"
Function Glf_212(args)
	On Error Resume Next
	    Glf_212 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 10
	If Err Then Glf_212 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 10}", "Glf_212"
Function Glf_213(args)
	Glf_213 = glf_machine_vars("high_score_initials").GetValue() & "K"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""K""", "Glf_213"
Function Glf_214(args)
	On Error Resume Next
	    Glf_214 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 11
	If Err Then Glf_214 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 11}", "Glf_214"
Function Glf_215(args)
	Glf_215 = glf_machine_vars("high_score_initials").GetValue() & "L"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""L""", "Glf_215"
Function Glf_216(args)
	On Error Resume Next
	    Glf_216 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 12
	If Err Then Glf_216 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 12}", "Glf_216"
Function Glf_217(args)
	Glf_217 = glf_machine_vars("high_score_initials").GetValue() & "M"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""M""", "Glf_217"
Function Glf_218(args)
	On Error Resume Next
	    Glf_218 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 13
	If Err Then Glf_218 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 13}", "Glf_218"
Function Glf_219(args)
	Glf_219 = glf_machine_vars("high_score_initials").GetValue() & "N"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""N""", "Glf_219"
Function Glf_220(args)
	On Error Resume Next
	    Glf_220 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 14
	If Err Then Glf_220 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 14}", "Glf_220"
Function Glf_221(args)
	Glf_221 = glf_machine_vars("high_score_initials").GetValue() & "O"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""O""", "Glf_221"
Function Glf_222(args)
	On Error Resume Next
	    Glf_222 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 15
	If Err Then Glf_222 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 15}", "Glf_222"
Function Glf_223(args)
	Glf_223 = glf_machine_vars("high_score_initials").GetValue() & "P"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""P""", "Glf_223"
Function Glf_224(args)
	On Error Resume Next
	    Glf_224 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 16
	If Err Then Glf_224 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 16}", "Glf_224"
Function Glf_225(args)
	Glf_225 = glf_machine_vars("high_score_initials").GetValue() & "Q"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""Q""", "Glf_225"
Function Glf_226(args)
	On Error Resume Next
	    Glf_226 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 17
	If Err Then Glf_226 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 17}", "Glf_226"
Function Glf_227(args)
	Glf_227 = glf_machine_vars("high_score_initials").GetValue() & "R"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""R""", "Glf_227"
Function Glf_228(args)
	On Error Resume Next
	    Glf_228 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 18
	If Err Then Glf_228 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 18}", "Glf_228"
Function Glf_229(args)
	Glf_229 = glf_machine_vars("high_score_initials").GetValue() & "S"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""S""", "Glf_229"
Function Glf_230(args)
	On Error Resume Next
	    Glf_230 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 19
	If Err Then Glf_230 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 19}", "Glf_230"
Function Glf_231(args)
	Glf_231 = glf_machine_vars("high_score_initials").GetValue() & "T"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""T""", "Glf_231"
Function Glf_232(args)
	On Error Resume Next
	    Glf_232 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 20
	If Err Then Glf_232 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 20}", "Glf_232"
Function Glf_233(args)
	Glf_233 = glf_machine_vars("high_score_initials").GetValue() & "U"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""U""", "Glf_233"
Function Glf_234(args)
	On Error Resume Next
	    Glf_234 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 21
	If Err Then Glf_234 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 21}", "Glf_234"
Function Glf_235(args)
	Glf_235 = glf_machine_vars("high_score_initials").GetValue() & "V"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""V""", "Glf_235"
Function Glf_236(args)
	On Error Resume Next
	    Glf_236 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 22
	If Err Then Glf_236 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 22}", "Glf_236"
Function Glf_237(args)
	Glf_237 = glf_machine_vars("high_score_initials").GetValue() & "W"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""W""", "Glf_237"
Function Glf_238(args)
	On Error Resume Next
	    Glf_238 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 23
	If Err Then Glf_238 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 23}", "Glf_238"
Function Glf_239(args)
	Glf_239 = glf_machine_vars("high_score_initials").GetValue() & "X"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""X""", "Glf_239"
Function Glf_240(args)
	On Error Resume Next
	    Glf_240 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 24
	If Err Then Glf_240 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 24}", "Glf_240"
Function Glf_241(args)
	Glf_241 = glf_machine_vars("high_score_initials").GetValue() & "Y"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""Y""", "Glf_241"
Function Glf_242(args)
	On Error Resume Next
	    Glf_242 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 25
	If Err Then Glf_242 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 25}", "Glf_242"
Function Glf_243(args)
	Glf_243 = glf_machine_vars("high_score_initials").GetValue() & "Z"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""Z""", "Glf_243"
Function Glf_244(args)
	On Error Resume Next
	    Glf_244 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 26
	If Err Then Glf_244 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 26}", "Glf_244"
Function Glf_245(args)
	Glf_245 = glf_machine_vars("high_score_initials").GetValue() & "0"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""0""", "Glf_245"
Function Glf_246(args)
	On Error Resume Next
	    Glf_246 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 27
	If Err Then Glf_246 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 27}", "Glf_246"
Function Glf_247(args)
	Glf_247 = glf_machine_vars("high_score_initials").GetValue() & "1"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""1""", "Glf_247"
Function Glf_248(args)
	On Error Resume Next
	    Glf_248 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 28
	If Err Then Glf_248 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 28}", "Glf_248"
Function Glf_249(args)
	Glf_249 = glf_machine_vars("high_score_initials").GetValue() & "2"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""2""", "Glf_249"
Function Glf_250(args)
	On Error Resume Next
	    Glf_250 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 29
	If Err Then Glf_250 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 29}", "Glf_250"
Function Glf_251(args)
	Glf_251 = glf_machine_vars("high_score_initials").GetValue() & "3"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""3""", "Glf_251"
Function Glf_252(args)
	On Error Resume Next
	    Glf_252 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 30
	If Err Then Glf_252 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 30}", "Glf_252"
Function Glf_253(args)
	Glf_253 = glf_machine_vars("high_score_initials").GetValue() & "4"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""4""", "Glf_253"
Function Glf_254(args)
	On Error Resume Next
	    Glf_254 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 31
	If Err Then Glf_254 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 31}", "Glf_254"
Function Glf_255(args)
	Glf_255 = glf_machine_vars("high_score_initials").GetValue() & "5"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""5""", "Glf_255"
Function Glf_256(args)
	On Error Resume Next
	    Glf_256 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 32
	If Err Then Glf_256 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 32}", "Glf_256"
Function Glf_257(args)
	Glf_257 = glf_machine_vars("high_score_initials").GetValue() & "6"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""6""", "Glf_257"
Function Glf_258(args)
	On Error Resume Next
	    Glf_258 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 33
	If Err Then Glf_258 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 33}", "Glf_258"
Function Glf_259(args)
	Glf_259 = glf_machine_vars("high_score_initials").GetValue() & "7"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""7""", "Glf_259"
Function Glf_260(args)
	On Error Resume Next
	    Glf_260 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 34
	If Err Then Glf_260 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 34}", "Glf_260"
Function Glf_261(args)
	Glf_261 = glf_machine_vars("high_score_initials").GetValue() & "8"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""8""", "Glf_261"
Function Glf_262(args)
	On Error Resume Next
	    Glf_262 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 35
	If Err Then Glf_262 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 35}", "Glf_262"
Function Glf_263(args)
	Glf_263 = glf_machine_vars("high_score_initials").GetValue() & "9"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""9""", "Glf_263"
Function Glf_264(args)
	On Error Resume Next
	    Glf_264 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 36
	If Err Then Glf_264 = False
End Function
glf_funcRefMap.Add "text_inputted.3{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 36}", "Glf_264"
Function Glf_265(args)
	Glf_265 = glf_machine_vars("high_score_initials").GetValue() & "_"
End Function
glf_funcRefMap.Add "machine.high_score_initials & ""_""", "Glf_265"
Function Glf_266(args)
	Glf_266 = 60
End Function
glf_funcRefMap.Add "60", "Glf_266"
Function Glf_267(args)
	Glf_267 = Glf_FormatValue(glf_timers("high_score_timeout").GetValue("ticks"), "0>2")
End Function
glf_funcRefMap.Add "{devices.timers.high_score_timeout.ticks:0>2}", "Glf_267"
Function Glf_268(args)
	On Error Resume Next
	    Glf_268 = glf_dispatch_current_kwargs("player_num")=1
	If Err Then Glf_268 = False
End Function
glf_funcRefMap.Add "high_score_enter_initials{kwargs.player_num==1}", "Glf_268"
Function Glf_269(args)
	Glf_269 = "P1 "
End Function
glf_funcRefMap.Add """P1 """, "Glf_269"
Function Glf_270(args)
	On Error Resume Next
	    Glf_270 = glf_dispatch_current_kwargs("player_num")=2
	If Err Then Glf_270 = False
End Function
glf_funcRefMap.Add "high_score_enter_initials{kwargs.player_num==2}", "Glf_270"
Function Glf_271(args)
	Glf_271 = "P2 "
End Function
glf_funcRefMap.Add """P2 """, "Glf_271"
Function Glf_272(args)
	On Error Resume Next
	    Glf_272 = glf_dispatch_current_kwargs("player_num")=3
	If Err Then Glf_272 = False
End Function
glf_funcRefMap.Add "high_score_enter_initials{kwargs.player_num==3}", "Glf_272"
Function Glf_273(args)
	Glf_273 = "P3 "
End Function
glf_funcRefMap.Add """P3 """, "Glf_273"
Function Glf_274(args)
	On Error Resume Next
	    Glf_274 = glf_dispatch_current_kwargs("player_num")=4
	If Err Then Glf_274 = False
End Function
glf_funcRefMap.Add "high_score_enter_initials{kwargs.player_num==4}", "Glf_274"
Function Glf_275(args)
	Glf_275 = "P4 "
End Function
glf_funcRefMap.Add """P4 """, "Glf_275"
Function Glf_276(args)
	Glf_276 = "INITIALS"
End Function
glf_funcRefMap.Add """INITIALS""", "Glf_276"
Function Glf_277(args)
	Glf_277 = "A"
End Function
glf_funcRefMap.Add """A""", "Glf_277"
Function Glf_278(args)
	On Error Resume Next
	    Glf_278 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 0 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_278 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 0 && current_player.hs_input_ready == 1}", "Glf_278"
Function Glf_279(args)
	On Error Resume Next
	    Glf_279 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 0 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_279 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 0 && current_player.hs_input_ready == 1}", "Glf_279"
Function Glf_280(args)
	On Error Resume Next
	    Glf_280 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 1 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_280 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 1 && current_player.hs_input_ready == 1}", "Glf_280"
Function Glf_281(args)
	On Error Resume Next
	    Glf_281 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 1 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_281 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 1 && current_player.hs_input_ready == 1}", "Glf_281"
Function Glf_282(args)
	On Error Resume Next
	    Glf_282 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 2 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_282 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 2 && current_player.hs_input_ready == 1}", "Glf_282"
Function Glf_283(args)
	On Error Resume Next
	    Glf_283 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 2 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_283 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 2 && current_player.hs_input_ready == 1}", "Glf_283"
Function Glf_284(args)
	On Error Resume Next
	    Glf_284 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 3 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_284 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 3 && current_player.hs_input_ready == 1}", "Glf_284"
Function Glf_285(args)
	On Error Resume Next
	    Glf_285 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 3 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_285 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 3 && current_player.hs_input_ready == 1}", "Glf_285"
Function Glf_286(args)
	On Error Resume Next
	    Glf_286 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 4 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_286 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 4 && current_player.hs_input_ready == 1}", "Glf_286"
Function Glf_287(args)
	On Error Resume Next
	    Glf_287 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 4 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_287 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 4 && current_player.hs_input_ready == 1}", "Glf_287"
Function Glf_288(args)
	On Error Resume Next
	    Glf_288 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 5 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_288 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 5 && current_player.hs_input_ready == 1}", "Glf_288"
Function Glf_289(args)
	On Error Resume Next
	    Glf_289 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 5 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_289 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 5 && current_player.hs_input_ready == 1}", "Glf_289"
Function Glf_290(args)
	On Error Resume Next
	    Glf_290 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 6 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_290 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 6 && current_player.hs_input_ready == 1}", "Glf_290"
Function Glf_291(args)
	On Error Resume Next
	    Glf_291 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 6 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_291 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 6 && current_player.hs_input_ready == 1}", "Glf_291"
Function Glf_292(args)
	On Error Resume Next
	    Glf_292 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 7 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_292 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 7 && current_player.hs_input_ready == 1}", "Glf_292"
Function Glf_293(args)
	On Error Resume Next
	    Glf_293 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 7 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_293 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 7 && current_player.hs_input_ready == 1}", "Glf_293"
Function Glf_294(args)
	On Error Resume Next
	    Glf_294 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 8 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_294 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 8 && current_player.hs_input_ready == 1}", "Glf_294"
Function Glf_295(args)
	On Error Resume Next
	    Glf_295 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 8 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_295 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 8 && current_player.hs_input_ready == 1}", "Glf_295"
Function Glf_296(args)
	On Error Resume Next
	    Glf_296 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 9 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_296 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 9 && current_player.hs_input_ready == 1}", "Glf_296"
Function Glf_297(args)
	On Error Resume Next
	    Glf_297 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 9 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_297 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 9 && current_player.hs_input_ready == 1}", "Glf_297"
Function Glf_298(args)
	On Error Resume Next
	    Glf_298 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 10 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_298 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 10 && current_player.hs_input_ready == 1}", "Glf_298"
Function Glf_299(args)
	On Error Resume Next
	    Glf_299 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 10 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_299 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 10 && current_player.hs_input_ready == 1}", "Glf_299"
Function Glf_300(args)
	On Error Resume Next
	    Glf_300 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 11 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_300 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 11 && current_player.hs_input_ready == 1}", "Glf_300"
Function Glf_301(args)
	On Error Resume Next
	    Glf_301 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 11 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_301 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 11 && current_player.hs_input_ready == 1}", "Glf_301"
Function Glf_302(args)
	On Error Resume Next
	    Glf_302 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 12 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_302 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 12 && current_player.hs_input_ready == 1}", "Glf_302"
Function Glf_303(args)
	On Error Resume Next
	    Glf_303 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 12 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_303 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 12 && current_player.hs_input_ready == 1}", "Glf_303"
Function Glf_304(args)
	On Error Resume Next
	    Glf_304 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 13 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_304 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 13 && current_player.hs_input_ready == 1}", "Glf_304"
Function Glf_305(args)
	On Error Resume Next
	    Glf_305 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 13 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_305 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 13 && current_player.hs_input_ready == 1}", "Glf_305"
Function Glf_306(args)
	On Error Resume Next
	    Glf_306 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 14 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_306 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 14 && current_player.hs_input_ready == 1}", "Glf_306"
Function Glf_307(args)
	On Error Resume Next
	    Glf_307 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 14 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_307 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 14 && current_player.hs_input_ready == 1}", "Glf_307"
Function Glf_308(args)
	On Error Resume Next
	    Glf_308 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 15 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_308 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 15 && current_player.hs_input_ready == 1}", "Glf_308"
Function Glf_309(args)
	On Error Resume Next
	    Glf_309 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 15 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_309 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 15 && current_player.hs_input_ready == 1}", "Glf_309"
Function Glf_310(args)
	On Error Resume Next
	    Glf_310 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 16 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_310 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 16 && current_player.hs_input_ready == 1}", "Glf_310"
Function Glf_311(args)
	On Error Resume Next
	    Glf_311 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 16 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_311 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 16 && current_player.hs_input_ready == 1}", "Glf_311"
Function Glf_312(args)
	On Error Resume Next
	    Glf_312 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 17 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_312 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 17 && current_player.hs_input_ready == 1}", "Glf_312"
Function Glf_313(args)
	On Error Resume Next
	    Glf_313 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 17 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_313 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 17 && current_player.hs_input_ready == 1}", "Glf_313"
Function Glf_314(args)
	On Error Resume Next
	    Glf_314 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 18 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_314 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 18 && current_player.hs_input_ready == 1}", "Glf_314"
Function Glf_315(args)
	On Error Resume Next
	    Glf_315 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 18 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_315 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 18 && current_player.hs_input_ready == 1}", "Glf_315"
Function Glf_316(args)
	On Error Resume Next
	    Glf_316 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 19 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_316 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 19 && current_player.hs_input_ready == 1}", "Glf_316"
Function Glf_317(args)
	On Error Resume Next
	    Glf_317 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 19 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_317 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 19 && current_player.hs_input_ready == 1}", "Glf_317"
Function Glf_318(args)
	On Error Resume Next
	    Glf_318 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 20 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_318 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 20 && current_player.hs_input_ready == 1}", "Glf_318"
Function Glf_319(args)
	On Error Resume Next
	    Glf_319 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 20 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_319 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 20 && current_player.hs_input_ready == 1}", "Glf_319"
Function Glf_320(args)
	On Error Resume Next
	    Glf_320 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 21 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_320 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 21 && current_player.hs_input_ready == 1}", "Glf_320"
Function Glf_321(args)
	On Error Resume Next
	    Glf_321 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 21 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_321 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 21 && current_player.hs_input_ready == 1}", "Glf_321"
Function Glf_322(args)
	On Error Resume Next
	    Glf_322 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 22 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_322 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 22 && current_player.hs_input_ready == 1}", "Glf_322"
Function Glf_323(args)
	On Error Resume Next
	    Glf_323 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 22 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_323 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 22 && current_player.hs_input_ready == 1}", "Glf_323"
Function Glf_324(args)
	On Error Resume Next
	    Glf_324 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 23 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_324 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 23 && current_player.hs_input_ready == 1}", "Glf_324"
Function Glf_325(args)
	On Error Resume Next
	    Glf_325 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 23 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_325 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 23 && current_player.hs_input_ready == 1}", "Glf_325"
Function Glf_326(args)
	On Error Resume Next
	    Glf_326 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 24 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_326 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 24 && current_player.hs_input_ready == 1}", "Glf_326"
Function Glf_327(args)
	On Error Resume Next
	    Glf_327 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 24 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_327 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 24 && current_player.hs_input_ready == 1}", "Glf_327"
Function Glf_328(args)
	On Error Resume Next
	    Glf_328 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 25 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_328 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 25 && current_player.hs_input_ready == 1}", "Glf_328"
Function Glf_329(args)
	On Error Resume Next
	    Glf_329 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 25 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_329 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 25 && current_player.hs_input_ready == 1}", "Glf_329"
Function Glf_330(args)
	On Error Resume Next
	    Glf_330 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 26 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_330 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 26 && current_player.hs_input_ready == 1}", "Glf_330"
Function Glf_331(args)
	On Error Resume Next
	    Glf_331 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 26 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_331 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 26 && current_player.hs_input_ready == 1}", "Glf_331"
Function Glf_332(args)
	On Error Resume Next
	    Glf_332 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 27 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_332 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 27 && current_player.hs_input_ready == 1}", "Glf_332"
Function Glf_333(args)
	On Error Resume Next
	    Glf_333 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 27 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_333 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 27 && current_player.hs_input_ready == 1}", "Glf_333"
Function Glf_334(args)
	On Error Resume Next
	    Glf_334 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 28 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_334 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 28 && current_player.hs_input_ready == 1}", "Glf_334"
Function Glf_335(args)
	On Error Resume Next
	    Glf_335 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 28 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_335 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 28 && current_player.hs_input_ready == 1}", "Glf_335"
Function Glf_336(args)
	On Error Resume Next
	    Glf_336 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 29 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_336 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 29 && current_player.hs_input_ready == 1}", "Glf_336"
Function Glf_337(args)
	On Error Resume Next
	    Glf_337 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 29 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_337 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 29 && current_player.hs_input_ready == 1}", "Glf_337"
Function Glf_338(args)
	On Error Resume Next
	    Glf_338 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 30 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_338 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 30 && current_player.hs_input_ready == 1}", "Glf_338"
Function Glf_339(args)
	On Error Resume Next
	    Glf_339 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 30 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_339 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 30 && current_player.hs_input_ready == 1}", "Glf_339"
Function Glf_340(args)
	On Error Resume Next
	    Glf_340 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 31 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_340 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 31 && current_player.hs_input_ready == 1}", "Glf_340"
Function Glf_341(args)
	On Error Resume Next
	    Glf_341 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 31 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_341 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 31 && current_player.hs_input_ready == 1}", "Glf_341"
Function Glf_342(args)
	On Error Resume Next
	    Glf_342 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 32 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_342 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 32 && current_player.hs_input_ready == 1}", "Glf_342"
Function Glf_343(args)
	On Error Resume Next
	    Glf_343 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 32 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_343 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 32 && current_player.hs_input_ready == 1}", "Glf_343"
Function Glf_344(args)
	On Error Resume Next
	    Glf_344 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 33 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_344 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 33 && current_player.hs_input_ready == 1}", "Glf_344"
Function Glf_345(args)
	On Error Resume Next
	    Glf_345 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 33 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_345 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 33 && current_player.hs_input_ready == 1}", "Glf_345"
Function Glf_346(args)
	On Error Resume Next
	    Glf_346 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 34 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_346 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 34 && current_player.hs_input_ready == 1}", "Glf_346"
Function Glf_347(args)
	On Error Resume Next
	    Glf_347 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 34 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_347 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 34 && current_player.hs_input_ready == 1}", "Glf_347"
Function Glf_348(args)
	On Error Resume Next
	    Glf_348 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 35 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_348 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 35 && current_player.hs_input_ready == 1}", "Glf_348"
Function Glf_349(args)
	On Error Resume Next
	    Glf_349 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 35 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_349 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 35 && current_player.hs_input_ready == 1}", "Glf_349"
Function Glf_350(args)
	On Error Resume Next
	    Glf_350 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 36 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_350 = False
End Function
glf_funcRefMap.Add "s_left_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 36 && current_player.hs_input_ready == 1}", "Glf_350"
Function Glf_351(args)
	On Error Resume Next
	    Glf_351 = (((glf_machine_vars("high_score_initials_index").GetValue() Mod 37) + 37) Mod 37) = 36 And GetPlayerState("hs_input_ready") = 1
	If Err Then Glf_351 = False
End Function
glf_funcRefMap.Add "s_right_flipper_active.1{(((machine.high_score_initials_index Mod 37) + 37) Mod 37) == 36 && current_player.hs_input_ready == 1}", "Glf_351"
Function Glf_352(args)
	On Error Resume Next
	    Glf_352 = glf_machine_vars("high_score_initials_chars").GetValue()<3
	If Err Then Glf_352 = False
End Function
glf_funcRefMap.Add "text_inputted.1{machine.high_score_initials_chars<3}", "Glf_352"
Function Glf_353(args)
	On Error Resume Next
	    Glf_353 = glf_dispatch_current_kwargs("position") = 1
	If Err Then Glf_353 = False
End Function
glf_funcRefMap.Add "high_score_award_display{kwargs.position == 1}", "Glf_353"
Function Glf_354(args)
	Glf_354 = "  GRAND "
End Function
glf_funcRefMap.Add """  GRAND """, "Glf_354"
Function Glf_355(args)
	Glf_355 = "CHAMPION"
End Function
glf_funcRefMap.Add """CHAMPION""", "Glf_355"
Function Glf_356(args)
	Glf_356 = "     " & glf_machine_vars("high_score_initials").GetValue()
End Function
glf_funcRefMap.Add """     "" & machine.high_score_initials", "Glf_356"
Function Glf_357(args)
	On Error Resume Next
	    Glf_357 = glf_dispatch_current_kwargs("position") = 2
	If Err Then Glf_357 = False
End Function
glf_funcRefMap.Add "high_score_award_display{kwargs.position == 2}", "Glf_357"
Function Glf_358(args)
	Glf_358 = "   HIGH "
End Function
glf_funcRefMap.Add """   HIGH """, "Glf_358"
Function Glf_359(args)
	Glf_359 = "SCORE 1 "
End Function
glf_funcRefMap.Add """SCORE 1 """, "Glf_359"
Function Glf_360(args)
	On Error Resume Next
	    Glf_360 = glf_dispatch_current_kwargs("position") = 3
	If Err Then Glf_360 = False
End Function
glf_funcRefMap.Add "high_score_award_display{kwargs.position == 3}", "Glf_360"
Function Glf_361(args)
	Glf_361 = "SCORE 2 "
End Function
glf_funcRefMap.Add """SCORE 2 """, "Glf_361"
Function Glf_362(args)
	On Error Resume Next
	    Glf_362 = glf_dispatch_current_kwargs("position") = 4
	If Err Then Glf_362 = False
End Function
glf_funcRefMap.Add "high_score_award_display{kwargs.position == 4}", "Glf_362"
Function Glf_363(args)
	Glf_363 = "SCORE 3 "
End Function
glf_funcRefMap.Add """SCORE 3 """, "Glf_363"
Function Glf_364(args)
	Glf_364 = 4000
End Function
glf_funcRefMap.Add "4000", "Glf_364"
Function Glf_365(args)
	Glf_365 = 20000
End Function
glf_funcRefMap.Add "20000", "Glf_365"
Function Glf_366(args)
	Glf_366 = 1000
End Function
glf_funcRefMap.Add "1000", "Glf_366"
Function Glf_367(args)
	Glf_367 = 250
End Function
glf_funcRefMap.Add "250", "Glf_367"
Function Glf_368(args)
	Glf_368 = 50
End Function
glf_funcRefMap.Add "50", "Glf_368"
Function Glf_369(args)
	Glf_369 = 1500
End Function
glf_funcRefMap.Add "1500", "Glf_369"
Function Glf_370(args)
	Glf_370 = 100
End Function
glf_funcRefMap.Add "100", "Glf_370"
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
Dim glf_FL2_lmarr : glf_FL2_lmarr = Array(f_fl2_,p_fl2_)
glf_lightMaps.Add "FL2", glf_FL2_lmarr
Dim glf_FL3_lmarr : glf_FL3_lmarr = Array(f_fl3_,p_fl3_)
glf_lightMaps.Add "FL3", glf_FL3_lmarr
Dim glf_FL1_lmarr : glf_FL1_lmarr = Array(f_fl1_,p_fl1_)
glf_lightMaps.Add "FL1", glf_FL1_lmarr
Dim glf_FL4_lmarr : glf_FL4_lmarr = Array(f_fl4_,p_fl4_)
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

