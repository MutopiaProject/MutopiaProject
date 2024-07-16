\version "2.24.3"

\paper {
        left-margin = 3\cm
}

\markup {
        The Commitments - I never loved a Man (Es Dur)
}

TrompetenNoten = {
        \compressEmptyMeasures
        R2.*20
        bes''2.~ | bes | d | r
        r4 es8 r8 r4 |
        r4 es8 r8 r4 |
        r4 es8 r8 r4 |
        r2. | r2. | r2. |
        \bar "||"

        g,2 as8 as | g2. |

        R2.*16
        bes2.~ | bes | d | r
        r4 es8 r8 r4 |
        r4 es8 r8 r4 |
        r4 es8 r8 r4 |
        r2. | r2. | r2. |
        \bar "||"

        g,2. | r4 bes b |
        c2. | r | c | r |
        r4 g8 g r4 | g as g |
        f2.~ | f2. | bes~ | bes |
        r4 as,8 \glissando as' r4 | r ges,8 \glissando ges' r4 |
        bes2. | bes |

        R2.*4
        g16 g r8 r4 as8 as | g2. |
        g16 g r8 r4 as8 as | g2. |
        g16 g r8 r4 as8 as | g2. |
        g16 g r8 r4 as8 as | g2. |
        g16 g r8 r4 as8 as | g2. |
        g16 g r8 r4 as4 | g2. |
}

SaxNoten = {
        \compressEmptyMeasures
        R2.*20
        d2.~ | d | f | r
        r4 g8 r8 r4 |
        r4 g8 r8 r4 |
        r4 g8 r8 r4 |
        r2. | r2. | r2. |
        \bar "||"

        bes2 c8 c | bes2. |

        R2.*16
        d2.~ | d | f | r
        r4 g8 r8 r4 |
        r4 g8 r8 r4 |
        r4 g8 r8 r4 |
        r2. | r2. | r2. |
        \bar "||"

        es,2. | r4 ges g |
        as2. | r | as | r |
        r4 es8 es r4 | es des es |
        bes2.~ | bes2. | bes~ | bes |
        r4 as'4 r4 | r ges4 r4 |
        es2. | es |

        R2.*4
        bes16 bes r8 r4 as8 as | bes2. |
        bes16 bes r8 r4 as8 as | bes2. |
        bes16 bes r8 r4 as8 as | bes2. |
        bes16 bes r8 r4 as8 as | bes2. |
        bes16 bes r8 r4 as8 as | bes2. |
        bes16 bes r8 r4 as4 | bes2. |
}

PosaunenNoten = {
        \compressEmptyMeasures
        R2.*20
        bes2.~ | bes | d | r
        r4 g,8 r8 r4 |
        r4 g8 r8 r4 |
        r4 g8 r8 r4 |
        r2. | r2. | r2. |
        \bar "||"

        bes2 c8 c | bes2. |

        R2.*16
        bes2.~ | bes | d | r
        r4 g,8 r8 r4 |
        r4 g8 r8 r4 |
        r4 g8 r8 r4 |
        r2. | r2. | r2. |
        \bar "||"

        es2. | r4 ges g |
        as2. | r | as | r |
        r4 es8 es r4 | es des es |
        bes2.~ | bes2. | bes~ | bes |
        r4 as'4 r4 | r ges4 r4 |
        es2. | es |

        R2.*4
        bes16 bes r8 r4 as8 as | bes2. |
        bes16 bes r8 r4 as8 as | bes2. |
        bes16 bes r8 r4 as8 as | bes2. |
        bes16 bes r8 r4 as8 as | bes2. |
        bes16 bes r8 r4 as8 as | bes2. |
        bes16 bes r8 r4 as4 | bes2. |
}

\score {
        \new StaffGroup <<
                \new Staff = "trumpet" {
                        \time 3/4
                        \tempo 4 = 90
                        \relative c'' {
                                \set Staff.instrumentName = \markup { Trompete (B\flat) }
                                \set Staff.midiInstrument = "trumpet"
                                \transposition bes
                                \key f \major
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
                                        \PosaunenNoten
                                }
                        }
                }
        >>

        \midi {}
        \layout {}
}
