\version "2.16.0"

Instrument = "Mandolin"
\include "header.ly"
#(set-global-staff-size 16)
\include "global.ly"
\include "1-mand.ly"
\include "2-mand.ly"
\include "3-mand.ly"

\score {
  <<
    \context Staff \IGlobal
    \context Staff \IMand
  >>
  \layout {}
  \header { piece = "Allegro" opus = "Gimo 297" }
}

\score {
  <<
    \context Staff \IIGlobal
    \context Staff \IIMand
  >>
  \layout {}
  \header { piece = "Largo" }
}

\score {
  <<
    \context Staff \IIIGlobal
    \context Staff \IIIMand
  >>
  \layout {}
  \header { piece = "Allegro" }
}
