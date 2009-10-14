\new Staff  {
        \set Staff.instrumentName="Basso"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef bass
        \relative c' {  
                \context Voice = "melodyBas" {
                        \dynamicUp
                        \autoBeamOff
                        R1*5 |
                        r4 a a4. a8 |
                        a4 a a a~ |
                        a8 a fis4 g2 |
                        g4 g8 g e4 f~ |
                        f d e2 |
                        c1 |
                        g |
                        a |
                        e' |
                        a, |
                        a' |
                        g |
                        f |
                        e |
                        d |
                        R1*7 |
                        r4 a'2 g8 f |
                        g4 g r4 e8 e |
                        f2 r4 d8 d |
                        e4 e2 d8. c16 |
                        d4 d r d |
                        c c r c |
                        b b8 b b b a g |
                        a1 |
                        r4 f'2 e8 d |
                        e4 e8 e e e d c |
                        d2 r |
                        R1*9 |
                        r2 r4 a |
                        d d4. d8 c4 |
                        f f e4. e8 |
                        d4 d8 d c4. c8 |
                        b4. b8 g4 g |
                        a1 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}