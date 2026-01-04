
Sub CreateMultiballShows()

    With CreateGlfShow("mb_backglass_show")
 
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("2")
                .Action = "DOF_ON"
            End With
        End With
        ' With .AddStep(0.02, Null, Null)
        '     With .Shows("flash_color_fadeout")
        '         .Key = "key_DOF2"
        '         .Speed = 10
        '         .Loops = 0
        '         With .Tokens()
        '             .Add "color", GIColor3000k
        '             .Add "lights", "LBG02"
        '         End With
        '     End With
        ' End With
        With .AddStep(0.2, Null, Null)
            With .DOFEvent("4")
                .Action = "DOF_OFF"
            End With
        End With


        With .AddStep(0.5, Null, Null)
            With .DOFEvent("3")
                .Action = "DOF_ON"
            End With
        End With
        ' With .AddStep(0.51, Null, Null)
        '     With .Shows("flash_color_fadeout")
        '         .Key = "key_DOF3"
        '         .Speed = 10
        '         .Loops = 0
        '         With .Tokens()
        '             .Add "color", GIColor3000k
        '             .Add "lights", "LBG03"
        '         End With
        '     End With
        ' End With
        With .AddStep(0.7, Null, Null)
            With .DOFEvent("2")
                .Action = "DOF_OFF"
            End With
        End With

        With .AddStep(1, Null, Null)
            With .DOFEvent("4")
                .Action = "DOF_ON"
            End With
        End With
        ' With .AddStep(1.01, Null, Null)
        '     With .Shows("flash_color_fadeout")
        '         .Key = "key_DOF4"
        '         .Speed = 10
        '         .Loops = 0
        '         With .Tokens()
        '             .Add "color", GIColor3000k
        '             .Add "lights", "LBG04"
        '         End With
        '     End With
        ' End With
        With .AddStep(1.2, Null, 0.3)
            With .DOFEvent("3")
                .Action = "DOF_OFF"
            End With
        End With

    End With

End Sub
