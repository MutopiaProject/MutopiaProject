\score {
  \newSmallStaff << \global \dessus \includeNotes #(*current-note-filename*) >>
  \layout { indent = \smallindent
            ragged-right = ##t }
}