\new Staff  {
        \set Staff.instrumentName=""
        \set Staff.midiInstrument="harpsichord"
        \key a \minor
        \clef bass
        \relative c {
                \set Score.measureLength = #(ly:make-moment 4 2)
                a2. h8 c d2 a |
                e'2. e8 f g1 |
                c,4 e d2 e a, |
                a2. a8 h cis2 d |
                h2. h4 h a g2 |
                c4. d8 e2 a,4 h2 c4 |
                d2 g, d'4 a8 a h2 |
                d2. e4 d2 d |
                cis d a d |
                \set Score.measureLength = #(ly:make-moment 3 1)
                cis d g,1 d' |
                \set Score.measureLength = #(ly:make-moment 4 2)
                f2. f4 f4 c8 d a2 |
                \set Score.measureLength = #(ly:make-moment 3 1)
                d1 g f |
                \set Score.measureLength = #(ly:make-moment 4 2)
                e2 d g,1 |
                h4 c8 d e2 e2. h4 |
                d2 a c2. d4 |
                e1 e2 e4. f8 |
                e2. h4 a2 e' |
                c g c1 |
                f f4 b,4. b8 f4 |
                c'2 f d4~ d a8 h c d |
                e4 h g' a e2 a, |
                e' a,8 g a h c2 d |
                a1 e' |
                c4 d a2 a'4 a8 a a4 g8 f |
                e1 h8 h h c d2 |
                g,4 a g2 c2. d8 e |
                d2 d g, c |
                a d g,1 |
                c2 a g c4 d |
                e1 a,2. f'4 |
                f2. f4 e2. e4 |
                d2 d a2. d4 |
                d2. d4 c2. c4 |
                b2 a a b4 g |
                \set Score.measureLength = #(ly:make-moment 4 4)
                d'1 |
                h4 a d2 |
                e1 |
                \set Score.measureLength = #(ly:make-moment 5 1)
                e a,\longa |
        \bar "|."
        }

}