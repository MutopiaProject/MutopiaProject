global = \includeNotes #"global"

\score {
  \instrStaff \markup "Violini." <<
    \keepWithTag #'partBoth \global
    \clef treble
    \set Score.skipBars = ##t
    \includeNotes #"tutti" 
  >>
  \header {
    opus = "Aria. Cesare: Empio, dirò, tu sei"
  }
  \layout { }
}