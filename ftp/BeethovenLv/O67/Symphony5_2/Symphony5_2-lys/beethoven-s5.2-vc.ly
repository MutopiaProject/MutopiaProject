\version "2.16.2"


%#(set-global-staff-size 21)

\include "violoncello.ly"
\include "struktur.ly"

\include "jhe-title.ly"

\header {
 instrument = "Violoncello"
}


% have pagebreaks only in parts, not in partiture
partPageBreaks = {
 \time 3/8
 \partial 8
  s8
  s4.*179 \pageBreak
}

\paper {
  print-page-number = ##t
  tagline = "" 
}


\score {
 \context StaffGroup {
    \context Staff = "ungTanzVvc"
    <<
      \context Voice = "text" \struktur
      \context Voice = "pb" \partPageBreaks
      \context Voice = vc \violoncello
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

