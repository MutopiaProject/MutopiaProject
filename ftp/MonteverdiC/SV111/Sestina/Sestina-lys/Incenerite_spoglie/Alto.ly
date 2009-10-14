\new Staff  {
        \set Staff.instrumentName="Alto"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef "G_8"
        \relative c' {  
                \context Voice = "melodyAlt" {
                        \dynamicUp
                        \autoBeamOff
                        R1*2 |
                        a2. a8 a |
                        a4. a8 a4 a |
                        r2 r4 a |
                        b4. b8 a2~ |
                        a a |
                        R1 |
                        a4 a8 a a4 d |
                        e4. e8 e4 f |
                        d1 |
                        e2. e4 |
                        a,1~ |
                        a2 gis |
                        r c |
                        a2.\melisma h4 |
                        c2\melismaEnd h |
                        r r4 a |
                        e4. e8 e4 e |
                        e2 e~ |
                        e4 e' a,4. a8 |
                        a2. a4 |
                        gis4. gis8 gis2 |
                        a1 |
                        r4 d d2 |
                        d4 d8 d d4. d8 |
                        cis4 cis d2 |
                        g, r |
                        R1*5 |
                        r2 r8 cis cis d |
                        e4 e e4. e8 |
                        e4 d d\melisma cis\melismaEnd |
                        d r8 d c4. h8 |
                        d2~ d8 d d c |
                        h4. c8 a8.[\melisma h16] c4\melismaEnd |
                        h1 |
                        R1 |
                        r8 e d8. c16 e8. e16 e8 f |
                        g4 e f2 |
                        e r |
                        r8 c h8. a16 c8. c16 c8 d |
                        e4 c d2 |
                        e r8 e e d |
                        d4 cis a2~ |
                        a1 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        a\longa |
                }

        \bar "|."
        }

}