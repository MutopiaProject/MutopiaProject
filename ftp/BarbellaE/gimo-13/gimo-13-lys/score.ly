\version "2.16.0"

Instrument = ""
\include "header.ly"
\include "1-mand1.ly"
\include "1-mand2.ly"
\include "2-mand1.ly"
\include "2-mand2.ly"
\include "3-mand1.ly"
\include "3-mand2.ly"
\include "4-mand1.ly"
\include "4-mand2.ly"

#(set-global-staff-size 16)

\score {
  \context StaffGroup <<
    \context Staff = I \IMandI
    \context Staff = II \IMandII
  >>

  \header {piece = "Larghetto e staccato" opus = "Gimo 13" }
  \layout {}
  
  \midi {
    \tempo 4 = 60
    }


}

\score {
  \context StaffGroup <<
    \context Staff = I \IIMandI
    \context Staff = II \IIMandII
  >>

  \header {piece = "Allegretto"}
  \layout {}
  
  \midi {
    \tempo 4 = 100
    }


}

\score {
  \context StaffGroup <<
    \context Staff = I \IIIMandI
    \context Staff = II \IIIMandII
  >>

  \header {piece = "Minuetto. Alla francese"}
  \layout {}
  
  \midi {
    \tempo 4 = 140
    }


}

\score {
  \context StaffGroup <<
    \context Staff = I <<\IVMandI>>
    \context Staff = II <<\IVMandII>>
  >>

  \header {piece = "Gavotta"}
  \layout {}
  
  \midi {
    \tempo 4 = 140
    }


}

