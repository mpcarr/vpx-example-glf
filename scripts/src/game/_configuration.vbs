
'******************************************************
'	ZGCF:  GLF Configurations
'******************************************************

Sub ConfigureGlfDevices

    ' Plunger
    With CreateGlfBallDevice("plunger")
        .BallSwitches = Array("s_Plunger")
        .EjectTimeout = 200
        .MechanicalEject = True
        .DefaultDevice = True
        .EjectCallback = "PlungerEjectCallback"
    End With

    With CreateGlfFlipper("left")
        .Switch = "s_left_flipper"
        .ActionCallback = "SolLFlipper"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array("ball_started","enable_flippers")
    End With

    With CreateGlfFlipper("right")
        .Switch = "s_right_flipper"
        .ActionCallback = "SolRFlipper"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array("ball_started","enable_flippers")
    End With

    'Drop Targets
    With CreateGlfDroptarget("drop1")
        .Switch = "sw1"
        .KnockdownEvents = Array("sw1_knockdown")
        .ResetEvents = Array("ball_started")
        .ActionCallback = "DT1Callback"
    End With

    With CreateGlfDroptarget("drop2")
        .Switch = "sw2"
        .KnockdownEvents = Array("sw2_knockdown")
        .ResetEvents = Array("ball_started")
        .ActionCallback = "DT2Callback"
    End With

    With CreateGlfDroptarget("drop3")
        .Switch = "sw3"
        .KnockdownEvents = Array("sw3_knockdown")
        .ResetEvents = Array("ball_started")
        .ActionCallback = "DT3Callback"
    End With

    With EnableGlfHighScores()
        With .Categories()
            .Add "score", Array("GRAND CHAMPION", "HIGH SCORE 1", "HIGH SCORE 2", "HIGH SCORE 3") 
        End With
        With .Defaults("score")
            .Add "DAN", 5000000
            .Add "MPC", 2000000
            .Add "LFS", 1000000
            .Add "PUP", 5000000
        End With
    End With

    CreateBaseMode()

End Sub

Sub PlungerEjectCallback(ball)
	If s_Plunger.BallCntOver > 0 Then
		KickBall ball, 0, 60, 0, 0
		SoundSaucerKick 1, s_Plunger
	Else
		SoundSaucerKick 0, s_Plunger
	End If
End Sub

Sub DT1Callback(state)
    Select Case state
        Case 0
            DTRaise 1
            SoundDropTargetDrop sw1p
        Case 1
            DTDrop 1
        Case 3
            'Enable Keep up, i.e. prevent roth drop from dropping when a ball hits
            DTEnableKeepup 1
        Case 4
            'Disable Keep up, i.e. allow roth drop to drop when a ball hits
            DTDisableKeepup 1
    End Select
End Sub

Sub DT2Callback(state)
    Select Case state
        Case 0
            DTRaise 2
            SoundDropTargetDrop sw2p
        Case 1
            DTDrop 2
        Case 3
            'Enable Keep up, i.e. prevent roth drop from dropping when a ball hits
            DTEnableKeepup 2
        Case 4
            'Disable Keep up, i.e. allow roth drop to drop when a ball hits
            DTDisableKeepup 2
    End Select
End Sub

Sub DT3Callback(state)
    Select Case state
        Case 0
            DTRaise 3
            SoundDropTargetDrop sw3p
        Case 1
            DTDrop 3
        Case 3
            'Enable Keep up, i.e. prevent roth drop from dropping when a ball hits
            DTEnableKeepup 3
        Case 4
            'Disable Keep up, i.e. allow roth drop to drop when a ball hits
            DTDisableKeepup 3
    End Select
End Sub