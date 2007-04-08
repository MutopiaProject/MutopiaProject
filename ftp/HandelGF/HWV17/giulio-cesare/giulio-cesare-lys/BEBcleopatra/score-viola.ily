global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \set Score.skipBars = ##t
    \keepWithTag #'(partBoth part) \global
    \clef alto
    {
      \includeNotes #"viola" 
      r4 R1*12 \bar "|."
    }
  >>
  \header {
    opus = "Aria. Cleopatra: Non disperar, chi sa ?"
  }
  \layout { indent = \smallindent }
}