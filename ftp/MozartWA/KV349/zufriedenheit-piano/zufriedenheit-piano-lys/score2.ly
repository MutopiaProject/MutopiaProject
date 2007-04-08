\version "1.6.4"

Instrument = ""
\include "header2.ly"
\include "notes2.ly"

\include "paper20.ly"

\score {
  <
    \addlyrics
      \context Staff = Voice <
        \property Staff.midiInstrument = "cello"
%        \property Staff.instrument = ""
        \Voice
      >
      \context Lyrics \Lyr
    \Piano
  >

  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=100}
  \header { piece = "M\\\"a\\ss ig" }
}

