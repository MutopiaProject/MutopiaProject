%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \lyricStaff \markup Sesto. <<
      \scoreInit
      \keepWithTag #'up  \global
      \sesto \includeNotes #"sesto"
    >> \includeLyrics #"sesto-lyrics"
    \instrStaff \markup "" <<
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
