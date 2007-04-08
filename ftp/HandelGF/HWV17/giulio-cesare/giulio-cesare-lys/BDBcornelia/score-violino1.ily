global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'partBoth \global
    \clef treble
    \includeNotes #"violino1" 
  >>
  \header {
    opus = "Aria. Cornelia: Priva son d'ogni conforto"
  }
  \layout { indent = \smallindent }
}