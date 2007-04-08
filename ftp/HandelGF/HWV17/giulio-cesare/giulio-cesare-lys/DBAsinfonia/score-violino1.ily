%% Sinfonia
global = \includeNotes #"global"

\score {
  \instrStaff \markup Violini. <<
    \keepWithTag #'partBoth \global
    \clef treble
    \includeNotes #"violini"
  >>
  \header {
    piece = "Scena II."
    opus = "Sinfonia."
  }
  \layout {}
}
