global = \includeNotes #"global"

%% Recitativo
\score {
  \new StaffGroup <<
    \lyricStaff \markup Cleopatra. <<
      \keepWithTag #'recit \global
      \cleopatra \includeNotes #"cleopatra"
    >> \includeLyrics #"cleopatra-lyrics"
    \instrStaff \markup "" <<
      \keepWithTag #'down \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \header {
    piece = "Scena III."
    opus = "Recitativo."
  }
  \layout { }
}
