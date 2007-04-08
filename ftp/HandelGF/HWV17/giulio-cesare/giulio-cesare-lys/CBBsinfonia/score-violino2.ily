%% Sinfonia
global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'() \global
    \clef treble
    \includeNotes #"violino2"
  >>
  \header {
    opus = "Sinfonia."
  }
  \layout { indent = \smallindent }
}
