\new Staff  {
        \set Staff.instrumentName=\markup{\center-column{"Basso"\line {"continuo"}}}
        \set Staff.midiInstrument="harpsichord"
        \key c \major
        \clef bass
        \relative c' {
                a2. gis4~ |
                gis gis a2~ |
                a r4 a~ |
                a g8 a d,2~ |
                d d |
                e1 |
                a, |
                r2 a' |
                gis4. gis8 gis4 gis |
                a2 r4 a,~ |
                a h8 c d2~ |
                d d |
                e2. e4 |
                a,1 |
                \clef tenor r4 g'2 g4 |
                g4. g8 g4 g |
                c, c8 c' e4 e |
                d2. g4 |
                \clef bass r4 c,,2 c4 |
                c4. c8 c4 c |
                f, f8 f' a4 a |
                g2. c4 |
                r2 r4 gis~ |
                gis gis8 gis a4 a |
                r gis gis8. gis16 gis8 gis |
                a4 a r gis |
                gis4. gis8 a2 |
                a d, |
                e1 |
                a, |
                r2 c |
                f,1 |
                g2. g'4 |
                c,1 |
                d2 \clef tenor d' |
                g,1 |
                a2 \clef bass a |
                d,1 |
                e2 gis |
                a1 |
                a |
                g2 f8. e16 e8. d16 |
                d4 c h2 |
                a a'8. e16 e4 |
                f8. f16 c8. c16 d2 |
                a1 |
                d2. a4 |
                a b f2 |
                g1 |
                a~ |
                a~ |
                a |
                \set Score.measureLength = #(ly:make-moment 4 1)
                d\longa
        \bar "|."
        }
}