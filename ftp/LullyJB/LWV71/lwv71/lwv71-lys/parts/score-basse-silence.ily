\score {
  \newSmallStaff << \global \basse \includeNotes #(*current-note-filename*) >>
  \layout { indent = \smallindent
            ragged-right = ##t }
}