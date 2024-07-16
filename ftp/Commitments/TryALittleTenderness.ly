\version "2.24.3"

\paper {
        left-margin = 3\cm
}

\markup {
        The Commitments - Try a little Tenderness (E Dur)
}

SaxNoten =
\relative {
        b4 a gis fis | e fis e c | cis dis cis b | ais1 | dis2. r4 \bar "||"
        \compressEmptyMeasures
        R1*16 \bar "||"
        R1*16 \bar "||"
        R1*16 \bar "||"
        R1*12 \bar "||"
        gis1~ | gis1 | b1~ | b2. r4 |
        r8 a,4 a8-. r8 b4 b8-. | r8 cis4 cis8-. r8 d4 d8-. |
        r8 dis4 dis8-. r8 e4 e8-. | r8 f4 f8-. fis4-> g4-> |
        \repeat volta 2 {
                gis1 | fis1 | f1~ | f2. r4 |
                r8 a,4 a8-. r8 b4 b8-. | r8 cis4 cis8-. r8 d4 d8-. |
                r8 dis4 dis8-. r8 e4 e8-. | r8 f4 f8-. fis4-> g4-> |
        }
        gis1 |
}

\score {
        \new StaffGroup <<
                \new Staff = "trumpet" {
                        \tempo 4 = 98
                                \set Staff.instrumentName = \markup { Trompete (B\flat) }
                                \set Staff.midiInstrument = "trumpet"
                                \transposition bes
                                \key fis \major
                                \transpose bes c {
                                      \relative b'' {
                                                b2\mf gis4 cis4 | b2 gis4 fis4 | e2 e2 | cis1 | b2. r4 \bar "||"
                                                \compressEmptyMeasures
                                                R1*16 \bar "||"
                                                R1*16 \bar "||"
                                                R1*16 \bar "||"
                                                R1*12 \bar "||"
                                                e'1~ | e1 | eis1~ | eis2. r4 |
                                                r8 cis,4 cis8-. r8 dis4 dis8-. | r8 e4 e8-. r8 f4 f8-. |
                                                r8 fis4 fis8-. r8 g4 g8-. | r8 gis4 gis8-. a4-> ais4-> |
                                                \repeat volta 2 {
                                                        b1 | a1 | gis1~ | gis2. r4 | 
                                                        r8 cis,4 cis8-. r8 dis4 dis8-. | r8 e4 e8-. r8 f4 f8-. |
                                                        r8 fis4 fis8-. r8 g4 g8-. | r8 gis4 gis8-. a4-> ais4-> |
                                                }
                                                b1 |
                                      }
                                }
                }

                \new Staff = "altsax" {
                        \set Staff.instrumentName = \markup { Altsaxophon (E\flat) }
                        \set Staff.midiInstrument = "alto sax"
                        \transposition es
                        \key cis \major
                        \transpose es c'' {
                                \relative  {
                                        \SaxNoten
                                }
                        }
                }

                \new Staff = "posaune" {
                                \set Staff.instrumentName = \markup { Posaune (C) }
                                \set Staff.midiInstrument = "trombone"
                                \transposition c
                                \key e \major
                                \clef bass
                                \transpose c c {
                                        \SaxNoten
                                }
                }


        >>

          \midi {}
          \layout {}
}
