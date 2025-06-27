
'******************************************************
'   ZVRS: VR Stuff
'******************************************************

Sub InitVR
	' Any intiializations needed for VR cab and room
End Sub

Sub SetupRoom
    Dim obj
    TimerPlunger2.Enabled = True

    If VRRoom <> 0 Then 'Using VR
        For Each obj In VR_Cab: obj.visible = 1: Next

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
        For Each obj In DesktopLights: obj.visible = DesktopMode: Next
    End If
End Sub


' END VR STUFF



