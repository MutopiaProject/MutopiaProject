global = \includeNotes #"global"

%% Aria. Tolomeo: Sì, spietata, il tuo rigore
\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I." <<
      \set Score.skipBars = ##t
      \keepWithTag #'partBoth \global
      \clef treble
      \includeNotes #"violino1" 
    >>
    \instrStaff \markup "Violino II." <<
      \keepWithTag #'() \global
      \clef treble
      \includeNotes #"violino2" 
    >>
  >>
  \header { opus = "Aria. Tolomeo: Sì, spietata, il tuo rigore" }
  \layout {
    \context {
      %%\RemoveEmptyStaffContext
      \Staff
      \remove "Axis_group_engraver"
      \consists "Hara_kiri_engraver"
      \override Beam #'auto-knee-gap = #'() 
    }
  } 
}
