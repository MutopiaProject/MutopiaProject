\new Staff  {
        \set Staff.instrumentName="Tenore"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef "G_8"
        \relative c' {  
                \context Voice = "melodyTen" {
                        \dynamicUp
                        \autoBeamOff
                        r4 d d4. d8 |
                        d4 d d d~ |
                        d8 d h4 c2 |
                        c4 c8 c a4 b~ |
                        b g a2 |
                        r4 c e4. e8 |
                        e4 e e e~ |
                        e8 e a,4 d2 |
                        d4 d8 d g,4 c~ |
                        c h h2 |
                        c4.\melisma d8 e2\melismaEnd |
                        h h |
                        c4.\melisma h8 c[ h c a] |
                        h1\melismaEnd |
                        cis |
                        R1*5 |
                        r2 r4 c |
                        b b r2 |
                        r r4 a |
                        g g r2 |
                        r r4 f |
                        e e r2 |
                        R1*2 |
                        r2 r4 g8 g |
                        a2 r4 f8 f |
                        g2 r4 e8 e |
                        f4 f'2 e8. d16 |
                        e4 e r c8 c |
                        d2 r4 b8 b |
                        c1 |
                        r4 a2 g8 f |
                        g4 g8 g g g f e |
                        f2 r |
                        R1*3 |
                        r2 r4 d |
                        a' a4. a8 g4 |
                        c c h4. h8 |
                        a4 a8 a g4. g8 |
                        f4. f8 d4 d |
                        e1 |
                        a2. a4 |
                        a a4. d,8 g4 |
                        f a e'4. e8 |
                        a,4 a8 a e'4. e8 |
                        d2 r4 g, |
                        g fis a2 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        a\longa |
                }

        \bar "|."
        }

}