\score {
  \newStaff << \global \taille \includeNotes #(*current-note-filename*) >>
  \layout { indent = \smallindent }
}