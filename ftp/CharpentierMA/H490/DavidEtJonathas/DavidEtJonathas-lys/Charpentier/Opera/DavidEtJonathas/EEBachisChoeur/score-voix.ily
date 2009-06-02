\score {
  \new StaffGroupNoBar <<
    \new ChoirStaff <<
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus"
      >> \includeLyrics "paroles1"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles2"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vtaille" \includeNotes "voix-taille"
      >> \includeLyrics "paroles3"
      \newHaraKiriStaff \withLyrics <<
        \characterName \markup Achis 
        \global \clef "vbasse" \includeNotes "achis"
      >> \includeLyrics "paroles"
    >>
  >>
  \layout { indent = \largeindent }
}
