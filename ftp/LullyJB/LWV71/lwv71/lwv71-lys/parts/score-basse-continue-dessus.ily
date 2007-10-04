\score {
  \newStaff << \global \dessus \includeNotes #(*current-note-filename*)
               \includeFigures "chiffres" >>
  \layout { indent = \smallindent }
}