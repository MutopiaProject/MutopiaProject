\version "2.16.2"


%#(set-global-staff-size 19)

\include "violinoone.ly"
\include "struktur.ly"

\include "jhe-title.ly"

\header {
 instrument = "Violino I"
}



% have pagebreaks only in parts, not in partiture
partPageBreaks = {
\time 2/4
  s2*124 \pageBreak

%  s2*143
%  \cadenzaOn
%  s2 % normale Noten
%  s2*4 % Kadenz (Oboe)
%  \cadenzaOff
%  s2 % halbe, damit der Takt richtig gezählt wird
%  s2*54 
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
      \context Voice = "pb" \partPageBreaks
      \context Voice = vc \violinoone
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

