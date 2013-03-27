\version "2.16.0"

Instrument = "Basso"
\include "header.ly"
#(set-global-staff-size 16)
\include "global.ly"
\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

\score {
  <<
    \context Staff <<\IGlobal>>
    \context Staff <<\IBasso>>
  >>
  \layout {}
  \header { piece = "Allegro" opus="Gimo 297" }
}

\score {
  <<
    \context Staff <<\IIGlobal>>
    \context Staff <<\IIBasso>>
  >>
  \layout {}
  \header { piece = "Largo" }
}

\score {
  <<
    \context Staff <<\IIIGlobal>>
    \context Staff <<\IIIBasso>>
  >>
  \layout {}
  \header { piece = "Allegro" }
}
