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
      \clef bass \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header {
    act = "ATTO SECONDO"
    scene = "SCENA I."
    scenedescr = \markup \center-align {
      \line { Deliziosa selva di cedri con il monte Parnasso nel prospetto, }
      \line { quale contiene in se la reggia della Virtù. }
      \line { \smallCaps Cleopatra, e \smallCaps Nireno. } }
    breakbefore = #(break-before?)
  }
  \layout { indent = \smallindent
            #(define tweak-key (*current-piece*)) }
  \midi {\tempo 4 = 120}
}
