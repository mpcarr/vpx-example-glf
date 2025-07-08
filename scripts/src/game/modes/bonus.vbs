

' Bonus Mode
'
'  - Calculate the bonus based on the number of bonus lights lit during last ball. Add to player's score.
'  - Play a little light show on the bonus inserts and segment display to show bonus tally
'  - Allow the player to skip the show (with double flipper press), and briefly show the total bonus


Sub CreateBonusMode()
    Dim x

    With CreateGlfMode("bonus", 150)
        .StartEvents = Array("ball_ending{game.tilted == False}")
        .StopEvents = Array("bonus_finished")
        .UseWaitQueue = True

        With .EventPlayer()

            'Start bonus tally process
            .Add "mode_bonus_started", Array("run_bonus_started")
            .Add "run_bonus_started", Array("calc_bonus1","play_bonus_show1")

            'Calculate bonus total right away. Also calculates total bonus count to set delay timer.
            .Add "calc_bonus1{current_player.shot_bonus_light1 == 1}", Array("add_bonus_value","calc_bonus2")
            .Add "calc_bonus1{current_player.shot_bonus_light1 == 0}", Array("score_bonus_total")
            .Add "calc_bonus2{current_player.shot_bonus_light2 == 1}", Array("add_bonus_value","calc_bonus3")
            .Add "calc_bonus2{current_player.shot_bonus_light2 == 0}", Array("score_bonus_total")
            .Add "calc_bonus3{current_player.shot_bonus_light3 == 1}", Array("add_bonus_value","calc_bonus4")
            .Add "calc_bonus3{current_player.shot_bonus_light3 == 0}", Array("score_bonus_total")
            .Add "calc_bonus4{current_player.shot_bonus_light4 == 1}", Array("add_bonus_value","calc_bonus5")
            .Add "calc_bonus4{current_player.shot_bonus_light4 == 0}", Array("score_bonus_total")
            .Add "calc_bonus5{current_player.shot_bonus_light5 == 1}", Array("add_bonus_value","calc_bonus6")
            .Add "calc_bonus5{current_player.shot_bonus_light5 == 0}", Array("score_bonus_total")
            .Add "calc_bonus6{current_player.shot_bonus_light6 == 1}", Array("add_bonus_value","calc_bonus7")
            .Add "calc_bonus6{current_player.shot_bonus_light6 == 0}", Array("score_bonus_total")
            .Add "calc_bonus7{current_player.shot_bonus_light7 == 1}", Array("add_bonus_value","calc_bonus8")
            .Add "calc_bonus7{current_player.shot_bonus_light7 == 0}", Array("score_bonus_total")
            .Add "calc_bonus8{current_player.shot_bonus_light8 == 1}", Array("add_bonus_value","score_bonus_total")
            .Add "calc_bonus8{current_player.shot_bonus_light8 == 0}", Array("score_bonus_total")

            .Add "score_bonus_total", Array("start_bonus_delay")

            'Play bonus show. Skip if/when commanded to skip
            .Add "play_bonus_show1{current_player.shot_bonus_light1 == 1 && current_player.bonus_skip == 0}", Array("bonus_light1_show","play_sfx_bonus_tally")
            .Add "play_bonus_show2{current_player.shot_bonus_light2 == 1 && current_player.bonus_skip == 0}", Array("bonus_light2_show","play_sfx_bonus_tally")
            .Add "play_bonus_show3{current_player.shot_bonus_light3 == 1 && current_player.bonus_skip == 0}", Array("bonus_light3_show","play_sfx_bonus_tally")
            .Add "play_bonus_show4{current_player.shot_bonus_light4 == 1 && current_player.bonus_skip == 0}", Array("bonus_light4_show","play_sfx_bonus_tally")
            .Add "play_bonus_show5{current_player.shot_bonus_light5 == 1 && current_player.bonus_skip == 0}", Array("bonus_light5_show","play_sfx_bonus_tally")
            .Add "play_bonus_show6{current_player.shot_bonus_light6 == 1 && current_player.bonus_skip == 0}", Array("bonus_light6_show","play_sfx_bonus_tally")
            .Add "play_bonus_show7{current_player.shot_bonus_light7 == 1 && current_player.bonus_skip == 0}", Array("bonus_light7_show","play_sfx_bonus_tally")
            .Add "play_bonus_show8{current_player.shot_bonus_light8 == 1 && current_player.bonus_skip == 0}", Array("bonus_light8_show","play_sfx_bonus_tally")

            'finish up bonus mode
            .Add "timer_bonus_skip_complete", Array("bonus_finished")
            .Add "timer_bonus_complete", Array("bonus_finished")
            
        End With


        'Skip the bonus tally animations
        With .ComboSwitches("bonus_skip")
            .Switch1 = "s_left_flipper"
            .Switch2 = "s_right_flipper"
            .EventsWhenBoth = Array("skip_bonus_tally")
            '.HoldTime = 200
        End With


        'The variable player will update machine and player varibles
        With .VariablePlayer()

            With .EventName("run_bonus_started")
                'Intiialize the calcuated bonus_total to zero
				With .Variable("bonus_total")
                    .Action = "set"
					.Int = 0
				End With
                'Intiialize the calcuated bonus_count to zero
				With .Variable("bonus_count")
                    .Action = "set"
					.Int = 0
				End With
                'Intiialize the bonus_skip to zero
				With .Variable("bonus_skip")
                    .Action = "set"
					.Int = 0
				End With
            End With

            With .EventName("add_bonus_value")
                'Add to the running bonus_total
				With .Variable("bonus_total")
                    .Action = "add"
					.Int = BonusValue & " * current_player.bonus_multiplier"
				End With
                'Add to the running bonus_count
                With .Variable("bonus_count")
                    .Action = "add"
					.Int = 1
				End With
            End With

            With .EventName("skip_bonus_tally")
                'Skip the bonus tally
				With .Variable("bonus_skip")
                    .Action = "set"
					.Int = 1
				End With
            End With

            'add the total bonus to player's score
            With .EventName("score_bonus_total")
				With .Variable("score")
                    .Action = "add"
					.Int = "current_player.bonus_total"
				End With
			End With

        End With


        'This timer is setup to last the whole length of the bonus tally show. Once it is done, the bonus mode is finished.
        'Stop this timer if bonus tally is skipped
        With .Timers("bonus")
            .TickInterval = 1000
            .StartValue = 0
            .EndValue = "current_player.bonus_count + 2"
            With .ControlEvents()
                .EventName = "start_bonus_delay"
                .Action = "restart"
            End With
            With .ControlEvents()
                .EventName = "skip_bonus_tally"
                .Action = "stop"
            End With
        End With

        'This timer is setup to proive a short delay after the bonus skip has been commanded. Once it is done, the bonus mode is finished.
        'Note, the normal bonus timer may end the bonus mode before this timer completes.
        With .Timers("bonus_skip")
            .TickInterval = 1200
            .StartValue = 0
            .EndValue = 1
            With .ControlEvents()
                .EventName = "skip_bonus_tally"
                .Action = "restart"
            End With
        End With


        'The show player will play pre-defined shows
        With .ShowPlayer()

            'Play a GI light show at the beginning of the bonus mode
            ' With .EventName("run_bonus_started")
            '     .Key = "key_bonus_show"
            '     .Show = "gi_bonus_show"
            '     .Speed = 1
            '     With .Tokens()
            '         .Add "intensity", 100
            '     End With
            ' End With

            'Play a little light show on each lit bonus light
            For x = 1 to 8
                With .EventName("bonus_light"&x&"_show")
                    .Key = "key_bonus_light"&x&"_show"
                    .Show = "flash_color"
                    .Speed = 20
                    .Loops = 10
                    .Priority = 2000
                    If x < 8 Then
                        'When the show ends, move to the next one
                        .EventsWhenCompleted = Array("play_bonus_show"&(x+1))
                    End If
                    With .Tokens()
                        .Add "lights", BonusLightNames(x-1)
                        .Add "color", "ffffff"
                    End With
                End With
            Next

        End With


        'Play bonus score tally sound effects
        ' With .SoundPlayer()
        '     With .EventName("play_sfx_bonus_tally")
        '         .Key = "key_sfx_tally"
        '         .Sound = "sfx_bonus_tally_alt"
        '     End With
        '      With .EventName("stop_sfx_bonus_tally")
        '         .Key = "key_sfx_tally"
        '         .Sound = "sfx_bonus_tally_alt"
        '         .Action = "stop"
        '     End With
        ' End With


     
        With .SegmentDisplayPlayer()

            'Initialize the bonis score tally animation
            With .EventName("run_bonus_started")
                With .Display("player1")
                    .Text = """"""
                End With
                With .Display("player2")
                    .Text = """BONUS"""
                End With
                With .Display("player3")
                    .Text = """"""
                End With
                With .Display("player4")
                    .Text = """00"""
                End With
            End With

            'Animate the bonus score tally
            For x = 1 to 8
                With .EventName("bonus_light"&x&"_show")
                    With .Display("player4")
                        .Priority = 2000 + x
                        .Text = (BonusValue * x) & " * current_player.bonus_multiplier"
                        .Flashing = "all"
                    End With
                End With
            Next

            'Show the total bonus if animation skipped
            With .EventName("skip_bonus_tally")
                With .Display("player4")
                    .Text = "current_player.bonus_total"
                    .Priority = 3000
                    .Flashing = "all"
                End With
            End With

        End With


    End With

End Sub

