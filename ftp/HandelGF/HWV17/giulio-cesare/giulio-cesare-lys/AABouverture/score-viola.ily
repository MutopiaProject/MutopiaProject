global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \set Score.skipBars = ##t
    \keepWithTag #'up \global
    \clef alto
    \includeNotes #"alto" 
  >>
  \layout { indent = \noindent }
}
