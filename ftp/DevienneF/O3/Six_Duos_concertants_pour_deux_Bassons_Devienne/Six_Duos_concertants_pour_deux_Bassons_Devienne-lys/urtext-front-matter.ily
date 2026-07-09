editionText="Urtext"
% %% \include "header-definition.ily"
 
\tocItem \markup "Preface"
 
\markup {
   \left-column {
     \fill-line { \bold { Preface } }
     \vspace #1
     \wordwrap {
       This \bold { Urtext } edition
       attempts to engrave the original sources
       using modern notation conventions, making them suitable for performance.
     }
     \vspace #1
     \fill-line {
       \hspace #1
       \right-column {
         \line { Patrick Paulson}
         \line { patrick_paulson@3rivers-ashtanga.org}
         \line { March, 2026}
       }
     }
   }
}

subtitleMarkup = \markup \center-column {
   \line {
     \italic { Urtext }
     \line { }
   }
}

