

'Kickback Mode


Const KickbackColor = "dd1100"

Dim KickbackQualifySwitches, KickbackQualifyLightNames
KickbackQualifySwitches = Array("s_TopLane1","s_TopLane2","s_TopLane3","s_TopLane4")
KickbackQualifyLightNames = Array("L31","L30","L29","L28")


Sub CreateKickbackMode()
    Dim x

    With CreateGlfMode("kickback", 500)
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")


        'Event player
        With .EventPlayer()
            .Add "mode_kickback_started", Array("reset_kickback")
            .Add "s_LeftInOutlane_inactive{current_player.shot_kickback_ready > 0}", Array("fire_kickback")
            .Add "timer_kickback_reset_complete", Array("reset_kickback")
            .Add "timer_kickback_cooldown_complete", Array("restart_kickback_qualify_shots")
        End With


        'Define the shots
        For x = 1 to 4
            With .Shots("top_lane"&x)
                .Switch = KickbackQualifySwitches(x-1)
                .Profile = "off_on_color"
                With .Tokens()
                    .Add "lights", KickbackQualifyLightNames(x-1)
                    .Add "color", KickbackColor
                End With
                ' With .ControlEvents()
                '     .Events = Array("complete_kickback_qualify_shots") 
                '     .State = 1
                ' End With
            End With
        Next


        'Define the shot group, rotating with flipper button presses
        With .ShotGroups("qualify_kickback")
            .Shots = Array("top_lane1", "top_lane2", "top_lane3", "top_lane4")
            .RotateLeftEvents = Array("s_left_flipper_active")
            .RotateRightEvents = Array("s_right_flipper_active")
            .RestartEvents = Array("restart_kickback_qualify_shots")
        End With


        'Define kickback ready shot profile with three states (unlit/on/flashing)
        With .ShotProfiles("kickback")
            With .States("unlit")
                .Key = "key_kb_unlit"
                .Show = "off"
            End With
            With .States("on")
                .Key = "key_kb_on"
                .Show = "flicker_color_on"
                .Speed = 4
                With .Tokens()
                    .Add "color", KickbackColor
                End With
            End With
            With .States("flashing")
                .Key = "key_kb_flashing"
                .Show = "flash_color_with_fade"
                .Speed = 8
                With .Tokens()
                    .Add "fade", 500
                    .Add "color", KickbackColor
                End With
            End With
        End With


        'Kickback Ready shot
        With .Shots("kickback_ready")
            .Profile = "kickback"
            With .Tokens()
                .Add "lights", "L07"
                .Add "color", KickbackColor
            End With
            With .ControlEvents()
                .Events = Array("qualify_kickback_on_complete")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("fire_kickback")
                .State = 2
            End With
            .RestartEvents = Array("restart_kickback_qualify_shots")
        End With


        'Timer for resetting the kickback
        With .Timers("kickback_reset")
            .TickInterval = 200
            .StartValue = 0
            .EndValue = 1
            With .ControlEvents()
                .EventName = "fire_kickback"
                .Action = "restart"
            End With
        End With

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