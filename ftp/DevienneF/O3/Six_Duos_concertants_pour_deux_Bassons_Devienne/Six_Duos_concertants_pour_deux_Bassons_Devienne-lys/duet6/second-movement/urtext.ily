\include "movement-definitions.ily"
#(define-public facsimile #f )


part = \relative c' {
  \keySig
  \secondMovementClef
  \secondMovementTimeSig
  \secondMovementTempo
  \secondMovementPartial
  \repeat volta 2 {
    \uptoFine
    #(if fullScore #{
    \tweak direction #DOWN
    \textEndMark \markup \italic { Fine }
         #} )
    \bar "||"
    \uptoSegno
  }
  \repeat volta 2 {
    \bar ":|.|:"
    \textMark \markup \large \italic Minear
    \uptoEnd
    #(if fullScore #{
    \tweak direction #DOWN
    \tweak self-alignment-X #CENTER
    \textEndMark \markup \italic \center-column {
      \line { D.C. } \line { al Fine }
    }
         #} )
  }
}
