\score {
  \newStaff << \global \quinte \includeNotes #(*current-note-filename*)
               \includeFigures "chiffres" >>
  \layout { indent = \smallindent }
}