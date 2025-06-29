
'******************************************************
'	ZGCF:  GLF Configurations
'******************************************************

' NOTE: switch and light names are case sensitive, so be aware of their names in VPX.


Const SegmentsColor = "ff0000"


Sub ConfigureGlfDevices


    ' Load up the shows
    ' CreateGeneralShows()



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
    ' With CreateGlfBallDevice("scoop")
    '     .BallSwitches = Array("s_Scoop")
    '     .EjectTimeout = 2000
    '     .MechanicalEject = True
	' 	.EjectCallback = "ScoopEjectCallback"
    ' End With



    'Drop Targets
    'NOTE: Drop targets SHOULD NOT be added to the glf_switches collection nor any other collection. 
    With CreateGlfDroptarget("drop1")
        .Switch = "s_DT1"
        .KnockdownEvents = Array("DT1_knockdown")
        .ResetEvents = Array("ball_started")
        .ActionCallback = "DT1Callback"
        .UseRothDroptarget = True
        .RothDTSwitchID = 1
    End With

    With CreateGlfDroptarget("drop2")
        .Switch = "s_DT2"
        .KnockdownEvents = Array("DT2_knockdown")
        .ResetEvents = Array("ball_started")
        .ActionCallback = "DT2Callback"
        .UseRothDroptarget = True
        .RothDTSwitchID = 2
    End With

    With CreateGlfDroptarget("drop3")
        .Switch = "s_DT3"
        .KnockdownEvents = Array("DT3_knockdown")
        .ResetEvents = Array("ball_started")
        .ActionCallback = "DT3Callback"
        .UseRothDroptarget = True
        .RothDTSwitchID = 3
    End With

    With CreateGlfDroptarget("drop4")
        .Switch = "s_DT4"
        .KnockdownEvents = Array("DT4_knockdown")
        .ResetEvents = Array("ball_started")
        .ActionCallback = "DT4Callback"
        .UseRothDroptarget = True
        .RothDTSwitchID = 4
    End With

    With CreateGlfDroptarget("drop5")
        .Switch = "s_DT5"
        .KnockdownEvents = Array("DT5_knockdown")
        .ResetEvents = Array("ball_started")
        .ActionCallback = "DT5Callback"
        .UseRothDroptarget = True
        .RothDTSwitchID = 5
    End With

    With CreateGlfDroptarget("drop6")
        .Switch = "s_DT6"
        .KnockdownEvents = Array("DT6_knockdown")
        .ResetEvents = Array("ball_started")
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


    ' Diverter
    ' With CreateGlfDiverter("divert_pin")
    '     .EnableEvents = Array("ball_started","reset_complete","enable_diverter")
    '     .ActivateEvents = Array("raise_diverter") 
    '     .DeactivateEvents = Array("drop_diverter","ball_ended") 
    '     .ActionCallback = "RaiseDiverterPin"
    ' End With


    ' Magnet
    With CreateGlfMagnet("mag1")
        .EnableEvents = Array("ball_started")
        .DisableEvents = Array("ball_ended")
        .GrabBallEvents = Array("mag1_grab")
        .ReleaseBallEvents = Array("magnet_mag1_grabbed_ball")
        .GrabTime = 1000
        .ActionCallback = "GrabMagnetAction"
    End With




    ' Alphanumeric displays

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


    ' Sound effects bus
    ' CreateSounds()

    ' With CreateGlfSoundBus("sfx")
    '     .SimultaneousSounds = 8
    '     .Volume = 0.5
    ' End With

    ' With CreateGlfSoundBus("voc")
    '     .SimultaneousSounds = 2
    '     .Volume = 1
    ' End With

    ' With CreateGlfSoundBus("mus")
    '     .SimultaneousSounds = 4
    '     .Volume = 0.8
    ' End With


    ' Trough sound effects
    AddPinEventListener "trough_eject",  "on_trough_eject",  "OnTroughEject", 2000, Null
    AddPinEventListener GLF_BALL_DRAIN, "ball_drain_sound", "BallDrainSound", 100, Null


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


    ' Ball search
    ' With EnableGlfBallSearch()
    '     .Timeout = 15000
    '     .SearchInterval = 300
    '     .BallSearchWaitAfterIteration = 5000
    ' End With


    ' Modes
    CreateBaseMode()



    ' Machine variables
    With CreateMachineVar("high_score_initials")
        .InitialValue = ""
        .ValueType = "string"
        .Persist = False
    End With
    With CreateMachineVar("high_score_initials_index")
        .InitialValue = 0
        .ValueType = "int"
        .Persist = False
    End With
    With CreateMachineVar("high_score_initials_chars")
        .InitialValue = 0
        .ValueType = "int"
        .Persist = False
    End With


    ' Initial Vars
    Glf_SetInitialPlayerVar "test_var", 0


End Sub



' Event callbacks
Function OnTroughEject(args)
	RandomSoundBallRelease swTrough1
	DOF 110, DOFPulse
End Function

Function BallDrainSound(args)
    RandomSoundDrain Drain 
    BallDrainSound = args(1)
End Function 




' Shared profile examples
Public Sub CreateSharedShotProfiles()

    With GlfShotProfiles("off_on_color")
        With .States("unlit")
            .Show = "off"
            .Key = "key_off_on_color_unlit"
        End With
        With .States("on")
            .Show = "led_color"
            .Key = "key_off_on_color_on"
        End With
    End With

    With GlfShotProfiles("flicker_on_flicker_off")
        With .States("lit")
            .Show = "flicker_color_on"
            .Key = "key_flicker_on_flicker_off_lit"
            .Speed = 3
        End With
        With .States("unlit")
            .Show = "flicker_color_off"
            .Speed = 3
            .Key = "key_flicker_on_flicker_off_unlit"
        End With
    End With

    With GlfShotProfiles("flicker_on")
        With .States("unlit")
            .Show = "off"
            .Key = "key_flicker_on_unlit"
        End With
        With .States("on")
            .Show = "flicker_color_on"
            .Key = "key_flicker_on_on"
            .Speed = 4
        End With
    End With
    
    With GlfShotProfiles("shoot_again")
      With .States("unlit")
          .Show = "off"
          .Key = "key_shoot_again_unlit"
          '.Priority = 5000
          With .Tokens()
              .Add "lights", "LSA"
          End With
      End With
      With .States("flashing")
          .Show = "flash_color_with_fade"
          .Key = "key_shoot_again_flashing"
          .Speed = 2
          .Priority = 5000
          With .Tokens()
              .Add "lights", "LSA"
              .Add "fade", 500
          End With
      End With
      With .States("hurry")
          .Show = "flash_color"
          .Key = "key_shoot_again_hurry"
          .Speed = 7
          .Priority = 5000
          With .Tokens()
              .Add "lights", "LSA"
          End With
      End With
    End With


End Sub
