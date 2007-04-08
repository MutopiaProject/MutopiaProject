global = \includeNotes #"global"

\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I." <<
      \keepWithTag #'partUp \global
      \clef treble
      \set Score.skipBars = ##t
      \includeNotes #"violino1"
    >>
    \instrStaff \markup "Violino II." <<
      \keepWithTag #'partDown \global
      \clef treble
      \includeNotes #"violino2"
    >>
  >>
  \header {
    opus = "Aria. Tolomeo: L'empio, sleale, indegno"
  }
  \layout { }
}
