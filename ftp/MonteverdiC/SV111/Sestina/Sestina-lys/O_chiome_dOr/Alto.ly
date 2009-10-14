\new Staff  {
        \set Staff.instrumentName="Alto"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef "G_8"
        \relative c' {  
                \context Voice = "melodyAlt" {
                        \dynamicUp
                        \autoBeamOff
                        e1 |
                        h4. h8 e2~ |
                        e r4 e~ |
                        e e8. e16 a2 |
                        r4 f2 e8. d16 |
                        h4 e e2 |
                        e1 |
                        r2 e2~ |
                        e4 d4. d8 d8 h |
                        e2 r4 e~ |
                        e d8. e16 f2~ |
                        f d4.\melisma c8 |
                        h4\melismaEnd e2 e4 |
                        e1 |
                        r4 h2 h4 |
                        h4. h8 h4 h |
                        g c8 e e4 g |
                        fis2. g4 |
                        r2 e4 e |
                        c4. g8 g4 g |
                        f f8 a a4 c |
                        h2. e4 |
                        r2 r4 e~ |
                        e d8. c16 c4 c |
                        r4 e e8. d16 d8. c16 |
                        c4 c r e |
                        d4. d8 c2~ |
                        c f |
                        r4 e h2 |
                        cis1 |
                        r2 r4 c~ |
                        c2 a |
                        g2. g'4~ |
                        g2 e |
                        d1 |
                        R1*2 |
                        r2 h8. a16 a8. gis16 |
                        gis4 a gis2 |
                        a1 |
                        R1 |
                        r2 d8. c16 c8. h16 |
                        h4 a gis2 |
                        a r |
                        r r4 d~ |
                        d2 c8. h16 h8. a16 |
                        a2 a |
                        r2 f'~ |
                        f e8. d16 d8. c16 |
                        c4 f~ f2 |
                        e8. d16 d4 c8. c16 a8. a16 |
                        a1 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        a\longa |
                }

        \bar "|."
        }

}