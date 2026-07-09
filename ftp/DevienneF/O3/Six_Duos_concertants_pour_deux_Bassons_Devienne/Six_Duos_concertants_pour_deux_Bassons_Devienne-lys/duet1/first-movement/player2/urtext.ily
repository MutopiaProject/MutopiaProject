#(define-public facsimile #f )
\include "defs.ily"
part = {
  \allegroModeratoTempo
  \repeat volta 2 {
    \partial 4
    \sectionA 
    \partial 2.
    | f2 ( e4 )
  }
  \repeat volta 2 {
    \partial 4
    \sectionB
  }
}

