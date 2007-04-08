global = \includeNotes #"global"

%% Recitativo.
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \keepWithTag #'recit \global
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \includePageTweaks
      \keepWithTag #'() \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \header {
    piece = "Scena IX."
    opus = "Recitativo."
  }
  \layout { indent = \smallindent }
}
