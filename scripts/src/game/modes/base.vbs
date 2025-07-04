

Sub CreateBaseMode()

    With CreateGlfMode("base", 100)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")

        With .EventPlayer()
            'new ball
            .Add "mode_base_started", Array("stop_attract_mode","close_diverter")
            .Add "mode_base_started{current_player.number == 1}", Array("flash_player1_score")  'Events for flashing active player's score at start of mode
            .Add "mode_base_started{current_player.number == 2}", Array("flash_player2_score")
            .Add "mode_base_started{current_player.number == 3}", Array("flash_player3_score")
            .Add "mode_base_started{current_player.number == 4}", Array("flash_player4_score")
            .Add "s_Plunger1_inactive", Array("stop_flash_player1_score","stop_flash_player2_score","stop_flash_player3_score","stop_flash_player4_score")

        End With

        With .LightPlayer()
            With .EventName("mode_base_started")
                With .Lights("GI")
                    .Color = "ffffff"
                End With
            End With
        End With

        With .SegmentDisplayPlayer()
            With .EventName("mode_base_started")
                With .Display("player1")
                    .Text = "{players[0].score:0>2,}"
                End With
            End With
            With .EventName("mode_base_started")
                With .Display("player2")
                    .Text = "{players[1].score:0>2,}"
                End With
            End With
            With .EventName("mode_base_started")
                With .Display("player3")
                    .Text = "{players[2].score:0>2,}"
                End With
            End With
            With .EventName("mode_base_started")
                With .Display("player4")
                    .Text = "{players[3].score:0>2,}"
                End With
            End With
            With .EventName("mode_base_started")
                With .Display("ball")
                    .Text = "{current_player.ball:0>2}"
                End With
            End With

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
        
    End With

End Sub