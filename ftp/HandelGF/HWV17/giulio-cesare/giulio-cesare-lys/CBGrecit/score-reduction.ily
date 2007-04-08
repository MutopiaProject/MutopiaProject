global = \includeNotes #"global"

%% Recitativo
\score {
  \new StaffGroup <<
    \lyricStaff \markup Cesare. <<
      \keepWithTag #'up \global
      \cesare \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \keepWithTag #'down \global
      \clef bass
      \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header { opus = "Recitativo." }
  \layout { }
}
