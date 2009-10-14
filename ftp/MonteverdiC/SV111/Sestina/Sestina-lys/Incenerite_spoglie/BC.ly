\new Staff  {
        \set Staff.instrumentName=\markup{\center-column{"Basso"\line {"continuo"}}}
        \set Staff.midiInstrument="harpsichord"
        \key c \major
        \clef bass
        \relative c {
                R1 |
                r2 d2~ |
                d4 d8 d d4. d8 |
                d2 d |
                r r4 d |
                g,4. g8 d'2~ |
                d d~ |
                d r |
                d4 d8 d d4 d |
                a'4. a8 a4 a |
                b1 |
                a |
                a~ |
                a2 gis |
                a a |
                f1 |
                e2. e4 |
                a,4. a8 a4 a |
                g1~ |
                g |
                a~ |
                a |
                e |
                a |
                \clef alto
                r4 d' d2 |
                d4 d8 d d4. d8 |
                cis4 cis d2 | %cis instead of c
                g,4 \clef tenor g g2 |
                g4 g8 g g4. g8 |
                fis4 fis g2 |
                c, e |
                e4 e8 e e4. e8 |
                d4 d e2 |
                a4 \clef bass a a2 |
                a4 a8 a a4. a8 |
                g4 g a2 |
                d, r8 fis fis g |
                fis4 fis fis4. fis8 |
                g4 g g4. fis8 |
                g1 |
                r4 g fis4. e8 | %fis instead of f
                g2 g8 g g f |
                e4. e8 d2 |
                c4. e8 d4. c8 |
                e2 e8 e e d |
                c2 h |
                a1~ |
                a~ |
                a |
                \set Score.measureLength = #(ly:make-moment 4 1)
                d\longa |
        \bar "|."
        }
}