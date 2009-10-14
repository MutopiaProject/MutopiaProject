\new Staff  {
        \set Staff.instrumentName=\markup{\center-column{"Basso"\line {"continuo"}}}
        \set Staff.midiInstrument="harpsichord"
        \key c \major
        \clef tenor
        \relative c' {
                r4 d d4. d8 |
                d4 d d d~ |
                d8 d h4 c2 |
                c4 c8 c a4 b~ |
                b g4 a2 |
                \clef bass r4 a a4. a8 |
                a4 a a a4~ |
                a8 a fis4 g2 |
                g4 g8 g e4 f~ |
                f d4 e2 |
                c1 g |
                a |
                e' |
                a, |
                a' |
                g |
                f |
                e |
                d2. \clef alto d'4 |
                e4 e8 e e4 c |
                b b r h |
                c c8 c c4 a |
                g g r g |
                a4. a8 a4 f |
                e2 e |
                a1 |
                \clef bass r4 a2 g8 f |
                g4 g r4 e8 e |
                f2 r4 d8 d |
                e4 e2 d8 c |
                d4 d r d |
                c c r c |
                b b8 b b b a g |
                a1 |
                r4 f'2 e8 d |
                e4 e8 e e e d c |
                d2. \clef alto d'4 |
                c c r c |
                d4. d8 d4 b |
                a2 a |
                \clef tenor r2 r4 d, |
                a' a4. a8 g4 |
                c4 c h h |
                a a8 a g4. g8 |
                f4. f8 d4 d |
                e1 |
                a2. \clef bass a,4 |
                d d4. d8 c4 |
                f f e e |
                d d8 d c4. c8 |
                b4. b8 g4 g |
                a1 |
                \set Score.measureLength = #(ly:make-moment 4 1)
                d\longa |
        \bar "|."
        }
}