global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'partBoth \global
    \clef alto
    \includeNotes #"viola" 
  >>
  \header {
    opus = "Aria. Cornelia: Priva son d'ogni conforto"
  }
  \layout { indent = \smallindent }
}