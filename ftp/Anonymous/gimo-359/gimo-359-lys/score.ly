\version "2.16.0"

Instrument = ""
\include "header.ly"

\include "1-mand1.ly"
\include "1-mand2.ly"
\include "1-basso.ly"
\include "2-mand1.ly"
\include "2-mand2.ly"
\include "2-basso.ly"
\include "3-mand1.ly"
\include "3-mand2.ly"
\include "3-basso.ly"

#(set-global-staff-size 16)

\score {
  \context StaffGroup <<
    \context Staff = I \IMandI
    \context Staff = II \IMandII
    \context Staff = Basso \IBasso
  >>
  \header {piece = "" opus = "Gimo 359"}
  \layout {}
  \midi {
    \tempo 4 = 90
    }
}

\score {
  \context StaffGroup <<
    \context Staff = I \IIMandI
    \context Staff = II \IIMandII
    \context Staff = Basso \IIBasso
  >>
  \header {piece = "Largo"}
  \layout {}
  \midi {
    \tempo 4 = 90
    }
}

\score {
  \context StaffGroup <<
    \context Staff = I \IIIMandI
    \context Staff = II \IIIMandII
    \context Staff = Basso \IIIBasso
  >>
  \header {piece = "Allegro"}
  \layout {}
  \midi {
    \tempo 4 = 90
    }
}
