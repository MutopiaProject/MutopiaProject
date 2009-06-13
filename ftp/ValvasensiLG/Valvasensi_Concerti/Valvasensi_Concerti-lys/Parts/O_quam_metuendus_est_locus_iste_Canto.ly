\new Staff  {
        \time 4/4
        \override Score.MetronomeMark #'stencil = ##f
        \tempo 4 = 100 
        \set Staff.instrumentName=""
        \set Staff.midiInstrument="oboe"
        \key f \major
        \clef treble
        \relative c'' {         
                \context Voice = "melodySop" {
                        \dynamicUp
                        \autoBeamOff
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        c1 f,2. f8 f |
                        g2~ g4 g16[ a b c] a1 |
                        R\breve |
                        d1 b2. b8 b |
                        c2~ c4 c16[ b c a] b1 |
                        d4 a c g b f a f~ |
                        f8 e16[\melisma f] g[ a b c] d4\melismaEnd cis d1 |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        a8.[\melisma g16] a[ g a f] g8.[ f16] g[ f g e]\melismaEnd |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        f1 c'16[\melisma a b c] d[ c d b] c8.[ b16] c[ b c a]\melismaEnd |
                        b2 d a c |
                        g b f a |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        f~ f4 f16[ g a b] g1 f |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        c'8.[\melisma b16] a8.[ b16] g2\melismaEnd g d'8.[\melisma c16] b8.[ c16] |
                        a2\melismaEnd a r4 b8 c d4. d8 |
                        h8 h c2 h4 c1 |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        R1 |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        c4 b a a g4. g8 g2 |
                        r4 c4. b8 a2 d4. c8 b4 |
                        c4. b8 a4. b8 g a b2\melisma a4\melismaEnd |
                        b1 d4 b8 b c4 g |
                        a f8 f g4. g8 e4 c'2 c4 |
                        c1~ c4 g g2 |
                        f1 r |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        f'4 es d c |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        d2. d4 c8[ g a b] c2~ |
                        c4 b a2 g1 |
                        R\breve |
                        f4 g a2 a a~ |
                        a4 g8 f b4 a c4. c8 c2 |
                        r a2. g8 f g4 c~ |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        c b8 a f4 f |
                        g4. g8 g2 |
                        g8.[\melisma a16] g8.[ a16] b8.[ a16] b8.\melismaEnd g16 |
                        a4 b16[\melisma c d b] c8.[ b16]\melismaEnd c[ b c a] |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        b1 r4 g a b |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        c\melisma b8 a g f g a |
                        b4 a8 g f8.[ g16] f8.[ g16] |
                        a8.[ b16] a8.[ b16] c8.[ d16] c8.[ b16] |
                        a8.[ g16] a8.[ b16] c8.[ b16] a8.[ b16] |
                        g1\melismaEnd |
                        f4 c'2 g8 g |
                        \set Score.measureLength = #(ly:make-moment 5 1)
                        g1 f\longa |
                }

        \bar "|."
        }

}