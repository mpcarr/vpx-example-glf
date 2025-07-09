

' Multiball Mode
'
' To start the multiball:
'  - hit all the stand up targets to light the top lock. The diverter opens to expose the lock. The diverter will close briefly if ball goes up right orbit.
'  - lock the ball first ball. The diverter will close. Then the stand up targets will reset for the next lock.
'  - hit all the stand up targets to light the bottom lock.
'  - lock the second ball. Then the multiball shot on the ramp is lit.
'  - hit the ramp to start multiball: The diverter opens, both locked balls are kicked out, the diverter then closes.
' During multiball:
'  - jackpots are lit on the ramp and the bottom lock. Hit those to get points and bonus
'  - the drop targets are all dropped durning multiball. They will be reset after.
'  - the standup targets only collect points and dont advance toward another lock. They will be reset after.
'  - the kickback mode and inlane shot mode are still active.
' Notes:
'  - locked balls can be stolen by other players.
'  - diverter is managed using a state machine



Sub CreateMultiballMode()
    Dim x

    With CreateGlfMode("multiball", 1000)

        'Define the events that start and stop this mode
        .StartEvents = Array("ball_started")
        .StopEvents = Array("mode_base_stopping")


        'The event player will respond to events during this mode
        With .EventPlayer()

            .Add "mode_multiball_started{current_player.shot_top_lock == 1}", Array("top_lock_ready") 're-opens the diverter

            'Handle qualified locks
            .Add "qualify_lock_on_complete{current_player.shot_top_lock == 0}", Array("enable_locks","top_lock_ready")   'ready top lock first
            .Add "qualify_lock_on_complete{current_player.shot_top_lock == 2 && current_player.shot_bottom_lock == 0}", Array("enable_locks","bottom_lock_ready") 'ready bottom lock next

            'Handle top ball getting locked (this is the first locked ball)
            .Add "multiball_lock_mb_locks_locked_ball{current_player.multiball_lock_mb_locks_balls_locked == 1}", Array("top_locked","restart_qualify_lock","disable_locks")

            'Handle top ball getting locked (this is the second locked ball)
            .Add "multiball_lock_mb_locks_locked_ball{current_player.multiball_lock_mb_locks_balls_locked == 2}", Array("bottom_locked","disable_locks","multiball_ready")

            'Handle start of multiball
            .Add "s_RampHit_active{current_player.shot_mb_start == 1}", Array("start_multiball")

            'Handle Jackpot hits

        End With


        'Configure the multiball
        With .Multiballs("mb")
            .StartEvents = Array("start_multiball.3")
            .BallCount = 2
            .BallCountType = "add"
            .ShootAgain = 10000
            .HurryUp = 3000
            .GracePeriod = 2000
            .BallLocks = Array("kicker1", "kicker2")
        End With

        With .MultiballLocks("mb_locks")
            .EnableEvents = Array("enable_locks")
            .DisableEvents = Array("disable_locks")
            .ResetEvents = Array("start_multiball.2")
            .BallsToLock = 2
            .LockDevices = Array("kicker1", "kicker2")
            .Debug = True
        End With


        'Define the muiltball lock qualification shots
        'Note, the shots are activated by corresponding switch and reset by the shot group
        For x = 1 to 4
            With .Shots("standup"&x)
                .Switch = LockQualifySwitches(x-1)
                .Profile = "flicker_on"   'This is a shared shot profile created in CreateSharedShotProfiles()
                With .Tokens()
                    .Add "lights", LockQualifyLightNames(x-1)
                    .Add "color", MultiballColor
                End With
                .RestartEvents = Array("reset_target_shots")
            End With
        Next

        'Define the shot group
        With .ShotGroups("qualify_lock")
            .Shots = Array("standup1", "standup2", "standup3", "standup4")
            .EnableEvents = Array("enable_qualify_lock")
            .DisableEvents = Array("disable_qualify_lock")
            .RestartEvents = Array("restart_qualify_lock")
        End With


        'Define the lock and multiball shots
        With .Shots("top_lock")
            .Profile = "lock"   'defined below
            With .Tokens()
                .Add "lights", "L32"
            End With
            With .ControlEvents()
                .Events = Array("top_lock_ready")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("top_locked")
                .State = 2
            End With
            .RestartEvents = Array("start_multiball")
        End With

        With .Shots("bottom_lock")
            .Profile = "lock"   'defined below
            With .Tokens()
                .Add "lights", "L25"
            End With
            With .ControlEvents()
                .Events = Array("bottom_lock_ready")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("bottom_locked")
                .State = 2
            End With
            .RestartEvents = Array("start_multiball")
        End With

        With .Shots("mb_start")
            .Profile = "lock"   'defined below
            With .Tokens()
                .Add "lights", "L09"
            End With
            With .ControlEvents()
                .Events = Array("multiball_ready")
                .State = 1
            End With
            .RestartEvents = Array("start_multiball")
        End With


        'Define inlane shot profile with three states (0 = unlit, 1 = ready, 2 = locked)
        With .ShotProfiles("lock")
            With .States("unlit")
                .Key = "key_lock_unlit"
                .Show = "off"
            End With
            With .States("ready")
                .Key = "key_lock_ready"
                .Show = "flash_color_with_fade"    'defined in CreateGeneralShows()
                .Speed = 10
                With .Tokens()
                    .Add "fade", 200
                    .Add "color", MultiballColor
                End With
            End With
            With .States("locked")
                .Key = "key_lock_locked"
                .Show = "led_color" 
                With .Tokens()
                    .Add "color", MultiballColor
                End With
            End With
        End With


        'Define the jackpot shots
        With .Shots("left_jackpot")
            .Profile = "jackpot"   'defined below
            With .Tokens()
                .Add "lights", "L08"
            End With
            With .ControlEvents()
                .Events = Array("start_multiball")
                .State = 1
            End With
            .RestartEvents = Array("stop_multiball")
        End With

        With .Shots("right_jackpot")
            .Profile = "jackpot"   'defined below
            With .Tokens()
                .Add "lights", "L24"
            End With
            With .ControlEvents()
                .Events = Array("start_multiball")
                .State = 1
            End With
            .RestartEvents = Array("stop_multiball")
        End With

        'Define jackpot shot profile with two states (0 = unlit, 1 = ready)
        With .ShotProfiles("jackpot")
            With .States("unlit")
                .Key = "key_lock_unlit"
                .Show = "off"
            End With
            With .States("ready")
                .Key = "key_lock_ready"
                .Show = "flash_color_with_fade"    'defined in CreateGeneralShows()
                .Speed = 10
                With .Tokens()
                    .Add "fade", 200
                    .Add "color", JackpotColor
                End With
            End With
        End With



        'The following state machine and timers manages the diverter
        '  - Default to closing the diverter
        '  - Open the diverter if top lock is ready
        '  - Temporarily close the diverter (for a couple seconds) if already opened and ball goes up the right orbit
        '  - Close the diverter when the ball gets locked.
        '  - Temporarily open the diverter (for a couple seconds) when it's time to kick out the ball for multiball
        With .StateMachines("diverter")
            .PersistState = false   'when mode start, always initialize to the staring state
            .StartingState = "closed"

            'States
            With .States("closed")
                .Label = "Diverter Closed"
                .EventsWhenStarted = Array("close_diverter") 
            End With
            With .States("opened")
                .Label = "Diverter Opened"
                .EventsWhenStarted = Array("open_diverter") 
            End With

            'Transitions
            With .Transitions()
                .Source = Array("closed")
                .Target = "opened"
                .Events = Array("top_lock_ready","timer_diverter_reopen_complete")
            End With
            With .Transitions()
                .Source = Array("opened")
                .Target = "closed"
                .Events = Array("top_locked","timer_diverter_reclose_complete")
            End With
            With .Transitions()
                .Source = Array("opened")
                .Target = "closed"
                .Events = Array("s_RightOrb2_active")
                .EventsWhenTransitioning = Array("temporarily_close_diverter")
            End With
            With .Transitions()
                .Source = Array("closed")
                .Target = "open"
                .Events = Array("start_multiball.4")
                .EventsWhenTransitioning = Array("temporarily_open_diverter")
            End With

        End With

        'Timer used to closed diverter for a couple seconds, then reopen it
        With .Timers("diverter_reopen")
            .TickInterval = 500
            .StartValue = 0
            .EndValue = 3
            With .ControlEvents()
                .EventName = "temporarily_close_diverter"
                .Action = "restart"
            End With
        End With

        'Timer used to open diverter for a couple seconds, then reclose it
        With .Timers("diverter_reclose")
            .TickInterval = 500
            .StartValue = 0
            .EndValue = 3
            With .ControlEvents()
                .EventName = "temporarily_open_diverter"
                .Action = "restart"
            End With
        End With


    End With

End Sub