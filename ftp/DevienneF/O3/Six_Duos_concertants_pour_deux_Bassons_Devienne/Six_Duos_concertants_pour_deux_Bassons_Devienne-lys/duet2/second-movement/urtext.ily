#(define-public facsimile #f )


part = \relative c' {
  \signatures
  \repeat volta 2 {
    \uptoFine
    #(if fullScore
      #{
      \tweak direction #DOWN
      \textEndMark \markup \italic "Fine"
      #} )
    \bar "||"
    \uptoSegno
  }
  \repeat volta 2 {
    \sectionLabel \markup \large \italic Minear
    \key g \minor
    \uptoEnd
    #(if fullScore
      #{
      \tweak direction #DOWN
      \textEndMark \markup \italic "D.C. al fine"
      #} )
  }
}
