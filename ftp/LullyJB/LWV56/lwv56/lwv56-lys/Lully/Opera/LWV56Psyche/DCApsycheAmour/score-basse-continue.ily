\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics << 
      \global \includeNotes "psyche-amour"
    >> \includeLyrics "paroles"
    \new Staff <<
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
      { s2.*4 s1
        s1*3
        s2.\noBreak s1\noBreak s1\noBreak s2 \bar "" \break }
    >>
  >>
  \layout { }
}
