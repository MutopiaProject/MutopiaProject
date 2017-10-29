\version "2.18.2"

\header {
    title = "Prélude III."
    composer = "Claude Debussy (1862-1918)"
    opus = "CD 125; L.117"
    piece = \markup \italic \huge "Le vent dans la plaine"
    date = "1910"
    style = "Romantic"
    source = "Durand, 1910"

    maintainer = "Glen Larsen"
    maintainerEmail = "glenl.glx (at) gmail.com"
    license = "Creative Commons Attribution-ShareAlike 4.0"

    mutopiatitle = "Prélude 3: Le vent dans la plaine"
    mutopiaopus = "CD 125; L.117"
    mutopiacomposer = "DebussyC"
    mutopiainstrument = "Piano"

 footer = "Mutopia-2014/12/14-1995"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}


\paper {
  top-margin = 8\mm                              %-minimum top-margin: 8mm
  top-markup-spacing.basic-distance = #5         %-dist. from bottom of top margin to the first markup/title
  markup-system-spacing #'padding = #5
  markup-markup-spacing #'padding = #1.2
  markup-system-spacing.basic-distance = #6      %-dist. from header/title to first system
  top-system-spacing.basic-distance = #12        %-dist. from top margin to system in pages with no titles
  last-bottom-spacing.basic-distance = #11       %-pads music from copyright block
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  bottom-margin = 10\mm
}

\paper {
  top-margin = 6 \mm
  % default vertical spacing values have been multiplied by 1.5, except where noted with **
  system-system-spacing = #'((basic-distance . 18) (minimum-distance . 12) (padding . 1.5))
  % defaults are 12, 8, and 1
  score-system-spacing = #'((basic-distance . 21) (minimum-distance . 12) (padding . 1.5))
  % defaults are 14, 8, and 1
  markup-system-spacing = #'((basic-distance . 7.5) (padding . 6))
  % defaults are 5 and 0.5**
  score-markup-spacing = #'((basic-distance . 18) (padding . 0.75))
  % defaults are 12 and 0.5
  markup-markup-spacing = #'((basic-distance . 1.5) (padding . 0.75))
  % defaults are 1 and 0.5
  top-system-spacing = #'((basic-distance . 1.5) (padding . 1.5))
  % defaults are 1 and 1
  top-markup-spacing = #'((basic-distance . 4) (padding 1.5))
  % defaults are none** and 1
  last-bottom-spacing = #'((basic-distance . 1.5) (padding . 5))
  % defaults are 1 and 1**
}