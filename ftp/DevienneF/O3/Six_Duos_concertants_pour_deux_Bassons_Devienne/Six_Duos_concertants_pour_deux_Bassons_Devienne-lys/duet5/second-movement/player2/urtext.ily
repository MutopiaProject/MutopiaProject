\include "defs.ily"
\include "../movement-definitions.ily"
#(define-public facsimile #f )
fullScore=##f
facsimile=##f 
\include "defs.ily"
\include "../movement-definitions.ily"


part = \relative c' {
  \keySig
  \secondMovementClef
  \secondMovementTimeSig
  \secondMovementTempo
  \secondMovementPartial
  r8
  \repeat volta 2 {
    \uptoFine
    #(if fullScore #{
      \tweak direction #DOWN
      \textEndMark \markup \italic { Fine }
      #} )
    \bar "||"
    \uptoSegno
    \alternative {
      {
	\relative c' {
	  d,,4. e
	}
      }
      {
	\relative c' {
	  d,,4. e
	}
      }
    }
  }
  \repeat volta 2 {
    \textMark \markup \large \italic Minear
    \uptoEnd
    #(if fullScore #{
      \tweak direction #DOWN
      \tweak self-alignment-X #CENTER
      \textEndMark \markup \italic \center-column {
      \line { D.S. } \line { al Fine }
    }
      #} )
  }
}



