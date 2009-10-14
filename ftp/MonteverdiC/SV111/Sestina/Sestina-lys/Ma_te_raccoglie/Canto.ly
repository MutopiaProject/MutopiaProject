\new Staff  {
        \time 4/4
        \override Score.MetronomeMark #'stencil = ##f
        \tempo 4 = 100 
        \set Staff.instrumentName="Canto"
        \set Staff.midiInstrument="oboe"
        \key f \major
        \clef treble
        \relative c' {  
                \context Voice = "melodySop" {
                        \dynamicUp
                        \autoBeamOff
                        r4 f f4. f8 |
                        f4 b g2 |
                        f r4 b |
                        b4. b8 b4 d |
                        b2 b |
                        r4 f' c2~ |
                        c4 c c d |
                        b1 |
                        a |
                        r4 f4. f8 f4 |
                        e2 e |
                        e4. e8 e4. e8 |
                        e2 e |
                        r4 fis fis fis |
                        g1 |
                        fis |
                        r4 d' c b |
                        c d b2 |
                        a r |
                        R1 
                        r4 d d2~ |
                        d d |
                        es1~ |
                        es |
                        d2 r4 d |
                        c b c a |
                        b1 |
                        a |
                        r4 a a4. a8 |
                        a4 a g2 |
                        a b4 b |
                        g2 fis~ |
                        fis4 g a4. a8 |
                        a4 g g2 |
                        e1 |
                        r4 d' d4. d8 |
                        d4 c c2 |
                        c b4 a |
                        a4.\melisma g8\melismaEnd a2~ |
                        a4 a d d4~ |
                        d8 d c4 c2 |
                        a1 |
                        R1*7 |
                        r2 r4 d |
                        c b a2 |
                        a r4 f' |
                        e d c2 |
                        c r2 | %r2 added
                        R1*2 |
                        c4 c8 c b d c b |
                        a4 b a2 |
                        g r |
                        d4 d8 d e c d e |
                        f4 f e2 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        fis\longa |
                }

        \bar "|."
        }

}