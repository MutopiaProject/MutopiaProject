\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaffB \withLyrics <<
      \global \clef "vdessus" \includeNotes "nymphe1"
    >> \includeLyrics "paroles1"
    \newTinyHaraKiriStaffB \withLyrics << 
      \global \clef "vbas-dessus" \includeNotes "nymphe2"
    >> \includeLyrics "paroles2"
    \newTinyHaraKiriStaffB \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "psyche"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  { s2. s1*6 s1*2 s2. s1 s1*2 s2.*2 s1 \pageBreak
                    s1*3 s2.*2 s1 s2.*41 s1*2 s1 s1 s1 s1*6 s1 s1 \pageBreak
                    s1*27 s2.*2 } >>
  >>
  \layout { }
}
