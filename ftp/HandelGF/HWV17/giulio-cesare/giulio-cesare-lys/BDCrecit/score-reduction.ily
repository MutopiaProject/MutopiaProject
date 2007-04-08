global = \includeNotes #"global"

%% Recitativo
\score {
  \new OrchestraStaffGroup <<
    \lyricStaff \markup "Sesto." <<
      \includePageTweaks
      \keepWithTag #'() \global
      \sesto \includeNotes #"sesto" 
    >>
    \includeLyrics #"sesto-lyrics" 
    \instrStaff \markup "" <<
      \keepWithTag #'() \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \header { opus = "Recitativo." }
  \layout { }
}
