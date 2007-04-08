global = \includeNotes #"global"

%% Recit. Cleopatra: Cleopatra: Che sento? oh Dio!
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
  \header { opus = "Recit. Cleopatra: Cleopatra: Che sento? oh Dio!." }
  \layout { }
}
