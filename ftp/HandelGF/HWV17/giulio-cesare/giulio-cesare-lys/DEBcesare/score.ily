%% Aria. Cesare: Quel torrente che cade dal monte
\score {
  \new OrchestraStaffGroup <<
    \new instrumentStaffGroup <<
      \instrStaff \markup "Tutti (Violini.)" <<
        \keepWithTag #'up \global
        \clef treble
        \includeNotes #"tutti" 
      >>
      \lyricStaff \markup "Cesare." <<
        \keepWithTag #'cesare \global
        \cesare \includeNotes #"cesare" 
      >> \includeLyrics #"cesare-lyrics"
    >>
    \instrStaff \markup "Bassi." <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { indent = \largeindent
            #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
