\version "2.10.20"

\include "tools.ly"

\include "header.ly"
\include "violin1.ly"
\include "violin2.ly"
\include "viola.ly"
\include "cello.ly"

%#(set-default-paper-size "letter")
#(set-global-staff-size 16)

\layout { ragged-last = ##t }
\midi {}

\paper {
}

%showLastLength = R1 * 10

    \score 
    {
      % First Movement
      \new StaffGroup <<
         \new Staff {
            \set Staff.instrumentName = "Violino I."
            \once \override TextScript #'padding = #2
            s1*0^\markup{ \huge{ "Allegro." } }
            \violinOneAllegro
         }
             \new Staff {
                 \set Staff.instrumentName = "Violino II."
                 \violinTwoAllegro
         }
         \new Staff{
                 \set Staff.instrumentName = "Viola."
                 \violaAllegro
         }
         \new Staff {
                 \set Staff.instrumentName = "Violoncello."
                 \celloAllegro
         }
      >>
      \layout {}
      \midi { 
          \context {
              \Score
              tempoWholesPerMinute = #(ly:make-moment 100 4)
          }
      }
    }

    \score {
      %Second Movement
      \new StaffGroup <<
         \new Staff {
             \set Staff.instrumentName = "Violino I."
            \once \override TextScript #'padding = #2
            s1*0^\markup{ \huge{ "Andante un poco Allegretto." } }
            \violinOneAndante
               }
         \new Staff {
             \set Staff.instrumentName = "Violino II."
            \violinTwoAndante
               }
         \new Staff {
             \set Staff.instrumentName = "Viola."
            \violaAndante
               }
         \new Staff {
             \set Staff.instrumentName = "Violoncello."
            \celloAndante
               }
          >>
      \layout {}
      \midi {}
     }

    \score {
    %Third Movement
    \new StaffGroup <<
      \new Staff \with { \remove "Mark_engraver" } {
        \set Staff.instrumentName = "Violino I."
        \once \override TextScript #'padding = #4
        s1*0^\markup{ \huge{ "Tempo di Minuetto." } }
        \violinOneMinuetto
      }
      \new Staff {
        \set Staff.instrumentName = "Violino II."
        \violinTwoMinuetto
      }
      \new Staff {
          \set Staff.instrumentName = "Viola."
          \violaMinuetto
      }
      \new Staff \with { \consists "Mark_engraver" }
      {
          \set Staff.instrumentName = "Violoncello."
          \celloMinuetto
      }
    >>
      \layout {
          \context {
            \Score
            \remove "Mark_engraver" 
          }
      }
      \midi { 
          \context {
              \Score
              tempoWholesPerMinute = #(ly:make-moment 120 4)
          }
      }
    }

