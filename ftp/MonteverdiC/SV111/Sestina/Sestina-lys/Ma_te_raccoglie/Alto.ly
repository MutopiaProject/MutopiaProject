\new Staff  {
        \set Staff.instrumentName="Alto"
        \set Staff.midiInstrument="oboe"
        \key f \major
        \clef "G_8"
        \relative c' {  
                \context Voice = "melodyAlt" {
                        \dynamicUp
                        \autoBeamOff
                        r4 b b4. b8 |
                        b4 d b2 |
                        b r4 d |
                        d4. d8 d4 d |
                        es2 d4 b |
                        f'2. f4 |
                        f2. f4 |
                        d1 |
                        d |
                        r4 a4. a8 a4 |
                        a2 a |
                        a4. a8 a4 a |
                        a2 a |
                        f4 a2 a4 |
                        b1 |
                        a |
                        R1*2 |
                        r2 r4 d |
                        c b c d |
                        b2 b |
                        R1 |
                        r4 g'4 f es |
                        f g es8[ d es c] |
                        d2. g4 |
                        es es es d |
                        d1 |
                        d |
                        r4 f f4. f8 |
                        f4 f e2 |
                        f es4 d |
                        d4\melisma c4\melismaEnd d2~ | %d4 instead of d2
                        d4 d4 f4. f8 |
                        f4 e e2 |
                        cis1 |
                        r4 f f4. f8 |
                        f4 e e2 |
                        e d4 d |
                        d2 cis~ |
                        cis4 d f4. f8 |
                        f4 f es2 |
                        d r4 a~ |
                        a g2 f4 |
                        e2 d |
                        b'4 b8 b c a b c |
                        d4 b a2 |
                        g r4 g' |
                        f e d2 |
                        c b |
                        d4 d8 d e c d e |
                        f4 d cis2 |
                        d f4 f8 f |
                        g e f g a4 f |
                        f4.\melisma e8\melismaEnd f2 |
                        f4 f8 f e g f e |
                        d4 es d d |
                        e f g a4~\melisma |
                        a8 g8 g2\melismaEnd f4 |
                        b, b8 b a c b a |
                        g4 d a'2~ |
                        a1 |
                        a\longa |
                }

        \bar "|."
        }

}