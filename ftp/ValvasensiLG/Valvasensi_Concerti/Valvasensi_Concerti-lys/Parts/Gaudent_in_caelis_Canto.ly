\new Staff  {
        \time 3/2
        \override Score.MetronomeMark #'stencil = ##f
        \tempo 4 = 360 
        \set Staff.instrumentName=""
        \set Staff.midiInstrument="oboe"
        \key d \minor
        \clef treble
        \relative c'' {         
                \context Voice = "melodySop" {
                        \dynamicUp
                        \autoBeamOff
                        \once \override Staff.TimeSignature #'style = #'single-digit
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        d4\melisma c\melismaEnd b2 a g g r |
                        d'4\melisma c\melismaEnd b2 a g g r |
                        g4\melisma f\melismaEnd g2 a b4\melisma c d b c2\melismaEnd |
                        \set Score.measureLength = #(ly:make-moment 9 2)
                        d2 es d c1 c2 b1 b2 |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        r1. f'4\melisma e\melismaEnd d2 cis |
                        d2 d r d4\melisma c\melismaEnd b2 a |
                        g g r r1. |
                        g4\melisma f\melismaEnd g2 a b4\melisma a b c d2\melismaEnd |
                        d2 es d c1 c2 |
                        b1 b2 c2. b4 a2 |
                        \set Score.measureLength = #(ly:make-moment 5 2)
                        b2 a1
                        \time 4/4
                        \tempo 4=120
                        \set Score.measureLength = #(ly:make-moment 5 2)
                        g1 |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        r r4 g c a8 a |
                        h4\melisma c2\melismaEnd h4 c2 r4 g |
                        c b8 c d4. d8 d4 c8 b c2 |
                        b1 r2 r4 a |
                        d d8 b c4. c8 c2 f,8. g16 f8.[\melisma g16] |
                        a8.[ b16 a8. b16] c8.[ d16 c8. b16] c8.[ d16 es8. c16] d8.[ c16 b8. c16] |
                        a16[ f a g] b[ a c b] c2\melismaEnd b d,16[\melisma e f g] a[ b c d]\melismaEnd |
                        fis,4\melisma g2 fis4\melismaEnd g1 |
                        r1 r4 d' h h8 h |
                        c4 c8 c a[\melisma b c a] h4 c2 h4\melismaEnd |
                        c2 a4 a8 b c4 b8 b a2 |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        a8 d d c b4 a8 a |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        g2 g r\breve |
                        r2 d'2. h4 c1 h2 |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        a1 g |
                        r8 c b a g4 g g2 g |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        r1 c4. c8 es2. c4 c2 |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        d1 r |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        a4. a8 c2. a4 a2 g1 |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        r8 c b a g4 g g8 g c g a4 g8 f |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        g4 g8 a b b a g |
                        a a d d d4 c8 b |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        d1 c |
                        r r4 a8 a c4 f,8 f |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        g g b4 b8 b c b |
                        a a d d d4 b8 a |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        g4 g8 a a2 g1 |
                        \once \override Staff.TimeSignature #'style = #'single-digit
                        \time 3/2
                        \tempo 4=360
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        d'4\melisma c\melismaEnd b2 a g g r |
                        d'4\melisma c\melismaEnd b2 a g g r |
                        g4\melisma f\melismaEnd g2 a b4\melisma c d b c2\melismaEnd |
                        d es d c1 c2 |
                        b1 b2 r1. |
                        f'4\melisma e\melismaEnd d2 cis d d r |
                        d4\melisma c\melismaEnd b2 a g g r |
                        r1. g4\melisma f\melismaEnd g2 a |
                        b4\melisma c d b c2\melismaEnd d es d |
                        c1 c2 b1 b2 |
                        c2. b4 a2 g a g |
                        es'2. d4 c2 b a g |
                        \time 4/4
                        \tempo 4=120
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        b4. b8 b2. a4 a2 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        g\longa |
                }

        \bar "|."
        }

}