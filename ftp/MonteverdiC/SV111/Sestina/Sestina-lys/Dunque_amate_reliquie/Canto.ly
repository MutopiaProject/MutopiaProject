\new Staff  {
        \time 4/4
        \override Score.MetronomeMark #'stencil = ##f
        \tempo 4 = 100 
        \set Staff.instrumentName="Canto"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef treble
        \relative c' {  
                \context Voice = "melodySop" {
                        \dynamicUp
                        \autoBeamOff
                        r2 f2~ |
                        f4 f f f8 f |
                        f4 f d4. d8 |
                        cis2 cis4 cis8 cis |
                        cis2 cis4 cis |
                        d4. d8 d4 d |
                        e2 e~ |
                        e4 e e e |
                        f1 |
                        g |
                        r2 c~ |
                        c4 c c c8 c |
                        c4 c a4. a8 |
                        gis2 gis4 gis8 gis |
                        gis2 gis4 gis | %gis2 instead of g
                        a4. a8 a4 a |
                        h2 h~ |
                        h4 h h h |
                        c1 |
                        d |
                        r4 b2 b8 b |
                        b4. b8 a2 |
                        a r4 a |
                        a4. e8 f4. e8 |
                        e2 d4 a' |
                        a4. e8 f4. d8 |
                        e2 d |
                        r r4 d |
                        e2 d4 d |
                        cis4. cis8 d4 d |
                        e2 d |
                        r r4 d'~ |
                        d d d2 |
                        d r |
                        r4 d2 d4 |
                        d2 d |
                        R1 |
                        r2 r4 e~ |
                        e e e2 |
                        e r |
                        r r4 e~ |
                        e a,2 gis4 |
                        r2 r4 e'~ |
                        e a,2 gis4 |
                        r c h2 |
                        a r |
                        R1*2 | %R1*2 instead of R1
                        r2 r4 a4~ |
                        a8 a a4 f2~ |
                        f4 f g2 |
                        e1 |
                        r4 e e4. e8 |
                        e2 e |
                        r4 e f2 |
                        d4 d2 d4 |
                        e2 c4 c8 c |
                        c4 c c cis8 cis |
                        cis4. cis8 a4. a8 |
                        a4 h h2 |
                        a1 |
                        r4 a' a4. a8 |
                        a2 a |
                        r4 a b2 |
                        g4 g2 g4 |
                        a2 f4 f8 f |
                        f4 f fis fis8 fis |
                        fis4. fis8 d2 |
                        d e~ |
                        e4 d e2 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        fis\longa |
                }

        \bar "|."
        }

}