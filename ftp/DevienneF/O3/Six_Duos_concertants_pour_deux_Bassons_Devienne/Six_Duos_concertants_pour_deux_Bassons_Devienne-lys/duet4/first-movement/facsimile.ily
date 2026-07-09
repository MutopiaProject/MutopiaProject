#(define-public facsimile #t )
\include "signatures.ily"

part = \relative c' {
  \clef bass
  \keySig
  \firstMovementTempo
  \firstMovementTimeSig
  \override TupletBracket.bracket-visibility=##f
  \omit TupletNumber
  \relative c' {
    \firstMovementPartial
    \sectionA
    \bar ":|.|:"
    \firstMovementPartial
    \sectionB
    \bar ".." \grace s32
  }
}

