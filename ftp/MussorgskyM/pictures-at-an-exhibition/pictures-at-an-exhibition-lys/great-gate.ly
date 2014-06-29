%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.18.2"
\language "english"
\include "great-gate-allegro.ily"
\include "great-gate-meno.ily"

\header {
  title        = "La grande porte.  (Dans la capitale de Kiev.)"
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
}

\score {
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
  \midi {
    \tempo 2 = 60
  }
}
