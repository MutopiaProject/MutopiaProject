\new Staff  {
        \set Staff.instrumentName=\markup{\center-column{"Basso"\line {"continuo"}}}
        \set Staff.midiInstrument="harpsichord"
        \key f \major
        \clef bass
        \relative c {
                r4 b b4. b8 |
                b4 b es2 |
                b r4 b |
                b4. b8 b4 b |
                es2 b |
                r4 b f'2 |
                f4 f2 f4 |
                g1 |
                d |
                r4 d4. d8 d4 |
                a2 a |
                a4. a8 a4 a |
                a2 a |
                r4 d d d |
                g,1 |
                d'4 \clef tenor d' d d |
                g,1~ |
                g |
                d'4 \clef bass d, d2~ |
                d d |
                g, g |
                r4 g' g g |
                c,1~ |
                c |
                g'2 r4 g |
                c, c c d |
                g,1 |
                d' |
                \clef tenor r4 d' d4. d8 |
                d4 a c2 |
                f, g4 g |
                es2 d~ |
                d4 g f4. f8 |
                c4 c d2 |
                a'1 |
                \clef bass r4 d, d4. d8 |
                d4 a c2 |
                c d4 d |
                b2 a~ |
                a4 d b4. b8 |
                f4 f g2 |
                d' r4 d |
                c b a2~ |
                a d |
                r4 g f es |
                d1 |
                g,2 g'4 g8 g |
                a f g a b4 b |
                f2 b |
                \clef tenor r4 d c b |
                a1 |
                d,2 d'4 d8 d |
                e c d e f4 f |
                c2 f |
                \clef bass r4 d, e f |
                g1 |
                c,4 a b c |
                d2 d |
                g,4 g8 g a f g a |
                b4 b a2~ |
                a1 |
                \set Score.measureLength = #(ly:make-moment 4 1)
                d\longa |
        \bar "|."
        }
}