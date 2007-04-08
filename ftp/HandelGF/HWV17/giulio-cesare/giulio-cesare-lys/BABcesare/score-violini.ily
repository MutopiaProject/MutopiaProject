global = \includeNotes #"global"

\score {
  \new StaffGroup <<
    \instrStaff \markup { "" \raise #-10 "Tutti." } <<
      \keepWithTag #'partUp \global
      \clef treble
      \includeNotes #"tutti1" 
    >>
    \instrStaff \markup "" <<
      \keepWithTag #'() \global
      \clef treble
      \includeNotes #"tutti2"
    >>
  >>
  \header {
    opus = "Aria. Cesare: Presti omai l'egizia terra"
  }
  \layout { }
}