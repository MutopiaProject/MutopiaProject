%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \keepWithTag #'(recit hack) \global
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \scoreInit 
      \keepWithTag #'() \global
      \clef bass \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header {
    scene = "SCENA X."
    scenedescr = \markup \center-align {
      \line { \smallCaps Cornelia, \smallCaps Sesto, 
              \smallCaps Tolomeo, ed \smallCaps Achilla. } }
    breakbefore = #(break-before?)
  }
  \layout { indent = \smallindent
            #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
