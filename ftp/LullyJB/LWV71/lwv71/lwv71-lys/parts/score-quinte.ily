\score {
  \newStaff << \global \quinte \includeNotes #(*current-note-filename*) >>
  \layout { indent = \smallindent }
}