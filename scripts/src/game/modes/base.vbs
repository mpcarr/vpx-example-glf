

Sub CreateBaseMode()

    With CreateGlfMode("base", 100)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")

        With .LightPlayer()
            With .EventName("mode_base_started")
                With .Lights("GI")
                    .Color = "ffffff"
                End With
            End With
        End With
        
    End With

End Sub