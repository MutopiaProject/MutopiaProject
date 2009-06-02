\score {
  \new ChoirStaff <<
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vdessus" \includeNotes "voix-dessus"
    >> \includeLyrics "paroles-dessus"
    \newHaraKiriStaff \withLyrics <<
      \characterName \markup David
      \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
    >> \includeLyrics "paroles-haute-contre"
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vtaille" \includeNotes "voix-taille"
    >> \includeLyrics "paroles-taille"
    \newHaraKiriStaff \withLyrics <<
      \characterName \markup Achis
      \global \clef "vbasse" \includeNotes "voix-basse"
    >> \includeLyrics "paroles-basse"
  >>
  \layout { indent = \largeindent }
}
