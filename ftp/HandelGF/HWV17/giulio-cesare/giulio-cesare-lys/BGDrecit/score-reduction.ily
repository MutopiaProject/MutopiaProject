global = \includeNotes #"global"

%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \global
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \includePageTweaks
      \global
      \clef bass
      \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header { opus = "Recitativo." }
  \layout { indent = \smallindent }
}
