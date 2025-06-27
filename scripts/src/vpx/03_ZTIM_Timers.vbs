

'*******************************************
'	ZTIM: Timers
'*******************************************

'The FrameTimer interval should be -1, so executes at the display frame rate
'The frame timer should be used to update anything visual, like some animations, shadows, etc.
'However, a lot of animations will be handled in their respective _animate subroutines.

Dim FrameTime, InitFrameTime
InitFrameTime = 0

FrameTimer.Interval = -1
Sub FrameTimer_Timer() 'The frame timer interval should be -1, so executes at the display frame rate
	FrameTime = GameTime - InitFrameTime
	InitFrameTime = GameTime	'Count frametime
	'Add animation stuff here
	RollingUpdate   		'update rolling sounds
	DoDTAnim				'handle drop target animations
	DoSTAnim				'handle stand up target animations
	BSUpdate
End Sub

'The CorTimer interval should be 10. It's sole purpose is to update the Coefficient of Restitution (COR) calculations
CorTimer.Interval = 10
Sub CorTimer_Timer(): Cor.Update: End Sub


' VR Plunger animation timers
TimerPlunger.Interval = -1
Sub TimerPlunger_Timer
	If PinCab_Shooter.TransZ < 90 then
		PinCab_Shooter.TransZ = PinCab_Shooter.TransZ + FrameTime*0.2
	End If
End Sub

TimerPlunger2.Interval = -1
Sub TimerPlunger2_Timer
	PinCab_Shooter.TransZ = (6.0* Plunger.Position) - 20
End Sub

