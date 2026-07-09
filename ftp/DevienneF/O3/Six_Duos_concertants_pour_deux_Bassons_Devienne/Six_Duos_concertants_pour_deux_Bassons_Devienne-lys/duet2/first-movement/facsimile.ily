#(define-public facsimile #t )

part = \relative c' {
  \clef bass
  \keySig
  \firstMovementTempo
  \firstMovementTimeSig
  \override TupletBracket.bracket-visibility=##f
  \omit TupletNumber
  \relative c' {
    \sectionA
    \bar ":|.|:"
    \sectionB
    \bar ".." \grace s32
  }
}

