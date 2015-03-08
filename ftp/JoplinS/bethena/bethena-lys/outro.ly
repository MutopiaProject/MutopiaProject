\version "2.18.2"

outroSilent =  {
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

outroRHvI =  \relative a' {
    \once \override Slur.positions = #'(3.5 . 3.5)
    a8( g4 b8 a4) |
    g4 g'( a) |
    \once \override Slur.positions = #'(6.5 . 6)
    a8( g4 b8 a4) |
    g4 g' g |
    a,8 g4 b8 a4 |
    a,8 g4 b8 a4 |
    a,8 g4 b8 a4 |
    g4 <g bf ef g>2 \fermata |
    <g b d g>2.|
}

outroRHvII =  \relative b {
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

outroRH =  {
    <<
        \outroRHvI \\
        \outroRHvII
    >>
}


outroLHvI =  \relative d {
    \once \override Slur.positions = #'(3.8 . 3.8)
    d4( e ef |
    d) s s |
    \once \override Slur.positions = #'(6.5 . 6.5)
    d'4( e ef |
    d) s s |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
    \barRest |
}

outroLHvII =  \relative g, {
    g2. |
    g4 s s |
    g'2. |
    g4 s s |
    \stemNeutral
    \change Staff = "rh"
    <g' b d>2. |
    \change Staff = "lh"
    <g, b d> |
    <g, b d> |
    <g b d>4 <ef ef,>2^\fermata |
    <g g,>2. |
}

outroLH =  {
    <<
        <<
            \outroLHvI \\
            \outroLHvII
        >>
        {\barRest | s4 r r | \barRest | s4 r r | }
    >>
}

outroSuper =  {
    s4^\markup {Andante} s s |
    \barRest |
    \barRest |
    \barRest |
    s4^\markup {Tempo primo} s s |
    \barRest |
    \barRest |
    \barRest |
    s2.^\markup { \smaller FINE} |
}

outroDynamics =  {
    s4\p s s |
    \barRest |
    \barRest |
    \barRest |
    s2.\f |
    s2.\f |
    s2.\f |
    s2.\f |
    s2.\f |
}

outroSub =  {
    \outroSilent
}
