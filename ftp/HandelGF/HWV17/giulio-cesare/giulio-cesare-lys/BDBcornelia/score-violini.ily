global = \includeNotes #"global"

\score {
  \instrStaff \markup "Violino I.II." <<
    \keepWithTag #'partBoth \global
    \clef treble
    \new Voice { \voiceOne \includeNotes #"violino1" }
    \new Voice { \voiceTwo \includeNotes #"violino2" }
  >>
  \header {
    opus = "Aria. Cornelia: Priva son d'ogni conforto"
  }
  \layout { }
}