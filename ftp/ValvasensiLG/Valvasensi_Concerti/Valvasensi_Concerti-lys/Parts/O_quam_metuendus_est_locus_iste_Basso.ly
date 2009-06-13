\new Staff  {
        \set Staff.instrumentName=""
        \set Staff.midiInstrument="harpsichord"
        \key f \major
        \clef bass
        \relative c {
                \set Score.measureLength = #(ly:make-moment 4 2)
                f2. a,4 a2 d |
                b2 c f,1 |
                f'2. e4 d2. c4 |
                b4 b' g2. es8 es es4 d |
                es2 f b,1 |
                b4 d a c g b f4. g8 |
                a1 d |
                \set Score.measureLength = #(ly:make-moment 4 4)
                f2 c |
                \set Score.measureLength = #(ly:make-moment 4 2)
                f,1 f' |
                b,2. d2 a c4~ |
                c4 g2 b f f'4 |
                \set Score.measureLength = #(ly:make-moment 3 1)
                d2 a c1 f, |
                \set Score.measureLength = #(ly:make-moment 4 2)
                f'2 c c b4 g |
                d'2 d g4. es8 d4 e8 fis |
                g4 e d2 c1 |
                \set Score.measureLength = #(ly:make-moment 4 4)
                f4 e d c |
                \set Score.measureLength = #(ly:make-moment 4 2)
                f, g a f c'2. g'8 f |
                e2 f d g4. f8 |
                e2 f4 d es b f2 |
                b1 b4 g a c |
                f d c g c4. d8 e4 f |
                c b a f c'1 |
                f, f'4 e d c |
                \set Score.measureLength = #(ly:make-moment 4 4)
                d c h c |
                \set Score.measureLength = #(ly:make-moment 4 2)
                g2. g4 c2 a8 a b c |
                d1 g, |
                g'2. es4 d2 d |
                d4 c f,2 f f'4 e8 d |
                f1 c |
                f d2 c~ |
                \set Score.measureLength = #(ly:make-moment 4 4)
                c d |
                c1 |
                es1 |
                d4 b f'2 |
                \set Score.measureLength = #(ly:make-moment 4 2)
                b,1 es2 d |
                \set Score.measureLength = #(ly:make-moment 4 4)
                c4 d es d8 c |
                b4 c d2 |
                f1~ |
                f2 a,2 |
                c1 |
                f,2 a4 b |
                \set Score.measureLength = #(ly:make-moment 5 1)
                c1 f,\longa
        \bar "|."
        }

}