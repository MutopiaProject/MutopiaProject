\new Staff  {
        \set Staff.instrumentName="Basso"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef bass
        \relative c' {  
                \context Voice = "melodyBas" {
                        \dynamicUp
                        \autoBeamOff
                        a2. gis4~ |
                        gis gis a2~ |
                        a r4 a~ |
                        a g8. a16 d,2~ |
                        d d |
                        e1 |
                        a, |
                        r2 a' |
                        gis4. gis8 gis4 gis |
                        a2 r4 a,~ |
                        a h8. c16 d2~ |
                        d d |
                        e2. e4 |
                        a,1 |
                        R1*4 |
                        r4 c2 c4 |
                        c4. c8 c4 c |
                        f,4 f8 f' a4 a |
                        g2. c4 |
                        r2 r4 gis~ |
                        gis gis8 gis a4 a |
                        r4 gis gis8. gis16 gis8 gis |
                        a4 a r4 gis |
                        gis4. gis8 a2 |
                        a d, |
                        e1 |
                        a, |
                        r2 c |
                        f,1 |
                        g |
                        R1*3 |
                        r2 a' |
                        d,1 |
                        e2 r2 |
                        R1*2 |
                        g2 f8. e16 e8. d16 |
                        d4 c h2 |
                        a a'8. e16 e4 |
                        f8. f16 c8. c16 d2 |
                        a1 |
                        d2. a4 |
                        a b f2 |
                        g1 |
                        a~ |
                        a~ |
                        a |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}