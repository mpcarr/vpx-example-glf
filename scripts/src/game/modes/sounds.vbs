


'*******************************************
' Sounds Configuration
'*******************************************

Dim MUSNames(), MUSDurations(), MUSCount
Dim SFXNames(), SFXDurations(), SFXCount
Dim VOCNames(), VOCDurations(), VOCCount


'Creates all sounds in the game
'NOTE: make sure all game sounds are positioned to the Backglass in the Sound Manager

Sub CreateSounds()
    Dim x, BusName

    'Add music tracks here. Provied track name and duration (seconds)
    AddMusic "mus_ambient_loop", 235.848
    AddMusic "mus_multiball_loop", 38.792

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


    'GLF Music Setup
    BusName = "mus"
    For x = 0 to UBound(MUSNames)
        With CreateGlfSound(MUSNames(x))
            'msgbox MUSNames(x)&" "&MUSDurations(x)
            .File = MUSNames(x) 'Name in VPX Sound Manager
            .Bus = BusName ' Sound bus to play on
            '.Volume = 0.8 'Override bus volume
            .Loops = -1 'default to all music looping
            .Duration = MUSDurations(x) * 1000
            .EventsWhenStopped = Array(MUSNames(x)&"_stopped")
        End With
    Next

    BusName = "sfx"
    For x = 0 to UBound(SFXNames)
        With CreateGlfSound(SFXNames(x))
            .File = SFXNames(x) 'Name in VPX Sound Manager
            .Bus = BusName ' Sound bus to play on
            '.Volume = 0.6 'Override bus volume
            .Duration = SFXDurations(x) * 1000
            .EventsWhenStopped = Array(SFXNames(x)&"_stopped")
        End With
    Next

    ' Callouts
    BusName = "voc"
    For x = 0 to UBound(VOCNames)
        With CreateGlfSound(VOCNames(x))
            .File = VOCNames(x) 'Name in VPX Sound Manager
            .Bus = BusName ' Sound bus to play on
            '.Volume = 0.6 'Override bus volume
            .Duration = VOCDurations(x) * 1000
            .EventsWhenStopped = Array(VOCNames(x)&"_stopped")
        End With
    Next

End Sub



' Below are utility routines for adding sound tracks

MUSCount = -1: SFXCount = -1: VOCCount = -1

'Routine for adding a music track
Sub AddMusic(Name, Duration)
    MUSCount = MUSCount + 1
    ReDim Preserve MUSNames(MUSCount)
    ReDim Preserve MUSDurations(MUSCount)
    MUSNames(MUSCount) = Name
    MUSDurations(MUSCount) = Duration
End Sub

'Routine for adding a sound effect track
Sub AddSoundEffect(Name, Duration)
    SFXCount = SFXCount + 1
    ReDim Preserve SFXNames(SFXCount)
    ReDim Preserve SFXDurations(SFXCount)
    SFXNames(SFXCount) = Name
    SFXDurations(SFXCount) = Duration
End Sub

'Routine for adding a callout track
Sub AddCallout(Name, Duration)
    VOCCount = VOCCount + 1
    ReDim Preserve VOCNames(VOCCount)
    ReDim Preserve VOCDurations(VOCCount)
    VOCNames(VOCCount) = Name
    VOCDurations(VOCCount) = Duration
End Sub