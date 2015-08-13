\version "2.16.0"
\header {
  title = "Rondo Alla Turca"
  subtitle = "Turkish March"
  composer = "W. A. Mozart"
  piece = "Allegretto"
  mutopiatitle = "Sonate Opus KV 331 - Rondo Alla Turca"
  mutopiacomposer = "MozartWA"
  mutopiainstrument = "Piano"
  mutopiaopus = "KV 331"
  style = "Classical"
  license = "Public Domain"
  source = "IMSLP"

  maintainer = "Rune Zedeler and Chris Sawer"
  maintainerEmail = "chris@mutopiaproject.org"

 footer = "Mutopia-2015/08/13-108"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\include "KV331_3_RondoAllaTurcaNotes.ly"

\score {
  \new PianoStaff
  <<
    \new Staff {
      \time 2/4
      
      \right
    }
    \new Dynamics {
      \override DynamicTextSpanner #'style = #'none
      \dynamics
    }
    \new Staff {
      \left
    }
  >>
  \layout {}
  \midi {}
}
