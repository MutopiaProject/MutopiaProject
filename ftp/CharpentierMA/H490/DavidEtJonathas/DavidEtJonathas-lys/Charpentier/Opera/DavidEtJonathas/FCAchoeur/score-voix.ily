\score {
  \new ChoirStaff <<
    \new Staff \withLyrics <<
      \global \clef "vdessus" \includeNotes "voix-dessus"
    >> \includeLyrics "paroles1"
    \new Staff \withLyrics <<
      \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
    >> \includeLyrics "paroles2"
    \new Staff \withLyrics <<
      \global \clef "vtaille" \includeNotes "voix-taille"
    >> \includeLyrics "paroles3"
    \new Staff \withLyrics <<
      \global \clef "vbasse" \includeNotes "voix-basse"
    >> \includeLyrics "paroles4"
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vhaute-contre" \includeNotes "david"
    >> \includeLyrics "paroles"
  >>
  \layout { }
}
