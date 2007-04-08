global = \includeNotes #"global"

%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \includePageTweaks
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
    piece = "Scena II."
    opus = "Recitativo."
  }
  \layout { indent = \noindent }
}
