global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'(partBoth part violini) \global
    \clef treble
    \set Score.skipBars = ##t
    {
      \includeNotes #"violini"
      r4 R1*12
    }
  >>
  \header {
    opus = "Aria. Cleopatra: Non disperar, chi sa ?"
  }
  \layout { indent = \smallindent }
}