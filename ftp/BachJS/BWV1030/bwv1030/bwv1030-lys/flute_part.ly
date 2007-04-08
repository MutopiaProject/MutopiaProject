\version "2.6.4"
\include "deutsch.ly"
\include "global.ly"
\include "triolen.ly"

%% honor line and page breaks in score
neueZeile = { \break }
neueSeite = { \pageBreak }

\include "header.ly"

#(set-default-paper-size "a4")
#(set-global-staff-size 18)

\include "flute_1.ly"
\include "flute_2.ly"
\include "flute_3.ly"

\score {
   \header {
      piece = "Andante"
   }

   \context Staff = "flute" {
      \fluteA
   }

   \layout {
      indent = 0.6\cm
   }
}

\score {
   \header {
      piece = "Largo e dolce"
   }

   \context Staff = "flute" {
      \fluteB
   }

   \layout {
      indent = 0.6\cm
   }
}

%3rd movement (Presto)
showLastLength = R1*15
\score {
  \header {
    piece = "Presto"
  }

   \context Staff = "flute" {
      \fluteC
   }

   \layout {
      indent = 0.6\cm
   }
}
