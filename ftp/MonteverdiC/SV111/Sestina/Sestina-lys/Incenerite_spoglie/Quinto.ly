\new Staff  {
        \set Staff.instrumentName="Quinto"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef treble
        \relative c' {  
                \context Voice = "melodyQui" {
                        \dynamicUp
                        \autoBeamOff
                        R1 |
                        r2 d~ |
                        d4 d8 d d4. d8 |
                        d2 d |
                        r r4 d |
                        d4. e8 fis2~ |
                        fis fis~ |
                        fis r |
                        f4 f8 f f4 f |
                        a4. a8 a4 a |
                        f2\melisma g\melismaEnd |
                        a1 |
                        r4 a f2 |
                        e1 |
                        r4 a f\melisma e~ |
                        e d8[ c] d2\melismaEnd |
                        e r4 e |
                        c4. c8 c4 a |
                        h2. h4 |
                        h1 |
                        a2 r |
                        R1*3 |
                        r4 f' f2 |
                        f4 f8 f f4. f8 |
                        e f g2\melisma fis4\melismaEnd |
                        g2 r8 d' d c |
                        h4 h h4. h8 |
                        h4 a d2 |
                        c4 r8 c h4. a8 |
                        c2~ c8 c c h |
                        h4 a a4.\melisma gis8\melismaEnd |
                        a2 r8 e e d |
                        cis4 cis cis4. cis8 |
                        cis4 h e2 |
                        d r |
                        R1 |
                        r4 h' a4. g8 |
                        h2~ h8 h h c |
                        d4. h8 c2 |
                        h r |
                        r2 r8 c h8. a16 |
                        c4 c r2 |
                        R1 |
                        r4 a gis4. fis8 |
                        a2~ a8 a a g |
                        f4 e2 d4~\melisma |
                        d cis8[ h] cis2\melismaEnd |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}