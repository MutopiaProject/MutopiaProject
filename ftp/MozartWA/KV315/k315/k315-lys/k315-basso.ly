% -*- LilyPond -*-

\version "2.18.0"

\include "defs.ly"
\include "basso.ly"

\score {
  \new Staff \with {
    midiInstrument = #"string ensemble 1"
    instrumentName = \markup {
      \center-column { "Violoncello" "e Basso." }
    }
  } <<
    \override Score.BarNumber.padding = #3
    \set Score.skipBars = ##t
    \compressFullBarRests

    \tempo "Andante."
	\time 2/4
	\bassoPart
  >>

  \midi {
    \tempo 4 = 46
  }

  \layout { }
}
