

'*******************************************
'  ZCON: Constants and Global Variables
'*******************************************

Const cGameName = "VPXExampleGLF"	'The unique alphanumeric name for this table

Const TestVR = False 				'For testing VR on desktop during development
Const BallSize = 50				 	'Ball diameter in VPX units; must be 50
Const BallMass = 1				  	'Ball mass must be 1
Const tnob = 5					  	'Total number of balls the table can hold
Const lob = 0					   	'Locked balls

Dim tablewidth : tablewidth = Table1.width
Dim tableheight : tableheight = Table1.height
Dim DesktopMode : DesktopMode = Table1.ShowDT

Dim GrabMag
Dim gBOT

