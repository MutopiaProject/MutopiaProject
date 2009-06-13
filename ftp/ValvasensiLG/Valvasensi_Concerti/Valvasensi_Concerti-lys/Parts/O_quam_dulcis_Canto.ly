\new Staff  {
        \time 4/4
        \override Score.MetronomeMark #'stencil = ##f
        \tempo 4 = 100 
        \set Staff.instrumentName="Canto"
        \set Staff.midiInstrument="oboe"
        \key d \minor
        \clef treble
        \relative c'' {         
                \context Voice = "melodySop" {
                        \dynamicUp
                        \autoBeamOff
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        d2~ d4 g,16[ a b c] a1 |
                        a4 f~\melisma f8[ g16 a] b[ c d e] f2~ f4\melismaEnd b,8 b |
                        d1 d |
                        r4 d8 d d4 d8 d d4 g,16[ a b g] a2 |
                        a4 f f f8 f f2 f8.[\melisma g16] a[ b c f,]\melismaEnd |
                        g2. g4 f1 |
                        r1 f'2. es8 d |
                        c4 c c g16[ a b g] a2 a |
                        c4 c8 c b4 b8 b b4 a8 a a2 |
                        g1 r8 g g g g4 g8 f |
                        a2 a r8 c c c c4 c8 b |
                        d2 d4 g, g4. g8 g2 |
                        g8. a16 g8.[\melisma a16] b8.[ c16 b8. c16] d8.[ es16 c8. d16] b8.[ c16 a8. b16] |
                        a[ g a f] b[ a8. b16 g8.] a16[ b c a]\melismaEnd b1 |
                        c2~ c8 g g g a4. a8 a2 |
                        f'~ f8 es es es d4. d8 d g,[ a b] |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        c1. b2 a2. a4 g~ g16 g[ a b] c2 |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        a4~ a16 a[ b c] d2 b4~ b16 b[ c d] es2~ |
                        es4 es16[ d f es] d4. d8 c1 |
                        R\breve |
                        d4 h8 h c c a a b4 g8 g a g a b |
                        c4 b8 a g4 f r1 |
                        d'4 h8 h c4 a r1 |
                        d4 h8 h c4 a f'4 d8 d es4 c |
                        d h c a f f8 g a4 a |
                        g8 f g a b4 a8 g a4 b8 b a4 b |
                        r1 f4 f8 g a4 a |
                        a8 g a b c4 b8 a g4 f8 f g4 f |
                        r1 a4 a8 b c4 c |
                        b8 a b c d4 c8 b a4 g8 a b4 a |
                        \set Score.measureLength = #(ly:make-moment 5 2)
                        r1
                        \once \override Staff.TimeSignature #'style = #'single-digit
                        \time 3/2
                        \tempo 2=150
                        \set Score.measureLength = #(ly:make-moment 5 2)
                        a2 a b |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        c1 h2 c2. c4 c2 |
                        g2 g a b1 a2 |
                        \set Score.measureLength = #(ly:make-moment 5 2)
                        b2. b4 b2
                        \time 4/4
                        \tempo 4=100
                        \set Score.measureLength = #(ly:make-moment 5 2)
                        r2 d~ |
                        \set Score.measureLength = #(ly:make-moment 7 1)
                        d c1 b8[ a] c[ b] a1 g\longa |
                }

        \bar "|."
        }

}