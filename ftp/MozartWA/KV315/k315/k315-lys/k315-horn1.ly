% -*- LilyPond -*-

\version "2.18.0"

\include "defs.ly"
\include "horn1.ly"

\score {
  \new Staff \with {
    midiInstrument = #"french horn"
	instrumentName = \markup {
      \center-column { "Corno I" "in C" }
    }
  } <<
    \set Score.skipBars = ##t
    \override Score.BarNumber.padding = #3
    \compressFullBarRests
    \time 2/4
    \tempo "Andante."
    \hornIPart
  >>

  \midi {
    \tempo 4 = 46
  }

  \layout { }
}
