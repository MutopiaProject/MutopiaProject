%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \lyricStaff \markup "Sesto." <<
      \scoreInit
      \keepWithTag #'() \global
      \sesto \includeNotes #"sesto" 
    >>
    \includeLyrics #"sesto-lyrics" 
    \instrStaff \markup "" <<
      \keepWithTag #'() \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \header {
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
