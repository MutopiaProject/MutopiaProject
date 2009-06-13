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
                        c2~\melisma c8.[ b16] c[ a b g]\melismaEnd a1 |
                        r4 c8 a c4 b8 a g4 f16[ g a f] g2 |
                        f1 r |
                        r4 c'8 a c2 a4 c b a |
                        g8.[\melisma a16] g8.[ a16] b8.[ c16] a8.[ b16] c2. h4\melismaEnd |
                        c1 r |
                        r4 g8 e g2 e4 c'2 c8 c |
                        c4. f,8 a2 a4 c8 a c2 |
                        a4 c a8.[\melisma b16] c8.[ b16] a8.[ g16] f8.[ e16] d8.[ e16] f8.[d16] |
                        e4\melismaEnd f f\melisma e\melismaEnd f1 |
                        r c'4 a8 b c4 d |
                        c2 c g4 g8 a g2 |
                        g c4 a8 a b4 g a a |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        c b8 a g8.[\melisma a16] f8.[ g16] |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        e4 f2 e4\melismaEnd f1 |
                        r1 r4 c'8 a c2 |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        a f'4 d8 d |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        es4 c d d a a8 b c4 a |
                        b1 a4 d2 es8 es |
                        d1 c4 g8 f e e c' b |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        a a d c b4 a8 g |
                        fis4\melisma g2 fis4\melismaEnd |
                        g4 c8 b a a d c |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        h8 h c2 h4 c c8 b a4 g8 f |
                        e\melisma c f2 e4\melismaEnd f1 |
                        R\breve |
                        c'4 c a a8 a h h c2 h4 |
                        c1 r |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        r4 g8 f e4 e8 e |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        fis8 fis g2 fis4 g2 r |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        r4 d'8 c h4 h8 h |
                        cis8 cis d2 cis4 |
                        d4 d8 d c4 b8 b |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        a4 a g8.[\melisma a16] g8.[ a16] b8.[ c16] b8.[ c16] a4 b~ |
                        b\melismaEnd a b d8 c b4 a8 g a4 b |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        c8.[\melisma b16] a8.[ b16] a8.[ g16] f8.[ g16] |
                        a8.[ b16] a8.[ b16] c4 b16[ a g f] |
                        e8 c f2\melismaEnd e4 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        f\longa |
                }

        \bar "|."
        }

}