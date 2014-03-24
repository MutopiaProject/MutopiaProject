\version "2.18.0"

\include "includes/header.ly"
\header {
   instrument = "Bassoon"
}

\include "includes/definitions.ly"
\include "includes/allegro.ly"
\include "includes/menuettoOne.ly"
\include "includes/larghetto.ly"
\include "includes/menuettoTwo.ly"
\include "includes/rondo.ly"

\layout { }

\score {
   \bassoonAllegro
   \header {
      opus = "(1756 - 1791)"
      piece = "Allegro"
   }
}

\pageBreak
\score {
   \context Staff = "bn" <<
   \bassoonMenuettoOne
   \textUpMenuettoOne
   \textDownMenuettoOne
   >>
   \header {
      piece = "Menuetto"
   }
}

\pageBreak
\score {
   \bassoonLarghetto
   \header {
      piece = "Larghetto"
   }
}

\pageBreak
\score {
   \context Staff = "bn" <<
   \bassoonMenuettoTwo
   \textUpMenuettoTwo
   \textDownMenuettoTwo
   >>
   \header {
      piece = "Menuetto"
   }
}

\pageBreak
\score {
   \bassoonRondo
   \header {
      piece = "Rondo"
   }
}
