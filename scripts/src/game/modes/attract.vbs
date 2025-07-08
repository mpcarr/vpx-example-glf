
' Attract Mode
'
' Play shows, sounds, and slides before and after a game.


Sub CreateAttractMode()

    With CreateGlfMode("attract", 100)
        .StartEvents = Array("reset_complete", "game_ended")
        .StopEvents = Array("game_started", "stop_attract_mode")

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
 
    End With

End Sub