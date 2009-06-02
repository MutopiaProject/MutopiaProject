\score {
  \new ChoirStaff <<
    \newHaraKiriStaff \withLyrics <<
      \global \clef "vdessus" \includeNotes "voix-dessus"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaff \withLyrics <<
      \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
    >> \includeLyrics "paroles2"
    \newHaraKiriStaff \withLyrics <<
      \global \clef "vtaille" \includeNotes "voix-taille"
      >> \includeLyrics "paroles3"
    \newHaraKiriStaff \withLyrics <<
      \global \clef "vbasse" \includeNotes "voix-basse"
    >> \includeLyrics "paroles4"
    \newHaraKiriStaff \withLyrics <<
      \global \clef "vhaute-contre" \includeNotes "david"
    >> \includeLyrics "paroles"
  >>
  \layout { }
}
