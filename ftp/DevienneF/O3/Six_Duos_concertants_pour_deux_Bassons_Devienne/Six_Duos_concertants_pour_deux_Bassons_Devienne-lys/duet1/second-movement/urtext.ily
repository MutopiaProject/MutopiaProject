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
    %%  \parenthesizedDoubleBarFin
    \uptoSegno
  }
  \repeat volta 2 {
    \sectionLabel \markup \large \italic Minear
    \uptoEnd
    #(if fullScore
      #{
      \tweak direction #DOWN
      \textEndMark \markup \italic "D.C. al fine"
      #} )
  }
}
