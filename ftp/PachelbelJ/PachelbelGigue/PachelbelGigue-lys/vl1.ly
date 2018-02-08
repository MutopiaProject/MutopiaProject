\version "2.18.2"
\include "deutsch.ly"

\header {
  title = "Gigue"
  composer = "Johann Pachelbel"
  subtitle = \markup \center-column { "Violino 1" \vspace #3 }
}

\paper{
  left-margin = 14 \mm
  right-margin = 14 \mm
  top-margin = 14 \mm
  bottom-margin = 14 \mm
}

global = {
  \key d \major
}

\include "voices.ily"

\score {
  \violin_i

  \layout{ indent = 8 \mm }
}
