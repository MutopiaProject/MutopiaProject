\new Staff  {
        \set Staff.instrumentName=""
        \set Staff.midiInstrument="harpsichord"
        \key f \major
        \clef bass
        \relative c {
                \set Score.measureLength = #(ly:make-moment 3 1)
                f1 a, d |
                c f,2 f' d g |
                \set Score.measureLength = #(ly:make-moment 4 2)
                f g4 g, d'2. a4 |
                d4. c8 f,2 f'4 f, c'2 |
                f, g d' g, |
                \set Score.measureLength = #(ly:make-moment 4 4)
                f c' |
                \set Score.measureLength = #(ly:make-moment 4 2)
                f, c' g es' |
                d c f, f'4 e |
                d2 c g f |
                g f4 g f2 b |
                g1 c2 h |
                c d g, d' |
                \set Score.measureLength = #(ly:make-moment 4 4)
                d c4 g |
                b2 es |
                d g,4 g'~ |
                \set Score.measureLength = #(ly:make-moment 4 2)
                g d f2 b, es4. d8 |
                c4 c f4. e8 d4 d g4. f8 |
                e4 e f2 a, c |
                \set Score.measureLength = #(ly:make-moment 4 4)
                f, f |
                g1 |
                \set Score.measureLength = #(ly:make-moment 4 2)
                d'2 g, g'8 f e f d2 |
                c4 c8 b a4 g d'2 g, |
                \set Score.measureLength = #(ly:make-moment 4 1)
                \tempo 4=240
                g'\longa |
                \tempo 4=100
                \set Score.measureLength = #(ly:make-moment 4 4)
                g2 f |
                b, a |
                g f |
                c' f4 d |
                \set Score.measureLength = #(ly:make-moment 4 2)
                a2 d1 g,2 |
                c2. b8 a g2. g4 |
                c2 a2. f4 a b |
                c2 f, c'8 d e f c2 |
                f, f8. g16 a8. b16 c4 a2 g4 |
                b4 c d2 g,1 |
                d'2 a d4 c b g |
                c c8 b a4 a8 g f2 f' |
                b,2. a8 g f1 |
                c' f, |
                \set Score.measureLength = #(ly:make-moment 4 4)
                f2 g~ |
                g f |
                \set Score.measureLength = #(ly:make-moment 5 1)
                c'1 f,\longa |
        \bar "|."
        }

}