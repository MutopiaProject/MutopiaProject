global = \includeNotes #"global"

%% Arioso. Tolomeo: Belle dee di questo core
\score {
  \instrStaff \markup "Violini." <<
    \set Score.skipBars = ##t
    \keepWithTag #'() \global
    \clef treble
    \includeNotes #"violini"
  >>
  \header {
    piece = "Scena IX."
    opus = "Arioso. Tolomeo: Belle dee di questo core"
  }
  \layout { }
}
