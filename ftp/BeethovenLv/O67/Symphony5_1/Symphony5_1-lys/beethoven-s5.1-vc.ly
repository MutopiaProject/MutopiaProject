\version "2.16.2"



\include "violoncello.ly"
\include "struktur.ly"

\include "jhe-title.ly"

%#(set-global-staff-size 20.5)

\header {
 instrument = "Violoncello"
}


% have pagebreaks only in parts, not in partiture
partPageBreaks = {
\time 2/4
  s2*267
  \cadenzaOn
  s2 % normale Noten
  s2*4 % Kadenz (Oboe)
  \cadenzaOff
  s2 % halbe, damit der Takt richtig gezählt wird

  s2*56 \pageBreak
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

