\new Staff  {
        \set Staff.instrumentName="Quinto"
        \set Staff.midiInstrument="oboe"
        \key f \major
        \clef treble
        \relative c' {  
                \context Voice = "melodyQui" {
                        \dynamicUp
                        \autoBeamOff
                        r4 d d4. d8 |
                        d4 f es2 |
                        d r4 f |
                        f4. f8 f4 b |
                        g2 f |
                        r4 d' a2~ |
                        a4 a a a |
                        g1 |
                        fis |
                        r4 f4. f8 f4 |
                        cis2 cis |
                        cis4. cis8 cis4 cis |
                        cis2 cis2 |
                        r4 d d d |
                        d1 |
                        d |
                        r4 b' a g |
                        a b g2 |
                        fis r2 |
                        R1 |
                        r4 b b2~ |
                        b h |
                        c1~ |
                        c |
                        h2 r4 h |
                        g g g fis |
                        g1 |
                        fis |
                        R1*7 | %R1*7 instead of R1*5
                        r4 a a4. a8 |
                        a4 a g2 |
                        g f4 f |
                        d2 e~ |
                        e4 f b4. b8 |
                        b4 a a2 |
                        fis1 |
                        R1*4 |
                        r2 r4 b |
                        a g f2~ |
                        f f |
                        f4 f8 f g e f g |
                        a4 f e2 |
                        d2. d'4 |
                        c4 b a4.\melisma g16[ f] |
                        g2\melismaEnd f |
                        r2 r4 a |
                        h c d2 |
                        c4 c, d e |
                        f8[\melisma e d c] d2\melismaEnd |
                        d r |
                        b4 b8 b c a b c |
                        d4 d cis2 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}