\version "2.24.3"

\include "titles.ily"
instrumentText="Full Score"

\header {
  composer = \composerMarkup
  maintainer = "Patrick Paulson"
  title=\titleMarkup
  subtitle=\subtitleText
  instrument=\instrumentText
  maintainerEmail = "patrick_paulson@3rivers-ashtanga.org"
  lastupdated = "2026/Jul/03"
  version = "1.1.0"
  mutopiatitle = "Six Duos Concertants pour deux Bassons"
  mutopiacomposer = "DevienneF"
  mutopiainstrument = "2 Bassoons"
  source = "Paris: Sieber, n.d."
  style = "Classical"
  license = "Public Domain"
  maintainerEmail = "patrick@3rivers-ashtanga.org"
}

partText="x" %% ignored
\include "urtext-part-prefix.ily"


breakBefore=##f
\include "duet1/UrtextScore.ily"
\include "duet2/UrtextScore.ily"
\include "duet3/UrtextScore.ily"
\include "duet4/UrtextScore.ily"
\include "duet5/UrtextScore.ily"
\include "duet6/UrtextScore.ily"

\duetOne
\duetTwo
\duetThree
\duetFour
\duetFive
\duetSix

\include "urtext-notes.ily"

\markup {
  \left-column {
    \vspace #1
    \fill-line { \italic { "Note for Player One" } }
  }
}
\include "urtext-notes-player-one.ily"

\markup {
  \left-column {
    \vspace #1
    \fill-line { \italic { "Notes for Player Two"} }
    \vspace #1
  }
}
\include "urtext-notes-player-two.ily"
