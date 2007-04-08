%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \global \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \scoreInit \global
      \clef bass \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { indent = \smallindent 
            #(define tweak-key (*current-piece*))}
  \midi { \tempo 4 = 120 }
}
