\score {
  <<
    \includeNotes "vocal"
    \includeNotes "keyboard"
  >>
  \layout {
    indent = #(or (*score-indent*) largeindent)
    ragged-last = #(*score-ragged*)
  }
}
