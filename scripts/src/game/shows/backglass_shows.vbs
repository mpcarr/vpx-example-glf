
Sub CreateBackglassShows()

    With CreateGlfShow("backglass_logo_on_show")
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("1")
                .Action = "DOF_ON"
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("led_color")
                .Key = "key_DOF1_on"
                With .Tokens()
                    .Add "color", GIColor3000k
                    .Add "lights", "LBG01"
                End With
            End With
        End With
    End With
    With CreateGlfShow("backglass_logo_off_show")
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("1")
                .Action = "DOF_OFF"
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("off")
                .Key = "key_DOF1_off"
                With .Tokens()
                    .Add "lights", "LBG01"
                End With
            End With
        End With
    End With

    With CreateGlfShow("backglass_game_on_show")
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("2")
                .Action = "DOF_ON"
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("led_color")
                .Key = "key_DOF2_on"
                With .Tokens()
                    .Add "color", GIColor3000k
                    .Add "lights", "LBG02"
                End With
            End With
        End With
    End With
    With CreateGlfShow("backglass_game_off_show")
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("2")
                .Action = "DOF_OFF"
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("off")
                .Key = "key_DOF2_off"
                With .Tokens()
                    .Add "lights", "LBG02"
                End With
            End With
        End With
    End With

    With CreateGlfShow("backglass_logic_on_show")
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("3")
                .Action = "DOF_ON"
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("led_color")
                .Key = "key_DOF3_on"
                With .Tokens()
                    .Add "color", GIColor3000k
                    .Add "lights", "LBG03"
                End With
            End With
        End With
    End With
    With CreateGlfShow("backglass_logic_off_show")
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("3")
                .Action = "DOF_OFF"
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("off")
                .Key = "key_DOF3_off"
                With .Tokens()
                    .Add "lights", "LBG03"
                End With
            End With
        End With
    End With

    With CreateGlfShow("backglass_framework_on_show")
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("4")
                .Action = "DOF_ON"
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("led_color")
                .Key = "key_DOF4_on"
                With .Tokens()
                    .Add "color", GIColor3000k
                    .Add "lights", "LBG04"
                End With
            End With
        End With
    End With
    With CreateGlfShow("backglass_framework_off_show")
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("4")
                .Action = "DOF_OFF"
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("off")
                .Key = "key_DOF4_off"
                With .Tokens()
                    .Add "lights", "LBG04"
                End With
            End With
        End With
    End With

    With CreateGlfShow("backglass_flash1_show")
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("5")
                .Action = "DOF_ON"
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("flash_color_fadeout")
                .Key = "key_DOF5"
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "color", GIColor3000k
                    .Add "lights", "LBG05"
                End With
            End With
        End With
        With .AddStep(0.2, Null, Null)
            With .DOFEvent("5")
                .Action = "DOF_OFF"
            End With
        End With
    End With

    With CreateGlfShow("backglass_flash2_show")
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("6")
                .Action = "DOF_ON"
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("flash_color_fadeout")
                .Key = "key_DOF6"
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "color", GIColor3000k
                    .Add "lights", "LBG06"
                End With
            End With
        End With
        With .AddStep(0.2, Null, Null)
            With .DOFEvent("6")
                .Action = "DOF_OFF"
            End With
        End With
    End With

    With CreateGlfShow("backglass_flash3_show")
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("7")
                .Action = "DOF_ON"
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("flash_color_fadeout")
                .Key = "key_DOF7"
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "color", GIColor3000k
                    .Add "lights", "LBG07"
                End With
            End With
        End With
        With .AddStep(0.2, Null, Null)
            With .DOFEvent("7")
                .Action = "DOF_OFF"
            End With
        End With
    End With

    With CreateGlfShow("backglass_flash4_show")
        With .AddStep(0.01, Null, Null)
            With .DOFEvent("8")
                .Action = "DOF_ON"
            End With
        End With
        With .AddStep(0.02, Null, Null)
            With .Shows("flash_color_fadeout")
                .Key = "key_DOF8"
                .Speed = 10
                .Loops = 1
                With .Tokens()
                    .Add "color", GIColor3000k
                    .Add "lights", "LBG08"
                End With
            End With
        End With
        With .AddStep(0.2, Null, Null)
            With .DOFEvent("8")
                .Action = "DOF_OFF"
            End With
        End With
    End With

End Sub
