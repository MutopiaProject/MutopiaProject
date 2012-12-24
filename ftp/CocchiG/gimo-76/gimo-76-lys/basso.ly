\version "2.16.0"

Instrument = "Basso"
\include "header.ly"

\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

#(set-global-staff-size 16)

\score {
  \context Staff = Basso \IBasso

  \header {piece = "Allegro assai" opus = "Gimo 76"}
  \layout {}
}

\score {
  \context Staff = Basso \IIBasso

  \header {piece = "Largo"}
  \layout {}
}

\score {
  \context Staff = Basso \IIIBasso

  \header {piece = "Allegro"}
  \layout {}
}

