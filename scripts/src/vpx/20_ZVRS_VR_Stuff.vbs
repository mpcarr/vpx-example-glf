
'******************************************************
'   ZVRS: VR Stuff
'******************************************************

Sub InitVR
    dim obj
    
	For Each obj in VR_Backglass
		obj.x = obj.x + 0
		obj.height = -obj.y + 375
		obj.y = 10    'adjusts the distance from the backglass towards the user
		obj.rotx = -86.5
	Next

	For Each obj in VR_Flashers
		obj.x = obj.x + 0
		obj.height = -obj.y + 375
		obj.y = 15    'adjusts the distance from the backglass towards the user
		obj.rotx = -86.5
	Next

	For Each obj in VR_DisplayBall
		obj.x = obj.x + 0
		obj.z = -obj.y + 375
		obj.y = 25    'adjusts the distance from the backglass towards the user
		obj.rotx = -86.5
	Next
	BGDisplayBall.y = 20

	For Each obj in VR_Display
		obj.x = obj.x + 0
		obj.z = -obj.y + 375
		obj.y = 100    'adjusts the distance from the backglass towards the user
		obj.rotx = -86.5
	Next
	BGDisplay.y = 95
End Sub


Sub SetupRoom
    Dim obj
    TimerPlunger2.Enabled = True

    If VRRoom <> 0 Then 'Using VR
        For Each obj In VR_Cab: obj.visible = 1: Next
        For Each obj in VR_Backglass: obj.visible = 1: Next
		For Each obj in VR_Flashers: obj.visible = 1: Next
        For Each obj in VR_Display: obj.visible = 1: Next
		For Each obj in VR_DisplayBall: obj.visible = 1: Next

        'Minimal Room
        If VRRoom = 1 Then
            For Each obj In VR_MinRoom: obj.visible = 1: Next
        End If 

        'Ultra Minimal
        If VRRoom = 2 Then
            For Each obj In VR_MinRoom: obj.visible = 0: Next
        End If

    Else    'Not using VR
        For Each obj In VR_Cab: obj.visible = 0: Next
        For Each obj In VR_MinRoom: obj.visible = 0: Next
        For Each obj in VR_Backglass: obj.visible = 0: Next
		For Each obj in VR_Flashers: obj.visible = 0: Next
        For Each obj in VR_Display: obj.visible = 0: Next
		For Each obj in VR_DisplayBall: obj.visible = 0: Next
        For Each obj In DesktopLights: obj.visible = DesktopMode: Next
    End If
End Sub


' END VR STUFF



