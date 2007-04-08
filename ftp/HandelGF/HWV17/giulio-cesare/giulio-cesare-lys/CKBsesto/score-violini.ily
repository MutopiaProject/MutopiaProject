global = \includeNotes #"global"

%% Aria. Sesto: L'aura che spira
\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I." <<
      \set Score.skipBars = ##t
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
  \header { opus = "Aria. Sesto: L'aura che spira" }
  \layout { }
}
