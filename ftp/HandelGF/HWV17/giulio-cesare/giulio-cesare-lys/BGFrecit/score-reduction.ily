global = \includeNotes #"global"

%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \keepWithTag #'recit \global
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \includePageTweaks
      \keepWithTag #'down \global
      \clef bass
      \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header { opus = "Recitativo." }
  \layout { indent = \smallindent }
}
