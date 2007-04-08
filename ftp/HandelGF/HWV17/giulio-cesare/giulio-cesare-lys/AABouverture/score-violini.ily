global = \includeNotes #"global"

\score {
  \new StaffGroup <<
    \instrStaff \markup "Violino I.II." <<
      \keepWithTag #'() \global
      \clef treble
      \includeNotes #"violino1-2"
    >>
    \instrStaff \markup "Violino III." <<
      \keepWithTag #'() \global
      \clef treble
      \includeNotes #"violino3" 
    >>
  >>
  \layout { }
}
