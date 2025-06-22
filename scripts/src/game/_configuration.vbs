
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