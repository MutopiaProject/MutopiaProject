\version "2.16.0"
\header {
  title = "A Second Sett of Six Duetts for a Violin & Tenor"
  opus = "Op. 2 No. 4"
  composer = "Benjamin Blake"
  mutopiatitle = "A Second Sett of Six Duetts for a Violin & Tenor: No. 4"
  mutopiacomposer = "BlakeB"
  mutopiainstrument = "Violin, Viola"
  source = "London: J. Blundell, [1781]"
  date = "1781"
  style = "Baroque"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Huw Richards"
  maintainerEmail = "ahr (at) eng.cam.ac.uk"

 footer = "Mutopia-2013/08/18-1858"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \abs-fontsize #10 \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 MutopiaProject \abs-fontsize #8 .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \abs-fontsize #10 \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \abs-fontsize #8 www. \abs-fontsize #11 LilyPond \abs-fontsize #8 .org }} by \concat { \maintainer . } \hspace #0.5 Copyright © 2013. \hspace #0.5 Reference: \footer } } \line { \abs-fontsize #8 \line { Licensed under the Creative Commons Attribution-ShareAlike 3.0 (Unported) License, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/by-sa/3.0" http://creativecommons.org/licenses/by-sa/3.0 } } } } }
}

\paper {
  markup-system-spacing #'padding = #4
  top-margin = 12
  bottom-margin = 12
}

% Since Blake didn't use hairpins, force text dynamics
\layout {
  \context Voice {
    \override DynamicTextSpanner #'style = #'none
    \crescTextCresc
    \dimTextDecresc
    \dimTextDim
  }
}
