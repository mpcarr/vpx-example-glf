

' Skillshots Mode
'
'  - The kickback will save a ball falling down the left outlane by activating a cocked plunger in the outlane.
'  - To activate the kickback, all of the top rollover lane lights must be lit.
'  - The rollover lane lights rotate left and right with flipper button presses.
'  - Once the kickback is used, the lane lights and kicker light reset.



Sub CreateSkillshotsMode()
    Dim x

    With CreateGlfMode("skillshots", 400)

        'Define the events that start and stop this mode
        .StartEvents = Array("new_ball_started")
        .StopEvents = Array("mode_base_stopping","stop_skillshots")


        'The event player will respond to events during this mode
        With .EventPlayer()

            'Only start skillshots if starting a new ball
            .Add "mode_skillshots_started{current_player.ball_just_started == 1}", Array("init_ss")

            'Handle successful skillshots
            .Add "s_TopLane1_active{current_player.shot_ss1 == 1}", Array("ss_achieved")
            .Add "s_TopLane2_active{current_player.shot_ss2 == 1}", Array("ss_achieved")
            .Add "s_TopLane3_active{current_player.shot_ss3 == 1}", Array("ss_achieved")
            .Add "s_TopLane4_active{current_player.shot_ss4 == 1}", Array("ss_achieved")
            .Add "ss_achieved", Array("stop_skillshots","add_bonus","score_500000")

            'Stop skillshots if orbit lanes are hit, or if timer runs out for some reason
            .Add "s_TopLane1_inactive", Array("stop_skillshots")
            .Add "s_TopLane2_inactive", Array("stop_skillshots")
            .Add "s_TopLane3_inactive", Array("stop_skillshots")
            .Add "s_TopLane4_inactive", Array("stop_skillshots")
            .Add "s_LeftOrb1_active", Array("stop_skillshots")
            .Add "s_RightOrb1_active", Array("stop_skillshots")
            .Add "timer_skillshots_complete", Array("stop_skillshots") 

        End With


        'The random event player will dispatch an event at random (wieghted) from a list of possible events
        With .RandomEventPlayer()
            'Upon initialization, randomly choose one of the four top lane lights to flash for the skill shot
            With .EventName("init_ss")
                .Add "light_ss1", 1
                .Add "light_ss2", 1
                .Add "light_ss3", 1
                .Add "light_ss4", 1
                .ForceAll = False
                .ForceDifferent = False
            End With
        End With


        'Define the four possible skill shots
        For x = 1 to 4
            With .Shots("ss"&x)
                .Profile = "ss_ready"   'defined below
                With .Tokens()
                    .Add "lights", SkillshotLightNames(x-1)
                End With
                With .ControlEvents()
                    .Events = Array("stop_skillshots")
                    .State = 0
                End With
                With .ControlEvents()
                    .Events = Array("light_ss"&x)
                    .State = 1
                End With
            End With
        Next


        'Define Skillshot ready shot profile with two states (0 = unlit, 1 = ready)
        'Skill shot is ready, two states
        With .ShotProfiles("ss_ready")
            With .States("unlit")
                .Key = "key_ss_not_ready"
                .Show = "off"
            End With
            With .States("ready")
                .Key = "key_ss_ready"
                .Show = "flash_color_with_fade"
                'Note the priority set below adds to this modes priority (which is set to 400). 
                ' This allows the other toplane lights from kickback mode (priority 500) show up under the unlit skillshot shots, 
                ' while putting the lit skillshot light on top of the toplane lights.
                .Priority = 1000   
                .Speed = 3
                With .Tokens()
                    .Add "fade", 200
                    .Add "color", SkillshotColor
                End With
            End With
        End With

        'Skillshot will time out after 5 seconds
        With .Timers("skillshots")
            .TickInterval = 1000
            .StartValue = 0
            .EndValue = 5
            With .ControlEvents()
                .EventName = "new_ball_active"
                .Action = "restart"
            End With
        End With

    End With

End Sub