%%%\version "2.24.3"
%%%
%%%\pageBreak
%%%\markuplist \table-of-contents
%%%\pageBreak
%%%
%%%\include "titles.ily"
%%%\header {
%%%  title = \markup \center-column {
%%%    \line { Six Duos pour deux bassons }
%%%  }
%%%  composer = "Devienne, François"
%%%  maintainer = "Patrick Paulson"
%%%  title="Six Duos Concertants pour deux Bassons"
%%%  maintainerEmail = "patrick_paulson@3rivers-ashtanga.org"
%%%  lastupdated = "2026/Jul/03"
%%%  version = "1.1.0"
%%%  mutopiatitle = "Six Duos Concertants pour deux Bassons"
%%%  mutopiacomposer = DevienneF
%%%  mutopiainstrument = "2 Bassoons"
%%%  source = "Paris: Sieber, n.d."
%%%  style = "Classical"
%%%  license = "Public Domain"
%%%  maintainerEmail = "patrick@3rivers-ashtanga.org"
%%%}
%%%
%%%\include "urtext-front-matter.ily"
%%%\include "urtext-definitions.ily"
%%%
%%%subsubtitleMarkup = \markup \center-column {
%%%  \line {
%%%    \italic { Player 2 }
%%%    \line { }
%%%  }
%%%}
%%%
%%%
%%%
%%%
%%%breakBefore=##t
%%%\include "titles.ily"
%%%\include "urtext-front-matter.ily"
%%%\include "urtext-definitions.ily"
%%%
%%%subsubtitleMarkup = \markup \center-column {
%%%  \line {
%%%    \italic { Player 2 }
%%%    \line { }
%%%  }
%%%}

\version "2.24.3"

\include "titles.ily"
instrumentText="Bassoon One"


\header {
  composer = \composerMarkup
  maintainer = "Patrick Paulson"
  title=\titleMarkup
  subtitle=\subtitleText
  instrument=\instrumentText
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

partText="2"
\include "urtext-part-prefix.ily"

breakBefore=##f
fullScore = ##t
\include "duet1/UrtextPlayer2.ily"
breakBefore=##t
\include "duet2/UrtextPlayer2.ily"
\include "duet3/UrtextPlayer2.ily"
\include "duet4/UrtextPlayer2.ily"
breakBefore=##f
\include "duet5/UrtextPlayer2.ily"
breakBefore=##t
\include "duet6/UrtextPlayer2.ily"

\duetOne
\duetTwo
\duetThree
\duetFour
\duetFive
\duetSix

\include "urtext-notes.ily"
\include "urtext-notes-player-two.ily"