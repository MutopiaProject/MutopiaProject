\new Staff  {
        \set Staff.instrumentName="Tenore"
        \set Staff.midiInstrument="oboe"
        \key f \major
        \clef "G_8"
        \relative c {   
                \context Voice = "melodyTen" {
                        \dynamicUp
                        \autoBeamOff
                        r4 f f4. f8 |
                        f4 d es2 |
                        f r4 f |
                        b4. b8 b4 b |
                        b2 b |
                        r4 b c2 |
                        c4 c2 a4 |
                        b4.\melisma a8 g2\melismaEnd |
                        a4 a a a |
                        d,2 d |
                        e4. e8 e2~ |
                        e4 e e2 |
                        e4 a a a |
                        d,1 |
                        g2 r |
                        r4 d' d d |
                        g,1~ |
                        g |
                        d'2 r4 b |
                        a g a b |
                        g1 |
                        g2 r |
                        r4 es' d c |
                        d es c2 |
                        g4 d' g, g |
                        g2 a |
                        g4.\melisma a8 b[ a b g]\melismaEnd |
                        a1 |
                        r4 d d4. d8 |
                        d4 a c2 |
                        f, g4 g |
                        es2 d~ |
                        d4 g f4. f8 |
                        c4 c d2 |
                        a'1 |
                        r4 a a4. a8 |
                        a4 c g2 |
                        g d4 f |
                        d2 a'~ |
                        a4 a d,4. f8 |
                        a4 a a2 |
                        a r4 f |
                        e d cis\melisma d~ |
                        d4 cis4\melismaEnd d2 |
                        g4 g8 g a f g a |
                        b4 g g\melisma fis\melismaEnd |
                        g2 b4 b8 b |
                        c a b c d4 b |
                        a2 b |
                        r4 d c b |
                        a1 |
                        d,2 d'4 d8 d |
                        e c d e f4 f |
                        c2 f |
                        d4 d8 d c e d c |
                        h g c2\melisma h4\melismaEnd |
                        c2 r |
                        R1 |
                        g4 g8 g f a g f |
                        d4 g e4. e8 |
                        d4 d e2 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}