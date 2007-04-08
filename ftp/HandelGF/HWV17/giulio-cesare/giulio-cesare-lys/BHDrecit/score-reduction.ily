global = \includeNotes #"global"

%% Recitativo.
\score {
  \new OrchestraStaffGroup <<
    \lyricStaff \markup "Cleopatra." <<
      \global
      \cleopatra \includeNotes #"recit" 
    >> \includeLyrics #"lyrics" 
    \instrStaff \markup "" <<
      \includePageTweaks
      \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \header { opus = "Recitativo." }
  \layout { }
}
