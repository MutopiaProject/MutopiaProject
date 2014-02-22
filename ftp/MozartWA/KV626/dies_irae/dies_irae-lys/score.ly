\version "2.18.0"
#(set-global-staff-size 13)

\include "corni_di_bassetto.ily"
\include "fagotti.ily"
\include "trombe.ily"
\include "timpani.ily"
\include "violino-1.ily"
\include "violino-2.ily"
\include "viola.ily"
\include "choir.ily"
\include "organo.ily"

\header {
  title = "2. Dies Irae"
  opus = "K 626"
  composer = "W. A. Mozart (1756-1791)"

  mutopiatitle = "Dies Irae"
  mutopiacomposer = "MozartWA"
  mutopiaopus = "KV 626"
  mutopiainstrument = "Orchestra, Voice"
  date = "1791"
  source = "Breitkopf & Haertel, 1877"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Martin Norbäck"
  maintainerEmail = "d95mback@dtek.chalmers.se"
  maintainerWeb = "http://norpan.org/cvs/K626/"
  lastupdated = "2003/Oct/27"
  footer = "Mutopia-2003/10/27-364"

}

\score {
  <<
    \context StaffGroup = "all" <<
      \corniDiBassettoStaff
      \fagottiStaff
      \trombeStaff
      \timpaniStaff
      \violinoAStaff
      \violinoBStaff
      \violaStaff
    >>
    \choirStaff
    \organoStaff
  >>

  \midi {
    \tempo 2 = 90
  }


  \layout {  }
}

\paper{
  indent = 2\cm
  short-indent = 1\cm

}
