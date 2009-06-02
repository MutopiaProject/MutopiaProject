\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaffB \withLyrics <<
      \global \includeNotes "reduction"
    >> \includeLyrics "paroles-reduction"
    \new Staff << \global \clef "basse" \includeNotes "basse-continue"
                  { s1*2 s1. s1*4 s1. s1*2 s1.*3 s1 s2.*3 s1 s1. s1 s1. s1*3 \break
                    s1*2 s2. s1 s2. s1*4 s2.*2 s1*4 s1 s1 s2.*4 s1
                    s2. s1 s1 s2. s1*3 s2. s1 s1 s1*2 s2.*2 s1*2 s1*5
                    s1. \break }
                  \includeFigures "chiffres" >>
  >>
  \layout { }
}
