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
  \header {
    piece = "Scena IX."
    opus = "Recitativo."
  }
  \layout { indent = \noindent }
}
