\score {
  \newStaff << \global \basse \includeNotes #(*current-note-filename*)
               \includeFigures "chiffres" >>
  \layout { indent = \smallindent }
}