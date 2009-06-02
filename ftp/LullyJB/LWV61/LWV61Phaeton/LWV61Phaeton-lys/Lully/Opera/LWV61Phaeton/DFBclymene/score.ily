\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << \global \clef "dessus2" \includeNotes "dessus" >>
      \new Staff << \global \clef "mezzosoprano/treble" \includeNotes "haute-contre" >>
      \new Staff << \global \clef "quinte" \includeNotes "taille" >>
      \new Staff << \global \clef "quinte" \includeNotes "quinte" >>
    >>
    \new Staff \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "clymene"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}
