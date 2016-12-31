\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Alto Saxophone"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "alto sax"

    \clef treble
    << \rehearsalMarks 
       \saxAlto >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}