global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'() \global
    \clef treble
    \includeNotes #"tutti" 
  >>
  \header {
    piece = "Ouverture."
  }
  \layout { indent = \smallindent }
}
