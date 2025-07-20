

' Ramp Shot Mode
'
'  - When a ball hits ramp, and the ramp shot light gets lit.
'  - If the ramp is made again points and bonus are awarded, and the ramp shot timer resets
'  - This mode is disabled during multiball since it might conflict with the jackpot shot


Const RampShotTime = 4   'seconds

Sub CreateRampshotsMode()

    With CreateGlfMode("rampshot", 660)

        'Define the events that start and stop this mode
        .StartEvents = Array("ball_started","multiball_mb_ended")
        .StopEvents = Array("mode_base_stopping","start_multiball_delay")


        'The event player will respond to events during this mode
        With .EventPlayer()

            'Handle successful ramp hits
            .Add "s_RampHit_active", Array("light_ramp")
            .Add "s_RampHit_active{current_player.shot_ramp == 1}", Array("score_200000","add_bonus","play_sfx_alert1")

        End With


        'Play sounds specific to this mode
        With .SoundPlayer()
            With .EventName("play_sfx_alert1")
                .Key = "key_sfx_alert1"
                .Sound = "sfx_alert1"
            End With
        End With


        'Define the inlane shots
        With .Shots("ramp")
            .Profile = "ramp"   'defined below
            With .ControlEvents()
                .Events = Array("timer_ramp_complete","mode_rampshot_started")
                .State = 0
            End With
            With .ControlEvents()
                .Events = Array("light_ramp")
                .State = 1
            End With
        End With


        'Define inlane shot profile with three states (0 = unlit, 1 = ready, 2 = hit)
        With .ShotProfiles("ramp")
            With .States("unlit")
                .Key = "key_ramp_unlit"
                .Show = "off"
                With .Tokens()
                    .Add "lights", "tRamp"
                End With
            End With
            With .States("lit")
                .Key = "key_ramp_lit"
                .Show = "flash_color"
                .Speed = 15
                .Priority = 1000
                With .Tokens()
                    .Add "lights", "tRamp"
                    .Add "color", RampshotColor
                End With
            End With
        End With


        'Inlane orbit shot timers
        With .Timers("ramp")
            .TickInterval = 1000
            .StartValue = 0
            .EndValue = RampShotTime
            With .ControlEvents()
                .EventName = "light_ramp"
                .Action = "restart"
            End With
        End With


    End With

End Sub