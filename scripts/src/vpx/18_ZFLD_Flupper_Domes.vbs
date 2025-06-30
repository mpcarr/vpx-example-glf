
'******************************************************
' 	ZFLD:  Flupper Domes
'******************************************************
' Based on FlupperDoms2.2

' Updated to work with GLF: 
'    - The flasher lights must be in the glf_lights collection. Must be named "FLx" where x is the flasher number
'    - Flasher lit domes must be named "p_FLx_"
'    - Flasher flares must be named "f_FLx_"

' What you need in your table to use these flashers:
' Open this table and your table both in VPX
' Export all the materials domebasemat, Flashermaterial0 - 20 and import them in your table
' Export all textures (images) starting with the name "dome" and "ronddome" and import them into your table with the same names
' Export all textures (images) starting with the name "flasherbloom" and import them into your table with the same names
' Copy a set of 4 objects flasherbase, flasherlit, flasherlight and flasherflash from layer 7 to your table
' If you duplicate the four objects for a new flasher dome, be sure that they all end with the same number (in the 0-20 range)
' Copy the flasherbloom flashers from layer 10 to your table. you will need to make one per flasher dome that you plan to make
' Select the correct flasherbloom texture for each flasherbloom flasher, per flasher dome
' Copy the script below

' Place your flasher base primitive where you want the flasher located on your Table
' Then run InitFlasher in the script with the number of your flasher objects and the color of the flasher.  This will align the flasher object, light object, and
' flasher lit primitive.  It will also assign the appropriate flasher bloom images to the flasher bloom object.
'
' Example: InitFlasher 1, "green"
'
' Color Options: "blue", "green", "red", "purple", "yellow", "white", and "orange"

' You can use the RotateFlasher call to align the Rotz/ObjRotz of the flasher primitives with "handles".  Don't set those values in the editor,
' call the RotateFlasher sub instead (this call will likely crash VP if it's call for the flasher primitives without "handles")
'
' Example: RotateFlasher 1, 180		 'where 1 is the flasher number and 180 is the angle of Z rotation

' For flashing the flasher use in the script: "ObjLevel(1) = 1 : FlasherFlash1_Timer"
' This should also work for flashers with variable flash levels from the rom, just use ObjLevel(1) = xx from the rom (in the range 0-1)
'
' Notes (please read!!):
' - Setting TestFlashers = 1 (below in the ScriptsDirectory) will allow you to see how the flasher objects are aligned (need the targetflasher image imported to your table)
' - The rotation of the primitives with "handles" is done with a script command, not on the primitive itself (see RotateFlasher below)
' - Color of the objects are set in the script, not on the primitive itself
' - Screws are optional to copy and position manually
' - If your table is not named "Table1" then change the name below in the script
' - Every flasher uses its own material (Flashermaterialxx), do not use it for anything else
' - Lighting > Bloom Strength affects how the flashers look, do not set it too high
' - Change RotY and RotX of flasherbase only when having a flasher something other then parallel to the playfield
' - Leave RotX of the flasherflash object to -45; this makes sure that the flash effect is visible in FS and DT
' - If you want to resize a flasher, be sure to resize flasherbase, flasherlit and flasherflash with the same percentage
' - If you think that the flasher effects are too bright, change flasherlightintensity and/or flasherflareintensity below


Const TestFlashers = 0
Const FlashersBaseBrightness = 0.4   '0 to 1
Const FlashersLightIntensity = 15
Const FlashersPrimOpacity = 400
Const FlashersFlareOpacity = 20

Dim TableRef
Set TableRef = Table1		        ' *** change this, if your table has another name				   ***

Dim domeLevel(20), domebase(20), domelit(20), domeflasher(20),  domelight(20)
'Dim tablewidth, tableheight : tablewidth = TableRef.width : tableheight = TableRef.height

'initialise the flasher color, you can only choose from "green", "red", "purple", "blue", "white" and "yellow"
InitFlasher 1, "white"
InitFlasher 2, "white"
InitFlasher 3, "white"
InitFlasher 4, "white"

' rotate the flasher with the command below (first argument = flasher nr, second argument = angle in degrees)
'   RotateFlasher 1,17
'   RotateFlasher 2,0
'   RotateFlasher 3,90
'   RotateFlasher 4,90

