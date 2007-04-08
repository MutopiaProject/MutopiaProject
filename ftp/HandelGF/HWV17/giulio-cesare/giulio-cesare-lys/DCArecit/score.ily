%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \lyricStaff \markup Cleopatra. <<
      \keepWithTag #'recit \global
      \cleopatra \includeNotes #"cleopatra"
    >> \includeLyrics #"cleopatra-lyrics"
    \instrStaff \markup "" <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header {
    scene = "SCENA III."
    scenedescr = \markup { \smallCaps Cleopatra sole con guardie. }
    breakbefore = #(break-before?) 
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi {\tempo 4 = 120}
}
