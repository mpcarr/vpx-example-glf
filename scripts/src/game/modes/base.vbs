

' Base Mode
'
' The base mode runs always when ball is in play, so it can handle events that are independent from
' other modes of play.
'
' This base mode handles the following:
'   - ball save at the start of a new ball
'   - canceling the current game
'   - detects main sequence shots and generates their events
'   - player score segment displays
'   - some light shows
'   - some minor scoring
'   - some sound effects and music



Sub CreateBaseMode()

    With CreateGlfMode("base", 110)

        'Define the events that start and stop this mode
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended","mode_bonus_started","tilt")


        'The event player will respond to events during this mode
        With .EventPlayer()

            'handle start of mode (new ball)
            .Add "mode_base_started", Array("new_ball_started","stop_attract_mode","backglass_on","play_mus_ambient_loop")
            .Add "s_Plunger1_inactive{current_player.ball_just_started == 1}", Array("new_ball_active")

            'handle mode stopping
            .Add "mode_base_stopping", Array("stop_mus_ambient_loop","backglass_off")

            'Events for flashing active player's score at start of mode
            .Add "mode_base_started{current_player.number == 1}", Array("flash_player1_score")  
            .Add "mode_base_started{current_player.number == 2}", Array("flash_player2_score")
            .Add "mode_base_started{current_player.number == 3}", Array("flash_player3_score")
            .Add "mode_base_started{current_player.number == 4}", Array("flash_player4_score")
            .Add "s_Plunger1_inactive", Array("stop_flash_player1_score","stop_flash_player2_score","stop_flash_player3_score","stop_flash_player4_score")

            'Magnet
            .Add "s_ST4_active", Array("magnet_activated","play_sfx_mag_cap")

            'Bumpers
            .Add "s_Bumper1_active", Array("backglass_flash1","play_bumper1_show","score_5000")
            .Add "s_Bumper2_active", Array("backglass_flash2","play_bumper2_show","score_5000")
            .Add "s_Bumper3_active", Array("play_bumper3_show","score_5000")

            'Slingshots
            .Add "s_LeftSlingshot_active", Array("backglass_flash3","score_5000")
            .Add "s_RightSlingshot_active", Array("backglass_flash4","score_5000")

        End With

        'Start the base mode slide on the lcd
        With .SlidePlayer()
            With .EventName("mode_base_started")
                .Slide = "base"
                .Action = "play"
            End With
        End With

        'Start a ball save at beginning of new ball. Only save one ball.
        With .BallSaves("new_ball")
            .ActiveTime = 6000
            .HurryUpTime = 3000
            .GracePeriod = 2000
            .BallsToSave = 1
            .AutoLaunch = True
            .EnableEvents = Array("new_ball_active")
        End With

        With .WidgetPlayer()
            With .EventName("ball_save_new_ball_saving_ball")
                .Widget = "ball_save"
                .Action = "play"
                .Expire = 2
            End With
        End With

        'Shot created for the ball save light. 
        With .Shots("base_shoot_again")
            .Profile = "shoot_again"  'This is a shared shot profile created in CreateSharedShotProfiles()
            With .Tokens()
                .Add "color", ShootAgainColor
            End With
            With .ControlEvents()
                .Events = Array("ball_save_new_ball_enabled")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("ball_save_new_ball_hurry_up")
                .State = 2
            End With
            .RestartEvents = Array("ball_save_new_ball_grace_period","ball_save_new_ball_saving_ball")
        End With



        'Cancel the game when holding down the start button for a couple seconds
        With .TimedSwitches("cancel_game")
            .Switches = Array("s_start")
            .Time = 2000
            .EventsWhenActive = Array("glf_game_cancel")
        End With


        'The main shots sequences
        With .SequenceShots("left_orbit")
            .SwitchSequence = Array("s_LeftOrb1", "s_LeftOrb2")
            .SequenceTimeout = 500
        End With

        With .SequenceShots("right_orbit")
            .SwitchSequence = Array("s_RightOrb1", "s_RightOrb2")
            .SequenceTimeout = 500
        End With


        'The light player sets light color
        With .LightPlayer()
            'Turn on GI lights at start of mode
            With .EventName("mode_base_started")
                With .Lights("GI")
                    .Color = GIColor3000k
                    .Fade = 300
                End With
            End With
        End With


        'The show player will play pre-defined shows
        With .ShowPlayer()
            With .EventName("magnet_activated")
                .Key = "key_magnet_show"
                .Show = "magnet_show" 
                .Speed = 1
                .Loops = 1
                .Priority = 1000
                '.EventsWhenCompleted = Array("mag_show_complete")
            End With

            With .EventName("play_bumper1_show")
                .Key = "key_bumper1_show"
                .Show = "flash_color_with_fade" 
                .Speed = 15
                .Loops = 1
                With .Tokens()
                    .Add "lights", "tBL1"
                    .Add "fade", 500
                    .Add "color", Bumper1Color
                End With
            End With
            With .EventName("play_bumper2_show")
                .Key = "key_bumper2_show"
                .Show = "flash_color_with_fade" 
                .Speed = 15
                .Loops = 1
                With .Tokens()
                    .Add "lights", "tBL2"
                    .Add "fade", 500
                    .Add "color", Bumper2Color
                End With
            End With
            With .EventName("play_bumper3_show")
                .Key = "key_bumper3_show"
                .Show = "flash_color_with_fade" 
                .Speed = 15
                .Loops = 1
                With .Tokens()
                    .Add "lights", "tBL3"
                    .Add "fade", 500
                    .Add "color", Bumper3Color
                End With
            End With
        End With


        'The segement display player sets the segement displays
        With .SegmentDisplayPlayer()

            With .EventName("mode_base_started")
                'Show the players score on segment displays at start of mode
                With .Display("player1")
                    .Text = "{players[0].score:0>2,}"
                End With
                With .Display("player2")
                    .Text = "{players[1].score:0>2,}"
                End With
                With .Display("player3")
                    .Text = "{players[2].score:0>2,}"
                End With
                With .Display("player4")
                    .Text = "{players[3].score:0>2,}"
                End With
                'Set up the current ball number display
                With .Display("ball")
                    .Text = "{current_player.ball:0>2}"
                End With
            End With

            'If a new player is added, display their score
            With .EventName("player_added{kwargs.num==2}")
                With .Display("player2")
                    .Text = "{players[1].score:0>2,}"
                End With
            End With
            With .EventName("player_added{kwargs.num==3}")
                With .Display("player3")
                    .Text = "{players[2].score:0>2,}"
                End With
            End With
            With .EventName("player_added{kwargs.num==4}")
                With .Display("player4")
                    .Text = "{players[3].score:0>2,}"
                End With
            End With

            'Flash (or stop flashing) a player's score
            With .EventName("flash_player1_score")
                With .Display("player1")
                    .key = "p1_score_flash"
                    .Text = "{players[0].score:0>2}"
                    .Flashing = "all"
                    .Priority = 100
                End With
            End With
            With .EventName("stop_flash_player1_score")
                With .Display("player1")
                    .key = "p1_score_flash"
                    .Action = "remove"
                End With
            End With
            With .EventName("flash_player2_score")
                With .Display("player2")
                    .key = "p2_score_flash"
                    .Text = "{players[1].score:0>2}"
                    .Flashing = "all"
                    .Priority = 100
                End With
            End With
            With .EventName("stop_flash_player2_score")
                With .Display("player2")
                    .key = "p2_score_flash"
                    .Action = "remove"
                End With
            End With
            With .EventName("flash_player3_score")
                With .Display("player3")
                    .key = "p3_score_flash"
                    .Text = "{players[2].score:0>2}"
                    .Flashing = "all"
                    .Priority = 100
                End With
            End With
            With .EventName("stop_flash_player3_score")
                With .Display("player3")
                    .key = "p3_score_flash"
                    .Action = "remove"
                End With
            End With
            With .EventName("flash_player4_score")
                With .Display("player4")
                    .key = "p4_score_flash"
                    .Text = "{players[3].score:0>2}"
                    .Flashing = "all"
                    .Priority = 100
                End With
            End With
            With .EventName("stop_flash_player4_score")
                With .Display("player4")
                    .key = "p4_score_flash"
                    .Action = "remove"
                End With
            End With

        End With


        'The variable player will update machine and player varibles
        With .VariablePlayer()

            ' ball_just_started
            '   1 only at the start of a new ball
            '   0 after the ball leaves plunger switch for first time
		    With .EventName("mode_base_started")
				With .Variable("ball_just_started")
                    .Action = "set"
					.Int = 1
				End With
			End With
            With .EventName("new_ball_active")
				With .Variable("ball_just_started")
                    .Action = "set"
					.Int = 0
				End With
			End With

		End With


        ' Plays sounds during this mode
        With .SoundPlayer()

            'Music

            With .EventName("play_mus_ambient_loop")
                .Key = "key_mus_ambient_loop"
                .Sound = "mus_ambient_loop"
            End With
            With .EventName("stop_mus_ambient_loop")
                .Key = "key_mus_ambient_loop"
                .Sound = "mus_ambient_loop"
                .Action = "stop"
            End With

            With .EventName("play_mus_multiball_loop")
                .Key = "key_mus_multiball_loop"
                .Sound = "mus_multiball_loop"
            End With
            With .EventName("stop_mus_multiball_loop")
                .Key = "key_mus_multiball_loop"
                .Sound = "mus_multiball_loop"
                .Action = "stop"
            End With


            'Sound Effects

            With .EventName("play_sfx_mag_cap")
                .Key = "key_sfx_mag_cap"
                .Sound = "sfx_mag_cap"
            End With


            'Callouts

            With .EventName("play_voc_extra_ball")
                .Key = "key_voc_extra_ball"
                .Sound = "voc_extra_ball"
            End With

            With .EventName("play_voc_extra_ball_is_ready")
                .Key = "key_voc_extra_ball_is_ready"
                .Sound = "voc_extra_ball_is_ready"
            End With

            With .EventName("play_voc_jackpot2")
                .Key = "key_voc_jackpot1"
                .Sound = "voc_jackpot1"
            End With

            With .EventName("play_voc_jackpot1")
                .Key = "key_voc_jackpot2"
                .Sound = "voc_jackpot1"
            End With

            With .EventName("play_voc_kickback_ready")
                .Key = "key_voc_kickback_ready"
                .Sound = "voc_kickback_ready"
            End With

            With .EventName("play_voc_lock_is_lit")
                .Key = "key_voc_lock_is_lit"
                .Sound = "voc_lock_is_lit"
            End With

            With .EventName("play_voc_multiball_ready")
                .Key = "key_voc_multiball_ready"
                .Sound = "voc_multiball_ready"
            End With

            With .EventName("play_voc_skill_shot")
                .Key = "key_voc_skill_shot"
                .Sound = "voc_skill_shot"
            End With


        End With

        
    End With

End Sub