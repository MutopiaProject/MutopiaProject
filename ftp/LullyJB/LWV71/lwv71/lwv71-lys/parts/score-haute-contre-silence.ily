\score {
  \newSmallStaff << \global \hauteContre \includeNotes #(*current-note-filename*) >>
  \layout { indent = \smallindent
            ragged-right = ##t }
}