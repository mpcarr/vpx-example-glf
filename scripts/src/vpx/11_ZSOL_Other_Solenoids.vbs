
' '*******************************************
' '  ZSOL : Other Solenoids
' '*******************************************



'  Kickers, Saucers
'*******************************************
Const KickerAngleTol = 2
Const KickerStrengthTol = 3

Sub KickBall(kball, kangle, kvel, kvelz, kzlift)
	dim rangle
	rangle = PI * (kangle - 90) / 180
    
	kball.z = kball.z + kzlift
	kball.velz = kvelz
	kball.velx = cos(rangle)*kvel
	kball.vely = sin(rangle)*kvel
End Sub


Sub Kicker1EjectCallback(ball)
	Dim ang, vel
	If s_Kicker1.BallCntOver > 0 Then
		ang = -85 + KickerAngleTol*2*(rnd-0.5)
		vel = 25.0 + KickerStrengthTol*2*(rnd-0.5)
		KickBall ball, ang, vel, 5, 25
		SoundSaucerKick 1, s_Kicker1
	Else
		SoundSaucerKick 0, s_Kicker1
	End If
	DOF 109, DOFPulse
End Sub


Sub Kicker2EjectCallback(ball)
	Dim ang, vel
	If s_Kicker2.BallCntOver > 0 Then
		ang = 160 + KickerAngleTol*2*(rnd-0.5)
		vel = 25.0 + KickerStrengthTol*2*(rnd-0.5)
		KickBall ball, ang, vel, 5, 25
		SoundSaucerKick 1, s_Kicker2
	Else
		SoundSaucerKick 0, s_Kicker2
	End If
	DOF 109, DOFPulse
End Sub




'  Auto Plunger
'*******************************************

Sub PlungerEjectCallback(ball)
	If s_Plunger1.BallCntOver > 0 Then
		KickBall ball, 0, 60, 0, 0
		SoundSaucerKick 1, s_Plunger1
	Else
		SoundSaucerKick 0, s_Plunger1
	End If
	DOF 110, DOFPulse
End Sub



'  Kickback Plunger
'*******************************************

Sub SolKickback(enabled)
	If enabled Then
		PlungerKickback.Fire
		SoundSaucerKick 1, s_LeftInOutlane
	Else
		PlungerKickback.PullBack
	End If
End Sub



'  Diverters
'*******************************************


Sub OpenDiverter(Enabled)
	If Enabled Then
		DiverterWall1.isdropped = True
		DiverterWall2.isdropped = False
		SoundSaucerKick 0, KickerUpperPrimitive
	Else
		DiverterWall1.isdropped = False
		DiverterWall2.isdropped = True
		SoundSaucerKick 0, KickerUpperPrimitive
	End If
	DOF 111, DOFPulse
End Sub




'  Grab Magnet
'******************************************* 

Sub GrabMagnetAction(Enabled)
	GrabMag.MagnetOn = Enabled
end sub



'  Knocker
'*******************************************

Sub SolKnocker(Enabled)
	If enabled Then
		KnockerSolenoid  
		DOF 113, DOFPulse
	End If
End Sub



'  Bumpers
'*******************************************

Sub Bumper1Action(args)
	Dim enabled, ball : enabled = args(0)
    If IsNull(args(1)) And enabled Then
        s_Bumper1.PlayHit()
    End If
	If enabled Then
		RandomSoundBumperMiddle s_Bumper1
		DOF 105, DOFPulse
	End If
End Sub

Sub Bumper1Disabled(args)
	s_Bumper1.Threshold = 100
End Sub

Sub Bumper1Enabled(args)
	s_Bumper1.Threshold = 1.5
End Sub


Sub Bumper2Action(args)
	Dim enabled, ball : enabled = args(0)
    If IsNull(args(1)) And enabled Then
        s_Bumper2.PlayHit()
    End If
	If enabled Then
		RandomSoundBumperTop s_Bumper2
		DOF 108, DOFPulse
	End If
End Sub

Sub Bumper2Disabled(args)
	s_Bumper2.Threshold = 100
End Sub

Sub Bumper2Enabled(args)
	s_Bumper2.Threshold = 1.5
End Sub


Sub Bumper3Action(args)
	Dim enabled, ball : enabled = args(0)
    If IsNull(args(1)) And enabled Then
        s_Bumper3.PlayHit()
    End If
	If enabled Then
		RandomSoundBumperTop s_Bumper3
		DOF 106, DOFPulse
	End If
End Sub

Sub Bumper3Disabled(args)
	s_Bumper3.Threshold = 100
End Sub

Sub Bumper3Enabled(args)
	s_Bumper3.Threshold = 1.5
End Sub

