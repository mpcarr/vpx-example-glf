
'******************************************************
'	ZGCF:  GLF Configurations
'******************************************************

Sub ConfigureGlfDevices


    ' Load up the shows
    ' CreateGeneralShows()



    ' Plunger
    With CreateGlfBallDevice("plunger")
        .BallSwitches = Array("s_Plunger")
        .EjectTimeout = 200
        .MechanicalEject = True
        .DefaultDevice = True
        .EjectCallback = "PlungerEjectCallback"
    End With


    ' Flippers
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
    ' With CreateGlfBallDevice("scoop")
    '     .BallSwitches = Array("s_Scoop")
    '     .EjectTimeout = 2000
    '     .MechanicalEject = True
	' 	.EjectCallback = "ScoopEjectCallback"
    ' End With


    ' Diverter
    ' With CreateGlfDiverter("divert_pin")
    '     .EnableEvents = Array("ball_started","reset_complete","enable_diverter")
    '     .ActivateEvents = Array("raise_diverter") 
    '     .DeactivateEvents = Array("drop_diverter","ball_ended") 
    '     .ActionCallback = "RaiseDiverterPin"
    ' End With


    'Drop Targets
    With CreateGlfDroptarget("drop1")
        .Switch = "s_DT1"
        .KnockdownEvents = Array("DT1_knockdown")
        .ResetEvents = Array("ball_started")
        .ActionCallback = "DT1Callback"
        .UseRothDroptarget = True
    End With

    With CreateGlfDroptarget("drop2")
        .Switch = "s_DT2"
        .KnockdownEvents = Array("DT2_knockdown")
        .ResetEvents = Array("ball_started")
        .ActionCallback = "DT2Callback"
        .UseRothDroptarget = True
    End With

    With CreateGlfDroptarget("drop3")
        .Switch = "s_DT3"
        .KnockdownEvents = Array("DT3_knockdown")
        .ResetEvents = Array("ball_started")
        .ActionCallback = "DT3Callback"
        .UseRothDroptarget = True
    End With



    ' Slingshots
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


    ' Magnet
    With CreateGlfMagnet("mag1")
        .EnableEvents = Array("ball_started")
        .DisableEvents = Array("ball_ended")
        .GrabBallEvents = Array("mag1_grab")
        .ReleaseBallEvents = Array("magnet_mag1_grabbed_ball")
        .GrabTime = 1000
        .ActionCallback = "GrabMagnetAction"
    End With


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




' Shared profiles
Public Sub CreateSharedShotProfiles()

    With GlfShotProfiles("off_on_color")
        With .States("unlit")
            .Show = "off"
            .Key = "key_off_a"
        End With
        With .States("on")
            .Show = "led_color"
            .Key = "key_on_a"
        End With
    End With

    With GlfShotProfiles("flicker_on_flicker_off")
        With .States("lit")
            .Show = "flicker_color_on"
            .Key = "key_off_z"
            .Speed = 3
        End With
        With .States("unlit")
            .Show = "flicker_color_off"
            .Speed = 3
            .Key = "key_on_z"
        End With
    End With

    With GlfShotProfiles("flicker_on")
        With .States("unlit")
            .Show = "off"
            .Key = "key_off_b"
        End With
        With .States("on")
            .Show = "flicker_color_on"
            .Key = "key_on_b"
            .Speed = 4
        End With
    End With
    
    With GlfShotProfiles("shoot_again")
      With .States("unlit")
          .Show = "off"
          .Key = "key_off_e"
          '.Priority = 5000
          With .Tokens()
              .Add "lights", "LSA"
          End With
      End With
      With .States("flashing")
          .Show = "flash_color_with_fade"
          .Key = "key_flashing_e"
          .Speed = 2
          .Priority = 5000
          With .Tokens()
              .Add "lights", "LSA"
              .Add "fade", 500
          End With
      End With
      With .States("hurry")
          .Show = "flash_color"
          .Key = "key_hurry_e"
          .Speed = 7
          .Priority = 5000
          With .Tokens()
              .Add "lights", "LSA"
          End With
      End With
    End With


End Sub
