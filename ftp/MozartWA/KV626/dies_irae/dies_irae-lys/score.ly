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
  maintainer = "Martin Norbäck" % updated by Francisco Vila <paconet.org@gmail.com>, 2014
  maintainerEmail = "d95mback@dtek.chalmers.se"
  maintainerWeb = "http://norpan.org/cvs/K626/"
  lastupdated = "2014/Feb/22"
  footer = "Mutopia-2003/10/27-364"
  tagline = ##f % "Public Domain"
  copyright = \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Public domain " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }

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
