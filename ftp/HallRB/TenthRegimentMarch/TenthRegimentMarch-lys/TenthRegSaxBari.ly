\version "2.18.2"
\include "TenthRegiment.ly"

\paper {
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

\header {
  instrument = "Baritone Saxophone"
}

\score {
  \new Staff  { 
    \clef treble

    << \rehearsalMarks 
       \saxBaritone >>
  }
  
  \layout { }
}

\score {
  \new Staff  { 
    \set Staff.midiInstrument = "baritone sax"

    \clef treble

    << \rehearsalMarks 
       \transpose ees c,, \saxBaritone >>
  }
  
  \midi {
    \tempo 4. = 120
  }  
}