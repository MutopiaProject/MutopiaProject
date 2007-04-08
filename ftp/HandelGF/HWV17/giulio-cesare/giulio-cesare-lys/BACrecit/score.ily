%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \scoreInit
      \global
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { indent = \smallindent
            #(define tweak-key (*current-piece*)) }
  \midi {\tempo 4 = 120}
}
