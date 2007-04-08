global = \includeNotes #"global"

%% Recitativo
\score {
  \new StaffGroup <<
    \lyricStaff \markup Achilla. <<
      \keepWithTag #'recit  \global
      \achilla \includeNotes #"achilla"
    >> \includeLyrics #"achilla-lyrics"
    \instrStaff \markup "" <<
      \keepWithTag #'down \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \header {
    piece = "Atto Terzo, Scena I."
    opus = "Recitativo."
    breakbefore = ##t
  }
  \layout { }
}
