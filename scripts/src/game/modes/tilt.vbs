

' Tilt Mode
' 
' This mode simply handles tilt. 
' Set to a high priority, with stop event "ball_will_end"

Sub CreateTiltMode()

    With CreateGlfMode("tilt", 10000)

        'Define the events that start and stop this mode
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_will_end")

        With .Tilt()
            .MultipleHitWindow = 3000
            .SettleTime = 5000
            .WarningsToTilt = 3
            .ResetWarningEvents = Array("mode_tilt_started")
        End With

    End With

End Sub
