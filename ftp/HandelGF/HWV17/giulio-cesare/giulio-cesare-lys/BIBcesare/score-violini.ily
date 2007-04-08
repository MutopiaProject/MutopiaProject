global = \includeNotes #"global"

\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I." <<
      \keepWithTag #'partUp \global
      \clef treble
      \includeNotes #"violino1"
    >>
    \instrStaff \markup "Violino II." <<
      \keepWithTag #'() \global
      \clef treble
      \includeNotes #"violino2"
    >>
  >>
  \header {
    opus = "Aria. Cesare: Va tacito e nascosto, quand' avido"
  }
  \layout { }
}
