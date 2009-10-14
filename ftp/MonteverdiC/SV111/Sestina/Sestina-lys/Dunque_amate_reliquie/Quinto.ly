\new Staff  {
        \set Staff.instrumentName="Quinto"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef treble
        \relative c' {  
                \context Voice = "melodyQui" {
                        \dynamicUp
                        \autoBeamOff
                        c2. c4 |
                        c4 c8 c c2~ |
                        c4 c b a |
                        a2 a~ |
                        a4 a8 a a4 a8 a |
                        h4. h8 h4 h |
                        c2 c~ |
                        c4 c c c |
                        c1 |
                        e |
                        g2. g4 |
                        g4 g8 g g2~ |
                        g4 g f e |
                        e2 e2~ |
                        e4 e8 e e4 e8 e |
                        f4. fis8 fis4 fis |
                        g2 g~ |
                        g4 g g g |
                        g1 |
                        h |
                        r4 g2 g8 g |
                        g4. g8 fis2 |
                        fis r |
                        r r4 a |
                        a4. e8 f4. d8 |
                        e2 d4 a' |
                        a4. e8 f4. d8 |
                        e2 d |
                        r2 r4 d |
                        e4. e8 f4 f |
                        a2 f |
                        R1*2 |
                        r2 r4 d~ |
                        d d d2 |
                        d r |
                        R1 |
                        r4 e2 e4 |
                        e2 e |
                        R1 |
                        r4 e2 e4 |
                        e2 e |
                        r2 r4 e~ |
                        e a2 gis4 |
                        r c h2 |
                        a r |
                        R1*2 |
                        r2 r4 f4~ |
                        f8 f f4 d2~ |
                        d4 d d2 |
                        cis1 |
                        R1*9 |
                        r4 f f4. f8 |
                        e2 e |
                        r4 fis g2~ |
                        g4 e e4. e8 |
                        f2 d4 d8 d |
                        d4 d d d8 d |
                        d4 d h4. h8 |
                        h1 |
                        cis4 d2\melisma cis4\melismaEnd |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}