%% Recit.
\score {
  \new OrchestraStaffGroup <<
    \lyricStaff \markup Cesare. <<
      \keepWithTag #'() \global
      \cesare \includeNotes #"cesare"
    >> \includeLyrics #"cesare-lyrics"
    \instrStaff \markup "" <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
