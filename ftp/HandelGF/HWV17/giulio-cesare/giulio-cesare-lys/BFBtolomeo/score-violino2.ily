global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \set Score.skipBars = ##t
    \keepWithTag #'partBoth \global
    \clef treble
    \includeNotes #"violino2"
  >>
  \header {
    opus = "Aria. Tolomeo: L'empio, sleale, indegno"
  }
  \layout { indent = \smallindent }
}
