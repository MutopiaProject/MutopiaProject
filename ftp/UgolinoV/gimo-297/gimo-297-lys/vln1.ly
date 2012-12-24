\version "2.16.0"

Instrument = "Violin I"
\include "header.ly"
#(set-global-staff-size 16)
\include "global.ly"
\include "1-vln1.ly"
\include "2-vln1.ly"
\include "3-vln1.ly"

\score {
  <<
    \context Staff \IGlobal
    \context Staff \IViolinI
  >>
  \layout {}
  \header { piece = "Allegro" opus="Gimo 297" }
}

\score {
  <<
    \context Staff \IIGlobal
    \context Staff \IIViolinI
  >>
  \layout {}
  % NOTE: It was written "Adagio" in the manuscript, but ONLY in
  % the violin I part.
  \header { piece = "Largo" }
}


\score {
  <<
    \context Staff \IIIGlobal
    \context Staff \IIIViolinI
  >>
  \layout {}
  \header { piece = "Allegro" }
}
