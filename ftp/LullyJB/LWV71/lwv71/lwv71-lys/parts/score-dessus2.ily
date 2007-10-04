\score {
  \newStaff << \global \dessus \includeNotes #(*current-note-filename*) >>
  \layout { indent = \smallindent }
}