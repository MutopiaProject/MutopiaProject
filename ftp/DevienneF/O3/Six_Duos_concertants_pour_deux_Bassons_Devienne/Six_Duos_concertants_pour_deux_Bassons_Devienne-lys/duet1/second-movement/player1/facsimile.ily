\include "defs.ily"


part = \relative c' {
  \signatures
  \mark \markup \segno
  \uptoFine
  \parenthesizedDoubleBarFin
  \uptoSegno
  \tweak self-alignment-X #UP
  \textEndMark \markup \segno
  \tweak self-alignment-X #RIGHT
  \tweak direction #DOWN
  \textEndMark \markup {
    \huge \italic { RD.C. al }
  }
  \bar ".."
  \tweak direction #DOWN
  \textMark \markup \large \italic Minear
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

