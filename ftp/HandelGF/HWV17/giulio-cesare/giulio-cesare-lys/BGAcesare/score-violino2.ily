global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'partBoth \global
    \clef treble
    \includeNotes #"violino2"
  >>
  \header {
    piece = "Scena VII."
    opus = "Aria. Cesare: Alma del gran Pompeo"
  }
  \layout { indent = \smallindent }
}