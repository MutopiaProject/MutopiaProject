\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << \global \clef "dessus2" \includeNotes "dessus" >>
      \new Staff << \global \clef "haute-contre2" \includeNotes "haute-contre" >>
      \new Staff << \global \clef "taille2" \includeNotes "taille" >>
      \new Staff << \global \clef "quinte" \includeNotes "quinte" >>
    >>
    \new Staff \withLyrics <<
      \global \clef "vbasse" \includeNotes "epaphus"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}
