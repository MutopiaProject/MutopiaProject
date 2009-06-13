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
                        e4 e e1~ e4 h8 gis |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        a2 a d4 d d2~ d4 a8 fis h2 |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        h r8 h c d |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        e4. e8 d1 c8\melisma h4 a8 |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        a[ g] a[ h] c16[ h c h] c[ h a h]\melismaEnd |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        c1 r2 r8 a h c |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d1 d2 c h1 a |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        r1 e'4 d8 d c c h a |
                        h2 h d4 d8 d c c h a |
                        a2 a e'4 d8 c h c d e |
                        h8[\melisma g a h] c2. h16[ c d h]\melismaEnd c2 |
                        r8 a h c d2. c16 h[\melisma d c] h8[ e,16 fis] gis[ a h gis]\melismaEnd |
                        a1 r8 h c d e2~ |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        e f8[\melisma e] g[ f]\melismaEnd e1 d |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        R\breve |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        r4 a8 a d d h h |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        e4 e cis2 d r4 h8 h |
                        e e cis cis d2. h4 gis8[\melisma a16 gis] a[ gis fis gis]\melismaEnd |
                        a1 d8.[\melisma e16] c8.\melismaEnd d16 h2 |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        e8.[\melisma f16] d8.\melismaEnd e16 cis2 |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        d1. d2 d~ d4 h16[ a h g] |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        a1 g |
                        \set Score.measureLength = #(ly:make-moment 3 1)
                        e'1. e2 e1~ |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        e4 h h8[\melisma e,16 fis] gis[ a h gis]\melismaEnd |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        a1 r4 h8 c d d c d |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        e2. d16[ c h a] |
                        \set Score.measureLength = #(ly:make-moment 4 2)
                        gis[\melisma a h c] gis[ a h e,] fis[ gis a gis] a[ gis a gis]\melismaEnd a1 |
                        \set Score.measureLength = #(ly:make-moment 4 4)
                        r2 c4 c |
                        c d8 e\melisma h16 h h h h4\melismaEnd |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        a\longa |
                }
        \bar "|."

        }
}