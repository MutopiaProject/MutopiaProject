partOneSilent = \notes {
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

partOneRHvI = \notes\relative c'' {
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
    g2( b4) |
    \revert Slur #'attachment
}

partOneRHvII = \notes\relative c' {
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

partOneRH = \notes {
    <<
        \partOneRHvI \\
        \partOneRHvII
    >>
}

partOneLHvI = \notes \relative g, {
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
    <g g,>2. |
}

partOneLHvII = \notes \relative d {
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

partOneLH = \notes {
    <<
        \partOneLHvI \\
        \partOneLHvII
    >>
}

partOneSuper = \notes {
    \once \override TextScript #'extra-offset = #'(0 . -2)
    s4^\markup{ \column < {a tempo} \italic\smaller {Valse cantabile} > } s s |
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

partOneDynamics = \notes {
    \once \override DynamicText #'extra-offset = #'(-3.5 . 2)
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

partOneSub = \notes {
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


segueOneSilent = \notes {
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

segueOneRHvI = \notes \relative b' {
    b4( a2^\tenuto) |
    <g cs,>2.^\tenuto |
    \override TextScript #'extra-offset = #'(0 . 1)
    \once \override Slur #'attachment = #'(stem . stem)
    fs4( f2^\tenuto) |
    \revert TextScript #'extra-offset
    f'2.\arpeggio^\tenuto |
}
segueOneRHvII = \notes \relative b {
    <b ds>2. |
                                % [mils] this note is a bit too close to the others
    \once\override Voice.NoteColumn #'force-hshift = #1.2
    bf2( a4) |
    \once \override Slur #'attachment = #'(stem . stem)
    d2( ef4) |
    <ef a c>2.\arpeggio
}
segueOneRHvIII = \notes \relative a {
    s1*3/4 |
    s1*3/4 |
                                % [mils] this note is a bit too close to the others
    \once\override Voice.NoteColumn #'force-hshift = #1.2
    a2. |
    s1*3/4 |
}

segueOneRH = \notes {
    <<
        \segueOneRHvI \\
        \segueOneRHvII \\
        \segueOneRHvIII
    >>
}

segueOneLHvI = \notes \relative fs {
    fs2( f4) | % [mils] Expect warning 'clashing notecolumns'
    e2( ef4) | % [mils] Expect warning 'clashing notecolumns'
    d2( c4) |  % [mils] Expect warning 'clashing notecolumns'
    f,2.^\tenuto |     % [mils] Expect warning 'clashing notecolumns'
}

segueOneLHvII = \notes {
    \transpose c c, \segueOneLHvI
}

segueOneLH = \notes {
    <<
                                % \applycontext #(lambda (x) (display "\n[mils] expect warnings:  Too many clashing notecolumns.\n"))
        \stemUp
        \segueOneLHvI \\
        \segueOneLHvII
        \stemBoth
    >>
}

segueOneSuper = \notes {
    \segueOneSilent
}


segueOneSub = \notes {
    \segueOneSilent
}

segueOneDynamics = \notes {
    \segueOneSilent
}
