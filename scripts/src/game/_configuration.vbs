
'******************************************************
'	ZGCF:  GLF Configurations
'******************************************************
'
' Initialize the following:
'   - Shows
'   - Modes
'   - High Scores
'   - Machine Variables 
'   - Player Variables 
'   - Device Configs
'   - Alphanumeric Displays 
'   - Sound effects and music
'   - Shared Shot Profiles
'
' NOTE: switch and light names are case sensitive, so be aware of their names in VPX.


' Color definitions used througout the game
Const GIColorWhite = "ffffff"
Const GIColor2700k = "ffA957"
Const GIColor3000k = "ffb46b"

Const ShootAgainColor = "00ff00"
Const ExtraBallColor = "00ff00"
Const KickbackColor = "dd2211"
Const SkillshotColor = "eff542"
Const TargetBankColor = "0023cc"
Const InlaneshotColor = "8800ff"
Const RampshotColor = "8800ff"
Const MultiballColor = "ffffff"
Const JackpotColor = "00ff6a"
Const MagnetColor = "ffff00"
Const BonusColor = "fc7703"
Const SpinnerLeftColor = "ed0000"
Const SpinnerRightColor = "fcfc03"
Const Bumper1Color = "ffff00"
Const Bumper2Color = "00ffff"
Const Bumper3Color = "ff00ff"

Const SegmentsColor = "00ffff"


' Arrays used in modes
Dim KickbackQualifySwitches: KickbackQualifySwitches = Array("s_TopLane1","s_TopLane2","s_TopLane3","s_TopLane4")    'top lane switches, left to right
Dim KickbackQualifyLightNames: KickbackQualifyLightNames = Array("L31","L30","L29","L28")   'top lane lights, left to right
Dim LockQualifySwitches: LockQualifySwitches = Array("s_ST1","s_ST2","s_ST3","s_ST4")    'standup target switches, left to right
Dim LockQualifyLightNames: LockQualifyLightNames = Array("L22","L21","L27","L26")   'standup target lights, left to right
Dim SkillshotLightNames: SkillshotLightNames = Array("L31","L30","L29","L28")   'top lane lights, left to right
Dim TargetBankSwitches: TargetBankSwitches = Array("s_DT1","s_DT2","s_DT3","s_DT4","s_DT5","s_DT6")    'target bank switches, shots 1 to 6
Dim TargetBankLightNames: TargetBankLightNames = Array("L33","L34","L35","L36","L37","L38")   'target bank lights, shots 1 to 6
Dim BonusLightNames: BonusLightNames = Array("L10","L11","L12","L13","L14","L15","L16","L17") 
Dim GILightNames: GILightNames = Array("gi001","gi006","gi007","gi008","gi009","gi010","gi011","gi012","gi013","gi014","gi015", _
                                       "gi016","gi017","gi018","gi019","gi020","gi021","gi022","gi024","gi050") 

' Create the list of scores available to be awarded during the game
Dim ScoreArray: ScoreArray = Array(1,10,100,333,500,1000,2000,3000,3333,5000,10000,20000,30000,33333,50000,100000,200000,500000,1000000)

' Point value per bouns light
Const BonusValue = 500000



