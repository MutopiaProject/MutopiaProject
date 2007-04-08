\version "1.6.0"

Instrument = "Violin II"
\include "header.ly"
\include "paper16.ly"
\include "global.ly"
\include "1-vln2.ly"
\include "2-vln2.ly"
\include "3-vln2.ly"

\score {
  <
    \context Staff <\IGlobal>
    \context Staff <\IViolinII>
  >
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \header { piece = "Allegro" opus="Gimo 297" }
}

\score {
  <
    \context Staff <\IIGlobal>
    \context Staff <\IIViolinII>
  >
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \header { piece = "Largo" }
}


\score {
  <
    \context Staff <\IIIGlobal>
    \context Staff <\IIIViolinII>
  >
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \header { piece = "Allegro" }
}




