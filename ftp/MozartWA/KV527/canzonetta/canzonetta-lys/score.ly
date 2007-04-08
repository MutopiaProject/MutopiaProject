% This file contains the full score.
\version "1.6.6"

Instrument = ""
\include "header.ly"
\include "paper13.ly"
\include "notes.ly"

\score {
  <
    \context Staff = Mandolin <
      \property Staff.midiInstrument = #"acoustic guitar (nylon)"
      \property Staff.instrument = "Mandolin"
      \property Staff.instr = "Mand."
      \MandolinStaff
    >
    \addlyrics
      \context Staff = DonGiovanni <
        \property Staff.midiInstrument = #"cello"
        \property Staff.instrument = "Don Giovanni"
	\property Staff.instr = "D.G."
        \DonGiovanniStaff
      >
      \context Lyrics \DonGiovanniLyrics
    \context StaffGroup = Strings <
      \context Staff = ViolinI <
	\property Staff.midiInstrument = #"pizzicato strings"
        \property Staff.instrument = "Violin I"
	\property Staff.instr = "V. I"
	\ViolinIStaff
      >
      \context Staff = ViolinII < 
	\property Staff.midiInstrument = #"pizzicato strings"
        \property Staff.instrument = "Violin II"
	\property Staff.instr = "V. II"
	\ViolinIIStaff
      >
      \context Staff = Viola <
	\property Staff.midiInstrument = #"pizzicato strings"
        \property Staff.instrument = "Viola"
	\property Staff.instr = "Va."
	\ViolaStaff
      >
      \context Staff = Cello <
	\property Staff.midiInstrument = #"pizzicato strings"
        \property Staff.instrument = "Violoncello e Basso"
	\property Staff.instr = "Vc. e B."
	\CelloStaff
      >
    >
  >
  \paper {
   \translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }
   linewidth = 18.0 \cm
  }
  \midi{
    \tempo 4=72
  }
}



