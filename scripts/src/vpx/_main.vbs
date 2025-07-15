'    _____ _      ______   ______                           _        _______    _     _      
'   / ____| |    |  ____| |  ____|                         | |      |__   __|  | |   | |     
'  | |  __| |    | |__    | |__  __  ____ _ _ __ ___  _ __ | | ___     | | __ _| |__ | | ___ 
'  | | |_ | |    |  __|   |  __| \ \/ / _` | '_ ` _ \| '_ \| |/ _ \    | |/ _` | '_ \| |/ _ \
'  | |__| | |____| |      | |____ >  < (_| | | | | | | |_) | |  __/    | | (_| | |_) | |  __/
'   \_____|______|_|      |______/_/\_\__,_|_| |_| |_| .__/|_|\___|    |_|\__,_|_.__/|_|\___|
'                                                    | |                                     
'                                                    |_|                         
'   https://github.com/mpcarr/vpx-example-glf
'            
'*********************************************************************************************************************************
'
' - The purpose of this table is to provide examples of how to use GLF within VPX. For more info on GFL go to:
'   https://mpcarr.github.io/vpx-glf/
' - This table is based on VPW's Example Table which contains a lot more comments and content:
'   https://vpuniverse.com/files/file/7787-vpin-workshop-example-resource-table/
'
'
'*********************************************************************************************************************************
'
'
' === TABLE OF CONTENTS  ===
'
' You can quickly jump to a section by searching the four letter tag (ZXXX)
'
'   ZCON: Constants and Global Variables
'	ZOPT: User Options
'	ZTIM: Timers
'	ZINI: Table Initialization and Exiting
'	ZKEY: Key Press Handling
' 	ZMAT: General Math Functions
'	ZANI: Misc Animations
'	ZFLP: Flippers
'	ZSLG: Slingshots
' 	ZDMP: Rubber Dampeners
'	ZSOL: Other Solenoids
' 	ZRDT: Roth Drop Targets
'	ZRST: Roth Stand-Up Targets
'	ZSHA: Ambient Ball Shadows
' 	ZBRL: Ball Rolling and Drop Sounds
' 	ZRRL: Ramp Rolling Sounds
' 	ZFLE: Fleep Mechanical Sounds
' 	ZFLD: Flupper Domes
' 	ZFLB: Flupper Bumpers
' 	ZVRS: VR Stuff
'   ZGCF: GLF Configurations
'
'
' B2S Backglass IDs
' ------------
'   E001 0/1 logo image 
'   E002 0/1 GAME
'   E003 0/1 LOGIC
'   E004 0/1 FRAMEWORK
'   E005 0/1 upper left
'   E006 0/1 lower right
'   E007 0/1 lower left
'   E008 0/1 upper right
'
'
' DOF IDs
' ------------
'   E101 0/1 LeftFlipper
'   E102 0/1 RightFlipper
'   E103 2 Leftslingshot
'   E104 2 Rightslingshot
'   E105 2 Bumper1
'   E106 2 Bumper2
'   E107 2 Bumper3


' TODO
' - Check/fix all DOF calls



Option Explicit
Randomize
SetLocale 1033

On Error Resume Next
ExecuteGlobal GetTextFile("controller.vbs")
If Err Then MsgBox "You need the controller.vbs In order To run this table, available In the vp10 package"
On Error GoTo 0

