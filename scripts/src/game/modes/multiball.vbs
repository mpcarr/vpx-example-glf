

' Multiball Mode
'
' To start the multiball:
'  - hit all the stand up targets to light the locks. The diverter opens to expose the top lock. The diverter will close briefly if ball goes up right orbit.
'  - lock the ball first ball. The diverter will close. Then the stand up targets will reset for the next lock.
'  - hit all the stand up targets to light the next lock.
'  - lock the second ball. Then the multiball shot on the ramp is lit.
'  - hit the ramp to start multiball: The diverter opens, both locked balls are kicked out, the diverter then closes.
' During multiball:
'  - jackpots are lit on the ramp and the bottom lock. Hit those to get points and bonus
'  - the standup targets only collect points and dont advance toward another lock. They will be reset after.
'  - other modes are still active.
' Notes:
'  - locked balls can be stolen by other players.



Sub CreateMultiballMode()
    Dim x

    With CreateGlfMode("multiball", 1000)
        '.Debug = True
        
        'Define the events that start and stop this mode
        .StartEvents = Array("ball_started")
        .StopEvents = Array("mode_base_stopping")


        'The event player will respond to events during this mode
        With .EventPlayer()
            '.Debug = True

            'Handle allowing players to steal locked balls
            .Add "update_lock_shots{machine.top_ball_locked == 1}", Array("top_locked") 'closes diverter and sets shot to locked state
            .Add "update_lock_shots{machine.top_ball_locked == 0 && current_player.shot_top_lock == 1}", Array("top_lock_ready") 're-opens the diverter
            .Add "update_lock_shots{machine.top_ball_locked == 0 && current_player.shot_top_lock == 2}", Array("reset_top_lock") 'resets the top lock shot to not locked

            .Add "update_lock_shots{machine.bottom_ball_locked == 1}", Array("bottom_locked") 'sets shot to locked state
            .Add "update_lock_shots{machine.bottom_ball_locked == 0 && current_player.shot_bottom_lock == 1}", Array("bottom_lock_ready") 'this is not necessary since lock is already ready. But do it anyway.
            .Add "update_lock_shots{machine.bottom_ball_locked == 0 && current_player.shot_bottom_lock == 2}", Array("reset_bottom_lock") 'resets the bottom lock shot to not locked
            
            'Jackpot hits
            .Add "s_RampHit_active{current_player.shot_left_jackpot == 1}", Array("score_1000000","add_bonus","jackpot_show","play_sfx_jackpot")
            .Add "balldevice_kicker2_ball_entered{current_player.shot_right_jackpot == 1}", Array("score_1000000","add_bonus","jackpot_show","play_sfx_jackpot")

            'Handle music and callouts
            .Add "start_multiball", Array("stop_mus_ambient_loop","play_mus_multiball_loop","play_mb_bg_show")
            .Add "multiball_mb_ended", Array("play_mus_ambient_loop","stop_mus_multiball_loop","stop_mb_bg_show")
            .Add "sfx_jackpot_stopped", Array("play_voc_jackpot")   'play callout after the sfx

            .Add "stop_mb_bg_show", Array("backglass_on")

        End With


        'The random event player will dispatch an event at random (wieghted) from a list of possible events
        With .RandomEventPlayer()
            'When a jackpot is hit, play one of the callouts at random
            With .EventName("play_voc_jackpot")
                .Add "play_voc_jackpot1", 1
                .Add "play_voc_jackpot2", 1
                .ForceAll = False
                .ForceDifferent = False
            End With
        End With


        'Configure the multiball
        With .Multiballs("mb")
            .StartEvents = Array("start_multiball.3")
            .BallCount = 3
            .BallCountType = "total"
            .ShootAgain = 15000
            .HurryUp = 3000
            .GracePeriod = 2000
            .BallLocks = Array("kicker1", "kicker2")
        End With

        With .MultiballLocks("mb_locks")
            .EnableEvents = Array("enable_locks")
            .DisableEvents = Array("disable_locks")
            .ResetEvents = Array("start_multiball.2","restart_qualify_lock")
            .BallsToLock = 2
            .LockDevices = Array("kicker1", "kicker2")
            '.Debug = True
        End With


        'Play sounds specific to this mode
        With .SoundPlayer()
            With .EventName("play_sfx_jackpot")
                .Key = "key_sfx_jackpot"
                .Sound = "sfx_jackpot"
            End With
        End With


        'Play shows specific to this mode
        With .ShowPlayer()
            With .EventName("play_mb_bg_show")
                .Key = "key_mb_bg_show"
                .Show = "mb_backglass_show"
                .Priority = 15
                .Speed = 1
            End With
            With .EventName("stop_mb_bg_show")
                .Key = "key_mb_bg_show"
                .Show = "mb_backglass_show"
                .Priority = 15
                .Speed = 1
                .Action = "stop"
            End With
        End With


        'The following state machine manages the multiball mode

        With .StateMachines("multiball")
            '.Debug = True
            .PersistState = false   'when mode starts, always initialize in the starting state
            .StartingState = "init1"

            'States
            With .States("init1")
                .Label = "Init Phase 1"
                .EventsWhenStarted = Array("check_locks")  'check if balls are locked using machine variables. 
            End With
            With .States("init2")
                .Label = "Init Phase 2"
                .EventsWhenStarted = Array("check_if_locking")  'start check_locking_delay timer to allow for shot states to update
            End With
            With .States("qualifying")
                .Label = "Qualifying"
                .EventsWhenStarted = Array("disable_locks") 
            End With
            With .States("locking_both")
                .Label = "Locking Both"
                .EventsWhenStarted = Array("enable_locks","top_lock_ready","bottom_lock_ready") 
            End With
            With .States("locking_top")
                .Label = "Locking Top"
                .EventsWhenStarted = Array("enable_locks","top_lock_ready") 
            End With
            With .States("locking_bottom")
                .Label = "Locking Bottom"
                .EventsWhenStarted = Array("enable_locks","bottom_lock_ready") 
            End With
            With .States("mb_ready")
                .Label = "Multiball Ready"
                .EventsWhenStarted = Array("multiball_ready","play_voc_multiball_ready","disable_qualify_lock","disable_locks") 
            End With
            With .States("mb_running")
                .Label = "Multiball Running"
                .EventsWhenStarted = Array("start_multiball") 
            End With


            'Transitions
            With .Transitions()
                .Source = Array("init1")
                .Target = "mb_ready"
                .Events = Array("check_locks{machine.top_ball_locked == 1 && machine.bottom_ball_locked == 1}")
                .EventsWhenTransitioning = Array("update_lock_shots")  'Update the player variables accordingly.
            End With
            With .Transitions()
                .Source = Array("init1")
                .Target = "init2"
                .Events = Array("check_locks{machine.top_ball_locked == 0 OR machine.bottom_ball_locked == 0}")
                .EventsWhenTransitioning = Array("update_lock_shots","reset_mb_start")  'Update the player variables accordingly.
            End With
            

            With .Transitions()
                .Source = Array("init2")
                .Target = "qualifying"
                .Events = Array("timer_check_locking_delay_complete{current_player.shot_top_lock <> 1 && current_player.shot_bottom_lock <> 1}")
            End With
            With .Transitions()
                .Source = Array("init2")
                .Target = "locking_both"
                .Events = Array("timer_check_locking_delay_complete{current_player.shot_top_lock == 1 && current_player.shot_bottom_lock == 1}")
            End With
            With .Transitions()
                .Source = Array("init2")
                .Target = "locking_top"
                .Events = Array("timer_check_locking_delay_complete{current_player.shot_top_lock == 1 && current_player.shot_bottom_lock <> 1}")
            End With
            With .Transitions()
                .Source = Array("init2")
                .Target = "locking_bottom"
                .Events = Array("timer_check_locking_delay_complete{current_player.shot_top_lock <> 1 && current_player.shot_bottom_lock == 1}")
            End With

            With .Transitions()
                .Source = Array("qualifying")
                .Target = "locking_both"
                .Events = Array("qualify_lock_on_complete{current_player.shot_bottom_lock == 0 && current_player.shot_top_lock == 0}")
                .EventsWhenTransitioning = Array("play_voc_lock_is_lit")
            End With
            With .Transitions()
                .Source = Array("qualifying")
                .Target = "locking_top"
                .Events = Array("qualify_lock_on_complete{current_player.shot_bottom_lock == 2 && current_player.shot_top_lock == 0}")
                .EventsWhenTransitioning = Array("play_voc_lock_is_lit")
            End With
            With .Transitions()
                .Source = Array("qualifying")
                .Target = "locking_bottom"
                .Events = Array("qualify_lock_on_complete{current_player.shot_bottom_lock == 0 && current_player.shot_top_lock == 2}")
                .EventsWhenTransitioning = Array("play_voc_lock_is_lit")
            End With

            With .Transitions()
                .Source = Array("locking_both")
                .Target = "qualifying"
                .Events = Array("balldevice_kicker1_ball_entered") 'top locked
                .EventsWhenTransitioning = Array("top_locked","reset_bottom_lock","restart_qualify_lock","score_100000")
            End With
            With .Transitions()
                .Source = Array("locking_both")
                .Target = "qualifying"
                .Events = Array("balldevice_kicker2_ball_entered") 'bottom locked
                .EventsWhenTransitioning = Array("bottom_locked","reset_top_lock","restart_qualify_lock","score_100000")
            End With

            With .Transitions()
                .Source = Array("locking_top")
                .Target = "mb_ready"
                .Events = Array("balldevice_kicker1_ball_entered")
                .EventsWhenTransitioning = Array("top_locked","restart_qualify_lock","score_100000")
            End With
            With .Transitions()
                .Source = Array("locking_bottom")
                .Target = "mb_ready"
                .Events = Array("balldevice_kicker2_ball_entered")
                .EventsWhenTransitioning = Array("bottom_locked","restart_qualify_lock","score_100000")
            End With

            With .Transitions()
                .Source = Array("mb_ready")
                .Target = "mb_running"
                .Events = Array("s_RampHit_active{current_player.shot_mb_start == 1}")
            End With

            With .Transitions()
                .Source = Array("mb_running")
                .Target = "qualifying"
                .Events = Array("multiball_mb_ended")
                .EventsWhenTransitioning = Array("enable_qualify_lock","restart_qualify_lock")
            End With

        End With

        'Give a little time for the lock checks to happen
        With .Timers("check_locking_delay")
            .TickInterval = 100
            .StartValue = 0
            .EndValue = 2
            With .ControlEvents()
                .EventName = "check_if_locking"
                .Action = "restart"
            End With
        End With


        
        'The following state machine and timers manages the diverter
        '  - Default to closing the diverter
        '  - Open the diverter if top lock is ready
        '  - Temporarily close the diverter (for a couple seconds) if already opened and ball goes up the right orbit
        '  - Close the diverter when the ball gets locked, or when it gets reset
        '  - Temporarily open the diverter (for a couple seconds) when it's time to kick out the ball for multiball
        With .StateMachines("diverter")
            .PersistState = false   'when mode starts, always initialize in the starting state
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
                .Events = Array("top_locked","timer_diverter_reclose_complete","reset_top_lock")
            End With
            With .Transitions()
                .Source = Array("opened")
                .Target = "closed"
                .Events = Array("s_RightOrb2_active")
                .EventsWhenTransitioning = Array("temporarily_close_diverter")
            End With
            With .Transitions()
                .Source = Array("closed")
                .Target = "opened"
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


        'SHOTS

        'Define the muiltball shoot again light
        With .Shots("mb_shoot_again")
            .Profile = "shoot_again"
            With .Tokens()
                .Add "color", MultiballColor
            End With
            With .ControlEvents()
                .Events = Array("start_multiball")
                .State = 1
            End With
            With .ControlEvents()
                .Events = Array("multiball_mb_hurry_up")
                .State = 2
            End With
            .RestartEvents = Array("multiball_mb_shoot_again_ended")
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
            End With
        Next

        'Define the shot group
        With .ShotGroups("qualify_lock")
            '.Debug = True
            .Shots = Array("standup1", "standup2", "standup3", "standup4")
            .EnableEvents = Array("enable_qualify_lock")
            .DisableEvents = Array("disable_qualify_lock")
            .RestartEvents = Array("restart_qualify_lock")
        End With


        'Define the lock and multiball shots
        With .Shots("top_lock")
            '.Debug = True

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
            .RestartEvents = Array("start_multiball","reset_top_lock")
        End With

        With .Shots("bottom_lock")
            '.Debug = True

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
            .RestartEvents = Array("start_multiball","reset_bottom_lock")
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
            .RestartEvents = Array("start_multiball","reset_mb_start")
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
             .RestartEvents = Array("multiball_mb_ended")
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
             .RestartEvents = Array("multiball_mb_ended")
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



        'VARIABLES
        
        With .VariablePlayer()
            '.Debug = True

            'Handle allowing other players to steal the locked balls
            With .EventName("mode_multiball_started.2")
				With .Variable("multiball_lock_mb_locks_balls_locked")
                    .Action = "set"
					.Int = "machine.bottom_ball_locked + machine.top_ball_locked"
				End With
			End With

            'Manage value of balls locked for purpose of allowing players to steal locked balls
            With .EventName("bottom_locked")
				With .Variable("bottom_ball_locked")
                    .Action = "set_machine"
					.Int = 1
				End With
			End With
            With .EventName("top_locked")
				With .Variable("top_ball_locked")
                    .Action = "set_machine"
					.Int = 1
				End With
			End With

            With .EventName("start_multiball")
				With .Variable("bottom_ball_locked")
                    .Action = "set_machine"
					.Int = 0
				End With
                With .Variable("top_ball_locked")
                    .Action = "set_machine"
					.Int = 0
				End With
			End With

        End With



    End With

End Sub