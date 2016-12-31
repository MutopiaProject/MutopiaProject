\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Flute 1 and Piccolo"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "flute"

    \clef treble
    << \rehearsalMarks 
       \keepWithTag #'fluteOne \fluteOne >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}