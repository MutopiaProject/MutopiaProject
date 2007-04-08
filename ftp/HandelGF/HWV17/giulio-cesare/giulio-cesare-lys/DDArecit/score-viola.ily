%% Recit. Cesare: Dall' ondoso periglio salvo mi
global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'partBoth \global
    \clef alto
    \includeNotes #"viola"
  >>
  \header {
    piece = "Scena IV."
    opus = "Recit. Cesare: Dall' ondoso periglio salvo mi"
  }
  \layout { indent = \smallindent }
}
