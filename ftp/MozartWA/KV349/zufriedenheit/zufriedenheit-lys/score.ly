\version "1.6.4"

Instrument = ""
\include "header.ly"
\include "notes.ly"

\include "paper20.ly"

\score {
  \context StaffGroup <
    \addlyrics
      \context Staff = Voice <
        \property Staff.midiInstrument = "cello"
%        \property Staff.instrument = ""
        \Voice
      >
      \context Lyrics \Lyr
    \context Staff = Mandolin <
      \property Staff.midiInstrument = "acoustic guitar (steel)"
%      \property Staff.instrument = "Mandolin"
      \Mand
      \Marks
    >
  >

  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi {\tempo 4=100}
  \header { piece = "M\\\"a\\ss ig" }
}
