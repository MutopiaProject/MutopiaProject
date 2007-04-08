global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'() \global
    \clef alto
    \includeNotes #"alto"
  >>
  \header {
    piece = "Ouverture."
  }
  \layout { indent = \smallindent }
}
