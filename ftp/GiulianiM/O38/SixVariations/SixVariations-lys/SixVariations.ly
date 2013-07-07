\version "2.16.1"

\header {
  title = "Six Variations for Guitar"
  composer = "Mauro Giuliani"
  opus = "Op. 38"
  mutopiainstrument = "Guitar"
  mutopiacomposer = "GiulianiM"
  style = "Classical"
  date = "c.1812"
  source = "Imprint: a Vienne chez Artaria et Comp. No. 2264"
  % Boije 234
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Glen Larsen"
  maintainerEmail = "glenl.glx@gmail.com"
  keywords = "Mutopia-2012/03/02-1842"
 footer = "Mutopia-2013/05/14-1842"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

\paper {
  top-margin = 10
}

\include "thema.ly"
\include "vari.ly"
\include "varii.ly"
\include "variii.ly"
\include "variv.ly"
\include "varv.ly"
\include "varvi.ly"
