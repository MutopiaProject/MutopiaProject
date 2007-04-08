global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'up \global
    \clef treble
    \includeNotes #"violino1-2"
  >>
  \layout { indent = \noindent }
}
