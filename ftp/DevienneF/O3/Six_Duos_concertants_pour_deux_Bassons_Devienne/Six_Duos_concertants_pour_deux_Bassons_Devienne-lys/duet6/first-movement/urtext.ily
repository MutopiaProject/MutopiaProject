#(define-public facsimile #f )
part = {
  \clef bass
  \keySig
  \firstMovementTempo
  \firstMovementTimeSig
  \repeat volta 2 {
    \showTuplets
    \firstMovementPartial
    \sectionA 
  }
  \repeat volta 2 {
    \firstMovementPartial
    \sectionB
  }
}

