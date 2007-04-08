
\score {
  \new StaffGroup <<
    \instrStaff \markup "Oboe I.II." <<
      \scoreInit
      \keepWithTag #'up \global
      \clef treble
      \includeNotes #"oboe" >>
    \new InnerStaffGroup <<
      \instrStaff \markup "Violino I.II." <<
        \keepWithTag #'() \global
        \clef treble
        \includeNotes #"violino1-2" >>
      \instrStaff \markup "Violino III." <<
        \keepWithTag #'() \global
        \clef treble
        \includeNotes #"violino3" >>
      \instrStaff \markup "Viola." <<
        \keepWithTag #'() \global
        \clef alto
        \includeNotes #"alto" >>
    >>
    \instrStaff \markup "Tutti Bassi." <<
      \keepWithTag #'() \global
      \clef bass
      \includeNotes #"bassi" >>
  >>
  \header {
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 132 }
}
