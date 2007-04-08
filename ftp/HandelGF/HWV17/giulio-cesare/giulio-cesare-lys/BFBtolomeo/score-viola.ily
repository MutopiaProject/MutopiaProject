global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \set Score.skipBars = ##t
    \keepWithTag #'partBoth \global
    \clef alto
    \includeNotes #"viola" 
  >>
  \header {
    opus = "Aria. Tolomeo: L'empio, sleale, indegno"
  }
  \layout { indent = \smallindent }
}
