\score {
  \new ChoirStaff <<
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vdessus" \includeNotes "voix-dessus"
    >> \includeLyrics "paroles2"
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
    >> \includeLyrics "paroles3"
    \new Staff \withLyrics <<
      \global \clef "vbasse" \includeNotes "saul-david-jonathas-joadab"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vbasse" \includeNotes "voix-basse"
    >> \includeLyrics "paroles4"
  >>
  \layout { }
}