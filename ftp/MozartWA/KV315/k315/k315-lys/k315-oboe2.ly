% -*- LilyPond -*-

\version "2.18.0"

\include "defs.ly"
\include "oboe2.ly"

\score {
  \new Staff \with {
    instrumentName = #"Oboe I"
    midiInstrument = #"oboe"
  } <<
	\set Score.skipBars = ##t
    \override Score.BarNumber.padding = #3
    \compressFullBarRests

	\time 2/4
    \tempo "Andante."
	\oboeIIPart
  >>

  \midi {
    \tempo 4 = 46
  }

  \layout { }
}
