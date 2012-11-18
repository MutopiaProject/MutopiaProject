\version "2.16.0"

% Contains the full score.
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
    \context Staff = A \IMandI
    \context Staff = B \IMandII
    \context Staff = C \IBasso
  >>
  \header {piece = "Allegro spiritoso assai" opus = "Gimo 149"}
  \layout {}
  
  \midi {
    \tempo 4 = 100
    }


}

\score {
  \context StaffGroup <<
    \context Staff = A \IIMandI
    \context Staff = B \IIMandII
    \context Staff = C \IIBasso
  >>
  \header {piece = "Larghetto Andantino" }
  \layout {}
  
  \midi {
    \tempo 4. = 80
    }


}

\score {
  \context StaffGroup <<
    \context Staff = A \IIIMandI
    \context Staff = B \IIIMandII
    \context Staff = C \IIIBasso
  >>
  \header {piece = "Allegro assai spiritoso" }
  \layout {}
  
  \midi {
    \tempo 4 = 144
    }


}
