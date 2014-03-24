% -*- LilyPond -*-

\version "2.18.0"

\include "defs.ly"

\include "violin1.ly"

\score {
  \new Staff \with {
    midiInstrument = #"string ensemble 1"
    instrumentName = #"Violino I"
  } <<
    \override Score.BarNumber.padding = #3
    \set Score.skipBars = ##t
    \compressFullBarRests

	\time 2/4
    \tempo "Andante."
	\violinIPart
  >>

  \midi {
    \tempo 4 = 46
  }

  \layout { }
}
