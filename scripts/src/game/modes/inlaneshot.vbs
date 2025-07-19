

' Inlane Shot Mode
'
'  - When a ball goes down an inlane, and the inlane shot light is lit, then the opposite orbit shot and spinner is lit for a few seconds
'  - If the orbit shot is made, points and bonus awarded
'  - The associated spinner value is 10x when shot is lit


Const InlaneOrbitShotTime = 4   'seconds

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
            .Add "left_orbit_hit{current_player.shot_left_orbit == 1}", Array("light_right_inlane","add_bonus")
            .Add "right_orbit_hit{current_player.shot_right_orbit == 1}", Array("light_left_inlane","add_bonus")

            'Left Spinner
            .Add "s_spinner_active{current_player.shot_left_orbit == 0}", Array("score_3333","do_sfx_spin","play_spin1_show")
            .Add "s_spinner_active{current_player.shot_left_orbit == 1}", Array("score_33333","do_sfx_laser_blast","do_spin1_super_show")
            .Add "do_sfx_spin", Array("stop_sfx_spin") 'first stop the sfx if it is already playing
            .Add "stop_sfx_spin", Array("play_sfx_spin") 'then play the sfx
            .Add "do_spin1_super_show{current_player.spin_show == 1}", Array("play_spin1_super_show1") 'play spin show 1
            .Add "do_spin1_super_show{current_player.spin_show == 2}", Array("play_spin1_super_show2") 'play spin show 2
            

            'Right Spinner
            .Add "s_spinner2_active{current_player.shot_right_orbit == 0}", Array("score_3333","do_sfx_spin2","play_spin2_show")
            .Add "s_spinner2_active{current_player.shot_right_orbit == 1}", Array("score_33333","do_sfx_laser_blast","do_spin2_super_show")
            .Add "do_sfx_spin2", Array("stop_sfx_spin2") 'first stop the sfx if it is already playing
            .Add "stop_sfx_spin2", Array("play_sfx_spin2") 'then play the sfx
            .Add "do_spin2_super_show{current_player.spin_show == 1}", Array("play_spin2_super_show1") 'play spin show 1
            .Add "do_spin2_super_show{current_player.spin_show == 2}", Array("play_spin2_super_show2") 'play spin show 2

            'Super spinner sound effect
            .Add "do_sfx_laser_blast", Array("stop_sfx_laser_blast") 'first stop the sfx if it is already playing
            .Add "stop_sfx_laser_blast", Array("play_sfx_laser_blast") 'then play the sfx

        End With


        With .WidgetPlayer()
            With .EventName("light_right_orbit")
                .Widget = "left_spinner"
                .Action = "play"
                .Expire = InlaneOrbitShotTime
            End With
            With .EventName("light_left_orbit")
                .Widget = "left_spinner"
                .Action = "play"
                .Expire = InlaneOrbitShotTime
            End With
        End With

        'Play sounds specific to this mode
        With .SoundPlayer()
            'normal left spin sound
            With .EventName("play_sfx_spin")
                .Key = "key_sfx_spin"
                .Sound = "sfx_spin"
            End With
            With .EventName("stop_sfx_spin")
                .Key = "key_sfx_spin"
                .Sound = "sfx_spin"
                .Action = "stop"
            End With

            'normal right spin sound
            With .EventName("play_sfx_spin2")
                .Key = "key_sfx_spin2"
                .Sound = "sfx_spin2"
            End With
            With .EventName("stop_sfx_spin2")
                .Key = "key_sfx_spin2"
                .Sound = "sfx_spin2"
                .Action = "stop"
            End With

            'super spin sound
            With .EventName("play_sfx_laser_blast")
                .Key = "key_sfx_laser_blast"
                .Sound = "sfx_laser_blast"
            End With
            With .EventName("stop_sfx_laser_blast")
                .Key = "key_sfx_laser_blast"
                .Sound = "sfx_laser_blast"
                .Action = "stop"
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
            .RestartEvents = Array("timer_right_inlane_complete","mode_inlaneshot_started")
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
            .RestartEvents = Array("timer_left_inlane_complete","mode_inlaneshot_started")
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


        With .ShowPlayer
            With .EventName("play_spin1_show") 
                .Key = "key_spin1_show"
                .Show = "flash_color_with_fade"    'defined in CreateGeneralShows()
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "fade", 500
                    .Add "color", SpinnerLeftColor
                End With
            End With
            With .EventName("play_spin1_super_show1") 
                .Key = "key_spin1_super_show1"
                .Show = "spin1_super_show1"
                .Speed = 1
                .Loops = 1
                .Priority = 20000
            End With
            With .EventName("play_spin1_super_show2") 
                .Key = "key_spin1_super_show2"
                .Show = "spin1_super_show2"
                .Speed = 1
                .Loops = 1
                .Priority = 20000
            End With
            

            With .EventName("play_spin2_show") 
                .Key = "key_spin2_show"
                .Show = "flash_color_with_fade"    'defined in CreateGeneralShows()
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "fade", 500
                    .Add "color", SpinnerRightColor
                End With
            End With
            With .EventName("play_spin2_super_show1") 
                .Key = "key_spin2_super_show1"
                .Show = "spin2_super_show1"
                .Speed = 1
                .Loops = 1
                .Priority = 20000
            End With
            With .EventName("play_spin2_super_show2") 
                .Key = "key_spin2_super_show2"
                .Show = "spin2_super_show2"
                .Speed = 1
                .Loops = 1
                .Priority = 20000
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


        With .VariablePlayer
            ' spin_show is a flag used to toggle the spinner shows
            With .EventName("play_spin1_super_show1") 
                With .Variable("spin_show")
                    .Action = "set"
                    .Int = 2
                End With
            End With
            With .EventName("play_spin1_super_show2") 
                With .Variable("spin_show")
                    .Action = "set"
                    .Int = 1
                End With
            End With
            With .EventName("play_spin2_super_show1") 
                With .Variable("spin_show")
                    .Action = "set"
                    .Int = 2
                End With
            End With
            With .EventName("play_spin2_super_show2") 
                With .Variable("spin_show")
                    .Action = "set"
                    .Int = 1
                End With
            End With
        End With

    End With

End Sub