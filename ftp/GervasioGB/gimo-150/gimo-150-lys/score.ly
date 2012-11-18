\version "2.16.0"

% Contains the full score.
Instrument = ""
\include "header.ly"
#(set-global-staff-size 16)
\include "1-mand1.ly"
\include "1-mand2.ly"
\include "1-basso.ly"
\include "2-mand1.ly"
\include "2-mand2.ly"
\include "2-basso.ly"
\include "3-mand1.ly"
\include "3-mand2.ly"
\include "3-basso.ly"

\score {
  \context StaffGroup <<
    \context Staff = A \IMandI
    \context Staff = B \IMandII
    \context Staff = C \IBasso
  >>
  \layout {}
  
  \midi {
    \tempo 4 = 60
    }


  \header {piece = "Allegro e Custoso assai" opus = "Gimo 150"}
}

\score {
  \context StaffGroup <<
    \context Staff = A \IIMandI
    \context Staff = B \IIMandII
    \context Staff = C \IIBasso
  >>
  \layout {}
  
  \midi {
    \tempo 4 = 60
    }


  \header {piece = "Largo" }
}

\score {
  \context StaffGroup <<
    \context Staff = A \IIIMandI
    \context Staff = B \IIIMandII
    \context Staff = C \IIIBasso
  >>
  \layout {}
  
  \midi {
    \tempo 4 = 144
    }


  \header {piece = "Allegro alla Prussiana" }
}
