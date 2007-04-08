global = \includeNotes #"global"

\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I.II." <<
      \keepWithTag #'() \global
      \clef treble
      \includeNotes #"tutti" 
    >>
    \instrStaff \markup "Violino III." <<
      \keepWithTag #'() \global
      \clef treble
      \includeNotes #"violino3" 
    >>
  >>
  \header {
    piece = "Ouverture."
  }
  \layout { }
}
