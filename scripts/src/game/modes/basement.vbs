


' Basement Mode
'
' This mode runs all the time. Some tasks need to be handled outside of normal gameplay.


Sub CreateBasementMode()
    Dim x

    With CreateGlfMode("basement", 100)
        .StartEvents = Array("reset_complete")

        With .EventPlayer()

            'Some table init stuff
            .Add "mode_basement_started", Array("close_diverter","backglass_on")

            'Backglass stuff
            .Add "backglass_on", Array("backglass_logo_on","backglass_game_on","backglass_logic_on","backglass_framework_on")
            .Add "backglass_off", Array("backglass_logo_off","backglass_game_off","backglass_logic_off","backglass_framework_off")

            'Handle tilt
            .Add "tilt", Array("kill_flippers","backglass_off")

        End With


        With .VariablePlayer()
            'All locked balls eject at end of game, so set num_balls_locked to 0
            With .EventName("game_ended")
				With .Variable("bottom_ball_locked")
                    .Action = "set_machine"
					.Int = 0
				End With
                With .Variable("top_ball_locked")
                    .Action = "set_machine"
					.Int = 0
				End With
			End With
        End With



        ' ' Pome sound effects (outside of normal ball play time)
        With .SoundPlayer() 

            'When players get added
            With .EventName("player_added{kwargs.num==1}")
                .Key = "key_sfx_p1"
                .Sound = "sfx_button"
            End With
            With .EventName("player_added{kwargs.num==2}")
                .Key = "key_sfx_p2"
                .Sound = "sfx_button"
            End With
            With .EventName("player_added{kwargs.num==3}")
                .Key = "key_sfx_p3"
                .Sound = "sfx_button"
            End With
            With .EventName("player_added{kwargs.num==4}")
                .Key = "key_sfx_p4"
                .Sound = "sfx_button"
            End With

            'When ball drains
            With .EventName("mode_bonus_started")
                .Key = "key_sfx_drain"
                .Sound = "sfx_drain"
            End With

            'When tilting
            With .EventName("tilt_warning")
                .Key = "key_sfx_tilt_warning"
                .Sound = "sfx_tilt_warning"
            End With
            With .EventName("tilt")
                .Key = "key_sfx_tilt"
                .Sound = "sfx_tilt"
            End With
            
        End With


        With .SegmentDisplayPlayer()

            'Display the tilt warning
            With .EventName("tilt_warning")
                With .Display("player1")
                    .Text = """"""
                    .Expire = 4000
                    .Priority = 10000
                End With
                With .Display("player2")
                    .Text = """WARNING"""
                    .Expire = 4000
                    .Flashing = "all"
                    .Priority = 10000
                End With
                With .Display("player3")
                    .Text = """WARNING"""
                    .Expire = 4000
                    .Flashing = "all"
                    .Priority = 10000
                End With
                With .Display("player4")
                    .Text = """"""
                    .Expire = 4000
                    .Priority = 10000
                End With
            End With

            'Display tilt
            With .EventName("tilt")
                With .Display("player1")
                    .Text = """"""
                    .Expire = 4000
                    .Priority = 10000
                End With
                With .Display("player2")
                    .Text = """TILT"""
                    .Expire = 4000
                    .Priority = 10000
                End With
                With .Display("player3")
                    .Text = """TILT"""
                    .Expire = 4000
                    .Priority = 10000
                End With
                With .Display("player4")
                    .Text = """"""
                    .Expire = 4000
                    .Priority = 10000
                End With
            End With

        End With


        With .ShowPlayer()

            'DEBUG to test show. To run test, uncomment and update section for given show. 
            ' With .EventName("test_show") 
            '     .Key = "key_test_show1"
            '     .Show = "ship_saver_acquired"
            '     .Speed = 1
            '     .Loops = 1
            '     .Priority = 20000
            ' End With
            '  With .EventName("test_show") 
            '     .Key = "key_test_show1"
            '     .Show = "lsling_rotate4_ccw"
            '     .Speed = 1
            '     With .Tokens()
            '         .Add "intensity", 50
            '         .Add "color1", MoonColor
            '         .Add "color2", HealthColor1
            '         .Add "color3", ShieldsColor
            '         .Add "color4", HealthColor3
            '     End With
            ' End With


            'Flicker off GI lights when tilted
            With .EventName("tilt") 
                .Key = "key_tilted_gi"
                .Show = "flicker_color_off" 
                .Speed = 3
                .Loops = 1
                .Priority = 10000
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", GIColor3000k
                End With
            End With
            With .EventName("ball_started") 
                .Key = "key_tilted_gi"
                .Show = "flicker_color_off" 
                .Speed = 3
                .Loops = 1
                .Priority = 10000
                .Action = "stop"
                With .Tokens()
                    .Add "lights", "GI"
                    .Add "color", GIColor3000k
                End With
            End With

            'Flash some warning lights
            With .EventName("tilt_warning") 
                .Key = "key_tilt_warning_gi"
                .Show = "flash_color" 
                .Speed = 9
                .Loops = 9
                .Priority = 10000
                With .Tokens()
                    .Add "lights", "InlaneGI"
                    .Add "color", GIColor3000k
                End With
            End With

            ' Backglass light shows (for VR backglass)
            With .EventName("backglass_logo_on")
                .Key = "key_backglass_logo_on_show"
                .Show = "backglass_logo_on_show" 
                .Speed = 1
                .Loops = 1
                .Priority = 1000
            End With
            With .EventName("backglass_logo_off")
                .Key = "key_backglass_logo_off_show"
                .Show = "backglass_logo_off_show" 
                .Speed = 1
                .Loops = 1
                .Priority = 1000
            End With

            With .EventName("backglass_game_on")
                .Key = "key_backglass_game_on_show"
                .Show = "backglass_game_on_show" 
                .Speed = 1
                .Loops = 1
                .Priority = 1000
            End With
            With .EventName("backglass_game_off")
                .Key = "key_backglass_game_off_show"
                .Show = "backglass_game_off_show" 
                .Speed = 1
                .Loops = 1
                .Priority = 1000
            End With

            With .EventName("backglass_logic_on")
                .Key = "key_backglass_logic_on_show"
                .Show = "backglass_logic_on_show" 
                .Speed = 1
                .Loops = 1
                .Priority = 1000
            End With
            With .EventName("backglass_logic_off")
                .Key = "key_backglass_logic_off_show"
                .Show = "backglass_logic_off_show" 
                .Speed = 1
                .Loops = 1
                .Priority = 1000
            End With

            With .EventName("backglass_framework_on")
                .Key = "key_backglass_framework_on_show"
                .Show = "backglass_framework_on_show" 
                .Speed = 1
                .Loops = 1
                .Priority = 1000
            End With
            With .EventName("backglass_framework_off")
                .Key = "key_backglass_framework_off_show"
                .Show = "backglass_framework_off_show" 
                .Speed = 1
                .Loops = 1
                .Priority = 1000
            End With

            With .EventName("backglass_flash1")
                .Key = "key_backglass_flash1_show"
                .Show = "backglass_flash1_show" 
                .Speed = 1
                .Loops = 1
                .Priority = 1000
            End With
            With .EventName("backglass_flash2")
                .Key = "key_backglass_flash2_show"
                .Show = "backglass_flash2_show" 
                .Speed = 1
                .Loops = 1
                .Priority = 1000
            End With
            With .EventName("backglass_flash3")
                .Key = "key_backglass_flash3_show"
                .Show = "backglass_flash3_show" 
                .Speed = 1
                .Loops = 1
                .Priority = 1000
            End With
            With .EventName("backglass_flash4")
                .Key = "key_backglass_flash4_show"
                .Show = "backglass_flash4_show" 
                .Speed = 1
                .Loops = 1
                .Priority = 1000
            End With

        End With


        ' Backglass lights (for B2S backglass)
        With .DOFPlayer()

            'Logo backglass light
            With .EventName("backglass_logo_on")
                .Action = "DOF_ON"
                .DOFEvent = 1
            End With
            With .EventName("backglass_logo_off")
                .Action = "DOF_OFF"
                .DOFEvent = 1
            End With

            'GAME backglass light
            With .EventName("backglass_game_on")
                .Action = "DOF_ON"
                .DOFEvent = 2
            End With
            With .EventName("backglass_game_off")
                .Action = "DOF_OFF"
                .DOFEvent = 2
            End With

            'LOGIC backglass light
            With .EventName("backglass_logic_on")
                .Action = "DOF_ON"
                .DOFEvent = 3
            End With
            With .EventName("backglass_logic_off")
                .Action = "DOF_OFF"
                .DOFEvent = 3
            End With

            'FRAMEWORK backglass light
            With .EventName("backglass_framework_on")
                .Action = "DOF_ON"
                .DOFEvent = 4
            End With
            With .EventName("backglass_framework_off")
                .Action = "DOF_OFF"
                .DOFEvent = 4
            End With

            'Flash1 backglass light
            With .EventName("backglass_flash1_on")
                .Action = "DOF_ON"
                .DOFEvent = 5
            End With
            With .EventName("backglass_flash1_off")
                .Action = "DOF_OFF"
                .DOFEvent = 5
            End With

            'Flash2 backglass light
            With .EventName("backglass_flash2_on")
                .Action = "DOF_ON"
                .DOFEvent = 6
            End With
            With .EventName("backglass_flash2_off")
                .Action = "DOF_OFF"
                .DOFEvent = 6
            End With

            'Flash3 backglass light
            With .EventName("backglass_flash3_on")
                .Action = "DOF_ON"
                .DOFEvent = 7
            End With
            With .EventName("backglass_flash3_off")
                .Action = "DOF_OFF"
                .DOFEvent = 7
            End With

            'Flash4 backglass light
            With .EventName("backglass_flash4_on")
                .Action = "DOF_ON"
                .DOFEvent = 8
            End With
            With .EventName("backglass_flash4_off")
                .Action = "DOF_OFF"
                .DOFEvent = 8
            End With

        End With



    End With

End Sub
