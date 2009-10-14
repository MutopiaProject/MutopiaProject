\new Staff  {
        \set Staff.instrumentName="Quinto"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef treble
        \relative c'' {         
                \context Voice = "melodyQui" {
                        \dynamicUp
                        \autoBeamOff
                        r4 a a4. a8 |
                        a4 a a a~ |
                        a8 a g4 g2 |
                        g4 g8 g a4 f~ |
                        f g e2 |
                        r4 a c4. c8 |
                        c4 c c c~ |
                        c8 c a4 h2 |
                        h4 h8 h h4 a~ |
                        a4 a gis2 |
                        c1 |
                        h |
                        a2 a~\melisma |
                        a4 gis8[ fis] gis2\melismaEnd |
                        a1 |
                        r4 c2 h8 a |
                        h4 h r4 g8 g |
                        a2 r4 f8 f |
                        g4 g2 f8 e |
                        f4 f r d |
                        e e8 e e e d c |
                        d2 r |
                        R1*5 |
                        c'1 |
                        h |
                        a |
                        g |
                        f4.\melisma g8 a4\melismaEnd h8 h |
                        c2 r4 a8 a |
                        b2 r4 d~ |
                        d4 c8 b c4 c8 c |
                        c c h a h2~ |
                        h r4 c |
                        a a8 a a a g f |
                        g2. e4 |
                        f4. f8 f4 d |
                        e1 |
                        d2 r4 d |
                        c c4. c8 d4 |
                        e4 e d4. d8 |
                        e4 e8 f g4. g8 |
                        a4. a8 a4 a |
                        a\melisma gis8[ fis] gis2\melismaEnd |
                        a r4 e |
                        f f4. f8 g4 |
                        a a h g |
                        a a8 a c4. c8 |
                        d4 b b4. b8 |
                        a1 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        a\longa 
                }

        \bar "|."
        }

}