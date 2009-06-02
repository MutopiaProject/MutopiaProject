\score {
  \new ChoirStaff <<
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "clymene"
    >> \includeLyrics "paroles2"
    \new Staff \withLyrics <<
      \global \clef "vbasse-taille" \includeNotes "protee"
    >> \includeLyrics "paroles"
  >>
  \layout { }
}
