
'******************************************************
'	ZRST: STAND-UP TARGETS by Rothbauerw
'******************************************************


Class StandupTarget
    Private m_primary, m_prim, m_sw, m_animate
  
    Public Property Get Primary(): Set Primary = m_primary: End Property
    Public Property Let Primary(input): Set m_primary = input: End Property
  
    Public Property Get Prim(): Set Prim = m_prim: End Property
    Public Property Let Prim(input): Set m_prim = input: End Property
  
    Public Property Get Sw(): Sw = m_sw: End Property
    Public Property Let Sw(input): m_sw = input: End Property
  
    Public Property Get Animate(): Animate = m_animate: End Property
    Public Property Let Animate(input): m_animate = input: End Property
  
    Public default Function init(primary, prim, sw, animate)
      Set m_primary = primary
      Set m_prim = prim
      m_sw = sw
      m_animate = animate
  
      Set Init = Me
    End Function
End Class
  
'Define a variable for each stand-up target
Dim ST1, ST2, ST3, ST4

'Set array with stand-up target objects
'
'StandupTargetvar = Array(primary, prim, swtich)
'   primary:	vp target to determine target hit
'   prim:	   primitive target used for visuals and animation
'				   IMPORTANT!!!
'				   transy must be used to offset the target animation
'   switch:	 	The switch ID. NOTE: The associated GLF standup target "RothSTArrayIndex" config must use this same number. 
'   animate:	Arrary slot for handling the animation instrucitons, set to 0
'
'You will also need to add a secondary hit object for each stand up (name sw11o, sw12o, and sw13o on the example Table1)
'these are inclined primitives to simulate hitting a bent target and should provide so z velocity on high speed impacts


Set ST1 = (new StandupTarget)(s_ST1, pST1, 1, 0)
Set ST2 = (new StandupTarget)(s_ST2, pST2, 2, 0)
Set ST3 = (new StandupTarget)(s_ST3, pST3, 3, 0)
Set ST4 = (new StandupTarget)(s_ST4, pST4, 4, 0)

'Add all the Stand-up Target Arrays to Stand-up Target Animation Array
'   STAnimationArray = Array(ST1, ST2, ....)
Dim STArray
STArray = Array(ST1, ST2, ST3, ST4)

'Configure the behavior of Stand-up Targets
Const STAnimStep = 1.5  'vpunits per animation step (control return to Start)
Const STMaxOffset = 9   'max vp units target moves when hit

Const STMass = 0.2	  'Mass of the Stand-up Target (between 0 and 1), higher values provide more resistance

'******************************************************
'				STAND-UP TARGETS FUNCTIONS
'******************************************************

Sub STHit(switch)
    Dim i
    i = STArrayID(switch)
    
    PlayTargetSound
    STArray(i).animate = STCheckHit(ActiveBall,STArray(i).primary)
    
    If STArray(i).animate <> 0 Then
        DTBallPhysics ActiveBall, STArray(i).primary.orientation, STMass
    End If
    DoSTAnim
End Sub

Function STArrayID(switch)
    Dim i
    For i = 0 To UBound(STArray)
        If STArray(i).sw = switch Then
            STArrayID = i
            Exit Function
        End If
    Next
End Function

Function STCheckHit(aBall, target) 'Check if target is hit on it's face
    Dim bangle, bangleafter, rangle, rangle2, perpvel, perpvelafter, paravel, paravelafter
    rangle = (target.orientation - 90) * 3.1416 / 180
    bangle = atn2(cor.ballvely(aball.id),cor.ballvelx(aball.id))
    bangleafter = Atn2(aBall.vely,aball.velx)
    
    perpvel = cor.BallVel(aball.id) * Cos(bangle - rangle)
    paravel = cor.BallVel(aball.id) * Sin(bangle - rangle)
    
    perpvelafter = BallSpeed(aBall) * Cos(bangleafter - rangle)
    paravelafter = BallSpeed(aBall) * Sin(bangleafter - rangle)
    
    If perpvel > 0 And  perpvelafter <= 0 Then
        STCheckHit = 1
    ElseIf perpvel > 0 And ((paravel > 0 And paravelafter > 0) Or (paravel < 0 And paravelafter < 0)) Then
        STCheckHit = 1
    Else
        STCheckHit = 0
    End If
End Function

Sub DoSTAnim()
    Dim i
    For i = 0 To UBound(STArray)
        STArray(i).animate = STAnimate(STArray(i).primary,STArray(i).prim,STArray(i).sw,STArray(i).animate)
    Next
End Sub

Function STAnimate(primary, prim, switch, animate)
    Dim animtime
    
    STAnimate = animate
    
    If animate = 0  Then
        primary.uservalue = 0
        STAnimate = 0
        Exit Function
    ElseIf primary.uservalue = 0 Then
        primary.uservalue = GameTime
    End If
    
    animtime = GameTime - primary.uservalue
    
    If animate = 1 Then
        primary.collidable = 0
        prim.transy =  - STMaxOffset
        STAction switch, 1
        STAnimate = 2
        Exit Function
    ElseIf animate = 2 Then
        prim.transy = prim.transy + STAnimStep
        If prim.transy >= 0 Then
            prim.transy = 0
            primary.collidable = 1
            STAction switch, 0
            STAnimate = 0
            Exit Function
        Else
            STAnimate = 2
        End If
    End If
End Function
  
Sub STAction(switchid, hit)
    If hit = 1 Then
        DispatchPinEvent STArray(STArrayID(switchid)).Primary.Name & "_active", Null
    Else
        DispatchPinEvent STArray(STArrayID(switchid)).Primary.Name & "_inactive", Null
    End If
End Sub

