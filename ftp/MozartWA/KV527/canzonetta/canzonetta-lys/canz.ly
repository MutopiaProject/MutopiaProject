% This file contains the full score.
\version "2.16.1"

Instrument = ""
\include "header.ly"
#(set-global-staff-size 16)
\include "notes.ly"

\score {
  \context StaffGroup = Strings <<
    \context Staff = Mandolin <<
      \set Staff.midiInstrument = #"koto"
      \set Staff.instrumentName = "Mandolin"
      \MandolinStaff
    >>
      \context Staff = DonGiovanni <<
        \set Staff.midiInstrument = #"koto"
        \set Staff.instrumentName = "Don Giovanni"
        \DonGiovanniStaff
      >>
    \addlyrics \DonGiovanniLyrics
  >>
  \layout {}
  
  \midi {
    \tempo 4 = 72
    }


}


