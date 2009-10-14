\new Staff  {
        \set Staff.instrumentName="Basso"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef bass
        \relative c {   
                \context Voice = "melodyBas" {
                        \dynamicUp
                        \autoBeamOff
                        d4. d8 d2 |
                        r2 d4. d8 |
                        d2 d4. d8 |
                        d2 g4. g8 |
                        g1 |
                        r4 c a4. a8 |
                        g4. g8 a4. a8 |
                        g2 g |
                        c,4 c8 c h4. h8 |
                        c2 g' |
                        c,4 c8 c h4. h8 |
                        c4. c8 g'4 g |
                        c,c g'2 |
                        c4 a g2 |
                        c1 |
                        r4 f, f4. f8 |
                        g4 e d2 |
                        g,1 |
                        r4 d' d f |
                        e4. d8 cis4. cis8 |
                        d4 c b2 |
                        a1 |
                        R1*3 |
                        r4 d2 d4 |
                        a'2 g4. f8 |
                        e4 e d c |
                        h1 |
                        a |
                        R1*11 |
                        r4 d2 a8 a |
                        b2 c |
                        f, g4 g8 g |
                        a1 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}