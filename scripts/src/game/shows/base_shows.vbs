
Sub CreateBaseShows()

    With CreateGlfShow("magnet_show")
 
        With .AddStep(0.01, Null, Null)
            With .Shows("flash_color")
                .Key = "key_magnet_show1"
                .Speed = 20
                .Loops = 10
                With .Tokens()
                    .Add "lights", "L19"
                    .Add "color", MagnetColor
                End With
            End With
        End With

        With .AddStep(0.02, Null, Null)
            With .Shows("flash_color")
                .Key = "key_magnet_show2"
                .Speed = 20
                .Loops = 10
                With .Tokens()
                    .Add "lights", "L20"
                    .Add "color", MagnetColor
                End With
            End With
        End With

    End With

End Sub
