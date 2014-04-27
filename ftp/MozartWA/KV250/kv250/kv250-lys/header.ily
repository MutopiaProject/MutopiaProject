\version "2.18.0"

\header {
  title = "Serenade in D"
  subtitle = "Haffner Serenade"
  composer = "W. A. Mozart"
  opus = "KV250"
  style = "Classical"
  license = "Public Domain"
  source = "Leipzig: Breitkopf & Härtel, n.d. Plate Orch.B. 4390. (IMSLP #54423)"
  date = "21.7.1776"
  maintainer = "Felix Janda"
  mutopiacomposer = "MozartWA"
  mutopiainstrument = "Flute, Oboe, Bassoon, Horn, Trumpet, Violin, Viola, Cello"

 footer = "Mutopia-2014/04/21-1952"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

GP = "G.P."
fermatacad = \markup {\center-align {\center-column {\italic cad. \musicglyph #"scripts.ufermata"}}}
solo="SOLO."
tutti="TUTTI."
