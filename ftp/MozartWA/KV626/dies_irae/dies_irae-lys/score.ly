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
  mutopiainstrument = "Voice (SATB), Orchestra: Basset Horns in F, Bassoon, Trumpet in D, Timpani, Violins, Viola, Cello, Organ/Bass"
  date = "1791"
  source = "Breitkopf & Haertel, 1877"
  style = "Classical"
  license = "Public Domain"
  maintainer = "Martin Norbäck"
  % updated by Francisco Vila <paconet.org@gmail.com>, 2014
  maintainerEmail = "d95mback@dtek.chalmers.se"
  maintainerWeb = "http://norpan.org/cvs/K626/"
  lastupdated = "2014/Feb/22"

  moreInfo = "<p>The Breitkopf &amp; Haertel edition used as the source was published in 1877, edited by Johannes Brahms (1833-1897).</p><p>It is also called the &quot;Süssmayr&quot; version, because Franz Xaver Süssmayr (1766-1803) took credit for completing the Requiem after Mozart's death. There is much rumor as to who else was involved.</p>"

 footer = "Mutopia-2014/03/24-364"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
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
