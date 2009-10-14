\new Staff  {
        \set Staff.instrumentName=\markup{\center-column{"Basso"\line {"continuo"}}}
        \set Staff.midiInstrument="harpsichord"
        \key c \major
        \clef bass
        \relative c {
                d4. d8 d2 |
                fis2 d4. d8 |
                d2 d4. d8 |
                d2 g4. g8 |
                g1 |
                c2 a4. a8 |
                g4. g8 a4. a8 |
                g2 g |
                c,4 c8 c h4. h8 |
                c2 g' |
                c,4 c8 c h4. h8 |
                c4 c g' g |
                c, c g'2 |
                c4 a g2 |
                c1 |
                r4 f, f4. f8 |
                g4 e d2 |
                g,1 |
                r4 d' d f |
                e d cis4. cis8 |
                d4 c b2 |
                a1 |
                \clef alto f''2. f8 f |
                e4. e8 d4 d~ |
                d cis8 h cis2 |
                d4 \clef bass d,2 d4 |
                a'2 g4. f8 |
                e4 e d c |
                h1 |
                a |
                \clef alto f''2. f8 f |
                e4. e8 d4 d~ | %d4 d4~ |d instead of d2 d2.
                d cis8 h cis2 |
                d4 \clef tenor d2 a8 a |
                b2 c |
                f, g4 g8 g |
                a1 |
                d,2 \clef tenor f'2~ |
                f4 f8 f e4. e8 |
                d2 d2~ |
                d4 cis8 h cis2 |
                \clef bass d,2. a8 a |
                b2 c |
                f,2 g4 g8 g |
                a1 |
                \set Score.measureLength = #(ly:make-moment 4 1)
                d\longa |
        \bar "|."
        }
}