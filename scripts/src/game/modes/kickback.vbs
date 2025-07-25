

' Kickback Mode
'
'  - The kickback will save a ball falling down the left outlane by activating a cocked plunger in the outlane.
'  - To activate the kickback, all of the top rollover lane lights must be lit.
'  - The rollover lane lights rotate left and right with flipper button presses.
'  - Once the kickback is used, the lane lights and kicker light reset.



Sub CreateKickbackMode()
    Dim x

    With CreateGlfMode("kickback", 500)

        'Define the events that start and stop this mode
        .StartEvents = Array("ball_started")
        .StopEvents = Array("mode_base_stopping")


        'The event player will respond to events during this mode
        With .EventPlayer()

            'Handle start of mode. Make sure the kickback is ready to use if lit.
            .Add "mode_kickback_started", Array("reset_kickback")

            'Fire the kickback if it is lit
            .Add "s_LeftInOutlane_inactive{current_player.shot_kickback_ready > 0}", Array("fire_kickback","score_10000","play_kickback_show")

            'Reset the kickback plunger shortly after it was used (so that it may be used again)
            .Add "timer_kickback_reset_complete", Array("reset_kickback")

            'Give some grace time such that the kickback can be used again right after it was fired.
            .Add "timer_kickback_cooldown_complete", Array("restart_kickback_qualify_shots")

            'Add some points when top lanes hit
            .Add "qualify_kickback_hit", Array("score_5000")

            'Add some points and bonus when top lanes completed
            .Add "qualify_kickback_on_complete", Array("add_bonus","score_50000")

            'Play sound effect
            .Add "qualify_kickback_on_complete{current_player.ss_running == 0}", Array("play_voc_kickback_ready")  'if skillshot not running, immediately play callout
            .Add "voc_skill_shot_stopped", Array("play_voc_kickback_ready")  'otherwise, play callout after the skill shot callout

        End With

        'Define the kickback qualification shots
        'Note, the shots are activated by corresponding switch and reset by the shot group
        For x = 1 to 4
            With .Shots("top_lane"&x)
                .Switch = KickbackQualifySwitches(x-1)
                .Profile = "off_on_color"   'This is a shared shot profile created in CreateSharedShotProfiles()
                With .Tokens()
                    .Add "lights", KickbackQualifyLightNames(x-1)
                    .Add "color", KickbackColor
                End With
                With .ControlEvents()
                    .Events = Array("ss_achieved")  'successful skill shot will complete kickback lanes and award kickback
                    .State = 1
                End With
            End With
        Next


        'Define the shot group, rotating with flipper button presses
        With .ShotGroups("qualify_kickback")
            .Shots = Array("top_lane1", "top_lane2", "top_lane3", "top_lane4")
            .RotateLeftEvents = Array("s_left_flipper_active")
            .RotateRightEvents = Array("s_right_flipper_active")
            .RestartEvents = Array("restart_kickback_qualify_shots")
        End With


        'Kickback Ready shot
        With .Shots("kickback_ready")
            .Profile = "kickback"   'defined below
            With .Tokens()
                .Add "lights", "L07"
                .Add "color", KickbackColor
            End With
            'Light the kickback when all of the shots in "qualify_kickback" shot group have reached the "on" state in the shot profile.
            With .ControlEvents()
                .Events = Array("qualify_kickback_on_complete")  
                .State = 1
            End With
            'Flash the kickback after it is used
            With .ControlEvents()
                .Events = Array("fire_kickback")
                .State = 2
            End With
            'Reset the kicback
            .RestartEvents = Array("restart_kickback_qualify_shots")
        End With


        'Define kickback shot profile with three states (0 = unlit, 1 = on, 2 = flashing)
        With .ShotProfiles("kickback")
            With .States("unlit")
                .Key = "key_kb_unlit"
                .Show = "off"
            End With
            With .States("on")
                .Key = "key_kb_on"
                .Show = "flicker_color_on"    'defined in CreateGeneralShows()
                .Speed = 4
                With .Tokens()
                    .Add "color", KickbackColor
                End With
            End With
            With .States("flashing")
                .Key = "key_kb_flashing"
                .Show = "flash_color_with_fade"   'defined in CreateGeneralShows()
                .Speed = 8
                With .Tokens()
                    .Add "fade", 500
                    .Add "color", KickbackColor
                End With
            End With
        End With

        With .ShowPlayer()
            'kickback show
            With .EventName("play_kickback_show")
                .Key = "key_kickback_show"
                .Show = "sweep_up" 
                .Speed = 4
                .Loops = 1
                .Priority = 10000
                With .Tokens()
                    .Add "color", "ff0000"
                End With
            End With
        End With


        'Timer for resetting the kickback plunger
        With .Timers("kickback_reset")
            .TickInterval = 200
            .StartValue = 0
            .EndValue = 1
            With .ControlEvents()
                .EventName = "fire_kickback"
                .Action = "restart"
            End With
        End With

        'Timer for resetting the kickback qualification process
        With .Timers("kickback_cooldown")
            .TickInterval = 1000
            .StartValue = 0
            .EndValue = 3
            With .ControlEvents()
                .EventName = "fire_kickback"
                .Action = "restart"
            End With
        End With


    End With

End Sub