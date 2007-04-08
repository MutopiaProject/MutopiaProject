%% Recitativo.
\score {
  \new OrchestraStaffGroup <<
    \lyricStaff \markup "Cleopatra." <<
      \global
      \cleopatra \includeNotes #"recit" 
    >> \includeLyrics #"lyrics" 
    \instrStaff \markup "" <<
      \scoreInit \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 60 }
}
