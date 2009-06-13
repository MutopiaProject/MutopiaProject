\new Staff  {
        \time 4/4
        \override Score.MetronomeMark #'stencil = ##f
        \tempo 4 = 100 
        \set Staff.instrumentName=""
        \set Staff.midiInstrument="oboe"
        \key d \minor
        \clef treble
        \relative c'' {         
                \context Voice = "melodySop" {
                        \dynamicUp
                        \autoBeamOff
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        g2. g4 g4.\melisma f8 g16[ f g f] g[ a b g]\melismaEnd |
                        a1 r4 d8 a d c b a |
                        b1 a4 d8 a f'4 d |
                        es8 d c b c2 b1 |
                        r4 d8 c b4 a g2 g |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        r8 c g a b4. b8 |
                        a4 d8 c b b a g |
                        a4\melisma b16[ c d b] c2\melismaEnd |
                        b4 d8 c b g c b |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        a4\melisma b16[ a b g] a2\melismaEnd g1 |
                        r1 c4 a8 a d4 h8 h |
                        d c d es d2 c8 c g a b4. b8 |
                        a4 a8 g f f e d e1 |
                        d r |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        d'4 a16[ b c a] b8.[\melisma a16] b[ a b c]\melismaEnd |
                        a2 r |
                        d4 a16[ b c a] b8.[\melisma a16] b[ a b c]\melismaEnd |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        a4 d8 c b4 a g2 g |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        c4. c8 c4 d16[ c b a] |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        b2 a r8 c g a b4. b8 |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        a4 d8 d cis h cis d |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        d2\melisma cis\melismaEnd d1 |
                        r4 g, g g8 f a2 a |
                        r4 c c c8 b d2 d |
                        d4 d8 c b4 a8 g g2 g |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        r4 g8 a b4. b8 |
                        a4 d8 d es8.[\melisma f16] b,8.[ d16] |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        c4.\melismaEnd c8 c2 fis,4 g8 g e4 e |
                        fis8 fis g2\melisma fis4\melismaEnd g1 |
                        r b4 c d2~ |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        d4 a8 a b2 |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        a1 d4 a d c8 b |
                        a4 g fis fis c' a d b |
                        es d8 d c4 c c1 |
                        b r |
                        d4 a f' d es8 d c b c2 |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        b4 d8 c b4 a |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        g fis g c4. c8 b4 a\melisma b~ |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        b a\melismaEnd b2 |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        r1 d4 a16[ b c a] b2 |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        a4 d8 a f'4 d |
                        es8 d c b c2 |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        b1 d2~ d4 b |
                        \set Score.measureLength = #(ly:make-moment 5 1)
                        a1 g\longa |
                }

        \bar "|."
        }

}