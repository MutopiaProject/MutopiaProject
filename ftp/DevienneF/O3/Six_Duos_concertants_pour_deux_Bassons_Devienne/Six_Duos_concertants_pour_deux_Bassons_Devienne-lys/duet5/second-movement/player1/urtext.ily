fullScore=##t
facsimile=##f 
\include "defs.ily"
\include "../movement-definitions.ily"
%%\include "../urtext.ily"


part = \relative c' {
  \keySig
  \secondMovementClef
  \secondMovementTimeSig
  \secondMovementTempo
  \secondMovementPartial
  c8
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
	  
	  b c d c b bes
	}
      }
      {
	\relative c' {
	  b c d c b a
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


