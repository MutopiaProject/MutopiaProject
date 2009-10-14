\new Staff  {
        \set Staff.instrumentName="Tenore"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef "G_8"
        \relative c {   
                \context Voice = "melodyTen" {
                        \dynamicUp
                        \autoBeamOff
                        c4. c8 c4 c8 c |
                        c2 c~ |
                        c4 f2 d4 |
                        e2 e |
                        r4 e8 e e4 a8 a |
                        d,4. d8 d4 g |
                        e2 e~ |
                        e4 e e g |
                        f4.\melisma g8 a2\melismaEnd |
                        g1 |
                        c,2. c4 |
                        c4 c8 c c2~ |
                        c4 c f a |
                        e2 e~ |
                        e4 e8 e e4 e8 e |
                        d4. d8 d4 d |
                        g2 g4 g |
                        g2 g |
                        c,1 |
                        g' |
                        r4 g2 g8 g |
                        g4. g8 d2 |
                        d r4 d' |
                        cis4. cis8 d4. d8 |
                        a4 a f d |
                        a'2 d,4 d' |
                        cis4. cis8 d4. d8 |
                        a4 a f d |
                        a'2 d, |
                        r4 a' f d |
                        a'2 d, |
                        R1 |
                        g4 g8 g g4. fis8 |
                        g4 h4. h8 a4 |
                        g2 d |
                        g4 g8 g g4. fis8 |
                        g2 a4 a8 a |
                        a2. gis4 |
                        a c4. c8 h4 |
                        a2 e |
                        a4 a8 a a4. gis8 |
                        a4 c4. c8 h4 |
                        a2 e |
                        r4 c'4. c8 h4 |
                        a2 e |
                        r e' |
                        a,2. gis4 |
                        r4 c h2 |
                        a r4 a~ |
                        a8 a f4 f2~ |
                        f4 d d2 |
                        e1 |
                        r4 a a4. a8 |
                        gis2 gis |
                        r4 a d2~ |
                        d4 g, g4. g8 |
                        c2 f,4 f8 f |
                        f4 f a a8 a |
                        a4. a8 d,4. d8 |
                        d4. d8 e2 |
                        a1 |
                        r4 a f4. d8 |
                        e2 e |
                        r4 a g2~ |
                        g4 g g4. g8 |
                        f2 f4 f8 f |
                        f4 f d d8 d |
                        d4 d d2 |
                        d g~ |
                        g4 f e2 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}