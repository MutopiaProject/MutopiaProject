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
                        d4 d d1~ d4 g,8 g |
                        g4.\melisma g8 g16[ f g f] g[ a b g]\melismaEnd a1 |
                        R\breve |
                        f'4 f f1~ f4 d8 b |
                        c1 c4 a f f |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        f2. e4 e1 d |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        r4 d'8 d d4 d8 d |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        d2 d4 d d d c c |
                        b2 b4 b c2 c |
                        r4 c8 c b4 a g c b a |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        a1 g r |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        r4 d' d d d2 c8.[ d16 b8.] c16 |
                        a2 a d4 e f b, |c
                        2 c r4 c c b |
                        a b a g fis g8 g fis4 fis |
                        d'2 c4 b b a a2 |
                        g1 r |
                        d'2. a4 b fis8 fis g2 |
                        fis4 d'2 cis8 h cis4 d d cis |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        d1 r\breve |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        d4 c b a8 g |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        fis4 fis d' c8 b a4 g a a |
                        a c8 c c4 h c2 cis |
                        d2. a8 b fis2 fis |
                        d'4 c b a8 a g4 f8 f g4. g8 |
                        g1 r4 a a a |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        a2. e8 f e2. e4 d1 |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        r1 r2 f'4 es8 d |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        c4 b8 b c4 c |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        b b d cis8 h cis cis d2 cis4 |
                        d4 a b c d1~ |
                        d16[\melisma d, e f] g[ a b c] d2~ d4\melismaEnd f, e4. e8 |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        d4 b' c d es1~ es4 d d4. d8 |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        c4 g e es d4. d8 d4 d' |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        h h c4. c8 |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        a4 a b b g4. g8 a4 a |
                        fis2 g4 g es2 e |
                        fis\melisma g1\melismaEnd fis2 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        g\longa |
                }

        \bar "|."
        }

}