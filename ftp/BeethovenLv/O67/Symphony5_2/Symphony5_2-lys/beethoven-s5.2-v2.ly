\version "2.16.2"


%#(set-global-staff-size 20)

\include "violinotwo.ly"
\include "struktur.ly"

\include "jhe-title.ly"


\header {
 instrument = "Violino II"
}


% have pagebreaks only in parts, not in partiture
%partPageBreaks = {
% \time 3/8
% \partial 8
%  s8
%  s4.*134 \pageBreak
%}


\paper {
  print-page-number = ##t
  tagline = "" 
}


\score {
 \context StaffGroup {
    \context Staff = "ungTanzVvc"
    <<
      \context Voice = "text" \struktur
      \context Voice = vc \violinotwo
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

