\score {
  \new ChoirStaff <<
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vdessus" \includeNotes "voix-dessus"
    >> \includeLyrics "paroles2"
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
    >> \includeLyrics "paroles2"
    \newHaraKiriStaffB \withLyrics <<
        \global \clef "vtaille" \includeNotes "voix-taille"
      >> \includeLyrics "paroles2"
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vbasse" \includeNotes "voix-basse"
    >> \includeLyrics "paroles2"
    \new Staff \withLyrics <<
      \global \clef "vbasse" \includeNotes "saul-jonathas"
    >> \includeLyrics "paroles"
  >>
  \layout { }
}
