% -*- LilyPond -*-

\version "2.18.0"

\include "defs.ly"
\include "horn2.ly"

\score {
  \new Staff \with {
    midiInstrument = #"french horn"
	instrumentName = \markup {
      \center-column { "Corno II" "in C" }
    }
  } <<
    \set Score.skipBars = ##t
    \override Score.BarNumber.padding = #3
    \compressFullBarRests

    \time 2/4
    \tempo "Andante."
    \hornIIPart
  >>

  \midi {
    \tempo 4 = 46
  }

  \layout { }
}
