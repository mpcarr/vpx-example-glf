
Sub CreateSpinnerShows()

    With CreateGlfShow("spin1_super_show1")
        With .AddStep(0.01, Null, Null)
            With .Shows("flash_color")
                .Key = "spin1_super_show_11"
                .Speed = 20
                .Loops = 2
                With .Tokens()
                    .Add "lights", "FL4"
                    .Add "color", "ffffff"
                End With
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("flash_color")
                .Key = "spin1_super_show_12"
                .Speed = 20
                .Loops = 2
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", "ffffff"
                End With
            End With
        End With
        With .AddStep(0.03, Null, Null)
            With .Shows("spin1_burst")
                .Key = "spin1_super_show_13"
                .Speed = 2
                .Loops = 0
                With .Tokens()
                    .Add "color", "00ffff"
                End With
            End With
        End With
    End With

    With CreateGlfShow("spin1_super_show2")
        With .AddStep(0.01, Null, Null)
            With .Shows("flash_color")
                .Key = "spin1_super_show_21"
                .Speed = 20
                .Loops = 2
                With .Tokens()
                    .Add "lights", "FL4"
                    .Add "color", "ffffff"
                End With
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("flash_color")
                .Key = "spin1_super_show_22"
                .Speed = 20
                .Loops = 2
                With .Tokens()
                    .Add "lights", "FL1"
                    .Add "color", "ffffff"
                End With
            End With
        End With
        With .AddStep(0.03, Null, Null)
            With .Shows("spin1_burst")
                .Key = "spin1_super_show_23"
                .Speed = 2
                .Loops = 0
                With .Tokens()
                    .Add "color", "ffffff"
                End With
            End With
        End With
    End With


    With CreateGlfShow("spin2_super_show1")
        With .AddStep(0.01, Null, Null)
            With .Shows("flash_color")
                .Key = "spin2_super_show_11"
                .Speed = 20
                .Loops = 2
                With .Tokens()
                    .Add "lights", "FL3"
                    .Add "color", "ffffff"
                End With
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("flash_color")
                .Key = "spin2_super_show_12"
                .Speed = 20
                .Loops = 2
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", "ffffff"
                End With
            End With
        End With
        With .AddStep(0.03, Null, Null)
            With .Shows("spin2_burst")
                .Key = "spin2_super_show_13"
                .Speed = 1
                .Loops = 0
                With .Tokens()
                    .Add "color", "00ffff"
                End With
            End With
        End With
    End With

    With CreateGlfShow("spin2_super_show2")
        With .AddStep(0.01, Null, Null)
            With .Shows("flash_color")
                .Key = "spin2_super_show_21"
                .Speed = 20
                .Loops = 2
                With .Tokens()
                    .Add "lights", "FL3"
                    .Add "color", "ffffff"
                End With
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("flash_color")
                .Key = "spin2_super_show_22"
                .Speed = 20
                .Loops = 2
                With .Tokens()
                    .Add "lights", "FL2"
                    .Add "color", "ffffff"
                End With
            End With
        End With
        With .AddStep(0.03, Null, Null)
            With .Shows("spin2_burst")
                .Key = "spin2_super_show_23"
                .Speed = 1
                .Loops = 0
                With .Tokens()
                    .Add "color", "ffffff"
                End With
            End With
        End With
    End With


End Sub
