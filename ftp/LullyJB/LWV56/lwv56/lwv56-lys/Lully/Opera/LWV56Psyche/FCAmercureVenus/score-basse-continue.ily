\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaffB \withLyrics <<
      \global \includeNotes "mercure-venus"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  { s2.*8 \pageBreak
                    s1*4 s2.*2 s1*3 s2. s1*2 s2.*3 s1 s1*3 s2.*2 s1*2
                    s1 s1*2 s1*5 s2.*27 \pageBreak s2.*27 s1 s1 s2.*3 s1



 } >>
  >>
  \layout { }
}
