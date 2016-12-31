\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Baritone TC"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "trombone"

    \clef treble
    << \rehearsalMarks 
       \baritoneTC >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}