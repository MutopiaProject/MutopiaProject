%% Aria. Cesare: Aure, deh, per pietà
global = \includeNotes #"global"

\score {
  \new StaffGroup <<
    \instrStaff \markup "" <<
      \set Score.skipBars = ##t
      \keepWithTag #'partUp \global
      \clef treble
      \includeNotes #"violino1"
    >>
    \instrStaff \markup "" <<
      \keepWithTag #'partDown \global
      \clef treble
      \includeNotes #"violino2"
    >>
  >>
  \header { opus = "Aria. Cesare: Aure, deh, per pietà" }
  \layout { indent = \noindent }
}
