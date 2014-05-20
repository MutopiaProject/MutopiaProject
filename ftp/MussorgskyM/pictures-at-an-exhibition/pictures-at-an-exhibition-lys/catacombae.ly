%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.18.2"
\language "english"

\header {
  title        = "Catacombae. Sepulcrum romanum."
  composer     = "Modest Moussorgsky (1839 - 1881)"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2014/May/20"
  date         = "1874"
  source       = "Pavel Lamm (1882-1951)"

  mutopiatitle       = "Pictures at an Exhibition"
  mutopiacomposer    = "MussorgskyM"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"
}

dimin = \markup { \italic "dim." }
attacca = \markup { \italic "attacca" }

upper = \relative c' {
}

lower = \relative c {
  
}

global = {
  \clef bass
  \time 3/4
  \accidentalStyle piano
}

\score {
  \new PianoStaff <<
    \new Staff = "up" {
      \global
      \upper
    }
    \new Staff = "down" {
      \global
      \lower
    }
  >>
  \layout {
  }
  \midi {
    \tempo 4 = 60
  }
}
