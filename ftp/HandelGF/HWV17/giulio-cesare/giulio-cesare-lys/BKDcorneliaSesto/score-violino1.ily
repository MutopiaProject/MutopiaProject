global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'partBoth \global
    \clef treble
    \includeNotes #"violino1"
  >>
  \header {
    opus = "Aria. Sesto e Cornelia: Son nato a sospirar/Son nata a lagrimar, e il dolce"
  }
  \layout { indent = \smallindent }
}

