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
      { s2 s1*3 \break }
      \clef bass
      \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header {
    scene = "SCENA V."
    scenedescr = \markup { 
      \smallCaps { Giulio Cesare,} che raspisce il sigillo a 
      \smallCaps Sesto, e \smallCaps Curio, e \smallCaps Nireno.
    }
    breakbefore = #(break-before?) 
  }
  \layout { indent = \noindent
            #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
