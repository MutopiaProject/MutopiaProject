\version "2.18.0"
\include "english.ly"
\include "defs.ly"
\include "header.ly"
\header {
  instrument = "Corni in E [III/IV]"
}

\include "corniE2.ly"

\score {
  \new Staff \with {
    midiInstrument = #"french horn"
  } {
	\new Voice = "III IV" \theHornssecond
  }
  \layout {}
  \midi {
    \tempo 4 = 280
  }
}
