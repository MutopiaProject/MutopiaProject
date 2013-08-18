\version "2.16.0"
\header {
  title = "A Second Sett of Six Duetts for a Violin & Tenor"
  opus = "Op. 2 No. 3"
  composer = "Benjamin Blake"
  mutopiacomposer = "BlakeB"
  mutopiainstrument = "Violin, Viola"
  source = "London: J. Blundell, [1781]"
  date = "1781"
  style = "Baroque"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
  maintainer = "Huw Richards"
  maintainerEmail = "ahr (at) eng.cam.ac.uk"
  %moreInfo = ""
 footer = "Mutopia-2013/08/04-0"
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
