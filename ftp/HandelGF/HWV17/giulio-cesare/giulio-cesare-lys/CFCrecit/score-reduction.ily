global = \includeNotes #"global"

%% Recitativo
\score {
  \new StaffGroup <<
    \lyricStaff \markup Sesto. <<
      \keepWithTag #'up  \global
      \sesto \includeNotes #"sesto"
    >> \includeLyrics #"sesto-lyrics"
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
