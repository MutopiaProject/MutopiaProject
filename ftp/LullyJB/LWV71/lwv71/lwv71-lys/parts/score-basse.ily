\score {
  \newStaff << \global \basse \includeNotes #(*current-note-filename*) >>
  \layout { indent = \smallindent }
}