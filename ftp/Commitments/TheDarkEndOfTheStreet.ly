\version "2.24.3"

\paper {
        left-margin = 3\cm
}

\markup {
        The Commitments - The Dark End of the Street (G Dur)
}

TrompetenNoten = {
        \compressEmptyMeasures
        R1*12 \bar "||"
        b''1 | a | g2 c | b c | b1 | r1 | r1 | r1 \bar "||"
        r1 | r1 | r1 | r1 | r1 | r1 |
        cis2 dis | bis cis | bis1 |
        r1 | r1 |
}

SaxNoten = {
        \compressEmptyMeasures
        R1*12 \bar "||"
        g1 | fis | e2 e | g e | g1 | r1 | r1 | r1 \bar "||"
        r1 | r1 | r1 | r1 | r1 | r1 |
        f2 g | gis f | gis1 |
        r1 | r1 |
}

PosaunenNoten = {
        \compressEmptyMeasures
        R1*12 \bar "||"
        d1 | cis | b2 c | b c | b1 | r1 | r1 | r1 \bar "||"
        r1 | r1 | r1 | r1 | r1 | r1 |
        gis'2 ais | gis gis | gis1 |
        r1 | r1 |
}

\score {
        \new StaffGroup <<
                \new Staff = "trumpet" {
                        \tempo 4 = 77
                        \relative c'' {
                                \set Staff.instrumentName = \markup { Trompete (B\flat) }
                                \set Staff.midiInstrument = "trumpet"
                                \transposition bes
                                \key a \major
                                \transpose bes c {
                                      \relative {
                                              \TrompetenNoten
                                      }
                                }
                        }
                }

                \new Staff = "altsax" {
                        \set Staff.instrumentName = \markup { Altsaxophon (E\flat) }
                        \set Staff.midiInstrument = "alto sax"
                        \transposition es
                        \key e \major
                        \transpose es c'' {
                                \relative {
                                        \SaxNoten
                                }
                        }
                }

                \new Staff = "posaune" {
                        \set Staff.instrumentName = \markup { Posaune (C) }
                        \set Staff.midiInstrument = "trombone"
                        \key g \major
                        \clef bass
                        \transpose c c {
                                \relative {
                                        \PosaunenNoten
                                }
                        }
                }
        >>

        \midi {}
        \layout {}
}
