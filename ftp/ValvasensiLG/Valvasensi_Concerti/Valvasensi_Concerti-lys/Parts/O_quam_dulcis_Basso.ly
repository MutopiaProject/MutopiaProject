\new Staff  {
        \set Staff.instrumentName="Basso"
        \set Staff.midiInstrument="harpsichord"
        \key d \minor
        \clef bass
        \relative c' {  
                \set Score.measureLength = #(ly:make-moment 4 2)
                g2 es d1 |
                d b4 c d es8 d |
                f1 f, |
                f'2 f2. es4 d2 |
                d a4 a b2 a |
                c2. c4 f,1 |
                f'4 e d c b c d es |
                f2. es4 d1 |
                a2 b4 c d1 |
                g, c |
                f, f' |
                b,2. es4 es4. es8 es2 |
                es1 d4 f g f |
                f d f2 b,1 |
                f'2 es d1 |
                b2 c d1 |
                \set Score.measureLength = #(ly:make-moment 4 1)
                c d1. d2 g,4 es' c d8 es |
                \set Score.measureLength = #(ly:make-moment 4 2)
                f2 d4 e8 f g2 c,4 d |
                es f g2 c,2. c4 |
                f2 es d2. d4 |
                d4 g, c f b, c f,4. g8 |
                a4 b c f, f' d8 d es4 c |
                d g, c f d h8 h c4 a |
                d g c, f d g c, f |
                b, g c f d2 a8 g a b |
                c2 g f4 b f b |
                r1 f'1 |
                f,4. g8 a4 b c f, c' f, |
                r1 d'2 c |
                g4. a8 b4 c d g, d' g, |
                \set Score.measureLength = #(ly:make-moment 5 2)
                r1
                \once \override Staff.TimeSignature #'style = #'single-digit
                \time 3/2
                \set Score.measureLength = #(ly:make-moment 5 2)
                f2 f g |
                \set Score.measureLength = #(ly:make-moment 3 1)
                a f g c2. c4 c2 |
                es es f g es f |
                \set Score.measureLength = #(ly:make-moment 5 2)
                b,2. b4 b2
                \time 4/4
                \set Score.measureLength = #(ly:make-moment 5 2)
                b1 |
                \set Score.measureLength = #(ly:make-moment 7 1)
                c d~ d g,\longa |
        \bar "|."
        }

}