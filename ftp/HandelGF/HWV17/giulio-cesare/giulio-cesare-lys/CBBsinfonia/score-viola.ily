%% Sinfonia
global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'() \global
    \clef alto
    \includeNotes #"viola"
  >>
  \header {
    opus = "Sinfonia."
  }
  \layout { indent = \smallindent }
}
