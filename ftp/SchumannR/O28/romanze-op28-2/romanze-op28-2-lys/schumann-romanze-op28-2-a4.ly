\version "2.18.2"
\include "schumann-romanze-op28-2-notes.ly"

\header {
  title = "Romanzen"
  opus = "op. 28/2"
  composer = "R. Schumann (1810-1856)"
  enteredby="Rune Zedeler"
  maintainer="rune@zedeler.dk"
  mutopiatitle = "Romanzen"
  mutopiacomposer = "SchumannR"
  mutopiainstrument = "Piano"
  mutopiaopus = "Op. 28, No. 2"
  style = "Romantic"
  license = "Public Domain"
  source = "Ed. Peters"

 footer = "Mutopia-2014/11/20-314"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #11.9 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond" " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain" " by the typesetter " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

\paper {
  top-margin = 8\mm
  top-markup-spacing.basic-distance = #6
  % add space between composer/opus markup and first staff
  markup-system-spacing #'padding = #5
  % add a little space between composer and opus
  markup-markup-spacing #'padding = #1.2
  last-bottom-spacing.basic-distance = #12
  top-system-spacing.basic-distance = #12
  bottom-margin = 6\mm
}

#(set-global-staff-size 16)
#(set-default-paper-size "a4")

\layout {
  \context {
    \Staff
    \RemoveEmptyStaves
    \mergeDifferentlyDottedOn
    \mergeDifferentlyHeadedOn
    \override Fingering #'staff-padding = #'()
    \override Fingering #'add-stem-support = ##t
  }
}

\score {
  \thePianoStaff
  \layout {}
  \midi {
    \tempo 8 = 100
  }
}
