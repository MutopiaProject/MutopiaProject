\new Staff  {
        \set Staff.instrumentName="Basso"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef bass
        \relative c, {  
                \context Voice = "melodyBas" {
                        \dynamicUp
                        \autoBeamOff
                        f2. f4 |
                        f4 f8 f f2~ |
                        f4 f b d |
                        a2 a2~ |
                        a4 a8 a a4 a8 a |
                        g4. g8 g4 g |
                        c2 c4 c |
                        c2 c |
                        f,1 |
                        c' |
                        R1*11 |
                        r2 r4 d~ |
                        d d8 d d4. d8 |
                        a4 a r d |
                        cis4. cis8 d4. d8 |
                        a4 a' f d |
                        a'2 d,4 d |
                        cis4. cis8 d4. d8 |
                        a4 a' f d |
                        a'2 d, |
                        R1 |
                        g4 g8 g g4. fis8 |
                        g4 b4. b8 a4 |
                        g2 d |
                        g4 g8 g g4. fis8 |
                        g4 b4. b8 a4 |
                        g2 d |
                        R1 |
                        a'4 a8 a a4. gis8 |
                        a4 c4. c8 h4 |
                        a2 e |
                        a4 a8 a a4. gis8 |
                        a4 c4. c8 h4 |
                        a2 e |
                        R1*4 |
                        r2 r4 f~ |
                        f8 f f4 b,2~ | %b instead of h
                        b4 b b2 | %b instead of h
                        a1 |
                        R1*9 |
                        r4 d d4. d8 |
                        cis2 cis |
                        r4 d g2~ |
                        g4 c, c4. c8 |
                        f2 b,4 b8 b |
                        b4 b d d8 d |
                        d4 d g,4. g8 |
                        g2 g |
                        a1 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}