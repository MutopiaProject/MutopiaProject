globalA = \includeNotes #"global"

%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \keepWithTag #'(recit hack) \globalA
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \includePageTweaks
      \keepWithTag #'() \globalA
      \clef bass
      \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header {
    piece = "Scena X."
    opus = "Recitativo."
  }
  \layout { indent = \smallindent }
}
