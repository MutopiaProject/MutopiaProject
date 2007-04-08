global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'(partBoth) \global
    \clef treble
    \set Score.skipBars = ##t
    \includeNotes #"tutti" 
  >>
  \header {
    opus = "Aria. Cesare: Non è si vago e bello"
  }
  \layout { indent = \smallindent }
}
