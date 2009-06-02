\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << \global \clef "dessus" \includeNotes "dessus" >>
      \new Staff << \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \new Staff << \global \clef "taille" \includeNotes "taille" >>
      \new Staff << \global \clef "quinte" \includeNotes "quinte" >>
      \new Staff << \global \clef "basse" \includeNotes "basse" >>
    >>
    \new Staff \withLyrics <<
      \global \clef "vdessus" \includeNotes "voix-dessus"
    >> \includeLyrics "paroles-choeur"
    \new Staff \withLyrics <<
      \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
    >> \includeLyrics "paroles-choeur"
    \new Staff \withLyrics <<
      \global \clef "vtaille" \includeNotes "voix-taille"
    >> \includeLyrics "paroles-choeur"
    \new Staff \withLyrics <<
      \global \clef "vbasse" \includeNotes "voix-basse"
    >> \includeLyrics "paroles-basse"
    \new Staff << \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}