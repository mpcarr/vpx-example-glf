
'****************************************************************
'	ZSLG: Slingshots
'****************************************************************

' SLINGSHOT ANIMATIONS

Dim LStep : LStep = 0 : s_LeftSlingshot.TimerEnabled = 1
Dim RStep : RStep = 0 : s_RightSlingshot.TimerEnabled = 1


Sub LeftSlingshotAction(args)
	Dim enabled, ball : enabled = args(0)
	If enabled then
		If Not IsNull(args(1)) Then
			LS.VelocityCorrect(args(1))
		End If
		LStep = 0
		s_LeftSlingshot_Timer
		s_LeftSlingshot.TimerEnabled = 1
		s_LeftSlingshot.TimerInterval = 17
		RandomSoundSlingshotLeft Sling2
		DOF 103, DOFPulse
	End If
End Sub

Sub LeftSlingshotDisabled(args)
	s_LeftSlingshot.Disabled = True
End Sub

Sub LeftSlingshotEnabled(args)
	s_LeftSlingshot.Disabled = False
End Sub

Sub s_LeftSlingshot_Timer
    Select Case LStep
		Case 0
			LSLing1.Visible = 1
			LSLing2.Visible = 0
			Sling2.TransY =  -20
		Case 3
			LSLing1.Visible = 0
			LSLing2.Visible = 1
			Sling2.TransY =  -10
		Case 4
			LSLing2.Visible = 0
			Sling2.TransY = 0
			s_LeftSlingshot.TimerEnabled = 0
    End Select
    LStep = LStep + 1
End Sub


Sub RightSlingshotAction(args)
	Dim enabled, ball : enabled = args(0)
	If enabled then
		If Not IsNull(args(1)) Then
			RS.VelocityCorrect(args(1))
		End If
		RStep = 0
		s_RightSlingshot_Timer
		s_RightSlingshot.TimerEnabled = 1
		s_RightSlingshot.TimerInterval = 17
		RandomSoundSlingshotRight Sling1
		DOF 104, DOFPulse
	End If
End Sub

Sub RightSlingshotDisabled(args)
	s_RightSlingshot.Disabled = True
End Sub

Sub RightSlingshotEnabled(args)
	s_RightSlingshot.Disabled = False
End Sub

Sub s_RightSlingshot_Timer
	Select Case RStep
		Case 0
			RSLing1.Visible = 1
			RSLing2.Visible = 0
			Sling1.TransY =  -20
		Case 3
			RSLing1.Visible = 0
			RSLing2.Visible = 1
			Sling1.TransY =  -10
		Case 4
			RSLing2.Visible = 0
			Sling1.TransY = 0
			s_RightSlingShot.TimerEnabled = 0
	End Select
	RStep = RStep + 1
End Sub



'  SLINGSHOT CORRECTION FUNCTIONS

dim LS : Set LS = New SlingshotCorrection
dim RS : Set RS = New SlingshotCorrection

Sub InitSlingCorrection    'Called in Table1_Init()

	LS.Object = s_LeftSlingshot
	LS.EndPoint1 = EndPoint1LS
	LS.EndPoint2 = EndPoint2LS

	RS.Object = s_RightSlingshot
	RS.EndPoint1 = EndPoint1RS
	RS.EndPoint2 = EndPoint2RS

	'Slingshot angle corrections (pt, BallPos in %, Angle in deg)
	' These values are best guesses. Retune them if needed based on specific table research.
	AddSlingsPt 0, 0.00,	-4
	AddSlingsPt 1, 0.45,	-7
	AddSlingsPt 2, 0.48,	0
	AddSlingsPt 3, 0.52,	0
	AddSlingsPt 4, 0.55,	7
	AddSlingsPt 5, 1.00,	4

End Sub


Sub AddSlingsPt(idx, aX, aY)        'debugger wrapper for adjusting flipper script in-game
	dim a : a = Array(LS, RS)
	dim x : for each x in a
		x.addpoint idx, aX, aY
	Next
End Sub

Class SlingshotCorrection
	Public DebugOn, Enabled
	private Slingshot, SlingX1, SlingX2, SlingY1, SlingY2

	Public ModIn, ModOut
	Private Sub Class_Initialize : redim ModIn(0) : redim Modout(0): Enabled = True : End Sub 

	Public Property let Object(aInput) : Set Slingshot = aInput : End Property
	Public Property Let EndPoint1(aInput) : SlingX1 = aInput.x: SlingY1 = aInput.y: End Property
	Public Property Let EndPoint2(aInput) : SlingX2 = aInput.x: SlingY2 = aInput.y: End Property

	Public Sub AddPoint(aIdx, aX, aY) 
		ShuffleArrays ModIn, ModOut, 1 : ModIn(aIDX) = aX : ModOut(aIDX) = aY : ShuffleArrays ModIn, ModOut, 0
		If gametime > 100 then Report
	End Sub

	Public Sub Report()         'debug, reports all coords in tbPL.text
		If not debugOn then exit sub
		dim a1, a2 : a1 = ModIn : a2 = ModOut
		dim str, x : for x = 0 to uBound(a1) : str = str & x & ": " & round(a1(x),4) & ", " & round(a2(x),4) & vbnewline : next
		TBPout.text = str
	End Sub


	Public Sub VelocityCorrect(aBall)
		dim BallPos, XL, XR, YL, YR
		
		'Assign right and left end points
		If SlingX1 < SlingX2 Then 
			XL = SlingX1 : YL = SlingY1 : XR = SlingX2 : YR = SlingY2
		Else
			XL = SlingX2 : YL = SlingY2 : XR = SlingX1 : YR = SlingY1
		End If

		'Find BallPos = % on Slingshot
		If Not IsEmpty(aBall.id) Then 
			If ABS(XR-XL) > ABS(YR-YL) Then 
				BallPos = PSlope(aBall.x, XL, 0, XR, 1)
			Else
				BallPos = PSlope(aBall.y, YL, 0, YR, 1)
			End If
			If BallPos < 0 Then BallPos = 0
			If BallPos > 1 Then BallPos = 1
		End If

		'Velocity angle correction
		If not IsEmpty(ModIn(0) ) then
			Dim Angle, RotVxVy
			Angle = LinearEnvelope(BallPos, ModIn, ModOut)
			'DebugPrint " BallPos=" & BallPos &" Angle=" & Angle 
			'DebugPrint " BEFORE: aBall.Velx=" & aBall.Velx &" aBall.Vely" & aBall.Vely 
			RotVxVy = RotPoint(aBall.Velx,aBall.Vely,Angle)
			If Enabled then aBall.Velx = RotVxVy(0)
			If Enabled then aBall.Vely = RotVxVy(1)
			'DebugPrint " AFTER: aBall.Velx=" & aBall.Velx &" aBall.Vely" & aBall.Vely 
			'DebugPrint " " 
		End If
	End Sub

End Class