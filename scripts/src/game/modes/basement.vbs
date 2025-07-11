


' Basement Mode
'
' This mode runs all the time. Some tasks need to be handled outside of normal gameplay.


Sub CreateBasementMode()
    Dim x

    With CreateGlfMode("basement", 100)
        .StartEvents = Array("reset_complete")

        With .EventPlayer()

            'DEBUG used to test shows. To test, uncomment and press right magna while table running. Also need to update given show below.
            '.Add "s_right_staged_flipper_key_active", Array("test_show") 

            'Some table init stuff
            .Add "mode_basement_started", Array("close_diverter")

            'Handle tilt
            .Add "tilt", Array("kill_flippers")

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
        End With

        ' ' Pome sound effects (outside of normal ball play time)
        ' With .SoundPlayer() 

        '     'When players get added
        '     With .EventName("player_added{kwargs.num==1}")
        '         .Key = "key_voc_p1"
        '         .Sound = "voc_p1"
        '     End With
        '     With .EventName("player_added{kwargs.num==2}")
        '         .Key = "key_voc_p2"
        '         .Sound = "voc_p2"
        '     End With
        '     With .EventName("player_added{kwargs.num==3}")
        '         .Key = "key_voc_p3"
        '         .Sound = "voc_p3"
        '     End With
        '     With .EventName("player_added{kwargs.num==4}")
        '         .Key = "key_voc_p4"
        '         .Sound = "voc_p4"
        '     End With

        '     'When ball drains
        '     With .EventName("ball_ended")
        '         .Key = "key_ball_drain"
        '         .Sound = "sfx_ball_drain"
        '     End With

        '     'When tilting
        '     With .EventName("tilt_warning")
        '         .Key = "key_sfx_tilt_warning"
        '         .Sound = "sfx_tilt_warning"
        '     End With
        '     With .EventName("tilt")
        '         .Key = "key_sfx_tilt"
        '         .Sound = "sfx_tilt"
        '     End With
            
        ' End With


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

            ' ' Backglass light shows (for VR backglass)

            ' 'Main backglass light
            ' With .EventName("backglass_on")
            '     .Key = "key_backglass_on"
            '     .Show = "flicker_color_on"
            '     .Speed = 3
            '     .Loops = 1
            '     With .Tokens()
            '         .Add "lights", "LBG01"
            '         .Add "color", GIColor3000k
            '         .Add "fade", 800
            '     End With
            ' End With
            ' With .EventName("backglass_off")
            '     .Key = "key_backglass_off"
            '     .Show = "flicker_color_off"
            '     .Speed = 3
            '     .Loops = 1
            '     With .Tokens()
            '         .Add "lights", "LBG01"
            '         .Add "color", GIColor3000k
            '         .Add "fade", 800
            '     End With
            ' End With

        End With


        ' Backglass lights (for B2S backglass)
        With .DOFPlayer()

            'Main backglass light
            With .EventName("backglass_on")
                .Action = "DOF_ON"
                .DOFEvent = 1
            End With
            With .EventName("backglass_off")
                .Action = "DOF_OFF"
                .DOFEvent = 1
            End With

        End With



    End With

End Sub
