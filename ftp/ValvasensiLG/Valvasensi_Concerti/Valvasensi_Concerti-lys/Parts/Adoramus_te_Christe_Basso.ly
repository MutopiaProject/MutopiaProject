\new Staff  {
        \set Staff.instrumentName=""
        \set Staff.midiInstrument="harpsichord"
        \key a \minor
        \clef bass
        \relative c {   
                \set Score.measureLength = #(ly:make-moment 4 2)
                a2 cis2. d4 e2 |
                \set Score.measureLength = #(ly:make-moment 3 1)
                cis d h4 g h c d2 g, |
                \set Score.measureLength = #(ly:make-moment 4 4)
                g'4. f8 e g a h |
                \set Score.measureLength = #(ly:make-moment 4 2)
                c4 e, f2 g1~ |
                \set Score.measureLength = #(ly:make-moment 4 4)
                g |
                \set Score.measureLength = #(ly:make-moment 4 2)
                c,8 e f g a a, c d e g, h c d2 |
                \set Score.measureLength = #(ly:make-moment 4 1)
                d4 e8 f g4 f e\breve a,2 a' |
                \set Score.measureLength = #(ly:make-moment 4 2)
                g4 f e2 a,4 h c d |
                g,2 g g'4 h, c d |
                d2 d c4 h8 a g a h c |
                g2 f g c8 e, f g |
                a2 h4 d e1 |
                a,8 a h c d2 g,8 g a h c4 h |
                \set Score.measureLength = #(ly:make-moment 3 1)
                a2 d a1 d2. d4 |
                \set Score.measureLength = #(ly:make-moment 4 2)
                g4 e8 e a4 a cis,1 |
                \set Score.measureLength = #(ly:make-moment 4 4)
                d2. g4 |
                \set Score.measureLength = #(ly:make-moment 4 2)
                e e a2 fis4 fis g2 |
                e4 a fis2 g e |
                cis d h4 a e'2 |
                \set Score.measureLength = #(ly:make-moment 4 4)
                cis4 d a2 |
                \set Score.measureLength = #(ly:make-moment 3 1)
                d4 c h a g8 d' e f g g, h c d4 c h g |
                d'1 g,4 a h2 |
                \set Score.measureLength = #(ly:make-moment 3 1)
                c8 a c d e e f g a a, c d e4 d c h a f |
                \set Score.measureLength = #(ly:make-moment 4 4)
                e1 |
                \set Score.measureLength = #(ly:make-moment 4 2)
                a8 a h c d2 g,4. a8 h4 a8 h |
                \set Score.measureLength = #(ly:make-moment 4 4)
                c4 a c d |
                \set Score.measureLength = #(ly:make-moment 4 2)
                e2 e a,1 |
                \set Score.measureLength = #(ly:make-moment 4 4)
                c4 c c d8 e |
                e,1 |
                \set Score.measureLength = #(ly:make-moment 4 1)
                a\longa |
        \bar "|."
        }

}