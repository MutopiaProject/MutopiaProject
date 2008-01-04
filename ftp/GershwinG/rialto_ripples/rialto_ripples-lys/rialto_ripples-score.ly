% rialto_ripples-score.ly
\include "rialto_ripples-music.ly"
\version "2.10.10"

\score {
   \context StaffGroup = "trio" <<
      \override Score.BarNumber   #'padding = #3
      \guitaroneStaff
      \guitartwoStaff
      \guitarthreeStaff
   >>
   \layout { }
   
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 160 4)
      }
   }
   
   
}
