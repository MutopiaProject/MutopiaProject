\new Staff  {
        \set Staff.instrumentName=""
        \set Staff.midiInstrument="harpsichord"
        \key d \minor
        \clef bass
        \relative c {   
                \set Score.measureLength = #(ly:make-moment 4 2)
                g2 d'4 e fis2 g |
                es1 d |
                g4 g g es8 es es2 d |
                b2. c4 d e f g |
                f1 f2 d~ |
                \set Score.measureLength = #(ly:make-moment 3 1)
                d4 a f g a1 d |
                \set Score.measureLength = #(ly:make-moment 4 4)
                b |
                \set Score.measureLength = #(ly:make-moment 4 2)
                b b2 f |
                g2. g4 f1 |
                f2 g4 a8 b c4 a b c |
                \set Score.measureLength = #(ly:make-moment 3 1)
                d1 g,1 b4 b b b8 b |
                \set Score.measureLength = #(ly:make-moment 4 2)
                b2 b4 b b b f' g |
                d2 d b4 c d g |
                f2 f f2. g4 |
                d b f g d' es d2 |
                b c4 d es c d2 |
                g,1 g'4 d es2 |
                d4 e fis2 g4 d g,2 |
                d'4 b2 a8 g a4 b a2 |
                \set Score.measureLength = #(ly:make-moment 3 1)
                d1 g2 fis4 e fis2 g |
                \set Score.measureLength = #(ly:make-moment 4 4)
                g,4 a b c |
                \set Score.measureLength = #(ly:make-moment 4 2)
                d2 b4 c d es d2 |
                f2. g4 c,2 a |
                d1 d |
                b4 a g f c' d c2 |
                c1 a2 d4 cis |
                \set Score.measureLength = #(ly:make-moment 3 1)
                d8 a f g a2 a1 d |
                \set Score.measureLength = #(ly:make-moment 4 2)
                g4 es d2 d2. es4 |
                \set Score.measureLength = #(ly:make-moment 4 4)
                f4 d es f |
                \set Score.measureLength = #(ly:make-moment 4 2)
                b,2. a8 g a4 fis a2 |
                d b4 a g d' e f |
                g2 b, a2. a4 |
                \set Score.measureLength = #(ly:make-moment 3 1)
                d4 g f d c c es f g1 |
                \set Score.measureLength = #(ly:make-moment 4 2)
                c,1 g |
                \set Score.measureLength = #(ly:make-moment 4 4)
                g'2 e |
                \set Score.measureLength = #(ly:make-moment 4 2)
                f d es c |
                d h c a |
                d h d1 |
                \set Score.measureLength = #(ly:make-moment 4 1)
                g,\longa |
        \bar "|."
        }

}