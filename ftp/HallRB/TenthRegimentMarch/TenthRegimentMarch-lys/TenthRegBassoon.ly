\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Bassoon"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "bassoon"

    \clef bass
    << \rehearsalMarks 
       \bassoonOne >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}