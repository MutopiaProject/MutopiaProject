global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'(partBoth other) \global
    \clef alto
    \includeNotes #"viola"
  >>
  \header {
    opus = "Aria. Cesare: Va tacito e nascosto, quand' avido"
  }
  \layout { indent = \smallindent }
}
