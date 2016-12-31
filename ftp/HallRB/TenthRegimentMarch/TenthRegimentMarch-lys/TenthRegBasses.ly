\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Basses"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "tuba"

    \clef bass
    << \rehearsalMarks 
       \basses >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}