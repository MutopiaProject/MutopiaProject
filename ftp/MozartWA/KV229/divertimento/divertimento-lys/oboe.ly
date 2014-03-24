\version "2.18.0"

\include "includes/header.ly"
\header {
   instrument = "Oboe"
}

\include "includes/definitions.ly"
\include "includes/allegro.ly"
\include "includes/menuettoOne.ly"
\include "includes/larghetto.ly"
\include "includes/menuettoTwo.ly"
\include "includes/rondo.ly"

\layout { }

\score {
   \oboeAllegro
   \header {
      opus = "(1756 - 1791)"
      piece = "Allegro"
   }
}

\pageBreak
\score {
   \context Staff = "ob" <<
   \oboeMenuettoOne
   \textUpMenuettoOne
   \textDownMenuettoOne
   >>
   \header {
      piece = "Menuetto"
   }
}

\pageBreak
\score {
   \oboeLarghetto
   \header {
      piece = "Larghetto"
   }
}

\pageBreak
\score {
   \context Staff = "ob" <<
   \oboeMenuettoTwo
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
   \oboeRondo
>>
   \header {
      piece = "Rondo"
   }
}
