

' Score Bonus Mode
'
' This mode manages the bonus lights that get accumulated during the game.
' The actual bonus gets collected at the end of a ball, and that is handled by the bonus mode.


Sub CreateScoreBonusMode()
    Dim x

    With CreateGlfMode("score_bonus", 900)

        'Define the events that start and stop this mode
        .StartEvents = Array("ball_started")
        .StopEvents = Array("bonus_finished")


        'The event player will respond to events during this mode
        With .EventPlayer()

            'handle adding the next available bonus light
            .Add "add_bonus{current_player.shot_bonus_light1 == 0}", Array("add_bonus_light1")
            .Add "add_bonus{current_player.shot_bonus_light1 == 1 && current_player.shot_bonus_light2 == 0}", Array("add_bonus_light2")
            .Add "add_bonus{current_player.shot_bonus_light2 == 1 && current_player.shot_bonus_light3 == 0}", Array("add_bonus_light3")
            .Add "add_bonus{current_player.shot_bonus_light3 == 1 && current_player.shot_bonus_light4 == 0}", Array("add_bonus_light4")
            .Add "add_bonus{current_player.shot_bonus_light4 == 1 && current_player.shot_bonus_light5 == 0}", Array("add_bonus_light5")
            .Add "add_bonus{current_player.shot_bonus_light5 == 1 && current_player.shot_bonus_light6 == 0}", Array("add_bonus_light6")
            .Add "add_bonus{current_player.shot_bonus_light6 == 1 && current_player.shot_bonus_light7 == 0}", Array("add_bonus_light7")
            .Add "add_bonus{current_player.shot_bonus_light7 == 1 && current_player.shot_bonus_light8 == 0}", Array("add_bonus_light8")

            'if all bonus lights are lit then just add some score
            .Add "add_bonus{current_player.shot_bonus_light8 == 1}", Array("score_100000")

        End With


        'Define the bonus light shots
        For x = 1 to 8
            With .Shots("bonus_light"&x)
                .Profile = "flicker_on"   'This is a shared shot profile created in CreateSharedShotProfiles()
                With .Tokens()
                    .Add "lights", BonusLightNames(x-1)
                    .Add "color", BonusColor
                End With
                'Light the bonus light
                With .ControlEvents()
                    .Events = Array("add_bonus_light"&x)  
                    .State = 1
                End With
                'Restart the bonus lights at start of mode (ie start of new ball)
                .RestartEvents = Array("mode_score_bonus_started")
            End With
        Next

        
    End With

End Sub
