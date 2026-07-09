fullScore=##t
\include "defs.ily"
\include "../movement-definitions.ily"
#(define-public facsimile #f )


part = \relative c' {
  \keySig
  \secondMovementClef
  \secondMovementTimeSig
  \secondMovementTempo
  \secondMovementPartial
  \repeat volta 2 {
    \uptoFine
    \tweak direction #DOWN
    \textEndMark \markup \italic { Fine }
    \bar "||"
    \uptoSegno
    \alternative {
      {
        | r16 d ( ees ) e ( f ) fis ( g) ees
      }
      {
        | r16 d ( ees ) e ( f ) fis ( g) ees
      }
    }
  }
  \repeat volta 2 {
    \uptoEnd
    #(if fullScore 
         #{
    \tweak direction #DOWN
    \tweak self-alignment-X #CENTER
    \textEndMark \markup \italic \center-column { \line { D.C. } \line { al Fine } }
         #} )
  }
}

