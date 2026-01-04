

'*******************************************
'	ZINI: Table Initialization and Exiting
'*******************************************

Sub LoadCoreFiles
	On Error Resume Next
	ExecuteGlobal GetTextFile("core.vbs")
	If Err Then MsgBox "Can't open core.vbs"
	On Error GoTo 0
End Sub


Sub Table1_Init
	' Controller
	LoadCoreFiles
	LoadEM

	' Grab magnet example
    Set GrabMag = New cvpmMagnet
    With GrabMag
        .InitMagnet GrabMagnet, 30  
        .GrabCenter = False
		.strength = 15
        .CreateEvents "GrabMag"
    End With

	' GLF
	ConfigureGlfDevices()
    Glf_Init(Table1)

	' Ball rolling sounds
	InitRolling()

	' Flipper and sling corrections
	InitPolarity()
	InitSlingCorrection()

	' Init VR things
	InitVR()
End Sub


Sub Table1_Exit
	Glf_Exit()
	If B2SOn Then
		Controller.Pause = False
		Controller.Stop
	End If
End Sub

Sub Table1_Paused
End Sub

Sub Table1_UnPaused
End Sub

