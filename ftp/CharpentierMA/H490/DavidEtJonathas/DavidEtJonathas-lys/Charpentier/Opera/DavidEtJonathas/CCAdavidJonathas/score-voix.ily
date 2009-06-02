\score {
  \new StaffGroupNoBar <<
    \new ChoirStaff <<
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus1"
      >> \includeLyrics "paroles-dessus1"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus2"
      >> \includeLyrics "paroles-dessus2"
      \newHaraKiriStaff \withLyrics <<
        \characterName \markup Jonathas
        \global \clef "vdessus" \includeNotes "jonathas"
      >> \includeLyrics "paroles-dessus"
      \newHaraKiriStaffB \withLyrics <<
        { s1*5 s2.*15 \break
          s1*25 \break
          s2.*8 \break
        }
        \global \clef "vhaute-contre" \includeNotes "david"
      >> \includeLyrics "paroles-haute-contre"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vtaille" \includeNotes "voix-taille"
      >> \includeLyrics "paroles-taille"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vbasse" \includeNotes "voix-basse"
      >> \includeLyrics "paroles-basse"
    >>
  >>
  \layout { indent = \largeindent }
}