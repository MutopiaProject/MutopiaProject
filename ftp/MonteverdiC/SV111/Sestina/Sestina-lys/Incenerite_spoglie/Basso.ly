\new Staff  {
        \set Staff.instrumentName="Basso"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef bass
        \relative c {   
                \context Voice = "melodyBas" {
                        \dynamicUp
                        \autoBeamOff
                        R1 |
                        r2 d~ |
                        d4 d8 d d4. d8 |
                        d2 d |
                        r r4 d |
                        g,4. g8 d'2~ |
                        d d~ |
                        d r |
                        d4 d8 d d4 d |
                        a'4. a8 a4 a |
                        b1 |
                        a |
                        R1*2 |
                        r2 a |
                        f1 |
                        e2 r4 e |
                        a,4. a8 a4 a |
                        gis1~ |
                        gis |
                        a~ |
                        a |
                        e |
                        a |
                        R1*6 |
                        r4 e' e2 |
                        e4 e8 e e4. e8 |
                        d4 d e2 |
                        a,1 |
                        R1*2 |
                        r2 r8 a' a g |
                        fis4 fis fis4. fis8 |
                        g4 g a2 |
                        g r |
                        r4 g fis4. e8 |
                        g2~ g8 g g f |
                        e4. d8 d2 |
                        c4 r8 e d4. c8 |
                        e2~ e8 e e d |
                        c2 h |
                        a1~ |
                        a~ |
                        a |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}