global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'partBoth \global
    \clef treble
    \set Score.skipBars = ##t
    \includeNotes #"violino1"
  >>
  \header {
    opus = "Aria. Tolomeo: L'empio, sleale, indegno"
  }
  \layout { indent = \smallindent }
}
