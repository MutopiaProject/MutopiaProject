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

 footer = "Mutopia-2013/07/07-1844"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
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
