\markup {
  \fill-line {
    \center-column {
      \fill-line { \abs-fontsize #20 \smallCaps "lavender" }
      \fill-line {
        \abs-fontsize #12
        \concat {
          \draw-line #'(-3 . 0)
          \smallCaps " b l u e "
          \draw-line #'(-3 . 0)
        }
      }
      \fill-line { \abs-fontsize #9 \smallCaps "Open Scores" }
      \null
      \fill-line { \abs-fontsize #10 "Engraved by Davide Madrisan" }
      \fill-line {
        \with-url #"https://github.com/madrisan/open-scores/" {
          \abs-fontsize #10
          \typewriter "https://github.com/madrisan/open-scores/"
        }
      }
    }
  }
}
