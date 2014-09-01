\version "2.19.7"

\header {
  title = "12 duets"
  composer = "W. A. Mozart (1756-1791)"

  mutopiatitle = "12 duets"
  mutopiacomposer = "MozartWA"
  mutopiaopus = "KV487"
  mutopiainstrument = "Horn"
  source = "see README"
  style = "Classical"
  copyright = "Public Domain"
  maintainer = "Han-Wen Nienhuys"
  maintainerEmail = "hanwen@xs4all.nl"
  lastupdated = "2004/Jan/12"
  tagline = ##f
  footer = "Mutopia-2004/01/12-392"
  copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
  opus = "K.V. 487"
}

\paper {
  ragged-last-bottom = ##f
  % previously
  line-width = 18.0\cm
  % but looked asymetrical
  left-margin = 15\mm
  right-margin = 15\mm
}
