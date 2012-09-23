\version "2.16.0"

Instrument = "Mandolins"
\include "header.ly"

\include "1-mand1.ly"
\include "1-mand2.ly"
\include "2-mand.ly"
\include "3-mand.ly"

#(set-global-staff-size 16)

\score {
  \context StaffGroup <<
    \context Staff = I \IMandI
    \context Staff = II \IMandII
  >>
  \header {piece = "Allegro assai" opus = "Gimo 76"}
  \layout {}
}

\score {
  \context Staff = M \IIMand

  \header {piece = "Largo"}
  \layout {}
}

\score {
  \context Staff = M \IIIMand

  \header {piece = "Allegro"}
  \layout {}
}
