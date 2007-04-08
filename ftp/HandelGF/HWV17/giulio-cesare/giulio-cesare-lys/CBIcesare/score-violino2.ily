%% Sinfonia
global = \includeNotes #"global"

\score {
  \new StaffGroup <<
    \instrStaff \markup { Violino I. } <<
    \set Score.skipBars = ##t
      \keepWithTag #'partUp \global
      \clef treble
      \includeNotes #"tutti"
    >>
    \instrStaff \markup { Violino II. } <<
      \keepWithTag #'partDown \global
      \clef treble
      \includeNotes #"violino2"
    >>
  >>
  \header { opus = "Aria. Cesare: Se in fiorito" }
  \layout {
    \context {
      \Staff
      \remove "Axis_group_engraver"
      \consists "Hara_kiri_engraver"
      \override Beam #'auto-knee-gap = #'() 
    }
  }
}
