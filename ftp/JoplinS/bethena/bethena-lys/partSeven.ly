\version "2.18.2"

partSevenSilent =  {
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
    \barRest | \break
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

partSevenRHvI = \relative c'' {
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
                                % [mils] move the \fermata so that it doesn't
                                % [mils] clash with the slur
    \override Script.padding = #1.2
    \once \override Slur.positions = #'(1 . 3.5)
    cs8( <g' b>4)
    \once \override Slur.positions = #'(1 . 3.5)
    c,8( <fs a>4) \fermata |
    \revert Script.padding
}

partSevenRHvII = \relative c' {
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
    cs,4. c8
    c4 \fermata |
}

partSevenRH =  {
    <<
        \partSevenRHvI \\
        \partSevenRHvII
    >>
}

partSevenLHvI =  \relative g, {
    g4 <d' g> <d g> |
    <e e,> <e g a> <e g a> |
    r4 <fs a> r4 |
    <e e,>4 <e g> <e g> |
    <c c,> <e g c> <e g c> |
    <d d,> <d g b> <d g b> |
    <a a,> <e' g a> <a, a,> |
    r4 <d fs a> <d fs a> |
    g,4 <d' g> <d g> |
    <e e,> <e g a> <e g a> |
    r4 <fs a> r4 |
    <e e,>4 <e g> <e g> |
    <c c,> <e g c> <e g c> |
    <d d,> <d g b> <d g b> |
    <e e,> <a, a,> <d d,> \fermata |
}

partSevenLHvII =  \relative d {
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
}

partSevenLH =  {
    <<
        \partSevenLHvI \\
        \partSevenLHvII
    >>
}

partSevenSuper =  {
    s4^\markup { \smaller FINALE} s s |
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
    s4^\markup {rit. poco a poco} s s |
    \barRest |
}

partSevenDynamics =  {
    s4\mf s s |
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

partSevenSub =  {
    s4 \sustainOn s s \sustainOff |
    s4 \sustainOn s s \sustainOff |
    s4 \sustainOn s \sustainOff s |
    s4 \sustainOn s s \sustainOff |
    s4 \sustainOn s s \sustainOff |
    s4 \sustainOn s s \sustainOff |
    s4 \sustainOn s s \sustainOff |
    s4 \sustainOn s s \sustainOff |
    s4 \sustainOn s s \sustainOff |
    s4 \sustainOn s s \sustainOff |
    s4 \sustainOn s \sustainOff s |
    s4 \sustainOn s s \sustainOff |
    s4 \sustainOn s s \sustainOff |
    s4 \sustainOn s s \sustainOff |
    s4 \sustainOn s \sustainOff s |
    \barRest |
}
