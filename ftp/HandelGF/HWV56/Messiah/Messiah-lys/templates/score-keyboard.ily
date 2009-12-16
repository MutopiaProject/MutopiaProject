\score {
  \includeNotes "keyboard"
  \layout {
    indent = #(or (*score-indent*) smallindent)
    ragged-last = #(*score-ragged*)
  }
}
