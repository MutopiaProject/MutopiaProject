% -*- LilyPond -*-

\version "2.18.0"

\include "defs.ly"
\include "flute.ly"

\score {
  \new Staff = "flute" \with {
    midiInstrument = #"flute"
    instrumentName = \markup {
      \center-column { "Flauto traverso" "principale." }
    }
  } <<
    \override Score.BarNumber.padding = #3
    \compressFullBarRests

    \time 2/4
    \tempo "Andante."
    \flutePart
  >>

  \midi {
    \tempo 4 = 46
  }

  \layout {
    indent = 24 \mm
  }
}
