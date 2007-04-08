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
    >>
  >>
  \header { opus = "Recitativo." }
  \layout { indent = \noindent }
}
