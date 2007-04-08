%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \lyricStaff \markup Cesare. <<
      \scoreInit
      \keepWithTag #'up \global
      \cesare \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi {\tempo 4 = 120}
}
