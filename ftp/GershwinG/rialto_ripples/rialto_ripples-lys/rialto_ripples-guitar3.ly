% rialto_ripples-guitar3.ly
\include "rialto_ripples-music.ly"
\version "2.10.10"

\score {
   <<
      \set Score.skipBars = ##t
      \guitarthreeStaff
   >>
   \header { instrument = "Guitar Three" }
   \layout  { }
   
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 160 4)
      }
   }
   
   
}
