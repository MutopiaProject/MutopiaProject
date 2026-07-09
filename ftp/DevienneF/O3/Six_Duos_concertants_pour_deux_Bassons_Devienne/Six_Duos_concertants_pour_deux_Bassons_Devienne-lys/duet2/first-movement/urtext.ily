#(define-public facsimile #f )
part = {
  \keySig
  \firstMovementTempo
  \firstMovementTimeSig
  \repeat volta 2 {
    \override TupletBracket.parenthesized = ##f
    \override TupletBracket.bracket-visibility = ##t
    \partial 4
    \sectionA 
  }
  \repeat volta 2 {
    \sectionB
  }
}

