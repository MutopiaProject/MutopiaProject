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
    scene = "SCENA IX."
    scenedescr = \markup \center-align {
      \line { Mentre \smallCaps Cornelia corre alla vita
              di \smallCaps Tolomeo, }
      \line { sopragiunge \smallCaps Sesto con spada nuda in mano. }
    }
    breakbefore = #(break-before?)
  }
  \layout { indent = \noindent
            #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
