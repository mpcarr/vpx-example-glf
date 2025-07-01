With CreateGlfShow("attract")
    With .AddStep(Null, Null, 1)   
        With .Shows("sweep_down")
            .Key = "key_show_sweep_down_red"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", "FF0000"
            End With
        End With
    End With
    With .AddStep(Null, Null, 1)
        With .Shows("sweep_down")
            .Key = "key_show_sweep_down_green"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", "00FF00"
            End With
        End With
    End With
    With .AddStep(Null, Null, 2)
        With .Shows("sweep_down")
            .Key = "key_show_sweep_down_blue"
            .Speed = 1
            .Loops = 0
            With .Tokens()
                .Add "color", "0000FF"
            End With
        End With
    End With
    With .AddStep(Null, Null, 1)
        With .Shows("sweep_left")
            .Key = "key_show_sweep_left_yellow"
            .Speed = 2
            .Loops = 0
            With .Tokens()
                .Add "color", "FFFF00"
            End With
        End With
    End With
    With .AddStep(Null, Null, 1)
        With .Shows("sweep_right")
            .Key = "key_show_sweep_left_magenta"
            .Speed = 2
            .Loops = 0
            With .Tokens()
                .Add "color", "00FFFF"
            End With
        End With
    End With
    With .AddStep(Null, Null, 4)
        With .Shows("sweep_up")
            .Key = "key_show_sweep_up_white"
            .Speed = 0.5
            .Loops = 0
            With .Tokens()
                .Add "color", "FFFFFF"
            End With
        End With
    End With
End With