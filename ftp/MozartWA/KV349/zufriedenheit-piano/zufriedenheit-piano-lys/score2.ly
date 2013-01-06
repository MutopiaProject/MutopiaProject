\version "2.16.1"

Instrument = ""
\include "header2.ly"
\include "notes2.ly"

#(set-global-staff-size 20)

\score {
  <<
      \context Staff = Voice <<
        \set Staff.midiInstrument = "cello"
%        \set Staff.instrumentName = ""
        \Voice
      >>
    \addlyrics \Lyr
    \Piano
  >>

  \layout {}
  
  \midi {
    \tempo 4 = 100
    }


  \header { piece = "Mäßig" }
}
