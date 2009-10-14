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
                        R1 |
                        r4 a fis2 |
                        d r4 a' |
                        fis2 d |
                        r4 d' h2 |
                        g a |
                        h4 g2 fis4 |
                        g2 g |
                        c4 c8 c d4. d8 |
                        e4 e r2 |
                        c4 c8 c d4. d8 |
                        e4 e d h |
                        c c d2 |
                        e4 f d2 |
                        e r4 c |
                        c2. c4 |
                        h4 cis d2 |
                        h1 |
                        R1*7 |
                        r2 r4 a |
                        a c h4. a8 |
                        g4 g a2 |
                        gis4 a2\melisma gis4\melismaEnd |
                        a1 |
                        R1*3 |
                        r4 a2 a4 |
                        d2 c4. h8 |
                        a4 a g f |
                        e1 |
                        d2 r |
                        R1*3 |
                        r4 a'2 a8 a |
                        g2. g4 |
                        f f2 e8 e |
                        e1 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        fis\longa |
                }

        \bar "|."
        }

}