global = \includeNotes #"global"

%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \recitStaff <<
      \global
      \includeNotes #"recit"
    >> \includeLyrics #"lyrics"
    \instrStaff \markup "" <<
      \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \header { opus = "Recitativo." }
  \layout { indent = \smallindent }
}
