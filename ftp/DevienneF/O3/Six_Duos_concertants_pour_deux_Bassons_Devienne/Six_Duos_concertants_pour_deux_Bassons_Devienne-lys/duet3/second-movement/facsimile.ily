
theme = \relative c' {
  \signatures
  \omit TupletNumber
  \override TupletBracket.bracket-visibility=##f
  \repeat volta 2 {
    \themeA
  }
  \repeat volta 2 {
      \themeB
  }
  \grace s32
}

varOne = \relative c' {
  \override TupletBracket.bracket-visibility=##f
  \omit TupletNumber
  \repeat volta 2 {
    \varOneA
  }
  \repeat volta 2 {
      \varOneB
  }
  \grace s32
}

varTwo = \relative c' {
  \override TupletBracket.bracket-visibility=##f
  \omit TupletNumber
  \repeat volta 2 {
    \varTwoA
  } 
  \repeat volta 2 {
      \varTwoB
  }
  \grace s32
}
