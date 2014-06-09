%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.18.2"
\language "english"
\include "baba-allegro-brio.ily"
\include "baba-andante.ily"
\include "baba-allegro-molto.ily"

\header {
  title        = "La cabane sur des pattes de poule (Baba-Jaga)"
  composer     = "Modest Moussorgsky (1839 - 1881)"
  style        = "Romantic"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2014/May/25"
  date         = "1874"
  source       = "Pavel Lamm"

  mutopiatitle       = "Pictures at an Exhibition"
  mutopiacomposer    = "MussorgskyM"
  mutopiainstrument  = "Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"
}

%showLastLength = R2*90
\score {
  \new PianoStaff <<
    \new Staff = "up" {
      \override DynamicTextSpanner #'dash-period = #-1.0 
      \clef treble
      \globalAllegroBrio
      \upperAllegroBrio
      \globalAndante
      \upperAndante
      \globalAllegroMolto
      \upperAllegroMolto
    }
    \new Staff = "down" {
      \clef bass
      \globalAllegroBrio
      \lowerAllegroBrio
      \globalAndante
      \lowerAntante
      \globalAllegroMolto
      \lowerAllegroMolto
    }
  >>
  \layout {
  }
  \midi {
  }
}