Sub ConfigureGlfDevices()

    '*********** INITALIZE SHOWS ***********

    ' Load up the shows
    CreateGeneralShows()
    CreateBaseShows()
    CreateBackglassShows()
    CreateMultiballShows()
    CreateSpinnerShows()
    CreateInsertShows()


    ' Load shared shot profiles
    CreateSharedShotProfiles()


    '*********** INITALIZE SOUND EFFECTS ***********

    ' Tracks
    CreateSounds()

    ' Sound buses
    With CreateGlfSoundBus("mus")
        .SimultaneousSounds = 4
        .Volume = 1
    End With

    With CreateGlfSoundBus("sfx")
        .SimultaneousSounds = 8
        .Volume = 0.5
    End With

    With CreateGlfSoundBus("voc")
        .SimultaneousSounds = 2
        .Volume = 1
    End With


    ' Trough sound effects
    AddPinEventListener "trough_eject",  "on_trough_eject",  "OnTroughEject", 2000, Null
    AddPinEventListener GLF_BALL_DRAIN, "ball_drain_sound", "BallDrainSound", 100, Null


    '*********** INITALIZE MODES ***********
    'Note, modes must be created after sounds and shows

    ' Modes
    CreateBasementMode()
    CreateAttractMode()
    CreateBaseMode()
    CreateSkillshotsMode()
    CreateKickbackMode()
    CreateTargetBankMode()
    CreateExtraBallMode()
    CreateInlaneshotsMode()
    CreateRampshotsMode()
    CreateMultiballMode()
    CreateScoreMode()
    CreateScoreBonusMode()
    CreateBonusMode()
    CreateHighScoreMode()
    CreateTiltMode()


    ' Ball search
    ' With EnableGlfBallSearch()
    '     .Timeout = 15000
    '     .SearchInterval = 300
    '     .BallSearchWaitAfterIteration = 5000
    ' End With



    '*********** INITALIZE HIGH SCORES ***********
    ' These high scores are tracked for this machine. 
    ' Initial values are set first time the machine turns on. After that, values are read from the machines ini file.

    ' High Scores
    With EnableGlfHighScores()
        With .Categories()
            .Add "score", Array("GRAND CHAMPION", "HIGH SCORE 1", "HIGH SCORE 2", "HIGH SCORE 3") 
        End With
        With .Defaults("score")
            .Add "DAN", 5000000
            .Add "MPC", 2000000
            .Add "LFS", 1000000
            .Add "PUP", 500000
        End With
    End With



    '*********** INITALIZE MACHINE VARIABLES ***********
    ' These variables are tracked for this machine. 
    ' Initial values are set first time the machine turns on. After that, values are read from the machines ini file.

    With CreateMachineVar("high_score_initials")        'captures high score initials during high score mode
        .InitialValue = ""
        .ValueType = "string"
        .Persist = False
    End With
    With CreateMachineVar("high_score_initials_index")  'used to index through high score initials
        .InitialValue = 0
        .ValueType = "int"
        .Persist = False
    End With
    With CreateMachineVar("high_score_initials_chars")  'used to count current number of high score initials
        .InitialValue = 0
        .ValueType = "int"
        .Persist = False
    End With

    With CreateMachineVar("bottom_ball_locked")         '0 when no ball is locked in bottom saucer, 1 when ball is locked
        .InitialValue = 0                               'used to maintain state of lock across players
        .ValueType = "int"
        .Persist = False
    End With
    With CreateMachineVar("top_ball_locked")            '0 when no ball is locked in top saucer, 1 when ball is locked
        .InitialValue = 0                               'used to maintain state of lock across players
        .ValueType = "int"
        .Persist = False
    End With



    '*********** INITALIZE PLAYER VARIABLES ***********
    ' These variables are tracked per player. 
    'Initial values set at the beginning of each game.

    Glf_SetInitialPlayerVar "ball_just_started", 1      '1 when ball just started, 0 after it launches from plunger
    Glf_SetInitialPlayerVar "ss_running", 0             '0 when skillshots are not active, 1 when active
    Glf_SetInitialPlayerVar "target_hit_count", 0       'used in targetbank mode
    Glf_SetInitialPlayerVar "scoring_multiplier", 1     'current playfield score multiplier
    Glf_SetInitialPlayerVar "bonus_multiplier", 1       'current bonus score multiplier
    Glf_SetInitialPlayerVar "spin_show", 1              'flag used to toggle the spinner shows
    Glf_SetInitialPlayerVar "locks_qualfiied", 0        'flag keeps track of when a player has qualified the locks
    Glf_SetInitialPlayerVar "bonus_total", 0            'total bonus score, calculated in bonus mode
    Glf_SetInitialPlayerVar "bonus_count", 0            'number of bonus lights achieved, calculated in bonus mode
    Glf_SetInitialPlayerVar "bonus_skip", 0             'flag to capture if player wants to skip the bonus tally shows in bonus mode
    Glf_SetInitialPlayerVar "hs_input_ready", 1         'flag to capture when high score mode is ready for player input
    
    


    '*********** DEVICE CONFIGS ***********

    ' Plunger
    'NOTE: Plunger switch SHOULD be added to the glf_switches collection (along with all other rollover switches) 
    With CreateGlfBallDevice("plunger")
        .BallSwitches = Array("s_Plunger1")
        .EjectTimeout = 200
        .MechanicalEject = True
        .DefaultDevice = True
        .EjectCallback = "PlungerEjectCallback"
    End With


    ' Flippers
    'NOTE: Flippers SHOULD NOT be added to the glf_switches collection nor any other collection. 
    With CreateGlfFlipper("left")
        .Switch = "s_left_flipper"
        .ActionCallback = "LeftFlipperAction"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array("ball_started","enable_flippers")
    End With

    With CreateGlfFlipper("upper_left")
        .Switch = "s_left_staged_flipper_key"
        .ActionCallback = "LeftFlipper1Action"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array("ball_started","enable_flippers")
    End With

    With CreateGlfFlipper("right")
        .Switch = "s_right_flipper"
        .ActionCallback = "RightFlipperAction"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array("ball_started","enable_flippers")
    End With


    ' Scoop
    'NOTE: Scoop switches SHOULD be added to the glf_switches collection. 
    With CreateGlfBallDevice("kicker1")
        .BallSwitches = Array("s_Kicker1")
        .EjectTimeout = 2000
        .MechanicalEject = True
        .EjectAllEvents = Array("eject_kicker1")
		.EjectCallback = "Kicker1EjectCallback"
    End With

    With CreateGlfBallDevice("kicker2")
        .BallSwitches = Array("s_Kicker2")
        .EjectTimeout = 2000
        .MechanicalEject = True
        .EjectAllEvents = Array("eject_kicker2")
		.EjectCallback = "Kicker2EjectCallback"
    End With


    'Drop Targets
    'NOTE: Drop targets SHOULD NOT be added to the glf_switches collection nor any other collection. 
    With CreateGlfDroptarget("drop1")
        .Switch = "s_DT1"
        .KnockdownEvents = Array("DT1_knockdown")
        .ResetEvents = Array("ball_started","reset_target_bank")
        .ActionCallback = "DT1Callback"
        .UseRothDroptarget = True
        .RothDTSwitchID = 1
    End With

    With CreateGlfDroptarget("drop2")
        .Switch = "s_DT2"
        .KnockdownEvents = Array("DT2_knockdown")
        .ResetEvents = Array("ball_started","reset_target_bank")
        .ActionCallback = "DT2Callback"
        .UseRothDroptarget = True
        .RothDTSwitchID = 2
    End With

    With CreateGlfDroptarget("drop3")
        .Switch = "s_DT3"
        .KnockdownEvents = Array("DT3_knockdown")
        .ResetEvents = Array("ball_started","reset_target_bank")
        .ActionCallback = "DT3Callback"
        .UseRothDroptarget = True
        .RothDTSwitchID = 3
    End With

    With CreateGlfDroptarget("drop4")
        .Switch = "s_DT4"
        .KnockdownEvents = Array("DT4_knockdown")
        .ResetEvents = Array("ball_started","reset_target_bank")
        .ActionCallback = "DT4Callback"
        .UseRothDroptarget = True
        .RothDTSwitchID = 4
    End With

    With CreateGlfDroptarget("drop5")
        .Switch = "s_DT5"
        .KnockdownEvents = Array("DT5_knockdown")
        .ResetEvents = Array("ball_started","reset_target_bank")
        .ActionCallback = "DT5Callback"
        .UseRothDroptarget = True
        .RothDTSwitchID = 5
    End With

    With CreateGlfDroptarget("drop6")
        .Switch = "s_DT6"
        .KnockdownEvents = Array("DT6_knockdown")
        .ResetEvents = Array("ball_started","reset_target_bank")
        .ActionCallback = "DT6Callback"
        .UseRothDroptarget = True
        .RothDTSwitchID = 6
    End With


    'Standup Targets
    'NOTE: Stand-up targets SHOULD NOT be added to the glf_switches collection nor any other collection. 
    With CreateGlfStanduptarget("target1")
        .Switch = "s_ST1"
        .UseRothStanduptarget = True
        .RothSTSwitchID = 1
    End With

    With CreateGlfStanduptarget("target2")
        .Switch = "s_ST2"
        .UseRothStanduptarget = True
        .RothSTSwitchID = 2
    End With

    With CreateGlfStanduptarget("target3")
        .Switch = "s_ST3"
        .UseRothStanduptarget = True
        .RothSTSwitchID = 3
    End With

    With CreateGlfStanduptarget("target4")
        .Switch = "s_ST4"
        .UseRothStanduptarget = True
        .RothSTSwitchID = 4
    End With


    ' Slingshots
    'NOTE: Slingshots SHOULD be added to the glf_slingshots collection. 
    With CreateGlfAutoFireDevice("left_sling")
        .Switch = "s_LeftSlingshot"
        .ActionCallback = "LeftSlingshotAction"
        .DisabledCallback = "LeftSlingshotDisabled"
        .EnabledCallback = "LeftSlingshotEnabled"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array("ball_started","enable_flippers")
    End With

    With CreateGlfAutoFireDevice("right_sling")
        .Switch = "s_RightSlingshot"
        .ActionCallback = "RightSlingshotAction"
        .DisabledCallback = "RightSlingshotDisabled"
        .EnabledCallback = "RightSlingshotEnabled"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array("ball_started","enable_flippers")
    End With


    ' Bumpers
   'NOTE: Slingshots SHOULD be added to the glf_switches collection. 
    With CreateGlfAutoFireDevice("bumper1")
        .Switch = "s_Bumper1"
        .ActionCallback = "Bumper1Action"
        .DisabledCallback = "Bumper1Disabled"
        .EnabledCallback = "Bumper1Enabled"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array("ball_started","enable_flippers")
    End With

    With CreateGlfAutoFireDevice("bumper2")
        .Switch = "s_Bumper2"
        .ActionCallback = "Bumper2Action"
        .DisabledCallback = "Bumper2Disabled"
        .EnabledCallback = "Bumper2Enabled"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array("ball_started","enable_flippers")
    End With

    With CreateGlfAutoFireDevice("bumper3")
        .Switch = "s_Bumper3"
        .ActionCallback = "Bumper3Action"
        .DisabledCallback = "Bumper3Disabled"
        .EnabledCallback = "Bumper3Enabled"
        .DisableEvents = Array("kill_flippers")
        .EnableEvents = Array("ball_started","enable_flippers")
    End With


    ' Kickback
    With CreateGlfDiverter("kickback1")
        .EnableEvents = Array("ball_started","reset_complete","enable_kickback")
        .ActivateEvents = Array("fire_kickback") 
        .DeactivateEvents = Array("reset_kickback","ball_ended") 
        .ActionCallback = "SolKickback"
    End With
    

    ' Diverter
    With CreateGlfDiverter("diverter1")
        .EnableEvents = Array("ball_started","reset_complete","enable_diverter")
        .ActivateEvents = Array("open_diverter","game_ending") 
        .DeactivateEvents = Array("close_diverter","ball_ended") 
        .ActionCallback = "OpenDiverter"
    End With


    ' Magnet
    With CreateGlfMagnet("mag1")
        .EnableEvents = Array("ball_started")
        .DisableEvents = Array("ball_ended")
        .GrabSwitch = "s_ST4"
        '.GrabBallEvents = Array("mag1_grab")
        .FlingBallEvents = Array("magnet_mag1_grabbed_ball")
        '.ReleaseBallEvents = Array("magnet_mag1_grabbed_ball")
        .GrabTime = 500
        .FlingDropTime = 100
        .FlingRegrabTime = 50
        .ActionCallback = "GrabMagnetAction"
    End With


  '*********** INITALIZE ALPHANUMERIC DISPLAYS ***********


    Dim segment_display_ball
    Set segment_display_ball = (New GlfLightSegmentDisplay)("ball")

    segment_display_ball.SegmentType = "14Segment"
    segment_display_ball.SegmentSize = 2
    segment_display_ball.DefaultColor = SegmentsColor
    segment_display_ball.LightGroup = "ball_seg"

    Dim segment_display_p1
    Set segment_display_p1 = (New GlfLightSegmentDisplay)("player1")

    segment_display_p1.SegmentType = "14Segment"
    segment_display_p1.SegmentSize = 8
    segment_display_p1.LightGroup = "p1_seg"
    segment_display_p1.UpdateMethod = "stack"
    segment_display_p1.DefaultColor = SegmentsColor
    segment_display_p1.UseDotsForCommas = True
    segment_display_p1.ExternalFlexDmdSegmentIndex = 0
    segment_display_p1.ExternalB2SSegmentIndex = 0

    Dim segment_display_p2
    Set segment_display_p2 = (New GlfLightSegmentDisplay)("player2")

    segment_display_p2.SegmentType = "14Segment"
    segment_display_p2.SegmentSize = 8
    segment_display_p2.LightGroup = "p2_seg"
    segment_display_p2.UpdateMethod = "stack"
    segment_display_p2.DefaultColor = SegmentsColor
    segment_display_p2.UseDotsForCommas = True
    segment_display_p2.ExternalFlexDmdSegmentIndex = 8
    segment_display_p2.ExternalB2SSegmentIndex = 8

    Dim segment_display_p3
    Set segment_display_p3 = (New GlfLightSegmentDisplay)("player3")

    segment_display_p3.SegmentType = "14Segment"
    segment_display_p3.SegmentSize = 8
    segment_display_p3.LightGroup = "p3_seg"
    segment_display_p3.UpdateMethod = "stack"
    segment_display_p3.DefaultColor = SegmentsColor
    segment_display_p3.UseDotsForCommas = True
    segment_display_p3.ExternalFlexDmdSegmentIndex = 16
    segment_display_p3.ExternalB2SSegmentIndex = 16

    Dim segment_display_p4
    Set segment_display_p4 = (New GlfLightSegmentDisplay)("player4")

    segment_display_p4.SegmentType = "14Segment"
    segment_display_p4.SegmentSize = 8
    segment_display_p4.LightGroup = "p4_seg"
    segment_display_p4.UpdateMethod = "stack"
    segment_display_p4.DefaultColor = SegmentsColor
    segment_display_p4.UseDotsForCommas = True
    segment_display_p4.ExternalFlexDmdSegmentIndex = 24
    segment_display_p4.ExternalB2SSegmentIndex = 24

    Dim segment_display_all
    Set segment_display_all = (New GlfLightSegmentDisplay)("all")
    
    segment_display_all.SegmentType = "14Segment"
    segment_display_all.SegmentSize = 32
    segment_display_all.LightGroups = Array("p1_seg", "p2_seg", "p3_seg", "p4_seg")
    segment_display_all.UpdateMethod = "stack"
    segment_display_all.DefaultColor = SegmentsColor
    segment_display_all.UseDotsForCommas = True
    segment_display_all.DefaultTransitionUpdateHz = 10
    segment_display_all.ExternalFlexDmdSegmentIndex = 0
    segment_display_all.ExternalB2SSegmentIndex = 0


    Dim segment_display_p1p2
    Set segment_display_p1p2 = (New GlfLightSegmentDisplay)("p1p2")
    segment_display_p1p2.SegmentType = "14Segment"
    segment_display_p1p2.SegmentSize = 16
    segment_display_p1p2.LightGroups = Array("p1_seg", "p2_seg")
    segment_display_p1p2.UpdateMethod = "stack"
    segment_display_p1p2.DefaultColor = SegmentsColor
    segment_display_p1p2.UseDotsForCommas = True
    segment_display_p1p2.DefaultTransitionUpdateHz = 10
    segment_display_p1p2.ExternalFlexDmdSegmentIndex = 0
    segment_display_p1p2.ExternalB2SSegmentIndex = 0


