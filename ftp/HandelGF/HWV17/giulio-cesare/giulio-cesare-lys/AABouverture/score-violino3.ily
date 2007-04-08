global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \set Score.skipBars = ##t
    \keepWithTag #'up \global
    \clef treble
    \includeNotes #"violino3"
  >>
  \layout { indent = \noindent }
}
