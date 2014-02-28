\version "2.18.0"
\include "english.ly"
\include "defs.ly"
\include "header.ly"
\header {
  instrument = "Timpani in E/H"
}

\include "timpani.ly"

\score {
  \new Staff \with {
    midiInstrument = #"timpani"
  } {
    \new Voice = "Tmipani in E-H" \theTimpani
  }
  \layout {}
  \midi {
    \tempo 4 = 280
  }
}
