% This file contains the full score.
\version "1.6.6"

Instrument = ""
\include "header.ly"
\include "paper16.ly"
\include "notes.ly"

\score {
  \context StaffGroup = Strings <
    \context Staff = Mandolin <
      \property Staff.midiInstrument = #"koto"
      \property Staff.instrument = "Mandolin"
      \MandolinStaff
    >
    \addlyrics
      \context Staff = DonGiovanni <
        \property Staff.midiInstrument = #"koto"
        \property Staff.instrument = "Don Giovanni"
        \DonGiovanniStaff
      >
      \context Lyrics \DonGiovanniLyrics
  >
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \midi{
    \tempo 4=72
  }
}


