\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << \global \clef "soprano/treble" \includeNotes "dessus" >>
      \new Staff << \global \clef "mezzosoprano/treble" \includeNotes "haute-contre" >>
      \new Staff << \global \clef "quinte" \includeNotes "taille" >>
      \new Staff << \global \clef "quinte" \includeNotes "quinte" >>
    >>
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vdessus" \includeNotes "libye"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}
