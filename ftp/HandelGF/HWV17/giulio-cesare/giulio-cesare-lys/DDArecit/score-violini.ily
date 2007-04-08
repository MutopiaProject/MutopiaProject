%% Recit. Cesare: Dall' ondoso periglio salvo mi
global = \includeNotes #"global"

\score {
  \new StaffGroup <<
    \instrStaff \markup { Violino I. } <<
      \keepWithTag #'partUp \global
      \clef treble
      \includeNotes #"violino1"
    >>
    \instrStaff \markup { Violino II. } <<
      \keepWithTag #'partDown \global
      \clef treble
      \includeNotes #"violino2"
    >>
  >>
  \header {
    piece = "Scena IV."
    opus = "Recit. Cesare: Dall' ondoso periglio salvo mi"
  }
  \layout { }
}
