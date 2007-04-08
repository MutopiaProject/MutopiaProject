%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \lyricStaff \markup Cleopatra. <<
      \keepWithTag #'up  \global
      \cleopatra \includeNotes #"cleopatra"
    >> \includeLyrics #"cleopatra-lyrics"
    \instrStaff \markup "" <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass
      \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header {
    scene = "SCENA VII."
    scenedescr = \markup { 
      Luogo di delizie. \smallCaps Cleopatra,
      e poi \smallCaps Cesare. }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi {\tempo 4 = 120}
}
