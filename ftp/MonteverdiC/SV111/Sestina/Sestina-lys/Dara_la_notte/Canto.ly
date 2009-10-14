\new Staff  {
        \time 4/4
        \override Score.MetronomeMark #'stencil = ##f
        \tempo 4 = 100 
        \set Staff.instrumentName="Canto"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef treble
        \relative c'' {         
                \context Voice = "melodySop" {
                        \dynamicUp
                        \autoBeamOff
                        R1*5 |
                        r4 e e4. e8 |
                        e4 e e e4~ |
                        e8 e d4 d2 |
                        d4 d8 d e4 c~ |
                        c d h2 |
                        e1 |
                        d |
                        c |
                        h |
                        a |
                        r4 e'2 d8 c |
                        d4 d r4 h8 h |
                        c2 r4 a8 a |
                        h4 h2 a8 g |
                        a4 a r f |
                        g4 g8 g g g f e |
                        f4 f2 e8  d |
                        e4 e8 e e e d c |
                        d2. h4 |
                        c4. c8 c4 a |
                        h1 |
                        a |
                        a' |
                        g |
                        f |
                        e |
                        d |
                        r4 g8 g a2 |
                        r4 f8 f g4 b~ |
                        b4 a8 g a4 a8 a |
                        a a g f g2~ |
                        g r4 g |
                        f f8 f f f e d |
                        e2. c4 |
                        d4. d8 d4 d |
                        d4\melisma cis8[ h] cis2\melismaEnd |
                        d2 r4 f |
                        e e4. e8 g4 |
                        g a a gis |
                        a a8 a h4. h8 |
                        c4. c8 c4. h8 |
                        h1 |
                        a2 r4 a |
                        a a4. a8 c4 |
                        c d d4. cis8 |
                        d4 d8 d e4. e8 |
                        f4 d e2 |
                        cis4 d2\melisma cis4\melismaEnd |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}