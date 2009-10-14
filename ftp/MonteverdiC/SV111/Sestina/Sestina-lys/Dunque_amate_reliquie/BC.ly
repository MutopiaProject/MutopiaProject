\new Staff  {
        \set Staff.instrumentName=\markup{\center-column{"Basso"\line {"continuo"}}}
        \set Staff.midiInstrument="harpsichord"
        \key c \major
        \clef bass
        \relative c, {
                f2. f4 |
                f4 f8 f f2~ |
                f4 f b d |
                a2 a~ |
                a4 a8 a a4 a8 a |
                g4. g8 g4 g |
                c2 c4 c |
                c2 c |
                f,1 |
                c' |
                \clef tenor c2. c4 |
                c4 c8 c c2~ |
                c4 c f a |
                e2 e~ |
                e4 e8 e e4 e8 e |
                d4. d8 d4 d |
                g2 g4 g |
                g2 g |
                c,1 |
                g' |
                r4 g2 g8 g |
                g4. g8 d4 \clef bass d~ |
                d d8 d d4. d8 |
                a4 a r d |
                cis4. cis8 d4. d8 |
                a4 a' f d |
                a'2 d,4 d |
                cis4. cis8 d4. d8 |
                a4 a' f d |
                a'2 d, |
                a' d, |
                g4 g8 g g4. fis8 |
                g4 g8 g g4. fis8 |
                g2 d |
                g d |
                g4 g8 g g4. fis8 |
                g2 d |
                a'2. gis4 |
                a4 a8 a a4. gis8 |
                a2 e |
                a e |
                a4 a8 a a4. gis8 |
                a2 e |
                a e |
                a e |
                a2. gis4 |
                a2. gis4 |
                a4 a gis2 |
                a r4 f~ |
                f8 f f4 b,2~ |
                b4 b b2 |
                a1 |
                \clef tenor r4 a' a4. a8 |
                gis2 gis |
                r4 a d2~ |
                d4 g, g4. g8 |
                c2 f,4 f8 f |
                f4 f a a8 a |
                a4. a8 d,4. d8 |
                d4. d8 e2 |
                a1 |
                \clef bass r4 d, d4. d8 |
                cis2 cis |
                r4 d g2~ |
                g4 c, c4. c8 |
                f2 b,4 b8 b |
                b4 b d d8 d |
                d4 d g,4. g8 |
                g2 g |
                a1 |
                \set Score.measureLength = #(ly:make-moment 4 1)
                d\longa |
        \bar "|."
        }
}