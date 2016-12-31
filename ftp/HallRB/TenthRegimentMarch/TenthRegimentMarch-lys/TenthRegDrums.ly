\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Drums"
}

\score {
  \new DrumStaff  { 
    \set Staff.midiInstrument = "synth drum" 
    
    << \rehearsalMarks 
       \drumSnareBass >>
  }
  
  \layout { }
  \midi {
    \tempo 4. = 120
  }
}