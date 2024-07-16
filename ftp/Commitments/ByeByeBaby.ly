\version "2.24.3"

\paper {
        left-margin = 3\cm
}

\markup {
        The Commitments - Bye Bye Baby (G Dur)
}

TrompetenNoten = {
        \compressEmptyMeasures
        R1*26 | r2 r4 g'' \glissando | g' g, bes b  \bar "||"
        c8 r4 c8 r4 r8 b8 | c r4 c8 r4 r8 bes |
        b r4 b8 r4 r8 bes | b r g4 bes b |
        c8 r4 c8 r4 r8 b | c r4 c8 r2 |
        des4 des des des | d8 r8 r2. |

        R1*12 | r2 r4 g, \glissando | g' g, bes b  \bar "||"
        c8 r4 c8 r4 r8 b8 | c r4 c8 r4 r8 bes |
        b r4 b8 r4 r8 bes | b r g4 bes b |
        c8 r4 c8 r4 r8 b | c r4 c8 r2 |
        des4 des des des | d8 r8 r2. \bar "||"

        R1*12
        R1*6
        R1*6
        R1*6
        R1*6
        \bar "||"

        r2^"ritenuto" r4 g
}

SaxNoten = {
        \compressEmptyMeasures
        R1*26 | r1 | b,4 b d es \bar "||"
        e8 r4 e8 r4 r8 es8 | e r4 e8 r4 r8 ges |
        g r4 g8 r4 r8 ges | g r g4 d es |
        e8 r4 e8 r4 r8 es | e r4 e8 r2 |
        a4 a a a | ges8 r8 r2. |

        R1*12 | r1 | b,4 b d es \bar "||"
        e8 r4 e8 r4 r8 es8 | e r4 e8 r4 r8 ges |
        g r4 g8 r4 r8 ges | g r g4 d es |
        e8 r4 e8 r4 r8 es | e r4 e8 r2 |
        a4 a a a | ges8 r8 r2. |

        R1*12
        R1*6
        R1*6
        R1*6
        R1*6
        \bar "||"

        r2 r4 b
}

PosaunenNoten = {
        \compressEmptyMeasures
        R1*26 | r2 r4 g, \glissando | g' g, bes b  \bar "||"
        c8 r4 c8 r4 r8 b8 | c r4 c8 r4 r8 bes |
        b r4 b8 r4 r8 bes | b r g4 bes b |
        c8 r4 c8 r4 r8 b | c r4 c8 r2 |
        des4 des des des | d8 r8 r2. |

        R1*12 | r2 r4 g, \glissando | g' g, bes b  \bar "||"
        c8 r4 c8 r4 r8 b8 | c r4 c8 r4 r8 bes |
        b r4 b8 r4 r8 bes | b r g4 bes b |
        c8 r4 c8 r4 r8 b | c r4 c8 r2 |
        des4 des des des | d8 r8 r2. \bar "||"

        R1*12
        R1*6
        R1*6
        R1*6
        R1*6
        \bar "||"

        r2 r4 g
}

\score {
        \new StaffGroup <<
                \new Staff = "trumpet" {
                        \tempo 4 = 124
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
