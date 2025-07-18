
'*******************************************
'	ZKEY: Key Press Handling
'*******************************************

Sub Table1_KeyDown(ByVal keycode)
	Glf_KeyDown(keycode)

	'DEBUG used to test shows, where the show is defined in the "basement" mode.
	' This also gives an example of how to directly dispatch GLF events.
	If keycode = 33 Then  'F key
		DispatchPinEvent "test_show", NULL
	End If

	'Normal buttons
	If keycode = AddCreditKey or keycode = AddCreditKey2 Then RandomCoinSound
	If keycode = StartGameKey Then SoundStartButton

	'Plunger
	If keycode = PlungerKey Then 
		Plunger.Pullback
		SoundPlungerPull
		TimerPlunger.Enabled = True
		TimerPlunger2.Enabled = False
		PinCab_Shooter.TransZ = 0
	End If

	'VR Button animations
	If keycode = LeftFlipperKey Then 
		PinCab_FlipperButtonLeft.TransX = 7
	End if
    If keycode = RightFlipperKey Then 
		PinCab_FlipperButtonRight.TransX = -7
	End if
	If keycode = LeftMagnaSave Then 
		PinCab_MagnaButtonLeft.TransX = 7
	End if
    If keycode = RightMagnaSave Then 
		PinCab_MagnaButtonRight.TransX = -7
	End if
	If keycode = StartGameKey Then 
		PinCab_StartButton.TransY = 7
		PinCab_StartButton2.TransY = 7
	End if


	'Nudging
	If keycode = LeftTiltKey Then 
		'Nudge 90, 2    'This is set in GLF
		SoundNudgeLeft
	End If
	If keycode = RightTiltKey Then 
		'Nudge 270, 2   'This is set in GLF
		SoundNudgeRight
	End If
	If keycode = CenterTiltKey Then 
		'Nudge 0, 2    'This is set in GLF
		SoundNudgeCenter
	End If
End Sub



Sub Table1_KeyUp(ByVal keycode)
	Glf_KeyUp(keycode)

	'Plunger
	If KeyCode = PlungerKey Then
		Plunger.Fire
		SoundPlungerReleaseBall
		TimerPlunger.Enabled = False
		TimerPlunger2.Enabled = True
	End If

	'VR Button animations 
	If keycode = LeftFlipperKey Then 
		PinCab_FlipperButtonLeft.TransX = 0
	End if
    If keycode = RightFlipperKey Then 
		PinCab_FlipperButtonRight.TransX = 0
	End if
	If keycode = LeftMagnaSave Then 
		PinCab_MagnaButtonLeft.TransX = 0
	End if
    If keycode = RightMagnaSave Then 
		PinCab_MagnaButtonRight.TransX = 0
	End if
	If keycode = StartGameKey Then 
		PinCab_StartButton.TransY = 0
		PinCab_StartButton2.TransY = 0
	End if

End Sub
