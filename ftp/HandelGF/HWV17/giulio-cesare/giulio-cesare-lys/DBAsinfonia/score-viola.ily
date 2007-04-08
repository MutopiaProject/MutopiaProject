%% Sinfonia
global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'partBoth \global
    \clef alto
    \includeNotes #"viola"
  >>
  \header {
    piece = "Scena II."
    opus = "Sinfonia."
  }
  \layout { indent = \smallindent }
}
