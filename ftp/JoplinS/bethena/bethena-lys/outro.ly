outroSilent = \notes {
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

outroRHvI = \notes \relative a' {
    \once \override Slur #'attachment = #'(stem . stem)
    a8( g4 b8 a4) |
    g4 g'( a) |
    \once \override Slur #'attachment = #'(stem . stem)
    a8( g4 b8 a4) |
    g4 g' g |
    a,8 g4 b8 a4 |
    a,8 g4 b8 a4 |
    a,8 g4 b8 a4 |
    g4 <g bf ef g>2\fermata |
    <g b d g>2.|
}

outroRHvII = \notes \relative b {
    b4( c2)( |
    b4) r r |
    b'4( c2)( |
    b4) r r |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

outroRH = \notes {
    <<
        \outroRHvI \\
        \outroRHvII
    >>
}


outroLHvI = \notes \relative d {
    \once \override Slur #'attachment = #'(stem . stem)
    d4( e ef |
    d) s s |
    \once \override Slur #'attachment = #'(stem . stem)
    d'4( e ef |
    d) s s |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

outroLHvII = \notes \relative g, {
    g2. |
    g4 s s |
    g'2. |
    g4 s s |
    \stemBoth
    \change Staff = "rh"
    <g' b d>2. |
    \change Staff = "lh"
    <g, b d> |
    <g, b d> |
    <g b d>4 <ef ef,>2^\fermata |
    <g g,>2. |
}

outroLH = \notes {
    <<
        <<
            \outroLHvI \\
            \outroLHvII
        >>
        {\barRest | s4 r r | \barRest | s4 r r | }
    >>
}

outroSuper = \notes {
    \once\override TextScript #'extra-offset = #'(0 . 0)
    s4^\markup{Andante} s s |
    \barRest |
    \barRest |
    \barRest |
    \once\override TextScript #'extra-offset = #'(0 . 0)
    s4^\markup{Tempo primo} s s |
    \barRest |
    \barRest |
    \barRest |
    \once\override TextScript #'extra-offset = #'(0 . 0)
    s2.^\markup{\smaller\italic FINE} |
}

outroDynamics = \notes {
    \once \override DynamicText #'extra-offset = #'(-4 . 1)
    s4\p s s |
    \barRest |
    \barRest |
    \barRest |
    \once \override DynamicText #'extra-offset = #'(-7 . 2.5)
    s2.\f |
    s2.\f |
    \once \override DynamicText #'extra-offset = #'(0 . 1)
    s2.\f |
    \once \override DynamicText #'extra-offset = #'(0 . 1)
    s2.\f |
    \once \override DynamicText #'extra-offset = #'(-2.5 . 1)
    s2.\f |
}

outroSub = \notes {
    \outroSilent
}
