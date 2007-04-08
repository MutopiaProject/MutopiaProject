global = \includeNotes #"global"

%% Recit. Cleopatra: Voi, che mie fide ancelle
\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I." <<
      \keepWithTag #'partUp \global
      \clef treble
      \includeNotes #"violino1"
      >>
    \instrStaff \markup "Violino II." <<
      \keepWithTag #'partDown \global
      \clef treble
      \includeNotes #"violino2"
    >>
  >>
  \header {
    piece = "Scena VII."
    opus = "Recit. Cleopatra: Voi, che mie fide ancelle"
  }
  \layout { }
}