Sub InitFlasher(nr, col)
	' store all objects in an array for use in FlashFlasher subroutine
    Set domelight(nr) = Eval("FL" & nr)
	Set domebase(nr) = Eval("p_base_FL" & nr)
	Set domelit(nr) = Eval("p_FL" & nr & "_")       'additive prim. follows light color
	Set domeflasher(nr) = Eval("f_FL" & nr & "_")   'flasher. follows light color
	
	' If the flasher is parallel to the playfield, rotate the VPX flasher object for POV and place it at the correct height
	If domebase(nr).RotY = 0 Then
		domebase(nr).ObjRotZ = Atn( (tablewidth / 2 - domebase(nr).x) / (domebase(nr).y - tableheight * 1.1)) * 180 / 3.14159
		domeflasher(nr).RotZ = domebase(nr).ObjRotZ
		domeflasher(nr).height = domebase(nr).z + 40
	End If
	
	' set all effects to invisible and move the lit primitive at the same position and rotation as the base primitive
    domebase(nr).BlendDisableLighting = FlashersBaseBrightness
	domelight(nr).Intensity = FlashersLightIntensity
    domeflasher(nr).Opacity = FlashersFlareOpacity
    domelit(nr).Opacity = FlashersPrimOpacity
	domelit(nr).material = "Flashermaterial" & nr
	domelit(nr).RotX = domebase(nr).RotX
	domelit(nr).RotY = domebase(nr).RotY
	domelit(nr).RotZ = domebase(nr).RotZ
	domelit(nr).ObjRotX = domebase(nr).ObjRotX
	domelit(nr).ObjRotY = domebase(nr).ObjRotY
	domelit(nr).ObjRotZ = domebase(nr).ObjRotZ
	domelit(nr).x = domebase(nr).x
	domelit(nr).y = domebase(nr).y
	domelit(nr).z = domebase(nr).z

    domebase(nr).visible = 1
    domelight(nr).visible = 1
    domeflasher(nr).visible = 1
    domelit(nr).visible = 1
	
	'rothbauerw
	'Adjust the position of the flasher object to align with the flasher base.
	'Comment out these lines if you want to manually adjust the flasher object
	If domebase(nr).roty > 135 Then
		domeflasher(nr).y = domebase(nr).y + 50
		domeflasher(nr).height = domebase(nr).z + 20
	Else
		domeflasher(nr).y = domebase(nr).y + 20
		domeflasher(nr).height = domebase(nr).z + 50
	End If
	domeflasher(nr).x = domebase(nr).x
	
	' 'rothbauerw
	' 'Adjust the position of the light object to align with the flasher base.
	' 'Comment out these lines if you want to manually adjust the flasher object
	' domelight(nr).x = domebase(nr).x
	' domelight(nr).y = domebase(nr).y
	' domelight(nr).bulbhaloheight = domebase(nr).z - 10
	
	
	' set the texture and color of all objects
	Select Case domebase(nr).image
		Case "dome2basewhite"
			domebase(nr).image = "dome2base" & col
			domelit(nr).image = "dome2lit" & col
		Case "ronddomebasewhite"
			domebase(nr).image = "ronddomebase" & col
			domelit(nr).image = "ronddomelit" & col
		Case "domeearbasewhite"
			domebase(nr).image = "domeearbase" & col
			domelit(nr).image = "domeearlit" & col
	End Select
	If TestFlashers = 0 Then
		domeflasher(nr).imageA = "domeflashwhite"
	End If
	Select Case col
		Case "blue"
			domelight(nr).color = RGB(4,120,255)
			domeflasher(nr).color = RGB(200,255,255)
			domelight(nr).intensity = 5000
		Case "green"
			domelight(nr).color = RGB(12,255,4)
			domeflasher(nr).color = RGB(12,255,4)
		Case "red"
			domelight(nr).color = RGB(255,32,4)
			domeflasher(nr).color = RGB(255,32,4)
		Case "purple"
			domelight(nr).color = RGB(230,49,255)
			domeflasher(nr).color = RGB(255,64,255)
		Case "yellow"
			domelight(nr).color = RGB(200,173,25)
			domeflasher(nr).color = RGB(255,200,50)
		Case "white"
			domelight(nr).color = RGB(255,240,150)
			domeflasher(nr).color = RGB(100,86,59)
		Case "orange"
			domelight(nr).color = RGB(255,70,0)
			domeflasher(nr).color = RGB(255,70,0)
	End Select
	domelight(nr).colorfull = RGB(0,0,0)
	If TableRef.ShowDT And domeFlasher(nr).RotX =  - 45 Then
		domeflasher(nr).height = domeflasher(nr).height - 20 * domeFlasher(nr).y / tableheight
		domeFlasher(nr).y = domeFlasher(nr).y + 10
	End If
End Sub

Sub RotateFlasher(nr, angle)
	angle = ((angle + 360 - domebase(nr).ObjRotZ) Mod 180) / 30
	domebase(nr).showframe(angle)
	domelit(nr).showframe(angle)
End Sub


' END FLUPPER DOMES



