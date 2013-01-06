\version "2.16.1"

Instrument = ""
\include "header.ly"
\include "notes.ly"

#(set-global-staff-size 20)

\score {
  \context StaffGroup <<
      \context Staff = Voice <<
        \set Staff.midiInstrument = "cello"
%        \set Staff.instrumentName = ""
        \Voice
      >>
    \addlyrics \Lyr
    \context Staff = Mandolin <<
      \set Staff.midiInstrument = "acoustic guitar (steel)"
%      \set Staff.instrumentName = "Mandolin"
      \Mand
      \Marks
    >>
  >>

  \layout {}
  
  \midi {
    \tempo 4 = 100
    }


  \header { piece = "Mäßig" }
}
