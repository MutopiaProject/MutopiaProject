\new Staff  {
        \set Staff.instrumentName="Alto"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef "G_8"
        \relative c' {  
                \context Voice = "melodyAlt" {
                        \dynamicUp
                        \autoBeamOff
                        R1 |
                        a4. a8 a2 |
                        a4. a8 a2 |
                        d4. d8 d2 |
                        d4. d8 d4 g~ |
                        g e2 a,4 |
                        d4. e8 e4 c |
                        d2 d |
                        e4 e8 e g4 g |
                        e2 d |
                        c4 e8 e g4. g8 |
                        e4 e g g |
                        g g g2 |
                        g4 c, g'2 |
                        g1 |
                        r4 f f4. f8 |
                        d4 g g4.\melisma fis8\melismaEnd |
                        g2 r4 g, |
                        g b a4.\melisma b8 |
                        c4\melismaEnd g a4. a8 |
                        b4 a g2 |
                        a1 |
                        f'2. f8 f |
                        e4. e8 d4 d~ |
                        d cis8 h cis2 |
                        d r4 a~ |
                        a a d2 |
                        g,4 g d' a |
                        h c d2 |
                        c1 |
                        f2. f8 f |
                        e4. e8 d4 d~ |
                        d cis8 h cis2 |
                        d4 f2 e8 e |
                        d2 e |
                        c h4. h8 |
                        cis4 d2\melisma cis4\melismaEnd |
                        d2 f2~ |
                        f4 f8 f e4. e8 |
                        d2 d2~ |
                        d4 cis8 h cis2 |
                        d4 d2 c8 c |
                        d2 c |
                        c b4 g8 g |
                        e4\melisma f8 g a2\melismaEnd |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        a\longa
                }

        \bar "|."
        }

}