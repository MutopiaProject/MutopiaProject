% -*- LilyPond -*-

\version "2.18.0"

\include "defs.ly"
\include "violin2.ly"

\score {
  \new Staff \with {
    midiInstrument = #"string ensemble 1"
    instrumentName = #"Violino II"
  } <<
    \override Score.BarNumber.padding = #3
    \set Score.skipBars = ##t
    \compressFullBarRests

    \time 2/4
    \tempo "Andante."
    \violinIIPart
  >>

  \midi {
    \tempo 4 = 46
  }

  \layout { }
}
