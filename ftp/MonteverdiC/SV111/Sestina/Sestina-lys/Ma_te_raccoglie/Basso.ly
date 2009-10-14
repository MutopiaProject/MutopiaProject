\new Staff  {
        \set Staff.instrumentName="Basso"
        \set Staff.midiInstrument="oboe"
        \key f \major
        \clef bass
        \relative c {   
                \context Voice = "melodyBas" {
                        \dynamicUp
                        \autoBeamOff
                        r4 b b4. b8 |
                        b4 b es2 |
                        b r4 b |
                        b4. b8 b4 b |
                        es2 b |
                        r4 b f'2 |
                        f4 f2 f4 |
                        g1 |
                        d |
                        r4 d4. d8 d4 |
                        a2 a |
                        a4. a8 a4 a |
                        a2 a |
                        r4 d d d |
                        g,1 |
                        d' |
                        R1*2 |
                        r4 d d2~ |
                        d d |
                        g, g |
                        r4 g' g g |
                        c,1~ |
                        c |
                        g'2 r4 g |
                        c, c c d |
                        g,1 |
                        d' |
                        R1*7 |
                        r4 d d4. d8 |
                        d4 a c2 |
                        c d4 d |
                        b2 a~ |
                        a4 d b4. b8 |
                        f4 f g2 |
                        d' r4 d |
                        c b a2 |
                        a r |
                        r4 g' f es |
                        d1 |
                        g,2 g'4 g8 g |
                        a f g a b4 b |
                        f2 b |
                        R1*5 |
                        r4 d, e f |
                        g1 |
                        c,4 a b c |
                        d2 d |
                        g,4 g8 g a f g a |
                        b4 b a2~ |
                        a1 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}