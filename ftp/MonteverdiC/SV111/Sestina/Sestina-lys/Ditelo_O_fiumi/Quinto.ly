\new Staff  {
        \set Staff.instrumentName="Quinto"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef treble
        \relative c'' {         
                \context Voice = "melodyQui" {
                        \dynamicUp
                        \autoBeamOff
                        R1 |
                        r2 r4 a |
                        fis2 d |
                        r4 d' h2 |
                        g r4 g' |
                        e2. c4 |
                        d4. h8 c4 c |
                        h2 h |
                        R1 |
                        c4 c8 c d4. d8 |
                        e4 e d h |
                        c c d2 |
                        e4 e2 d4~\melisma |
                        d8 c c2 h4\melismaEnd |
                        c1 |
                        r4 a a4. a8 |
                        g4 g a2 |
                        g1 |
                        R1*3 |
                        r2 a~ |
                        a4 a8 a g2~ |
                        g4 g f f~ |
                        f e8 d e2 |
                        d4 d d f |
                        e4.\melisma f8 g4\melismaEnd d |
                        e e f e |
                        d1 |
                        e2 a~ |
                        a4 a8 a g2~ |
                        g4 g f2 |
                        f4 e8 d e4 e |
                        d4. d8 a'2 |
                        g2. g4 |
                        f4. f8 e4 d |
                        a'1 |
                        fis4 a2 a8 a |
                        g2. g4 |
                        f f2 e8 d |
                        e1 |
                        d2 f~ |
                        f4 f8 f e4. e8 |
                        c4 d2 c8 h |
                        cis4\melisma d2 cis4\melismaEnd |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}