\score {
  \newSmallStaff << \global \taille \includeNotes #(*current-note-filename*) >>
  \layout { indent = \smallindent
            ragged-right = ##t }
}