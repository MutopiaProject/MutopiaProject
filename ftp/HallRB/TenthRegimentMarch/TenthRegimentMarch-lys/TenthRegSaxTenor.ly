\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Tenor Saxophone"
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "tenor sax"

    \clef treble
    << \rehearsalMarks 
       \saxTenor >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}