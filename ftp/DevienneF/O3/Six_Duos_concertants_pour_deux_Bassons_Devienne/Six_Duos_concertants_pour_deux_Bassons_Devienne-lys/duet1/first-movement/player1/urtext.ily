#(define-public facsimile #f )
\include "defs.ily"
part = {
  \allegroModeratoTempo
  \repeat volta 2 {
    \partial 4
    \override TupletBracket.bracket-visibility = ##t
    \sectionA 
  }
  \repeat volta 2 {
    \sectionB
  }
}

