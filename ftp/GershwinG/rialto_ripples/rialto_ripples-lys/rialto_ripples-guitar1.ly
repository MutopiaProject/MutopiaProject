% rialto_ripples-guitar1.ly
\include "rialto_ripples-music.ly"
\version "2.10.10"

\score {
   <<
      \set Score.skipBars = ##t
      \guitaroneStaff
   >>
   \header { instrument = "Guitar One" }
   \layout  { interscoreline = 1.\mm }
   
   \midi {
      \context {
         \Score
         tempoWholesPerMinute = #(ly:make-moment 160 4)
      }
   }
   
   
}
