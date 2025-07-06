

' Target Bank Mode
'
'  - This mode provides a simple example of how to use a state machine
'  - Drop the flashing drop target in order, starting with 1 and going up to 6. Next to drop is flashing.
'  - If a target is dropped out of order, all targets must be dropped to reset the bank such that the flashing target is available to hit again.
'  - An extra ball is qualified once all six lit targets are hit. Max of 3 EBs.
'  - The process restarts once an EB is acquired


Dim TargetBankSwitches, TargetBankLightNames
TargetBankSwitches = Array("s_DT1","s_DT2","s_DT3","s_DT4","s_DT5","s_DT6")    'target bank switches, shots 1 to 6
TargetBankLightNames = Array("L33","L34","L35","L36","L37","L38")   'target bank lights, shots 1 to 6


Sub CreateTargetBankMode()
    Dim x

    With CreateGlfMode("targetbank", 700)

        'Define the events that start and stop this mode
        .StartEvents = Array("ball_started")
        .StopEvents = Array("ball_ended")


        'The event player will respond to events during this mode
        With .EventPlayer()

            'At start of mode, reset the bank targets
            .Add "mode_targetbank_started", Array("reset_target_bank")

            'Keep track of how many targets have been dropped since last reset
            For x = 1 to 6
                .Add TargetBankSwitches(x-1)&"_active", Array("add_hit_count")
            Next

            'After hit count has been incremented, check the count. If count is equal to six (or greater) reset the bank targets
            .Add "add_hit_count.1{current_player.target_hit_count >= 6}", Array("delay_bank_reset")
            .Add "timer_bank_reset_complete", Array("reset_target_bank")
            
        End With


        'define the bank target shots
        For x = 1 to 6
            With .Shots("bank_target"&x)
                .Profile = "bank_target"
                With .Tokens()
                    .Add "lights", TargetBankLightNames(x-1)
                End With
                'Flash the target shot when its ready to hit
                With .ControlEvents()
                    .Events = Array("bank_target"&x&"_flashing")
                    .State = 1
                End With
                'Light the target shot solid when successfully completed
                With .ControlEvents()
                    .Events = Array("bank_target"&x&"_completed")
                    .State = 2
                End With
                'Reset back to unlit upon reset
                .RestartEvents = Array("reset_target_shots")
            End With
        Next


        'Define bank target shot profile with three states (0 = unlit, 1 = flashing, 2 = lit)
        With .ShotProfiles("bank_target")
            With .States("unlit")
                .Key = "key_bank_target_unlit"
                .Show = "off"
            End With
            With .States("flashing")
                .Key = "key_bank_target_flashing"
                .Show = "flash_color_with_fade"   'defined in CreateGeneralShows()
                .Priority = 10
                .Speed = 7
                With .Tokens()
                    .Add "fade", 200
                    .Add "color", TargetBankColor
                End With
            End With
            With .States("lit")
                .Key = "key_bank_target_lit"
                .Show = "flicker_color_on"    'defined in CreateGeneralShows()
                .Speed = 3
                With .Tokens()
                    .Add "color", TargetBankColor
                End With
            End With
        End With


        'Target bank state machine
        '  - There is one state for each shot that is flashing, and a completed stated. 
        '  - Starting at shot1 state, so bank_target1 shot is flashing.
        '  - Transition to the next shot state only if the current flashing shot is hit.
        '  - Once the last shot is hit, trasition to completed state. Wait a few seconds and then start over.
        With .StateMachines("bank")
            .PersistState = true   'state persists across balls
            .StartingState = "shot1"
            
            'States
            For x = 1 to 6
                With .States("shot"&x)
                    .Label = "Bank Target Shot "&x
                    .EventsWhenStarted = Array("bank_target"&x&"_flashing") 
                End With
            Next
            With .States("completed")
                .Label = "Bank Targets Completed"
                .EventsWhenStarted = Array("eb_now_lit") 
            End With

            'Transitions
            For x = 1 to 5
                With .Transitions() 
                    .Source = Array("shot"&x)
                    .Target = "shot"&(x+1)
                    .Events = Array("s_DT"&x&"_active{current_player.shot_bank_target"&x&" == 1}")   'target hit and is flashing
                    .EventsWhenTransitioning = Array("bank_target"&x&"_completed","play_sfx_bank_target")
                End With
            Next
            With .Transitions()
                .Source = Array("shot6")
                .Target = "completed"
                .Events = Array("s_DT6_active{current_player.shot_bank_target6 == 1}")   'target hit and is flashing
                .EventsWhenTransitioning = Array("bank_target6_completed","play_sfx_bank_target_completed")
            End With
            With .Transitions()
                .Source = Array("completed")
                .Target = "shot1"
                .Events = Array("eb_achieved")   'eb achieved, so reset the bank and shots
                .EventsWhenTransitioning = Array("delay_bank_reset","reset_target_shots")  'resets shot lights
            End With
        End With


        'Timer for delaying the target bank reset
        With .Timers("bank_reset")
            .TickInterval = 500
            .StartValue = 0
            .EndValue = 1
            With .ControlEvents()
                .EventName = "delay_bank_reset"
                .Action = "restart"
            End With
        End With


        'The variable player will update machine and player varibles
        With .VariablePlayer()

            ' target_hit_count
            ' running sum of the number of bank targets that have been dropped
            With .EventName("reset_target_bank")
				With .Variable("target_hit_count")
                    .Action = "set"
					.Int = 0
				End With
			End With
            With .EventName("add_hit_count.2")
				With .Variable("target_hit_count")
                    .Action = "add"
					.Int = 1
				End With
			End With

		End With


    End With

End Sub