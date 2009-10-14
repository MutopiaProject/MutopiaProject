\new Staff  {
        \set Staff.instrumentName="Tenore"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef "G_8"
        \relative c' {  
                \context Voice = "melodyTen" {
                        \dynamicUp
                        \autoBeamOff
                        a2 h2~ |
                        h4 c e2~ |
                        e r |
                        R1 |
                        r4 d2 cis8. d16 |
                        gis,4 a h2 |
                        cis1 |
                        r2 c |
                        h4. h8 h4 h |
                        c1 |
                        r2 r4 a~ |
                        a g8. a16 h2~ |
                        h4 a h4. h8 |
                        a1 |
                        r4 g2 g4 |
                        g4. g8 g4 g |
                        c,4 c8 c' e4 e |
                        d2. g4 |
                        r4 g,2 g4 |
                        e4. e8 e4 c |
                        c f8 c' a4 a |
                        d2. c4 |
                        r2 r4 h~ |
                        h h8 h a4 a |
                        r4 h h8. h16 h8 h |
                        a4 a r h |
                        h4. h8 a2 |
                        a r4 a |
                        e1 |
                        e |
                        r2 g |
                        f f |
                        r2 r4 g |
                        c,1 |
                        d2 d' |
                        g,1 |
                        a2 r4 e'~ |
                        e2 d8. c16 c8. h16 |
                        h4 c h h |
                        r2 e |
                        a,1 |
                        h2 a8. g16 g8. f16 |
                        f4 e d2 |
                        e r |
                        R1*2 |
                        f'1 |
                        e8. e16 d8. d16 c4 d~ |
                        d2 c8. h16 h8. a16 |
                        a1 |
                        a2 r4 d, |
                        e1 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}