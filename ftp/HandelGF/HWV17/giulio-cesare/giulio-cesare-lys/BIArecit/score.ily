%% Recitativo.
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \keepWithTag #'recit \global
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \scoreInit 
      \keepWithTag #'() \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header {
    scene = "SCENA IX."
    scenedescr = \markup \center-align {
      \line { Atrio nel Palagio de' Tolomei. }
      \line { \smallCaps Cesare con seguito di Romani, \smallCaps Tolomeo }
      \line { ed \smallCaps Achilla con seguito d'Egizii. } }
    breakbefore = #(break-before?)
  }
  \layout { indent = \smallindent
            #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
