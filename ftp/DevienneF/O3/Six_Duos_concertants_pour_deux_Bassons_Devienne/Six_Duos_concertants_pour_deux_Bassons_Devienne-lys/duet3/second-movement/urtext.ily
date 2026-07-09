#(define-public facsimile #f )


theme = \relative c' {
  \signatures
  \override TupletBracket.bracket-visibility=##t
  \repeat volta 2 {
    \themeA
  }
  \repeat volta 2 {
      \themeB
  }
}

varOne = \relative c' {
  \override TupletBracket.bracket-visibility=##t
  \repeat volta 2 {
    \varOneA
  }
  \repeat volta 2 {
      \varOneB
  }
}

varTwo = \relative c' {
  \override TupletBracket.bracket-visibility=##t
  \repeat volta 2 {
    \varTwoA
  }
  \repeat volta 2 {
      \varTwoB
  }
}
