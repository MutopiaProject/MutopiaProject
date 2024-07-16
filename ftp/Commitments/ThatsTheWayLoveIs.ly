\version "2.24.3"

\paper {
        left-margin = 3\cm
}

\markup {
        The Commitments - That's the Way Love is (Es Moll)
}

TrompetenNoten = {
        \compressEmptyMeasures
        R1*8 \bar "||"
        R1*24 \bar "||"
        R1*23 r2 r4 r8 d''' \bar "||"

        es8 r8 r2 r8 d |
        es8 r8 r2 r8 a, |
        as8 r8 r2 r8 a |
        as8 r8 r2 r4 |

        es'8 r8 r2 r8 d |
        es8 r8 r2 r8 a, |
        as8 r8 r2 r8 a |
        as8 r8 r2 r4 \bar "||"

        R1*52 \bar "||"
}

SaxNoten = {
        \compressEmptyMeasures
        R1*8 \bar "||"
        R1*24 \bar "||"
        R1*23 r2 r4 r8 f \bar "||"

        ges8 r8 r2 r8 f |
        ges8 r8 r2 r8 des |
        c8 r8 r2 r8 des |
        c8 r8 r2 r4 |

        ges'8 r8 r2 r8 f |
        ges8 r8 r2 r8 des |
        c8 r8 r2 r8 des |
        c8 r8 r2 r4 \bar "||"

        R1*52 \bar "||"
}

PosaunenNoten = {
        \compressEmptyMeasures
        R1*8 \bar "||"
        R1*24 \bar "||"
        R1*23 r2 r4 r8 d \bar "||"

        es8 r8 r2 r8 d |
        es8 r8 r2 r8 a, |
        as8 r8 r2 r8 a |
        as8 r8 r2 r4 |

        es'8 r8 r2 r8 d |
        es8 r8 r2 r8 a, |
        as8 r8 r2 r8 a |
        as8 r8 r2 r4 \bar "||"

        R1*52 \bar "||"
}

\score {
        \new StaffGroup <<
                \new Staff = "trumpet" {
                        \tempo 4 = 108
                        \relative c'' {
                                \set Staff.instrumentName = \markup { Trompete (B\flat) }
                                \set Staff.midiInstrument = "trumpet"
                                \transposition bes
                                \key f \minor
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
                        \key c \minor
                        \transpose es c'' {
                                \relative {
                                        \SaxNoten
                                }
                        }
                }

                \new Staff = "posaune" {
                        \set Staff.instrumentName = \markup { Posaune (C) }
                        \set Staff.midiInstrument = "trombone"
                        \key es \minor
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
