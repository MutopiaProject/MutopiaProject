\version "2.24.3"
\pageBreak
\markuplist \table-of-contents
\pageBreak


\header {
  title = \markup \center-column {
    \line { Six Duos pour deux bassons }
  }
  composer = "Étienne Ozi"
  maintainer = "Patrick Paulson"
  maintainerEmail = "patrick_paulson@3rivers-ashtanga.org"
  lastupdated = "2026/Mar/07"
  version = "1.1.0"
  mutopiatitle = "Six Duos pour deux bassons"
  mutopiacomposer = OziE
  mutopiainstrument = "2 Bassoons"
  source = "l'imprimerie du Conservatoire, n.d."
  style = "Classical"
  license = "Public Domain"
  maintainerEmail = "patrick@3rivers-ashtanga.org"
}


\tocItem \markup "Preface"

\markup {
  \left-column {
    \fill-line { \bold { Preface } }
    \wordwrap {
      From \override #'(padding . 0.1) \auto-footnote "Wikipedia"
      "https://en.wikipedia.org/wiki/Étienne_Ozi"  we know Ozi lived from 1754 to 1813. His
      \italic { Nouvelle Méthode de Basson }, published in 1803, was
      a complete method for the bassoon, and his methods were
      adopted by the Paris Conservatory. I've not found a date for Ozi's
      \italic { Six Duos pour deux bassons }.
    }
    \vspace #1
    \wordwrap {
      This \bold { Urtext } edition
      starts attempts to engrave the original source
      using modern notation conventions that can be used in performance. 
    }
    \vspace #1
    \fill-line {
      \hspace #1
      \right-column {
        \line { Patrick Paulson}
        \line { patrick_paulson@3rivers-ashtanga.org}
        \line { March, 2026}
      }
    }
  }
}


tocVersionItem = {}
tocPlayerItem = \tocItem version.player  "Second Player"


\include "duet1UrtextPlayer2.ily"
\include "duet2UrtextPlayer2.ily"
\include "duet3UrtextPlayer2.ily"
\include "duet4UrtextPlayer2.ily"
\include "duet5UrtextPlayer2.ily"
\include "duet6UrtextPlayer2.ily"

\duetOne
\duetTwo
\duetThree
\duetFour
\pageTurn
\duetFive
\duetSix

\include "urtext-notes.ily"
\include "urtext-notes-for-player-two.ily"

