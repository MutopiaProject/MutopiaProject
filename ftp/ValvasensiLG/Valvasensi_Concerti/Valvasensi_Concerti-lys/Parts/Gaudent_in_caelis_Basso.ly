\new Staff  {
        \set Staff.instrumentName=""
        \set Staff.midiInstrument="harpsichord"
        \key d \minor
        \clef bass
        \relative c {
                \once \override Staff.TimeSignature #'style = #'single-digit
                \set Score.measureLength = #(ly:make-moment 3 1)
                g2 g d' g es d |
                g, g d' g4 f es2 d |
                g, g f b1 f2 |
                \set Score.measureLength = #(ly:make-moment 9 2)
                b c d f1 f2 b,1 b2 |
                \set Score.measureLength = #(ly:make-moment 3 1)
                b'2 g a d, d a |
                d4 c b c d2 g, g d' |
                g4 f es2 d g,1 g2 |
                g' g f b,1 b2 |
                b c d f1 f2 |
                b,1 b2 a2. g4 f2 |
                \set Score.measureLength = #(ly:make-moment 5 2)
                g d'1
                \time 4/4
                \tempo 4=120
                \set Score.measureLength = #(ly:make-moment 5 2)
                g,4 g c c8 c |
                \set Score.measureLength = #(ly:make-moment 4 2)
                h4 c2 h4 c2. f4 |
                g1 c,4 f2 e8 d |
                c4 g'2 f8 es f1 |
                b,2. b4 es c f d |
                d4. g,8 f2 f' d |
                d2 c1 b2 |
                f1 b |
                d g, |
                g'2 e4 e8 e f4 fis8 fis g2 |
                e fis g4 e d2 |
                c2 f2. g4 f2 |
                \set Score.measureLength = #(ly:make-moment 4 4)
                f4 d g f |
                \set Score.measureLength = #(ly:make-moment 3 1)
                c2 c c4 b8 b a4 f c'2 c |
                f d g e fis g |
                \set Score.measureLength = #(ly:make-moment 4 2)
                cis, d g,8 g' es es es4. d8 |
                c2 c g'4 es8 es es4 c |
                \set Score.measureLength = #(ly:make-moment 3 1)
                f1 f2 es f1 |
                \set Score.measureLength = #(ly:make-moment 4 2)
                b,1 b'4 a g f8 es |
                \set Score.measureLength = #(ly:make-moment 3 1)
                d2 c d1 g,4 g' es c |
                \set Score.measureLength = #(ly:make-moment 4 2)
                c2 c es4 c f,2 |
                \set Score.measureLength = #(ly:make-moment 4 4)
                c'2 g |
                d' es4 g |
                \set Score.measureLength = #(ly:make-moment 4 2)
                g1 c, |
                c4 a8 a d2 d4 f c d |
                \set Score.measureLength = #(ly:make-moment 4 4)
                es2. c4 |
                f d g,2 |
                \set Score.measureLength = #(ly:make-moment 4 2)
                es'4 c d2 g,1 |
                \once \override Staff.TimeSignature #'style = #'single-digit
                \time 3/2
                \tempo 4=360
                \set Score.measureLength = #(ly:make-moment 3 1)
                g2 g d' g4 f es2 d |
                g, g d' g4 f es2 d |
                g, g f b1 f2 |
                b c d f1 f2 |
                b,1 b2 b'4 a g2 a |
                d,2 d a d4 c b c d2 |
                g, g d' g4 f es2 d |
                g,1 g2 g' g f |
                b,1 f2 b c d |
                f1 f2 b,1 b2 |
                a2. g4 fis2 g d' g, |
                c2. b4 a2 g d' g, |
                \time 4/4
                \tempo 4=120
                \set Score.measureLength = #(ly:make-moment 4 2)
                es'4 d c2 d1 |
                \set Score.measureLength = #(ly:make-moment 4 1)
                g,\longa |
        \bar "|."
        }

}