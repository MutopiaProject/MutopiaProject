global = \includeNotes #"global"

%% Duetto. Cleopatra e Cesare: Caro/Bella, più amabile beltà
\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I." <<
      \set Score.skipBars = ##t
      \keepWithTag #'partUp \global
      \clef treble
      \includeNotes #"tutti1"
    >>
    \instrStaff \markup "Violino II." <<
      \keepWithTag #'partDown \global
      \clef treble
      \includeNotes #"tutti2"
    >>
  >>
  \header { opus = "Duetto. Cleopatra e Cesare: Caro/Bella, più amabile beltà" }
  \layout { }
}
