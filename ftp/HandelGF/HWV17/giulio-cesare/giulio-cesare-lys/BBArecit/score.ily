%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \scoreInit
      \global
      \includeNotes #"recit"
    >>
    \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \global
      \clef bass
      \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header {
    scene = "SCENA II."
    scenedescr = \markup { \smallCaps { Cornelia, Sesto, } e detti. }
    breakbefore = #(break-before?)
  }
  \layout { indent = \noindent
            #(define tweak-key (*current-piece*)) }
}
