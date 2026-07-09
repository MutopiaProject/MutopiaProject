\include "defs.ily"

parenthesizedDoubleBarFin = {
\tweak self-alignment-X #CENTER
  \textEndMark \markup { 
    \center-column {
      \line {\huge \rotate #270 "("  }
      \line { \huge \italic "Fin" }
    }
  }
  \bar ".." 
}

part = \relative c' {
  \signatures
  \mark \markup \segno
  \uptoFine
  \parenthesizedDoubleBarFin
  \uptoSegno
  \tweak self-alignment-X #RIGHT
  \tweak direction #UP
  \textEndMark \markup {
    \huge \italic { RD.C. \segno }
  }
  \bar ".."
  \tweak direction #UP
  \textMark \markup \large \italic { \hspace #1 Mineur }
  \uptoEnd
  \mark \markup \segno
  \tweak self-alignment-X #RIGHT
  \tweak direction #DOWN
  \textEndMark \markup {
    \huge \italic { RD.C.}
  }
  \bar ".."
  \cadenzaOn s8 \cadenzaOff
}

