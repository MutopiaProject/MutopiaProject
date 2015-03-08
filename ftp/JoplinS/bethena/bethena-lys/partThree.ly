\version "2.18.0"
partThreeSilent =  {
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest | \break
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

partThreeRHvI = \relative c'' {
    \override Slur.attachment = #'(stem . stem)
    a8 g4 b8 a4 |
    a8 g4 b8 a4 |
    a8 c4 b8 a4 |
    g2. |
    e'8 a4 e8 g4 |
    b,8 e4 b8 d4 |
    g,8 b4 g8 b4 |
    a2. |
    a8 g4 b8 a4 |
    a8 g4 b8 a4 |
    a8 c4 b8 a4 |
    g2. |
    e'8 a4 e8 g4 |
    b,8 e4 b8 d( d,) |
    cs8( <g' b>4) c,8( <fs a>4) |
    g2. |
    \revert Slur.attachment
}

partThreeRHvII = \relative c' {
    <b d>2. |
    <cs g'> |
    <c fs>2 <c fs>4 |
    <b e>2. |
    c'2 c4 |
    g2 <g b>4 |
    cs,2 <cs g'>4 |
    <c fs>2. |
    <b d>2. |
    <cs g'> |
    <c fs>2 <c fs>4 |
    <b e>2. |
    c'2 c4 |
    g2 r4 |
    cs,4. c8 c4 |
    <b d>2. |
}

partThreeRH =  {
    <<
        \partThreeRHvI \\
        \partThreeRHvII
    >>
}

partThreeLHvI =  \relative g, {
    \stemNeutral
    g4 <d' g> <d g> |
    <e e,> <e g a> <e g a> |
    \stemUp
    r4 <fs a> r4 |
    \stemNeutral
    <e e,>4 <e g> <e g> |
    <c c,> <e g c> <e g c> |
    <d d,> <d g b> <d g b> |
    <a a,> <e' g a> <a, a,> |
    \stemUp
    r4 <d fs a> <d fs a> |
    \stemNeutral
    g,4 <d' g> <d g> |
    <e e,> <e g a> <e g a> |
    \stemUp
    r4 <fs a> r4 |
    \stemNeutral
    <e e,>4 <e g> <e g> |
    <c c,> <e g c> <e g c> |
    <d d,> <d g b> <d g b> |
    <e e,> <a, a,> <d d,> |
    <g g,>4 d g, |
}

partThreeLHvII =  \relative d {
    \barRest
    \barRest
    <d d,>2 <ds ds,>4
    \barRest
    \barRest
    \barRest
    \barRest
    <d d,>2. |
    \barRest
    \barRest
    <d d,>2 <ds ds,>4
    \barRest
    \barRest
    \barRest
    \barRest
    \barRest
}

partThreeLH =  {
    <<
        \partThreeLHvI \\
        \partThreeLHvII
    >>
}

partThreeSuper =  {
    s4^\markup{\italic\smaller cantabile} s s |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

partThreeDynamics =  {
    \once \override DynamicText.extra-offset = #'(-3.5 . 0.5)
    s4\mp s s |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

partThreeSub =  {
    s4\sustainOn s s\sustainOff |
    s4\sustainOn s s\sustainOff |
    s4\sustainOn s\sustainOff s |
    s4\sustainOn s s\sustainOff |
    s4\sustainOn s s\sustainOff |
    s4\sustainOn s s\sustainOff |
    s4\sustainOn s s\sustainOff |
    s4\sustainOn s s\sustainOff |
    s4\sustainOn s s\sustainOff |
    s4\sustainOn s s\sustainOff |
    s4\sustainOn s\sustainOff s |
    s4\sustainOn s s\sustainOff |
    s4\sustainOn s s\sustainOff |
    s4\sustainOn s s\sustainOff |
    s4\sustainOn s\sustainOff s |
    \barRest |
}

segueThreeSilent =  {
    \barRest |
    \barRest |
    \barRest |
    \barRest | \break
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

segueThreeRHvI =  \relative g'' {
    r4 g8( d' c b) |
    r4 e,8( b' a gs) |
    r4 ds8( gs as b) |
    r4 e,8( b' a gs) |
    r4 cs,8( gs' fs es) |
    r4 c8( f g af) |
    <df,, f af>4 <d f af> <d f a> |
    bf'2.^\tenuto |
}

segueThreeRHvII =  \relative g' {
    g2. |
    gs |
    gs |
    gs |
    <es gs> |
    <f af> |
    s |
    <d f>4( <c e>2) |
}

segueThreeRH =  {
    <<
        \segueThreeRHvI\\
        \segueThreeRHvII
    >>
}


segueThreeLHvI =  \relative f {
    \stemNeutral
    \barRest |
    \barRest |
    \barRest |
    <d b'>2. |
    <cs b'>^\tenuto |
    <c c'> |
    cf4 bf a8 d |
    \slurDown
    g,4( c2) |
    \slurNeutral
}

segueThreeLHvII =  \relative f {
    <f b d>2.^\tenuto |
    <e b' d>^\tenuto |
    <ds b' ds> |
    \showStaffSwitch
    \change Staff = "rh"
    e' | % [mils] Expect warning 'clashing notecolumns'
    \change Staff = "lh"
    \hideStaffSwitch
    \barRest
    \barRest
    \barRest
    \barRest
}

segueThreeLH =  {
    <<
                                % \applyContext #(lambda (x) (display "\n[mils] expect warnings:  Too many clashing notecolumns.\n"))
        \segueThreeLHvI \\
        \segueThreeLHvII
    >>
}


segueThreeSuper =  {
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    s4^\markup{rit.} s s |
    \barRest |
}

segueThreeDynamics =  {
    \once \override DynamicText.extra-offset = #'(-2 . 3.5)
    s4\f s s |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

segueThreeSub =  {
    \override SustainPedal.extra-offset = #'(0 . 3.5)
    s8\sustainOn s s s s s\sustainOff |
    s8\sustainOn s s s s s\sustainOff |
    s8\sustainOn s s s s s\sustainOff |
    s8\sustainOn s s s s s\sustainOff |
    s8\sustainOn s s s s s\sustainOff |
    s8\sustainOn s s s s s\sustainOff |
    \barRest |
    \barRest |
    \revert SustainPedal.extra-offset
}




%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.3.1, 2.3.2, 2.3.4, 2.3.6, 2.3.8, 2.3.9, 2.3.10,
2.3.11, 2.3.12, 2.3.16, 2.3.17, 2.3.18, 2.3.22, 2.3.23, 2.3.24,
2.3.25, 2.4.0, 2.5.0, 2.5.1, 2.5.2, 2.5.3, 2.5.12, 2.5.13, 2.5.17,
2.5.18, 2.5.21, 2.5.25, 2.6.0, 2.7.0, 2.7.1, 2.7.2, 2.7.4, 2.7.6,
2.7.10, 2.7.11, 2.7.12, 2.7.13, 2.7.14, 2.7.15, 2.7.22, 2.7.24,
2.7.28, 2.7.29, 2.7.30, 2.7.31, 2.7.32, 2.7.32, 2.7.36, 2.7.40, 2.9.4,
2.9.6, 2.9.9, 2.9.11, 2.9.13, 2.9.16, 2.9.19, 2.10.0, 2.11.2, 2.11.3,
2.11.5, 2.11.6, 2.11.10, 2.11.11, 2.11.13, 2.11.15, 2.11.23, 2.11.35,
2.11.38, 2.11.46, 2.11.48, 2.11.50, 2.11.51, 2.11.52, 2.11.53,
2.11.55, 2.11.57, 2.11.60, 2.11.61, 2.11.62, 2.11.64, 2.12.0, 2.12.3,
2.13.0, 2.13.1, 2.13.4, 2.13.10, 2.13.16, 2.13.18, 2.13.20, 2.13.27,
2.13.29, 2.13.31, 2.13.36, 2.13.39, 2.13.40, 2.13.42, 2.13.44,
2.13.46, 2.13.48, 2.13.51, 2.14.0, 2.15.7, 2.15.9, 2.15.10, 2.15.16,
2.15.17, 2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39,
2.15.40, 2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6,
2.17.11, 2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25,
2.17.27, 2.17.29, 2.17.97, 2.18.0
%}
