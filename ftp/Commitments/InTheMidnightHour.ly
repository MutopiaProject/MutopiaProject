\version "2.24.3"

\paper {
        left-margin = 3\cm
}

\markup {
        The Commitments - In the Midnight Hour (Eb Dur)
}

SaxNoten = {
        f2.~ f8 d8~ | d1 | c2.~ c8 bes8~ | bes1 |
        \compressEmptyMeasures
        R1*12 \bar "||"
        f'1 | es | f | es |
        r1 | r2 as8 g bes, bes~ | bes1 | r1 | r1  \bar "||"

        es1~ | es4 r4 as8 g bes, bes~ | bes1 | r1 |
        es1~ | es4 r4 as8 g bes, bes~ | bes1 | r1 |
        f'1 | es | f | es |
        r1 | r2 as8 g bes, bes~ | bes1 | r1 | r1  \bar "||"

        bes'2 as8 as4 g8~ | g2 as8 as4 bes8~ | bes4 as8 f8 as4 f8 es |
        f2 as8 as4  bes8~ | bes2 as8 as4 g8~ | g2 \tuplet 3/2 {as4 des, des} |
        es1 | r2 as8 g as g |
        \repeat volta 2 {
                es1 | r2 as8 g as g | bes1 | r2 as8 g as g |
        }
        es1
}

\score {
        \new StaffGroup <<
                \new Staff = "trumpet" {
                        \tempo 4 = 120
                        \relative c'' {
                                \set Staff.instrumentName = \markup { Trompete (B\flat) }
                                \set Staff.midiInstrument = "trumpet"
                                \transposition bes
                                \key f \major
                                \transpose bes c {
                                      \relative {
                                                des'''2.~ des8 bes8~ | bes1 | as2.~ as8 ges'8~ | ges1 |
                                                \compressEmptyMeasures
                                                R1*12 \bar "||"
                                                bes,1 | as | bes | as |
                                                r1 | r2 as8 g es es~ | es1 | r1 | r1  \bar "||"

                                                bes'1~ | bes4 r4 as8 g es es~ | es1 | r1 |
                                                bes'1~ | bes4 r4 as8 g es es~ | es1 | r1 |
                                                bes'1 | as | bes | as |
                                                r1 | r2 as8 g es es~ | es1 | r1 | r1  \bar "||"

                                                bes'2 as8 as4 g8~ | g2 as8 as4 bes8~ | bes4 as8 f8 as4 f8 es |
                                                f2 as8 as4  bes8~ | bes2 as8 as4 g8~ | g2 \tuplet 3/2 {as4 des, des} |
                                                es1 | r2 as8 g as g |
                                                \repeat volta 2 {
                                                        es1 | r2 as8 g as g | bes1 | r2 as8 g as g |
                                                }
                                                es1
                                      }
                                }
                        }
                }

                \new Staff = "altsax" {
                        \set Staff.instrumentName = \markup { Altsaxophon (E\flat) }
                        \set Staff.midiInstrument = "alto sax"
                        \transposition es
                        \key c \major
                        \transpose es c'' {
                                \relative {
                                        \SaxNoten
                                }
                        }
                }

                \new Staff = "posaune" {
                        \set Staff.instrumentName = \markup { Posaune (C) }
                        \set Staff.midiInstrument = "trombone"
                        \key es \major
                        \clef bass
                        \transpose c c {
                                \relative {
                                        \SaxNoten
                                }
                        }
                }
        >>

          \midi {}
          \layout {}
}
