\version "2.18.2"
\include "deutsch.ly"

\header {
  title = "Gigue"
  composer = "Johann Pachelbel"
  subtitle = \markup \center-column { "Basso" \vspace #3 }
}

\paper{
  left-margin = 16 \mm
  right-margin = 16 \mm
  top-margin = 14 \mm
  bottom-margin = 14 \mm
}

global = {
  \key d \major
}

\include "voices.ily"

\score {
  \bass

  \layout{ indent = 8 \mm }
}
