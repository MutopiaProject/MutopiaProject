\new Staff  {
        \time 4/4
        \override Score.MetronomeMark #'stencil = ##f
        \tempo 4 = 100 
        \set Staff.instrumentName="Soprano"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef treble
        \relative c' {  
                \context Voice = "melodySop" {
                        \dynamicUp
                        \autoBeamOff
                        R1 |
                        r2 f2~ |
                        f4 f8 f f4. f8 |
                        f2 f |
                        r2 r4 fis |
                        g4. g8 a2~ |
                        a a~ |
                        a r |
                        a4 a8 a a4 h |
                        c4. c8 c4 c |
                        d1 cis |
                        R1*2 |
                        r2 r4 e~ |
                        e2 a,2~ |
                        a gis2 |
                        r4 e' c2 |
                        h r4 h |
                        e,4. e8 e4 d |
                        c2 c4 e |
                        c4. c8 c4 c |
                        h h h2 |
                        a2 r4 a' |
                        a2 a4 a8 a |
                        a2 a |
                        a4 a a2 |
                        g r8 h h c |
                        d4 d d4. d8 |
                        d4 c c\melisma h\melismaEnd |
                        c r8 e d4. c8 |
                        e2~ e8 e e d |
                        c4. h8 h2 |
                        a4 r8 a g4. f8 |
                        a2~ a8 a a g |
                        f4. e8 e2 |
                        fis r |
                        R1 |
                        r4 d' c4. h8 |
                        d2~ d8 d d c |
                        h4. g8 a2 |
                        g r |
                        R1 |
                        r4 r8 c h4. a8 |
                        c2~ c8 c c h |
                        a4 a h2 |
                        e,8 a g8. fis16 a2~ |
                        a8 a a g f4 f |
                        e1 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        fis\longa |
                }

        \bar "|."
        }

}