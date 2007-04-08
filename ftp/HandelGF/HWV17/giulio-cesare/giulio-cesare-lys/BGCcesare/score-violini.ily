global = \includeNotes #"global"

\score {
  \instrStaff \markup "Tutti." <<
    \keepWithTag #'(partBoth with-break) \global
    \clef treble
    \set Score.skipBars = ##t
    \includeNotes #"tutti" 
  >>
  \header {
    opus = "Aria. Cesare: Non è si vago e bello"
  }
  \layout { }
}
