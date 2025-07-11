
' Attract Mode
'
' Play shows, sounds, and slides before and after a game.


Sub CreateAttractMode()

    With CreateGlfMode("attract", 100)
        .StartEvents = Array("reset_complete", "game_ended")
        .StopEvents = Array("game_started", "stop_attract_mode")

        With .EventPlayer()

            'Stop music
            .Add "mode_attract_started", Array("stop_mus_ambient_loop","stop_mus_multiball_loop") 

            'Show the attract messages in a loop
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 1}", Array("show_attract_title")   '5 + 1 sec
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 7}", Array("show_attract_hs1")    '3 + 1 sec
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 11}", Array("show_attract_hs2")    '3 + 1 sec
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 15}", Array("show_attract_hs3")    '3 + 1 sec
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 19}", Array("show_attract_hs4")    '3 + 1 sec
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 23}", Array("show_attract_lastscores1")    '2 + 1 sec
            .Add "timer_attract_display_tick{devices.timers.attract_display.ticks == 26}", Array("show_attract_lastscores2")    '3 + 1 sec = 30
            
        End With


        With .Timers("attract_display")
            .TickInterval = 1000
            .StartValue = 0
            .EndValue = 30
            With .ControlEvents()
                .EventName = "mode_attract_started"
                .Action = "start"
            End With
            With .ControlEvents()
                .EventName = "timer_attract_display_complete"
                .Action = "restart"
            End With
        End With


        With .ShowPlayer()
            With .EventName("mode_attract_started")
                .Key = "key_mode_attract_started"
                .Show = "attract"
                .Speed = 1
            End With
        End With

        With .SlidePlayer()
            With .EventName("mode_attract_started")
                .Slide = "attract"
                .Action = "play"
            End With
        End With


         With .SegmentDisplayPlayer()

            With .EventName("show_attract_title")
                With .Display("player1")
                    .Key = "key_show_attract_title1"
                    .Text = """GLF"""
                    .Expire = 5000
                    .Priority = 1
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = ""
                    End With
                End With
                With .Display("player2")
                    .Key = "key_show_attract_title2"
                    .Text = """EXAMPLE"""
                    .Expire = 5000
                    .Priority = 1
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = ""
                    End With
                End With
                With .Display("player3")
                    .Key = "key_show_attract_title3"
                    .Text = """TABLE """
                    .Expire = 5000
                    .Priority = 1
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = ""
                    End With
                End With
            End With

            With .EventName("show_attract_hs1")
                ' With .Display("p1p2")
                '     .Key = "key_score_1_label"
                '     .Text = "machine.score_1_label"
                '     .Expire = 3000
                '     .Priority = 2
                ' End With
                With .Display("player1")
                    .Key = "key_score_1_label_a"
                    .Text = """GRAND """
                    .Expire = 3000
                    .Priority = 2
                End With
                With .Display("player2")
                    .Key = "key_score_1_label_b"
                    .Text = """CHAMPION"""
                    .Expire = 3000
                    .Priority = 2
                End With
                With .Display("player3")
                    .Key = "key_score_1_name"
                    .Text = "machine.score_1_name"
                    .Expire = 3000
                    .Priority = 2
                End With
                With .Display("player4")
                    .Key = "key_score_1_value"
                    .Text = "machine.score_1_value"
                    .Expire = 3000
                    .Priority = 2
                End With
            End With

            With .EventName("show_attract_hs2")
                ' With .Display("p1p2")
                '     .Key = "key_score_2_label"
                '     .Text = "machine.score_2_label"
                '     .Expire = 3000
                '     .Priority = 3
                ' End With
                With .Display("player1")
                    .Key = "key_score_2_label_a"
                    .Text = """HIGH"""
                    .Expire = 3000
                    .Priority = 3
                End With
                With .Display("player2")
                    .Key = "key_score_2_label_b"
                    .Text = """SCORE 1"""
                    .Expire = 3000
                    .Priority = 3
                End With
                With .Display("player3")
                    .Key = "key_score_2_name"
                    .Text = "machine.score_2_name"
                    .Expire = 3000
                    .Priority = 3
                End With
                With .Display("player4")
                    .Key = "key_score_2_value"
                    .Text = "machine.score_2_value"
                    .Expire = 3000
                    .Priority = 3
                End With
            End With

            With .EventName("show_attract_hs3")
                ' With .Display("p1p2")
                '     .Key = "key_score_3_label"
                '     .Text = "machine.score_3_label"
                '     .Expire = 3000
                '     .Priority = 4
                ' End With
                With .Display("player1")
                    .Key = "key_score_3_label_a"
                    .Text = """HIGH"""
                    .Expire = 3000
                    .Priority = 4
                End With
                With .Display("player2")
                    .Key = "key_score_3_label_b"
                    .Text = """SCORE 2"""
                    .Expire = 3000
                    .Priority = 4
                End With
                With .Display("player3")
                    .Key = "key_score_3_name"
                    .Text = "machine.score_3_name"
                    .Expire = 3000
                    .Priority = 4
                End With
                With .Display("player4")
                    .Key = "key_score_3_value"
                    .Text = "machine.score_3_value"
                    .Expire = 3000
                    .Priority = 4
                End With
            End With

            With .EventName("show_attract_hs4")
                ' With .Display("p1p2")
                '     .Key = "key_score_4_label"
                '     .Text = "machine.score_4_label"
                '     .Expire = 3000
                '     .Priority = 5
                ' End With
                With .Display("player1")
                    .Key = "key_score_4_label_a"
                    .Text = """HIGH"""
                    .Expire = 3000
                    .Priority = 5
                End With
                With .Display("player2")
                    .Key = "key_score_4_label_b"
                    .Text = """SCORE 3"""
                    .Expire = 3000
                    .Priority = 5
                End With
                With .Display("player3")
                    .Key = "key_score_4_name"
                    .Text = "machine.score_4_name"
                    .Expire = 3000
                    .Priority = 5
                End With
                With .Display("player4")
                    .Key = "key_score_4_value"
                    .Text = "machine.score_4_value"
                    .Expire = 3000
                    .Priority = 5
                End With
            End With

            With .EventName("show_attract_lastscores1")
                With .Display("player2")
                    .Key = "key_p2_show_last_score"
                    .Text = """LAST """
                    .Expire = 2000
                    .Priority = 6
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "right"
                        .Text = ""
                    End With
                End With
                With .Display("player3")
                    .Key = "key_p3_show_last_score"
                    .Text = """SCORES """
                    .Expire = 2000
                    .Priority = 6
                    With .Transition()
                        .TransitionType = "push"
                        .Direction = "left"
                        .Text = ""
                    End With
                End With
            End With

            With .EventName("show_attract_lastscores2")
                With .Display("player1")
                    .Text = "machine.player1_score"
                    .Expire = 3000
                End With
                With .Display("player2")
                    .Text = "machine.player2_score"
                    .Expire = 3000
                End With
                With .Display("player3")
                    .Text = "machine.player3_score"
                    .Expire = 3000
                End With
                With .Display("player4")
                    .Text = "machine.player4_score"
                    .Expire = 3000
                End With
            End With

        End With
 
    End With

End Sub