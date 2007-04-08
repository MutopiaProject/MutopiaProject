%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \scoreInit
      \keepWithTag #'recit  \global
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { indent = \noindent
            #(define tweak-key (*current-piece*)) }
  \midi {\tempo 4 = 120}
}