End Sub



' Event callbacks used for trough sound effects and DOF
Function OnTroughEject(args)
	RandomSoundBallRelease swTrough1
	DOF 110, DOFPulse
End Function

Function BallDrainSound(args)
    RandomSoundDrain Drain 
    BallDrainSound = args(1)
End Function 




' Shared shot profile examples. These profiles can be used by shots in any mode.
Public Sub CreateSharedShotProfiles()


    'This shot profile is used turn on a light. 
    'The "lights" and "color" tokens must be defined in Shot.
    ' States:
    '  0 - unlit
    '  1 - on
    With GlfShotProfiles("off_on_color")
        With .States("unlit")
            .Show = "off"                   'defined in glf
            .Key = "key_off_on_color_unlit"
        End With
        With .States("on")
            .Show = "led_color"             'defined in glf
            .Key = "key_off_on_color_on"
        End With
    End With


    'This shot profile is used turn on a light with a flickering effect. 
    'The "lights" and "color" tokens must be defined in Shot.
    ' States:
    '  0 - unlit
    '  1 - on
    With GlfShotProfiles("flicker_on")
        With .States("unlit")
            .Show = "off"                   'defined in glf
            .Key = "key_flicker_on_unlit"
        End With
        With .States("on")
            .Show = "flicker_color_on"      'defined in CreateGeneralShows()
            .Key = "key_flicker_on_on"
            .Speed = 4
        End With
    End With


    'This shot profile turns a light on initially with a flickering effect then turns off with a flickering effect. 
    'The "lights" and "color" tokens must be defined in Shot.
    ' States:
    '  0 - lit
    '  1 - unlit
    With GlfShotProfiles("flicker_on_flicker_off")
        With .States("lit")
            .Show = "flicker_color_on"      'defined in CreateGeneralShows()
            .Key = "key_flicker_on_flicker_off_lit"
            .Speed = 3
        End With
        With .States("unlit")
            .Show = "flicker_color_off"     'defined in CreateGeneralShows()
            .Speed = 3
            .Key = "key_flicker_on_flicker_off_unlit"
        End With
    End With


    'This shot profile is used to indicate when a ball save is active. Light L03 is always used.
    'The "color" token must be defined in shot.
    ' States:
    '  0 - unlit
    '  1 - flashing
    '  2 - hurry
    With GlfShotProfiles("shoot_again")
      With .States("unlit")
          .Show = "off"                     'defined in glf
          .Key = "key_shoot_again_unlit"
          With .Tokens()
              .Add "lights", "L03"
          End With
      End With
      With .States("flashing")
          .Show = "flash_color_with_fade"   'defined in CreateGeneralShows()
          .Key = "key_shoot_again_flashing"
          .Speed = 2
          .Priority = 5000
          With .Tokens()
              .Add "lights", "L03"
              .Add "fade", 500
          End With
      End With
      With .States("hurry")
          .Show = "flash_color"             'defined in glf
          .Key = "key_shoot_again_hurry"
          .Speed = 7
          .Priority = 5000
          With .Tokens()
              .Add "lights", "L03"
          End With
      End With
    End With


End Sub
