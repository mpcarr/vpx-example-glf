

'******************************************************
'  ZANI: Misc Animations
'******************************************************

Sub LeftFlipper_Animate
	dim a: a = LeftFlipper.CurrentAngle
	FlipperLSh.RotZ = a
	LFLogo.RotZ = a
	'Add any left flipper related animations here
End Sub

Sub LeftFlipper1_Animate
	dim a: a = LeftFlipper1.CurrentAngle
	FlipperLSh1.RotZ = a
	LFLogo1.RotZ = a
	'Add any left flipper related animations here
End Sub

Sub RightFlipper_Animate
	dim a: a = RightFlipper.CurrentAngle
	FlipperRSh.RotZ = a
	RFlogo.RotZ = a
	'Add any right flipper related animations here
End Sub