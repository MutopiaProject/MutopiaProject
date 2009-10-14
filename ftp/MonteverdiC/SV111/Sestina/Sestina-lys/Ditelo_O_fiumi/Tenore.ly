\new Staff  {
        \set Staff.instrumentName="Tenore"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef "G_8"
        \relative c' {  
                \context Voice = "melodyTen" {
                        \dynamicUp
                        \autoBeamOff
                        r2 r4 a |
                        fis2 d |
                        r4 a' fis4.\melisma g8 |
                        a2\melismaEnd g4 d' |
                        h4.\melisma c8 d2\melismaEnd |
                        c1 |
                        h4. d8 c4 a |
                        h2 h |
                        g4 g8 a h4 d |
                        g,2 h |
                        g4 g8 a h4 d |
                        g, g h d |
                        c c h2 |
                        c4 c d2 |
                        c1 |
                        r4 c a c |
                        g g d'2 |
                        d1 |
                        r4 f, f a |
                        g4. f8 e4. e8 |
                        f4 e d2 |
                        f1 |
                        R1*3 |
                        r4 a4. a8 d4 |
                        c a h2 |
                        h r4 a |
                        d, d d2 |
                        a'1 |
                        R1*3 |
                        r4 d2 a8 a |
                        b2 c |
                        f, g4 g8 g |
                        a1 |
                        d,2 r |
                        R1*3 |
                        r4 a'2 a8 a |
                        d,2 g |
                        a d,4 e8 e |
                        e1 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}