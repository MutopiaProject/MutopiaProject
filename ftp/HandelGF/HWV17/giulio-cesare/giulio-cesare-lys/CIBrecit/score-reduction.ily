global = \includeNotes #"global"

%% Recitativo
\score {
  \new StaffGroup <<
    \recitStaff <<
      \keepWithTag #'recit  \global
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \keepWithTag #'down \global
      \clef bass
      \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \layout { indent = \noindent }
  %%\midi {\tempo 4 = 120}
}
