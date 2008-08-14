\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "soeurs-bis"
    >> \includeLyrics "paroles1"
    \new Staff << 
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
      {
        s1 s2.*2 s1*4 \break
        s1*4 \break
        s1*6 \break
      }
    >>
  >>
  \layout { }
}
