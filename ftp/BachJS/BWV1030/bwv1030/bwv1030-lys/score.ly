\version "2.6.4"
\include "deutsch.ly"
\include "global.ly"
\include "triolen.ly"

\include "header.ly"

%% ignore line and page breaks for flute part in score
neueZeile = { }
neueSeite = { }

#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\include "flute_1.ly"
\include "clavecin_1.ly"
\include "flute_2.ly"
\include "clavecin_2.ly"
\include "flute_3.ly"
\include "clavecin_3.ly"
\include "metronom_3.ly"

%1st movement (Andante, layout and midi)
\score {
   \header {
      piece = "Andante"
   }

   \context StaffGroup = "sonataA" <<
      \context Staff = "flute" {
         \set Staff.fontSize = #-2
         \fluteA
      }
      \clavecinA
   >>

   \layout {
      indent = 0.6\cm
   }

   \midi {
      \tempo 4 = 68
   }
}

%2nd movement (Largo e dolce, layout only)
\score {
   \header {
      piece = "Largo e dolce"
   }

   \context StaffGroup = "sonataB" <<
      \context Staff = "flute" {
         \set Staff.fontSize = #-2
         \fluteBforScore
      }
      \clavecinB
   >>
   \layout {
      indent = 0.6\cm
   }
}

%2nd movement (Largo e dolce, midi only)
\score {
   \unfoldRepeats {
      \context StaffGroup = "sonataB" <<
         \context Staff = "flute" {
         \fluteBforScore
      }
      \clavecinB
      >>
   }
   \midi {
      \tempo 8 = 60
   }
}
%}

%3rd movement (Presto, layout only)
\score {
   \header {
      piece = "Presto"
   }

   \context StaffGroup = "sonataC" <<
      \context Staff = "flute" {
         \set Staff.fontSize = #-2
         \fluteC
      }
      \clavecinC
   >>
   \layout {
      indent = 0.6\cm
   }
}

%3rd movement (Presto, midi only)
\score {
   \header {
      piece = "Presto"
   }

   \unfoldRepeats {
      \context StaffGroup = "sonataC" <<
         \context Staff = "metronom" { \metronomC }
         \context Staff = "flute"    { \fluteC }
         \clavecinC
      >>
   }

   \midi {
      \tempo 2 = 104
   }
}
