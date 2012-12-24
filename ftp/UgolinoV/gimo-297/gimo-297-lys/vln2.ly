\version "2.16.0"

Instrument = "Violin II"
\include "header.ly"
#(set-global-staff-size 16)
\include "global.ly"
\include "1-vln2.ly"
\include "2-vln2.ly"
\include "3-vln2.ly"

\score {
  <<
    \context Staff <<\IGlobal>>
    \context Staff <<\IViolinII>>
  >>
  \layout {}
  \header { piece = "Allegro" opus="Gimo 297" }
}

\score {
  <<
    \context Staff <<\IIGlobal>>
    \context Staff <<\IIViolinII>>
  >>
  \layout {}
  \header { piece = "Largo" }
}


\score {
  <<
    \context Staff <<\IIIGlobal>>
    \context Staff <<\IIIViolinII>>
  >>
  \layout {}
  \header { piece = "Allegro" }
}
