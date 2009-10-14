\new Staff  {
        \time 4/4
        \override Score.MetronomeMark #'stencil = ##f
        \tempo 4 = 100 
        \set Staff.instrumentName="Canto"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef treble
        \relative c'' {         
                \context Voice = "melodySop" {
                        \dynamicUp
                        \autoBeamOff
                        e1 |
                        d4. d8 c4 e~ |
                        e d8. e16 a,2 |
                        r2 r4 a~ |
                        a a8 a d2~ |
                        d4 c h2 |
                        a1 |
                        r2 e'~\melisma |
                        e4 f4\melismaEnd d8. d16 d8. d16 |
                        c1 |
                        r2 r4 a~ |
                        a4 h8. c16 d2~ |
                        d4 c h4. h8 |
                        cis1 |
                        R1*4 |
                        r4 g2 e4 |
                        e4. e8 e4 e |
                        c c8 f e4 a |
                        h2. c4 |
                        r e e2 |
                        R1*2 |
                        r4 e e2 |
                        r2 r4 e~ |
                        e f2 c4 |
                        h1 |
                        a |
                        R1 |
                        r2 a |
                        d,1 |
                        e2 e' |
                        a, a4 a~ |
                        a2 g8. f16 f8. e16 |
                        e4 f e2 |
                        fis1 |
                        r2 r4 d'~ |
                        d2 c8. h16 h8. a16 |
                        a4 f e2 |
                        d r |
                        R1 |
                        r2 a'8. g16 g8. f16 |
                        f4 e d d |
                        R1 |
                        r2 d' |
                        c8. c16 b8. b16 a4 a | %b instead of h
                        R1 |
                        r4 d~ d2 |
                        c8. b16 b4 a8. g16 f8. f16 |
                        e1 |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        fis\longa |
                }

        \bar "|."
        }

}