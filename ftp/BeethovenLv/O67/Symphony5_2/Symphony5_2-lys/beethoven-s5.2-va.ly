\version "2.16.2"


#(set-global-staff-size 21)

\include "viola.ly"
\include "struktur.ly"

\include "jhe-title.ly"


\header {
 instrument = "Viola"
}



\paper {
  print-page-number = ##t
  tagline = "" % \markup { \tiny "jhe 2017" }
}


\score {
 \context StaffGroup {
    \context Staff = "ungTanzVvc"
    <<
      \context Voice = "text" \struktur
      \context Voice = vc \viola
    >>
   }

  \layout { 
    \context {
      \Staff \RemoveEmptyStaves
      %% To use the setting globally, uncomment the following line:
      \override VerticalAxisGroup #'remove-first = ##t
       
    }
  }
 \midi {  
    \context {
      \Score
      %tempoWholesPerMinute = #(ly:make-moment 100 4)
    }   
  }
}

