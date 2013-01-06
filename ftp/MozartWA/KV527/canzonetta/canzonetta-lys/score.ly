% This file contains the full score.
\version "2.16.1"

Instrument = ""
\include "header.ly"
#(set-global-staff-size 13)
\include "notes.ly"

\score {
  <<
    \context Staff = Mandolin <<
      \set Staff.midiInstrument = #"acoustic guitar (nylon)"
      \set Staff.instrumentName = "Mandolin"
      \set Staff.shortInstrumentName = "Mand."
      \MandolinStaff
    >>
      \context Staff = DonGiovanni <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrumentName = "Don Giovanni"
	\set Staff.shortInstrumentName = "D.G."
        \DonGiovanniStaff
      >>
    \addlyrics \DonGiovanniLyrics
    \context StaffGroup = Strings <<
      \context Staff = ViolinI <<
	\set Staff.midiInstrument = #"pizzicato strings"
        \set Staff.instrumentName = "Violin I"
	\set Staff.shortInstrumentName = "V. I"
	\ViolinIStaff
      >>
      \context Staff = ViolinII << 
	\set Staff.midiInstrument = #"pizzicato strings"
        \set Staff.instrumentName = "Violin II"
	\set Staff.shortInstrumentName = "V. II"
	\ViolinIIStaff
      >>
      \context Staff = Viola <<
	\set Staff.midiInstrument = #"pizzicato strings"
        \set Staff.instrumentName = "Viola"
	\set Staff.shortInstrumentName = "Va."
	\ViolaStaff
      >>
      \context Staff = Cello <<
	\set Staff.midiInstrument = #"pizzicato strings"
        \set Staff.instrumentName = "Violoncello e Basso"
	\set Staff.shortInstrumentName = "Vc. e B."
	\CelloStaff
      >>
    >>
  >>
  \layout { }
  
  \midi {
    \tempo 4 = 72
    }


}
