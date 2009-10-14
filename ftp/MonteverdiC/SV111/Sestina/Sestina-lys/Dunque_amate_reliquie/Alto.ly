\new Staff  {
        \set Staff.instrumentName="Alto"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef "G_8"
        \relative c' {  
                \context Voice = "melodyAlt" {
                        \dynamicUp
                        \autoBeamOff
                        a2.a4 |
                        a a8 a a2~ |
                        a4 a f f |
                        e2 e2~ |
                        e4 e8 e e4 e8 e |
                        g4. g8 g4 g |
                        g2 g4 g |
                        g2 g |
                        a1 |
                        c |
                        e2. e4 |
                        e4 e8 e e2~ |
                        e4 e c4. c8 |
                        h2 h4 h8 h |
                        h2 h4 h |
                        d4. d8 d4 d |
                        d2 d4 d |
                        d2. d4 |
                        e1 |
                        g4 g2 g8 g |
                        g4. d8 d2~ |
                        d d~ |
                        d r4 d |
                        e4. e8 d2 |
                        r2 r4 d |
                        cis4. cis8 d4. d8 |
                        a4 a f d |
                        a'2 a4 d |
                        cis4. cis8 d4. d8 |
                        a4 a a d |
                        cis2 d |
                        b4 b8 b a4. a8 |
                        g2 r |
                        g4 g8 g g4. fis8 |
                        g4 b4. b8 a4 |
                        g2 d' |
                        g4 g8 g g4 f |
                        c c8 c h4. h8 |
                        a2 r |
                        a4 a8 a a4. gis8 |
                        a4 c4. c8 h4 |
                        a2 e4 e'~ |
                        e e e2 |
                        e1 |
                        r2 r4 e |
                        a,2. gis4 |
                        r4 c h2 |
                        a4 a gis2 |
                        a r4 c~ |
                        c8 c c4 b2~ | %b instead of h
                        b4 d g,2 | %b instead of h, d instead of c
                        a1 |
                        r4 c c4. c8 |
                        h2 h |
                        r4 cis d2~ |
                        d4 h4 h4. h8 |
                        c2 a4 a8 a |
                        a4 a a a8 a |
                        a4. a8 fis4. fis8 |
                        fis4. fis8 gis2 |
                        a1 |
                        r4 d d4. a8 |
                        a2 a |
                        r4 d d2~ |
                        d4 c4 c4. c8 |
                        c2 b4 b8 b |
                        b4 b a4 a8 a |
                        a4 a g4. g8 |
                        g4.\melisma a8\melismaEnd h2 |
                        a1 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        a\longa |
                }

        \bar "|."
        }

}