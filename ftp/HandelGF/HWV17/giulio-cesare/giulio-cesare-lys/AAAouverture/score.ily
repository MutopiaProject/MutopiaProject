\score {
  \context StaffGroup <<
    \instrStaff \markup \instruments { "Tutti Oboe," "e Violino I.II." } <<
      \scoreInit 
      \keepWithTag #'() \global
      \clef treble
      \includeNotes "tutti" >>
    \instrStaff \markup "Violino III." <<
      \keepWithTag #'() \global
      \clef treble
      \includeNotes "violino3" >>
    \instrStaff \markup "Viola." <<
      \keepWithTag #'() \global
      \clef alto
      \includeNotes "alto" >>
    \instrStaff \markup "Tutti Bassi." <<
      \keepWithTag #'() \global
      \clef bass
      \includeNotes "bassi" >>
  >>
  \header {
    act = "OUVERTURE."
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 92 }
}
