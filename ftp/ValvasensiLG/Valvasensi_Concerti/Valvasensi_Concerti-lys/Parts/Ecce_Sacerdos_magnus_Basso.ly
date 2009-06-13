\new Staff  {
        \set Staff.instrumentName=""
        \set Staff.midiInstrument="harpsichord"
        \key f \major
        \clef bass
        \relative c {   
                \set Score.measureLength = #(ly:make-moment 4 2)
                f1 f, |
                f' c4 a c2 |
                f,1 f'4 c f2 |
                f,1 f2 g4 f |
                c'2 g4 f4. g8 a4 g2 |
                c4 f e f c f, g2 |
                c1 c2. a4 |
                f1 f' |
                f,1. b2 |
                c1 f, |
                f'4 d8 e f4 b, f'2. b,4 |
                f2 f c'1 |
                c2. f4 d e f f, |
                \set Score.measureLength = #(ly:make-moment 4 4)
                a b c d |
                \set Score.measureLength = #(ly:make-moment 4 2)
                c1 f, |
                f'4 b, f'2 f,1 |
                \set Score.measureLength = #(ly:make-moment 4 4)
                f'2 b, |
                \set Score.measureLength = #(ly:make-moment 4 2)
                c4 f b,2 f1 |
                g d'4 h2 c4 |
                g1 c |
                \set Score.measureLength = #(ly:make-moment 4 4)
                f,2 g |
                d'1 |
                g,4 a f2 |
                \set Score.measureLength = #(ly:make-moment 4 2)
                g4 a g2 c f4 e8 d |
                c1 f, |
                c'4 c a a h8 h c2 h4 |
                c2 f, g4 a g2 |
                c4 c a a8 a h4 c2 h4 |
                \set Score.measureLength = #(ly:make-moment 4 4)
                c1 |
                \set Score.measureLength = #(ly:make-moment 4 2)
                a4 g d'2 g,4 g' e e |
                \set Score.measureLength = #(ly:make-moment 4 4)
                fis fis8 fis g2 |
                a a, |
                d4 b f g |
                \set Score.measureLength = #(ly:make-moment 4 2)
                c2 es1 f4 b, |
                f2 b g f4 g |
                \set Score.measureLength = #(ly:make-moment 4 4)
                f1 |
                f2 a |
                c1 |
                \set Score.measureLength = #(ly:make-moment 4 1)
                f,\longa |
        \bar "|."
        }

}