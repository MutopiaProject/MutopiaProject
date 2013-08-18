\version "2.16.1"
\header {
  title = "Sei Duetti a Due Viole"
  opus = "(Torinesi manuscript, BI uncatalogued)"
  composer = "Allessandro Rolla (1757 - 1841)"

  mutopiatitle = "Sei Duetti a Due Viole"
  mutopiacomposer = "RollaA"
  mutopiainstrument = "Viola"
  source = " 'Torinesi' Manuscripts downloaded from http://imslp.org/"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Huw Richards"
  maintainerEmail = "huw.richards (at) eng.cam.ac.uk"

 footer = "Mutopia-2013/08/18-1861"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\paper {
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #3
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  top-margin = #8
  bottom-margin = #10
}
