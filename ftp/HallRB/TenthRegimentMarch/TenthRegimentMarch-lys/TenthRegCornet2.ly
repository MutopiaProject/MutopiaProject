\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Cornet 2"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "trumpet"

    \clef treble
    << \rehearsalMarks 
       \cornetTwo >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}