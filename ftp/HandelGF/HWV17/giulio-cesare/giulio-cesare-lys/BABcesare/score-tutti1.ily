global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \set Score.skipBars = ##t
    \keepWithTag #'partUp \global
    \clef treble
    \includeNotes #"tutti1" 
  >>
  \header {
    opus = "Aria. Cesare: Presti omai l'egizia terra"
  }
  \layout { indent = \smallindent }
}