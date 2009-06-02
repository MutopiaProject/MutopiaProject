\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaff \withLyrics <<
      \global \clef "vbasse" \includeNotes "reduction"
      { s1*8 s1.*3 s1*9 s1.*2 s1*2 s1.*39 s1*2 s2. \break s2.*19 s1*3 
        s1*12 s1 \break s1*7 \break s1.*3 s1*2 s1.*3 \break s1*10 s1*4
        s1 \break }
    >> \includeLyrics "paroles-reduction"
    \new Staff <<
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
}
