global = \includeNotes #"global"

\score {
  \instrStaff \markup "" <<
    \keepWithTag #'partBoth \global
    \clef treble
    \includeNotes #"violino2" 
  >>
  \header {
    opus = "Aria. Cornelia: Priva son d'ogni conforto"
  }
  \layout { indent = \smallindent }
}