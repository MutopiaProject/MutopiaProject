\version "2.16.0"

Instrument = ""
\include "header.ly"
#(set-global-staff-size 16)

\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

\score {
  \context Staff = Basso <<\IBasso>>
  \header {piece = "Allegro" opus = "Gimo 145"}
  \layout {}
}

\score {
  \context Staff = Basso <<\IIBasso>>
  \header {piece = "Larghetto. Andantino grazioso."}
  \layout {}
}

\score {
  \context Staff = Basso <<\IIIBasso>>
  \header {piece = "Allegro con molto Spirito"}
  \layout {}
}
