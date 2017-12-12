\version "2.16.2"



\include "basso.ly"
\include "struktur.ly"

\include "jhe-title.ly"

%#(set-global-staff-size 20.5)



\header {
 instrument = "Basso"
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
      \context Voice = vc \basso
    >>
   }

  \layout { 
    \context {
      \Staff \RemoveEmptyStaves
      %% To use the setting globally, uncomment the following line:
      %%\override VerticalAxisGroup #'remove-first = ##t
       
    }
  }
 \midi {  
    \context {
      \Score
      %tempoWholesPerMinute = #(ly:make-moment 100 4)
    }   
  }
}

