\new Staff  {
        \set Staff.instrumentName="Quinto"
        \set Staff.midiInstrument="oboe"
        \key c \major
        \clef treble
        \relative c'' {         
                \context Voice = "melodyQui" {
                        \dynamicUp
                        \autoBeamOff
                        c2 h~ |
                        h4 h a2~ |
                        a r4 c~ |
                        c h8. a16 fis2~ |
                        fis4 d2 e8. f16 |
                        gis8 e a2\melisma gis4\melismaEnd |
                        a1 |
                        r2 c~\melisma |
                        c4 d\melismaEnd h8. h16 h8. h16 |
                        a1 |
                        R1 |
                        r4 d,2 e8. f16 |
                        gis8 e a2 gis4 |
                        a1 |
                        r4 d,2 d4 |
                        d4. d8 d4 d |
                        c c8 c g'4 g |
                        a2. h4 |
                        r4 e,2 c4 |
                        c4. c8 c4 c |
                        a4 a8 a c4 e |
                        g2. g4 |
                        R1 |
                        r2 r4 e' |
                        e2 r |
                        R1 |
                        r2 r4 c |
                        c2 h4 a~\melisma |
                        a gis8[ fis] gis2\melismaEnd |
                        a1 |
                        r2 e |
                        a,4.\melisma h8 c2~ |
                        c h\melismaEnd |
                        c g' |
                        f f4 f~ |
                        f2 e8. d16 d8. cis16 |
                        cis4 d cis2 |
                        d1 |
                        r2 r4 h'~ |
                        h2 a8. g16 g8. f16 |
                        f4 d cis2 |
                        d r |
                        r d'~ |
                        d c8. h16 h8. a16 |
                        a4 g f2 |
                        e1 |
                        R1*3 |
                        r4 a~ a2 |
                        g8. f16 f4 e8. e16 d8. d16 |
                        d4\melisma cis8[ h] cis2\melismaEnd |
                        \set Score.measureLength = #(ly:make-moment 4 1)
                        d\longa |
                }

        \bar "|."
        }

}