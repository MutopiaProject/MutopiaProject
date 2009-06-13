\new Staff  {
        \time 4/4
        \override Score.MetronomeMark #'stencil = ##f
        \tempo 4 = 100 
        \set Staff.instrumentName=""
        \set Staff.midiInstrument="oboe"
        \key a \minor
        \clef treble
        \relative c'' {         
                \context Voice = "melodySop" {
                        \dynamicUp
                        \autoBeamOff
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        r4 a8 a a2. a8 h c4 c |
                        r4 h8 h h2. h8 c d4 d |
                        e4. h8 d4 d8 c h2 a |
                        r4 a a2~ a4 g8. g16 fis4 fis |
                        r4 d' d2~ d4 c8. c16 h4 h |
                        r4 e h4. h8 c4 d2 e8~ e |
                        a,2 g r1 |
                        a2 a4 g8. g16 fis2 fis |
                        r r4 a a2. a8 a |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        a2 a b1 a |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        r2 r4 a a8. a16 g8. f16 e2 |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        d1 r r |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        h'4. h8 d2. c8. h16 h4 h |
                        d8 d e4~ e h8 g h2 h4 d~ |
                        d a8 g a4 a r1 |
                        r2 e' h4 h8 h h4 h8 a |
                        h4. h8 h4 d c8. c16 c8. c16 h4 h |
                        c8.[ d16 e8.] f16 d2 c1 |
                        a8 a a a a4. a8 a4 b4. b8 a4 |
                        g2 f a8.[\melisma h16 c8. d16] e4.\melismaEnd e8 |
                        h4 d4. d8 c4 h2 a |
                        R\breve |
                        a2 e8 e e f g4 g8 g g2~ |
                        g4 f8 f e4 e r1 |
                        e'2 h8 h h c d4 d8 d d2~ |
                        d4 c8. c16 h4 h r e2 a,8 g |
                        a2 a g4 g8 g g4 g8 g |
                        a8.[\melisma h16 c8. h16] a2\melismaEnd h1 |
                        c4 c8 c c4 c8 c d2\melisma e8.[ d16 c8. h16] |
                        gis4 a2 gis4\melismaEnd a1 |
                        r4 c c2. h4 h2~ |
                        h4 h a2 a r |
                        r4 a a2. g4 g2~ |
                        g4 f f2 e d4 g |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        f8.[\melisma e16] d[ e f g] a[ h c d~] d4~ |
                        d8[ e16 d] c8[ d16 c] h8[ c16 h] a8[ h16 a] |
                        gis4 e~ e16[ f g a] h[ c d e] |
                        \set Score.measureLength = #(ly:make-moment 5 1)
                        gis,4 a h2\melismaEnd a\longa |
                }

        \bar "|."
        }

}