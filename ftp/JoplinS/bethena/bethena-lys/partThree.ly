partThreeSilent = \notes {
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

partThreeRHvI = \notes\relative c'' {
    \override Slur #'attachment = #'(stem . stem)
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
    \revert Slur #'attachment
}

partThreeRHvII = \notes\relative c' {
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

partThreeRH = \notes {
    <<
        \partThreeRHvI \\
        \partThreeRHvII
    >>
}

partThreeLHvI = \notes \relative g, {
    \stemBoth
    g4 <d' g> <d g> |
    <e e,> <e g a> <e g a> |
    \stemUp
    r4 <fs a> r4 |
    \stemBoth
    <e e,>4 <e g> <e g> |
    <c c,> <e g c> <e g c> |
    <d d,> <d g b> <d g b> |
    <a a,> <e' g a> <a, a,> |
    \stemUp
    r4 <d fs a> <d fs a> |
    \stemBoth
    g,4 <d' g> <d g> |
    <e e,> <e g a> <e g a> |
    \stemUp
    r4 <fs a> r4 |
    \stemBoth
    <e e,>4 <e g> <e g> |
    <c c,> <e g c> <e g c> |
    <d d,> <d g b> <d g b> |
    <e e,> <a, a,> <d d,> |
    <g g,>4 d g, |
}

partThreeLHvII = \notes \relative d {
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

partThreeLH = \notes {
    <<
        \partThreeLHvI \\
        \partThreeLHvII
    >>
}

partThreeSuper = \notes {
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

partThreeDynamics = \notes {
    \once \override DynamicText #'extra-offset = #'(-3.5 . 0.5)
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

partThreeSub = \notes {
    s4\sustainDown s s\sustainUp |
    s4\sustainDown s s\sustainUp |
    s4\sustainDown s\sustainUp s |
    s4\sustainDown s s\sustainUp |
    s4\sustainDown s s\sustainUp |
    s4\sustainDown s s\sustainUp |
    s4\sustainDown s s\sustainUp |
    s4\sustainDown s s\sustainUp |
    s4\sustainDown s s\sustainUp |
    s4\sustainDown s s\sustainUp |
    s4\sustainDown s\sustainUp s |
    s4\sustainDown s s\sustainUp |
    s4\sustainDown s s\sustainUp |
    s4\sustainDown s s\sustainUp |
    s4\sustainDown s\sustainUp s |
    \barRest |
}

segueThreeSilent = \notes {
    \barRest |
    \barRest |
    \barRest |
    \barRest | \break
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

segueThreeRHvI = \notes \relative g'' {
    r4 g8( d' c b) |
    r4 e,8( b' a gs) |
    r4 ds8( gs as b) |
    r4 e,8( b' a gs) |
    r4 cs,8( gs' fs es) |
    r4 c8( f g af) |
    <df,, f af>4 <d f af> <d f a> |
    bf'2.^\tenuto |
}

segueThreeRHvII = \notes \relative g' {
    g2. |
    gs |
    gs |
    gs |
    <es gs> |
    <f af> |
    s |
    <d f>4( <c e>2) |
}

segueThreeRH = \notes {
    <<
        \segueThreeRHvI\\
        \segueThreeRHvII
    >>
}


segueThreeLHvI = \notes \relative f {
    \stemBoth
    \barRest |
    \barRest |
    \barRest |
    <d b'>2. |
    <cs b'>^\tenuto |
    <c c'> |
    cf4 bf a8 d |
    \slurDown
    g,4( c2) |
    \slurBoth
}

segueThreeLHvII = \notes \relative f {
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

segueThreeLH = \notes {
    <<
                                % \applycontext #(lambda (x) (display "\n[mils] expect warnings:  Too many clashing notecolumns.\n"))
        \segueThreeLHvI \\
        \segueThreeLHvII
    >>
}


segueThreeSuper = \notes {
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    s4^\markup{rit.} s s |
    \barRest |
}

segueThreeDynamics = \notes {
    \once \override DynamicText #'extra-offset = #'(-2 . 3.5)
    s4\f s s |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

segueThreeSub = \notes {
    \override SustainPedal #'extra-offset = #'(0 . 3.5)
    s8\sustainDown s s s s s\sustainUp |
    s8\sustainDown s s s s s\sustainUp |
    s8\sustainDown s s s s s\sustainUp |
    s8\sustainDown s s s s s\sustainUp |
    s8\sustainDown s s s s s\sustainUp |
    s8\sustainDown s s s s s\sustainUp |
    \barRest |
    \barRest |
    \revert SustainPedal #'extra-offset
}


