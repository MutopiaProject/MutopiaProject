\version "1.6.0"

Instrument = "Basso"
\include "header.ly"
\include "paper16.ly"
\include "global.ly"
\include "1-basso.ly"
\include "2-basso.ly"
\include "3-basso.ly"

\score {
  <
    \context Staff <\IGlobal>
    \context Staff <\IBasso>
  >
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \header { piece = "Allegro" opus="Gimo 297" }
}

\score {
  <
    \context Staff <\IIGlobal>
    \context Staff <\IIBasso>
  >
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \header { piece = "Largo" }
}

\score {
  <
    \context Staff <\IIIGlobal>
    \context Staff <\IIIBasso>
  >
  \paper {\translator {\StaffContext minimumVerticalExtent = #'(-4 . 4) }}
  \header { piece = "Allegro" }
}