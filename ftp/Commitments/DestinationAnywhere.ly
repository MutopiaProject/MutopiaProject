\version "2.24.3"

\paper {
        left-margin = 3\cm
}

\markup {
        The Commitments - Destination Anywhere (D Moll)
}

TrompetenNoten = {
        \compressEmptyMeasures
        R1*4 \bar "||"
        R1*6 d'''2 d c4. d8~ d2 |
        a1 a a a |
        R1*2 |
        d4. c8~ c4. bes8~ | bes2 c8 c4 c8~ | c8 b8~ b2. | 
        \bar "||"
        R1*6
        a1 d2 cis |
        \bar "||"
        a1 a a a |
        R1*2 |
        d4. c8~ c4. bes8~ | bes2 c8 c4 c8~ | c8 b8~ b2. | 
        \bar "||"
        R1*6 |
        R1*2 |
}

SaxNoten = {
        \compressEmptyMeasures
        R1*4 \bar "||"
        R1*6 bes2 bes a4. g8~ g2 |
        f1 f f f |
        R1*2
        bes4. a8~ a4. g8~ | g2 a8 a4 a8~ | a8 g8~ g2. | 
        \bar "||"
        R1*6
        f1 a2 a |
        \bar "||"
        f1 f f f |
        R1*2
        bes4. a8~ a4. g8~ | g2 a8 a4 a8~ | a8 g8~ g2. | 
        \bar "||"
        R1*6 |
        R1*2 |
}

PosaunenNoten = {
        \compressEmptyMeasures
        R1*4 \bar "||"
        R1*6 f2 f f4. e8~ e2 |
        c1 b c b |
        R1*2
        bes4. a8~ a4. g8~ | g2 a8 a4 a8~ | a8 g8~ g2. | 
        \bar "||"
        R1*6
        f1 a2 a |
        \bar "||"
        c1 b c b |
        R1*2
        bes4. a8~ a4. g8~ | g2 a8 a4 a8~ | a8 g8~ g2. | 
        \bar "||"
        R1*6 |
        R1*2 |
}

\score {
        \new StaffGroup <<
                \new Staff = "trumpet" {
                        \tempo 4 = 116
                        \relative c'' {
                                \set Staff.instrumentName = \markup { Trompete (B\flat) }
                                \set Staff.midiInstrument = "trumpet"
                                \transposition bes
                                \key e \minor
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
                        \key b \minor
                        \transpose es c'' {
                                \relative {
                                        \SaxNoten
                                }
                        }
                }

                \new Staff = "posaune" {
                        \set Staff.instrumentName = \markup { Posaune (C) }
                        \set Staff.midiInstrument = "trombone"
                        \key d \minor
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
