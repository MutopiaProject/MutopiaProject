\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Euphonium"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "trombone"

    \clef bass 
    << \rehearsalMarks 
       \transpose c bes,, \baritoneTC >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}