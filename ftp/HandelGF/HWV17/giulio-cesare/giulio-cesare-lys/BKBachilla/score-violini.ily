global = \includeNotes #"global"

\score {
  \instrStaff \markup "Violini unisoni." <<
    \keepWithTag #'partBoth \includeNotes #"global"
    \clef treble
    \includeNotes #"violini"
  >>
  \header {
    opus = "Aria. Achilla: Tu sei il cor di questo core"
  }
  \layout { }
}