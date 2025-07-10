

' Inlane Shot Mode
'
'  - When a ball goes down an inlane, and the inlane shot light is lit, then the opposite orbit shot is lit for a few seconds
'  - If the orbit shot is made, points and bonus awarded


Const InlaneOrbitShotTime = 3   'seconds

Sub CreateInlaneshotsMode()
    Dim x

    With CreateGlfMode("inlaneshot", 650)

        'Define the events that start and stop this mode
        .StartEvents = Array("ball_started")
        .StopEvents = Array("mode_base_stopping")


        'The event player will respond to events during this mode
        With .EventPlayer()

            'For now, the inlane shots are always lit. Maybe add some qualification steps?
            .Add "mode_inlaneshot_started", Array("light_left_inlane","light_right_inlane")

            'Handle successful inlane hits
            .Add "s_LeftInlane_active{current_player.shot_left_inlane == 1}", Array("hit_left_inlane","light_right_orbit")
            .Add "s_RightInlane_active{current_player.shot_right_inlane == 1}", Array("hit_right_inlane","light_left_orbit")

            'Handle successful orbit shot hits (based on sequence shots defined in base mode)
            .Add "left_orbit_hit{current_player.shot_left_orbit == 1}", Array("left_orbit_success","light_right_inlane","add_bonus","score_200000")
            .Add "right_orbit_hit{current_player.shot_right_orbit == 1}", Array("right_orbit_success","light_left_inlane","add_bonus","score_200000")

        End With

        With .WidgetPlayer()
            With .EventName("light_right_orbit")
                .Widget = "right_spinner"
                .Action = "play"
                .Expire = InlaneOrbitShotTime
            End With
            With .EventName("light_left_orbit")
                .Widget = "left_spinner"
                .Action = "play"
                .Expire = InlaneOrbitShotTime
            End With
        End With

        'Define the inlane shots
        With .Shots("left_inlane")
            .Profile = "inlane"   'defined below
            With .Tokens()
                .Add "lights", "L06"
            End With
            With .ControlEvents()
                .Events = Array("light_left_inlane","timer_left_inlane_complete")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("hit_left_inlane")
                .State = 2
            End With
        End With

        With .Shots("right_inlane")
            .Profile = "inlane"   'defined below
            With .Tokens()
                .Add "lights", "L05"
            End With
            With .ControlEvents()
                .Events = Array("light_right_inlane","timer_right_inlane_complete")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("hit_right_inlane")
                .State = 2
            End With
        End With


        'Define inlane shot profile with three states (0 = unlit, 1 = ready, 2 = hit)
        With .ShotProfiles("inlane")
            With .States("unlit")
                .Key = "key_inlane_unlit"
                .Show = "off"
            End With
            With .States("ready")
                .Key = "key_inlane_ready"
                .Show = "led_color"
                With .Tokens()
                    .Add "color", InlaneshotColor
                End With
            End With
            With .States("hit")
                .Key = "key_inlane_hit"
                .Show = "flash_color"
                .Speed = 15
                With .Tokens()
                    .Add "color", InlaneshotColor
                End With
            End With
        End With


        'Define the orbit shots
        With .Shots("left_orbit")
            .Profile = "orbit"   'defined below
            With .Tokens()
                .Add "lights", "L23"
            End With
            With .ControlEvents()
                .Events = Array("light_left_orbit")
                .State = 1
            End With
            .RestartEvents = Array("left_orbit_success","timer_right_inlane_complete","mode_inlaneshot_started")
        End With

        With .Shots("right_orbit")
            .Profile = "orbit"   'defined below
            With .Tokens()
                .Add "lights", "L18"
            End With
            With .ControlEvents()
                .Events = Array("light_right_orbit")
                .State = 1
            End With
            .RestartEvents = Array("right_orbit_success","timer_left_inlane_complete","mode_inlaneshot_started")
        End With


        'Define inlane shot profile with three states (0 = unlit, 1 = ready)
        With .ShotProfiles("orbit")
            With .States("unlit")
                .Key = "key_orbit_unlit"
                .Show = "off"
            End With
            With .States("ready")
                .Key = "key_inlane_hit"
                .Show = "flash_color"
                .Speed = 15
                With .Tokens()
                    .Add "color", InlaneshotColor
                End With
            End With
        End With


        'Inlane orbit shot timers
        With .Timers("left_inlane")
            .TickInterval = 1000
            .StartValue = 0
            .EndValue = InlaneOrbitShotTime
            With .ControlEvents()
                .EventName = "hit_left_inlane"
                .Action = "restart"
            End With
        End With

        With .Timers("right_inlane")
            .TickInterval = 1000
            .StartValue = 0
            .EndValue = InlaneOrbitShotTime
            With .ControlEvents()
                .EventName = "hit_right_inlane"
                .Action = "restart"
            End With
        End With

    End With

End Sub