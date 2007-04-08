%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \keepWithTag #'recit  \global
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass
      \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header {
    scene = "SCENA VIII."
    scenedescr = \markup \center-align {
      \line { Sala Regia. }
      \line { \smallCaps Cornelia, e \smallCaps Tolomeo. }
    }
    breakbefore = #(break-before?)
  }
  \layout { indent = \smallindent
            #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
