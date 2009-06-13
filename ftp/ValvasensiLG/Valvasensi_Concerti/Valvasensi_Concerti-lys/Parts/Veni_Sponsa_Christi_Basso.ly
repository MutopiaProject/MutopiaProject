\new Staff  {
        \set Staff.instrumentName=""
        \set Staff.midiInstrument="harpsichord"
        \key d \minor
        \clef bass
        \relative c {
                \set Score.measureLength = #(ly:make-moment 4 2)
                g1 es' |
                d2. d4 fis2. g8 fis |
                g2 g, d'2. b4 |
                es2. f4 b,1 |
                b4. a8 g4 f c'2 c |
                \set Score.measureLength = #(ly:make-moment 4 4)
                c g |
                d' g, |
                f4 b f2 |
                b es4 c |
                \set Score.measureLength = #(ly:make-moment 4 2)
                d1 g, |
                g'4 e8 e f2 c4 f d g |
                g1 c,2 g |
                d'1 a |
                d2 d2. h4 c2 |
                \set Score.measureLength = #(ly:make-moment 4 4)
                g4 d' g,2 |
                d'4 fis, g2 |
                d' g, |
                \set Score.measureLength = #(ly:make-moment 4 2)
                d'2. f4 c2 c |
                \set Score.measureLength = #(ly:make-moment 4 4)
                c f |
                \set Score.measureLength = #(ly:make-moment 4 2)
                d1 c2 g |
                \set Score.measureLength = #(ly:make-moment 4 4)
                d' a4. g8 |
                \set Score.measureLength = #(ly:make-moment 4 2)
                a1 d |
                c f, |
                f' b, |
                g4. a8 b4 f c'2 c |
                \set Score.measureLength = #(ly:make-moment 4 4)
                c g |
                d'4 b es8. d16 es8. b16 |
                \set Score.measureLength = #(ly:make-moment 4 2)
                f'4. f8 f2 d4 h c2 |
                d4. c8 d2 g,1 |
                d'4 e fis2 g4 a b fis8 g |
                \set Score.measureLength = #(ly:make-moment 4 4)
                d2 g, |
                \set Score.measureLength = #(ly:make-moment 4 2)
                d'1 d2 b4 c |
                d es d2 f g |
                c,4 d f4. es8 f1 |
                b, f'4 d g2 |
                d d c8 d e g f2 |
                \set Score.measureLength = #(ly:make-moment 4 4)
                b,4. f8 g4 d' |
                \set Score.measureLength = #(ly:make-moment 4 2)
                es d c2 d2. d4 |
                \set Score.measureLength = #(ly:make-moment 4 4)
                f2 b,4. a8 |
                \set Score.measureLength = #(ly:make-moment 4 2)
                g4 d' g,2 d'4 fis g2 |
                \set Score.measureLength = #(ly:make-moment 4 4)
                d2. b4 |
                es2. f4 |
                \set Score.measureLength = #(ly:make-moment 4 2)
                b,1 g4 a b4. c8 |
                \set Score.measureLength = #(ly:make-moment 5 1)
                d4 c d2 g,\longa |
        \bar "|."
        }

}