\new Staff  {
        \set Staff.instrumentName="Alto"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef treble
        \relative c' {  
                \context Voice = "melodyAlt" {
                        \dynamicUp
                        \autoBeamOff
                        r4 f f4. f8 |
                        f4 f f f~ |
                        f8 f d4 e2 |
                        e4 e8 e f4 d~ |
                        d d cis2 |
                        r4 e a4. a8 |
                        a4 a a a~ |
                        a8 a a4 g2 |
                        g4 g8 g g4 f~ |
                        f f e2 |
                        g1 |
                        g |
                        e |
                        e |
                        e |
                        R1 |
                        r4 d8 d e2 |
                        r4 c8 c d2 |
                        r4 h8 h c2 |
                        R1*2 |
                        r4 d2 c8 h |
                        c4 c8 c c c h a |
                        h2. g4 |
                        a4. a8 a4 a |
                        a\melisma gis8 fis gis2\melismaEnd | %fis instead of f
                        a1 |
                        R1 |
                        r4 d8 d e2 |
                        r4 c8 c d2 |
                        r4 h8 h c2 |
                        a'2. g8 f |
                        g4 g r4 e8 e |
                        f2 d4 g |
                        e1 |
                        R1*2 |
                        r2 r4 d |
                        c c r2 |
                        r r4 b |
                        a2 a |
                        R1*6 |
                        r2 r4 c |
                        d d4. d8 e4 |
                        f f g e |
                        f f8 f g4. g8 |
                        b4 f g4.\melisma f8 | %b instead of h
                        e4\melismaEnd d e2 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        fis\longa |
                }

        \bar "|."
        }

}