%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.18.2"
\language "english"
\include "great-gate-allegro.ily"
\include "great-gate-meno.ily"

\header {
  %title        = "La grande porte.  (Dans la capitale de Kiev.)"
  composer     = "Modest Moussorgsky (1839 - 1881)"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  date         = "1874"
  source       = "Pavel Lamm"

  mutopiatitle       = "Pictures at an Exhibition"
  mutopiacomposer    = "MussorgskyM"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"
 footer = "Mutopia-2016/12/31-475"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " 2016 " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License "\char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}

\bookpart {
  \header {
    subtitle = "No. 10 La grande porte.  (Dans la capitale de Kiev.)"
  }
  \score {
    \keepWithTag #'layout
    \new PianoStaff <<
      \new Staff = "up" {
        \clef treble
        \allegroGlobal
        \allegroUpper
        \break
        \menoGlobal
        \menoUpper
      }
      \new Staff = "down" {
        \clef bass
        \allegroGlobal
        \allegroLower
        \break
        \menoGlobal
        \menoLower
      }
    >>
    \layout {
      \context {
        \Score
        \remove "Mark_engraver"
        \consists #multi-mark-engraver
      }
    }
  }
}

% MIDI only
\score {
  \keepWithTag #'midi
  \unfoldRepeats {
    \new PianoStaff <<
      \new Staff = "up" {
        \clef treble
        \allegroGlobal
        \allegroUpper
        \break
        \menoGlobal
        \menoUpper
      }
      \new Staff = "down" {
        \clef bass
        \allegroGlobal
        \allegroLower
        \break
        \menoGlobal
        \menoLower
      }
    >>
  }
  \midi {
    \tempo 2 = 66
  }
}
