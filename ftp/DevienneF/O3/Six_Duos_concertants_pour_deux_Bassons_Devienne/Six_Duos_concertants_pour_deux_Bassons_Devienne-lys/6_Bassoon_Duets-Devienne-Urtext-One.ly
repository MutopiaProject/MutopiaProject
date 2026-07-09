\version "2.24.3"

\include "titles.ily"
instrumentText="Bassoon One"

\header {
  composer = \composerMarkup
  maintainer = "Patrick Paulson"
  title=\titleMarkup
  instrument=\instrumentText
  subtitle=\subtitleText
  maintainerEmail = "patrick_paulson@3rivers-ashtanga.org"
  lastupdated = "2026/Jul/03"
  version = "1.1.0"
  mutopiatitle = "Six Duos Concertants pour deux Bassons, Bassoon 1"
  mutopiacomposer = "DevienneF"
  mutopiainstrument = "2 Bassoons"
  source = "Paris: Sieber, n.d."
  style = "Classical"
  license = "Public Domain"
  maintainerEmail = "patrick@3rivers-ashtanga.org"
}

partText="1"
\include "urtext-part-prefix.ily"

breakBefore=##f
\include "duet1/UrtextPlayer1.ily"
breakBefore=##t
\include "duet2/UrtextPlayer1.ily"
\include "duet3/UrtextPlayer1.ily"
\include "duet4/UrtextPlayer1.ily"
breakBefore=##f
\include "duet5/UrtextPlayer1.ily"
\include "duet6/UrtextPlayer1.ily"
\duetOne
\duetTwo
\duetThree
\duetFour
\duetFive
\duetSix

\include "urtext-notes.ily"
\include "urtext-notes-player-one.ily"