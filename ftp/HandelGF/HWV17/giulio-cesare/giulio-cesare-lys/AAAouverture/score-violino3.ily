global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'() \global
    \clef treble
    \includeNotes #"violino3" 
  >>
  \header {
    piece = "Ouverture."
  }
  \layout { indent = \smallindent }
}
