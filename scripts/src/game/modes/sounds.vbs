


'*******************************************
' Sounds Configuration
'*******************************************


'Creates all sounds in the game
'NOTE: make sure all game sounds are positioned to the Backglass in the Sound Manager

Sub CreateSounds()
 

    'Add music tracks here. Provied track name, duration (seconds), and number of loops (-1 is for always looping)
    AddMusic "mus_ambient_loop", 235.848, -1
    AddMusic "mus_multiball_loop", 38.792, -1

    'Add sound effect tracks here. Provied track name and duration (seconds)
    AddSoundEffect "sfx_alert1", 1.301
    AddSoundEffect "sfx_bonus", 1.552
    AddSoundEffect "sfx_button", 0.451
    AddSoundEffect "sfx_drain", 1.866
    AddSoundEffect "sfx_drop_target", 0.961
    AddSoundEffect "sfx_entry", 2.270
    AddSoundEffect "sfx_hs_initial", 0.139
    AddSoundEffect "sfx_jackpot", 1.386
    AddSoundEffect "sfx_laser_blast", 0.442
    AddSoundEffect "sfx_mag_cap", 2.972
    AddSoundEffect "sfx_spin", 0.206
    AddSoundEffect "sfx_spin2", 0.166
    AddSoundEffect "sfx_tilt", 1.960
    AddSoundEffect "sfx_tilt_warning", 1.050

    'Add callout tracks here. Provied track name and duration (seconds)
    AddCallout "voc_extra_ball", 1.349
    AddCallout "voc_extra_ball_is_ready", 1.665
    AddCallout "voc_jackpot1", 0.995
    AddCallout "voc_jackpot2", 0.884
    AddCallout "voc_kickback_ready", 1.386
    AddCallout "voc_lock_is_lit", 1.330
    AddCallout "voc_multiball_ready", 1.442
    AddCallout "voc_skill_shot", 1.154


End Sub



' Below are utility routines for adding sound tracks


'Routine for adding a music track
Sub AddMusic(Name, Duration, Loops)
    With CreateGlfSound(Name)
        'msgbox Name&" "&MUSDurations(x)
        .File = Name 'Name in VPX Sound Manager
        .Bus = "mus" ' Sound bus to play on
        '.Volume = 0.8 'Override bus volume
        .Loops = Loops 'default to all music looping
        .Duration = Duration * 1000
        .EventsWhenStopped = Array(Name&"_stopped")
    End With
End Sub


'Routine for adding a sound effect track
Sub AddSoundEffect(Name, Duration)
    With CreateGlfSound(Name)
        .File = Name 'Name in VPX Sound Manager
        .Bus = "sfx" ' Sound bus to play on
        '.Volume = 0.6 'Override bus volume
        .Duration = Duration * 1000
        .EventsWhenStopped = Array(Name&"_stopped")
    End With
End Sub


'Routine for adding a callout track
Sub AddCallout(Name, Duration)
    With CreateGlfSound(Name)
        .File = Name 'Name in VPX Sound Manager
        .Bus = "voc" ' Sound bus to play on
        '.Volume = 0.6 'Override bus volume
        .Duration = Duration * 1000
        .EventsWhenStopped = Array(Name&"_stopped")
    End With
End Sub
