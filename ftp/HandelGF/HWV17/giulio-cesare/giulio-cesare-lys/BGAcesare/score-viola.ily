global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'up \global
    \clef alto
    \includeNotes #"viola" 
  >>
  \header {
    piece = "Scena VII."
    opus = "Aria. Cesare: Alma del gran Pompeo"
  }
  \layout { indent = \smallindent }
}