%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \scoreInit
      \keepWithTag #'recit \global
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \keepWithTag #'() \global
      \clef bass
      \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>

  \header {
    scene = "SCENA III."
    scenedescr = \markup \center-align {
      \line { \smallCaps Achilla con stuolo di Egizii }
      \line { che partano aurei bacili, e detti. } }
    breakbefore = #(break-before?)
  }
  \layout {
    indent = \noindent
    #(define tweak-key (*current-piece*))
    \context { 
      \Staff
      \remove "Time_signature_engraver" 
    }
  }
  \midi {\tempo 4 = 120}
}
