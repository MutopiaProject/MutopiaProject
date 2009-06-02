\score {
  \new ChoirStaff <<
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vdessus" \includeNotes "voix-dessus"
    >> \includeLyrics "paroles-dessus"
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
    >> \includeLyrics "paroles-haute-contre"
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vtaille" \includeNotes "voix-taille"
    >> \includeLyrics "paroles-taille"
    \new Staff \withLyrics <<
      \characterName \markup "Un Guerrier"
      \global \clef "vbasse" \includeNotes "voix-basse"
    >> \includeLyrics "paroles-basse"
  >>
  \layout { indent = \largeindent }
}
