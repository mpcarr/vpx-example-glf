

Sub CreateAttractMode()

    With CreateGlfMode("attract", 100)
        .StartEvents = Array("reset_complete", "game_ended")
        .StopEvents = Array("game_started")

        With .ShowPlayer()
            With .EventName("mode_attract_started")
                .Key = "key_mode_attract_started"
                .Show = "attract"
                .Speed = 1
            End With
        End With
 
    End With

End Sub