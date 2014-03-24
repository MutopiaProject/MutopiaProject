\version "2.18.0"

\include "includes/header.ly"
\header {
   instrument = "Clarinet"
}

\include "includes/definitions.ly"
\include "includes/allegro.ly"
\include "includes/menuettoOne.ly"
\include "includes/larghetto.ly"
\include "includes/menuettoTwo.ly"
\include "includes/rondo.ly"

\layout { }

\score {
   \clarinetAllegro
   \header {
      opus = "(1756 - 1791)"
      piece = "Allegro"
   }
}

\score {
   \context Staff = "cl" <<
   \clarinetMenuettoOne
   \textUpMenuettoOne
   \textDownMenuettoOne
   >>
   \header {
      piece = "Menuetto"
   }
}

\pageBreak
\score {
   \clarinetLarghetto
   \header {
      piece = "Larghetto"
   }
}

\pageBreak
\score {
   \context Staff = "cl" <<
   \clarinetMenuettoTwo
   \textUpMenuettoTwo
   \textDownMenuettoTwo
   >>
   \header {
      piece = "Menuetto"
   }
}

\pageBreak
\score {
<<
   \override Score.BarNumber.padding = #2
   \clarinetRondo
>>
   \header {
      piece = "Rondo"
   }
}
