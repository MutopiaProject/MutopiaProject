\new Staff  {
        \set Staff.instrumentName="Tenore"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef "G_8"
        \relative c' {  
                \context Voice = "melodyTen" {
                        \dynamicUp
                        \autoBeamOff
                        a2. a8 a |
                        a4. a8 a2 |
                        a r |
                        r4 a d,4. d8 |
                        a'2 a |
                        R1*2 |
                        a4 a8 a a4 a |
                        d2. d4 |
                        c2. c4 |
                        b4.\melisma c8 d2\melismaEnd |
                        a1 |
                        r4 e' c2 |
                        h2. e4 |
                        a,1~ |
                        a |
                        e~ |
                        e |
                        R1 |
                        r2 r4 h' |
                        e,4. e8 e4 e |
                        e2 .e4 |
                        e1 |
                        e |
                        R1*3 |
                        r4 g g2 |
                        g4 g8 g g4. g8 |
                        fis4 fis g2 |
                        c, r |
                        R1*2 |
                        r4 a' a2 |
                        a4 a8 a a4. a8 |
                        g4 g a2 |
                        d, r8 fis fis g |
                        a4 a a4. a8 |
                        a4 g4 g\melisma fis\melismaEnd |
                        g2 r |
                        r4 h a4. g8 |
                        h2~ h8 h h a |
                        c4 g a\melisma g8[ f]\melismaEnd |
                        g4 r8 g fis4. e8 |
                        g2~ g8 g g f |
                        e4 e h' h |
                        r8 c h8. a16 c8. c16 c8 h |
                        a2. d,4 |
                        e1 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}