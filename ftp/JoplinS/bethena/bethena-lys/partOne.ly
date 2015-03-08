\version "2.18.0"
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
    g2( b4) |
    \revert Slur.attachment
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
    \once \override TextScript.extra-offset = #'(0 . -2)
    s4^\markup{ \column { {a tempo} \italic\smaller {Valse cantabile} } } s s |
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
    \once \override DynamicText.extra-offset = #'(-3.5 . 2)
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


segueOneSilent =  {
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

segueOneRHvI =  \relative b' {
    b4( a2^\tenuto) |
    <g cs,>2.^\tenuto |
    \override TextScript.extra-offset = #'(0 . 1)
    \once \override Slur.attachment = #'(stem . stem)
    fs4( f2^\tenuto) |
    \revert TextScript.extra-offset
    f'2.\arpeggio^\tenuto |
}
segueOneRHvII =  \relative b {
    <b ds>2. |
                                % [mils] this note is a bit too close to the others
    \once\override Voice.NoteColumn.force-hshift = #1.2
    bf2( a4) |
    \once \override Slur.attachment = #'(stem . stem)
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
