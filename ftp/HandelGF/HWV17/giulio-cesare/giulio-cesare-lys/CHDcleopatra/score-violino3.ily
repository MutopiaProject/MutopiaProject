global = \includeNotes #"global"

%% Aria. Cleopatra: Se pietà di me non senti
\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I. II." <<
      \keepWithTag #'partUp \global
      \clef treble
      \includeNotes #"violino12"
    >>
    \instrStaff \markup "Violino III." <<
      \keepWithTag #'partDown \global
      \clef treble
      \includeNotes #"violino3"
    >>
  >>
  \header { opus = "Aria. Cleopatra: Se pietà di me non senti" }
  \layout { }
}
