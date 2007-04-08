global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \set Score.skipBars = ##t
    \keepWithTag #'partUp \global
    \clef alto
    \includeNotes #"viola"
  >>
  \header {
    opus = "Aria. Cesare: Presti omai l'egizia terra"
  }
  \layout { indent = \smallindent }
}