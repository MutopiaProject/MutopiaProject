%% Recitativo
global = \includeNotes #"global"

\score {
  \new StaffGroup <<
    \lyricStaff \markup Cesare. <<
      \keepWithTag #'recit \global
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \keepWithTag #'down \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \header { opus = "Recitativo." }
  \layout { }
}
