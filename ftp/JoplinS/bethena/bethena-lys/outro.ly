\version "2.18.0"
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
    \once \override Slur.attachment = #'(stem . stem)
    a8( g4 b8 a4) |
    g4 g'( a) |
    \once \override Slur.attachment = #'(stem . stem)
    a8( g4 b8 a4) |
    g4 g' g |
    a,8 g4 b8 a4 |
    a,8 g4 b8 a4 |
    a,8 g4 b8 a4 |
    g4 <g bf ef g>2\fermata |
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
    \once \override Slur.attachment = #'(stem . stem)
    d4( e ef |
    d) s s |
    \once \override Slur.attachment = #'(stem . stem)
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
    \once\override TextScript.extra-offset = #'(0 . 0)
    s4^\markup{Andante} s s |
    \barRest |
    \barRest |
    \barRest |
    \once\override TextScript.extra-offset = #'(0 . 0)
    s4^\markup{Tempo primo} s s |
    \barRest |
    \barRest |
    \barRest |
    \once\override TextScript.extra-offset = #'(0 . 0)
    s2.^\markup{\smaller\italic FINE} |
}

outroDynamics =  {
    \once \override DynamicText.extra-offset = #'(-4 . 1)
    s4\p s s |
    \barRest |
    \barRest |
    \barRest |
    \once \override DynamicText.extra-offset = #'(-7 . 2.5)
    s2.\f |
    s2.\f |
    \once \override DynamicText.extra-offset = #'(0 . 1)
    s2.\f |
    \once \override DynamicText.extra-offset = #'(0 . 1)
    s2.\f |
    \once \override DynamicText.extra-offset = #'(-2.5 . 1)
    s2.\f |
}

outroSub =  {
    \outroSilent
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
