\include "defs.ily"
parenthesizedDoubleBarFin = {
\tweak self-alignment-X #CENTER
  \textEndMark \markup { 
    \center-column {
      \line { \huge \italic "Fin" }
    }
  }
  \bar ":|." 
}

segnoMarkup = \markup \segno

\include "../facsimile.ily"


