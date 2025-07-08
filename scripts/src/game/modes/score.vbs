

' Score Mode.
'
' This mode manages scoring and score multipliers.
' Throughout the game, when a score is awarded use the scoring event "score_xxx" where xxx is a value in the ScoreArray
' There are also playfield and bonus multiplier events defined below.



Sub CreateScoreMode()
    Dim x

    With CreateGlfMode("score", 2000)

        'Define the events that start and stop this mode
        .StartEvents = Array("game_start")
        .StopEvents = Array("game_ended")

        'The variable player will update machine and player varibles
        With .VariablePlayer()

            'Respond to score_xxx events
            'These events will add to the players score, accounting for the current score multiplier value
            For each x in ScoreArray
                With .EventName("score_"&x)  'reserved for spinner
                    With .Variable("score")
                        .Action = "add"
                        .Int = x&" * current_player.scoring_multiplier"
                    End With
                End With
            Next


            'Manage playfield score multiplier and bonus multiplier
            With .EventName("ball_started") 
                With .Variable("scoring_multiplier")
                    .Action = "set"
                    .Int = 1
                End With
                With .Variable("bonus_multiplier")
                    .Action = "set"
                    .Int = 1
                End With
            End With
            With .EventName("reset_scoring_multiplier") 
                With .Variable("scoring_multiplier")
                    .Action = "set"
                    .Int = 1
                End With
            End With
            With .EventName("double_scoring_multiplier") 
                With .Variable("scoring_multiplier")
                    .Action = "set"
                    .Int = 2
                End With
            End With
            With .EventName("double_bonus_multiplier") 
                With .Variable("bonus_multiplier")
                    .Action = "set"
                    .Int = 2
                End With
            End With

		End With

        
    End With

End Sub
