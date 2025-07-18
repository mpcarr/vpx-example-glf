
'******************************************************
'   ZVRS: VR Stuff
'******************************************************

Const VRBG_height = 425
Const VRBG_y = -90
Const VRBG_rot = -86

Sub InitVR
    dim obj
    
	For Each obj in VR_Backglass
		obj.x = obj.x + 0
		obj.height = -obj.y + VRBG_height
		obj.y = VRBG_y 
		obj.rotx = VRBG_rot
	Next

	For Each obj in VR_Flashers
		obj.x = obj.x + 0
		obj.height = -obj.y + VRBG_height
		obj.y = VRBG_y + 5 
		obj.rotx = VRBG_rot
	Next

	For Each obj in VR_DisplayBall
		obj.x = obj.x + 0
		obj.z = -obj.y + VRBG_height
		obj.y = VRBG_y + 10 
		obj.rotx = VRBG_rot
	Next
	BGDisplayBall.y = VRBG_y + 5

	For Each obj in VR_Display
		obj.x = obj.x + 0
		obj.z = -obj.y + VRBG_height
		obj.y = VRBG_y+40 
		obj.rotx = -90
	Next
	BGDisplay.y = VRBG_y+35
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



