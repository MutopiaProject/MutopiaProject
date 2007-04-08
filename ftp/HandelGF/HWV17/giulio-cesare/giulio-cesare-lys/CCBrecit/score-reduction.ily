%% Recitativo
global = \includeNotes #"global"

\score {
  \new StaffGroup <<
    \recitStaff <<
      \keepWithTag #'recit \global
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \keepWithTag #'down \global
      \clef bass
      \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header { opus = "Recitativo." }
  \layout { indent = \smallindent }
}
