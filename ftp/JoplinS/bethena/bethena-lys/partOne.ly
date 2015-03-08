\version "2.18.2"

partOneSilent =  {
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

partOneRHvI = \relative c'' {
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
    \once \override Slur.positions = #'(1 . 3.5)
    cs8( <g' b>4)
    \once \override Slur.positions = #'(1 . 3.5)
    c,8( <fs a>4) |
    \once \override Slur.positions = #'(3 . 3.5)
    g2( b4) |
}

partOneRHvII = \relative c' {
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

partOneRH =  {
    <<
        \partOneRHvI \\
        \partOneRHvII
    >>
}

partOneLHvI =  \relative g, {
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
    <g g,>2. |
}

partOneLHvII =  \relative d {
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

partOneLH =  {
    <<
        \partOneLHvI \\
        \partOneLHvII
    >>
}

partOneSuper =  {
    s4^\markup{ \column { \line {a tempo} \line { \smaller {Valse cantabile} } } } s s |
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

partOneDynamics =  {
    \once \override DynamicText.extra-offset = #'(3 . 1)
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

partOneSub =  {
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


segueOneSilent =  {
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

segueOneRHvI =  \relative b' {
    b4( a2^\tenuto) |
    <g cs,>2.^\tenuto |
    \once \override Slur.positions = #'(2.5 . 2.5)
    fs4( f2^\tenuto) |
    f'2.\arpeggio^\tenuto |
}
segueOneRHvII =  \relative b {
    <b ds>2. |
                                % [mils] this note is a bit too close to the others
    \once\override Voice.NoteColumn.force-hshift = #1.2
    bf2( a4) |
    \once \override Slur.positions = #'(-5.5 . -5)
    d2( ef4) |
    <ef a c>2.\arpeggio
}
segueOneRHvIII =  \relative a {
    s1*3/4 |
    s1*3/4 |
                                % [mils] this note is a bit too close to the others
    \once\override Voice.NoteColumn.force-hshift = #1.2
    a2. |
    s1*3/4 |
}

segueOneRH =  {
    <<
        \segueOneRHvI \\
        \segueOneRHvII \\
        \segueOneRHvIII
    >>
}

segueOneLHvI =  \relative fs {
    fs2( f4) | % [mils] Expect warning 'clashing notecolumns'
    e2( ef4) | % [mils] Expect warning 'clashing notecolumns'
    d2( c4) |  % [mils] Expect warning 'clashing notecolumns'
    f,2.^\tenuto |     % [mils] Expect warning 'clashing notecolumns'
}

segueOneLHvII =  {
    \transpose c c, \segueOneLHvI
}

segueOneLH =  {
    <<
                                % \applyContext #(lambda (x) (display "\n[mils] expect warnings:  Too many clashing notecolumns.\n"))
        \stemUp
        \segueOneLHvI \\
        \segueOneLHvII
        \stemNeutral
    >>
}

segueOneSuper =  {
    \segueOneSilent
}


segueOneSub =  {
    \segueOneSilent
}

segueOneDynamics =  {
    \segueOneSilent
}
