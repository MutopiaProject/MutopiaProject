\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "E♭ Clarinet"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "clarinet"

    \clef treble
    << \rehearsalMarks 
       \transpose ees c \keepWithTag #'clarEb \fluteOne >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}