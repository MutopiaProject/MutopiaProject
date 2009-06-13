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
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        c\breve f,1 |
                        g a r |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        c4. d8 b2 a f4. f8 |
                        f f f g a4 a c8. b16 a8. b16 g4. g8 |
                        f2 d'8. c16 b8. c16 a4. a8 g2 |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        c8. b16 a8. b16 g4. g8 |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        f2 r4 g8 a b2. a8 g |
                        a a f f g2 f r |
                        r2 r4 g8 a b g a b c8.[\melisma e16 d8. c16] |
                        b8.[ d16 c8. b16] a4 b2 a4\melismaEnd b2 |
                        r4 b h2 c r4 d |
                        c4 c8 b a4. a8 g2 f8.[\melisma e16 d8. e16] |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        f8.[ g16 a8. f16] g8.[ a16 b8. g16] |
                        d'8.[ c16 b8. a16] g8.[ a16 b8. c16] |
                        d8.[ es16 d8. c16] b8.[ es16 d8. c16] |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        b2\melismaEnd c4. c8 b2 r2 |
                        r4 c8 b a4 a r4 d8 c h4 h |
                        c2. c4 c4. f,8 g4. g8 |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        f2 a8.[\melisma g16 f8. e16] |
                        d4\melismaEnd d d'8. c16 b8. c16 |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        a4. a8 g2 r1 |
                        R\breve |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        \tempo 4=240
                        b\longa
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        \tempo 4=100
                        b2 c |
                        d16[\melisma c b c] d[ b c b] a8[ b c a] | %original only 16
                        b16[ a g a] b[ g a g] f8[ g a f] | %original only 16
                        g8.[ d'16 c8. b16] a8.[ g16 f8. d'16] |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        c8.[ b16 a8. g16] fis4 g2\melismaEnd fis4 g2 |
                        r4 g g2. f8 e d4. d8 |
                        c2 r4 c' c2. b8 a |
                        g4. g8 f2 r1 |
                        f8.[\melisma g16 a8. b16] c1~ c4\melismaEnd d8. d16 |
                        b2 a g2. a16[ g f] e |
                        f2 e r1 |
                        r8 c' c c c2. b8 b a4 a |
                        r2 d2. c8 b c2~ |
                        c4 b8 a g2 f c'8. b16 a8. g16 |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        f4 f d'8. c16 b8. a16 |
                        g4 g c8. b16 a8. b16 |
                        \set Score.measureLength = #(ly:make-moment 5 1)
                        g1 f\longa |
                }

        \bar "|."
        }

}