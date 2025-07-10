

' Extra Ball Mode
'
'  - This mode handles adding and using extra balls
'  - When "eb_now_lit" event is dispatched, and there are still EBs available to collect, then light the EB target
'  - When EB target is lit and hit, then collect the EB


Const MaxEBs = 3
Const EBShowLength = 3000


Sub CreateExtraBallMode()
    Dim x

    With CreateGlfMode("extra_ball", 510)

        'Define the events that start and stop this mode
        .StartEvents = Array("ball_started")
        .StopEvents = Array("mode_base_stopping") 
        

        'The event player will respond to events during this mode
        With .EventPlayer()

            'initialize the EB shoot again light
            .Add "mode_extra_ball_started", Array("check_eb")
            .Add "check_eb{current_player.extra_balls == 0}", Array("eb_reset")
            .Add "check_eb{current_player.extra_balls > 0}", Array("eb_lit")

            'handle successful eb collection
            .Add "s_ST3_active{current_player.shot_eb_ready == 1}", Array("play_eb_show","eb_achieved","score_100000") 

        End With


        'Configure the extra ball award
        With .ExtraBalls("eb")
            .AwardEvents = Array("eb_achieved")
            .MaxPerGame = MaxEBs
        End With


        ' 'The sound player will play sounds
        ' With .SoundPlayer()
        '     With .EventName("eb_now_lit")
        '         .Key = "key_sfx_extra_ball_ready"
        '         .Sound = "sfx_extra_ball_ready"
        '     End With
        ' End With


    
        'Define the shot that awards the extra ball
        With .Shots("eb_ready")
            .Profile = "eb_ready"  'defined below
            'Light the extra ball ready shot if there are still more EBs available
            With .ControlEvents()
                .Events = Array("eb_now_lit{current_player.extra_ball_eb_awarded < "&MaxEBs&"}")
                .State = 1
            End With
            'Reset the extra ball ready shot after EB has been achieved
            .RestartEvents = Array("eb_achieved")
        End With

        'Define EB ready shot profile with two states (0 = unlit, 1 = ready)
        With .ShotProfiles("eb_ready")
            With .States("unlit")
                .Show = "off"
                .Key = "key_eb_ready_unlit"
                With .Tokens()
                    .Add "lights", "L39"
                End With
            End With
            With .States("ready")
                .Show = "flash_color_with_fade"    'defined in CreateGeneralShows()
                .Key = "key_eb_ready"
                .Speed = 10
                With .Tokens()
                    .Add "lights", "L39"
                    .Add "fade", 200
                    .Add "color", ExtraBallColor
                End With
            End With
        End With


        'Define the shot that is lit when EB has been achieved
        With .Shots("eb_shoot_again")
            .Profile = "eb_shoot_again"   'defined below
            'Light the shoot again light once EB has been achieved, or when being initialized as lit
            With .ControlEvents()
                .Events = Array("eb_achieved","eb_lit")
                .State = 1
            End With
            'Reset the shoot again light when there is no more EBs left
            .RestartEvents = Array("eb_reset")
        End With


        'Define EB shoot again light profile with two states (0 = unlit, 1 = lit)
        With .ShotProfiles("eb_shoot_again")
            With .States("unlit")
                .Show = "off"
                .Key = "key_eb_unlit"
                With .Tokens()
                    .Add "lights", "L03"
                End With
            End With
            With .States("lit")
                .Show = "led_color"     'defined in glf
                .Key = "key_eb_lit"
                .Priority = 1000
                With .Tokens()
                    .Add "lights", "L03"
                    .Add "color", ExtraBallColor
                End With
            End With
        End With

        
        With .SegmentDisplayPlayer()
            With .EventName("play_eb_show")
                With .Display("player1")
                    .Text = """"""
                    .Expire = EBShowLength
                End With
                With .Display("player2")
                    .Text = """ EXTRA """
                    .Flashing = "all"
                    .Expire = EBShowLength
                End With
                With .Display("player3")
                    .Text = """ BALL """
                    .Flashing = "all"
                    .Expire = EBShowLength
                End With
                With .Display("player4")
                    .Text = """"""
                    .Expire = EBShowLength
                End With
            End With
        End With


    End With

End Sub