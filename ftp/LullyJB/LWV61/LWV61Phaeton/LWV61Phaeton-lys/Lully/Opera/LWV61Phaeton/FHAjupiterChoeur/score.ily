\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaffB << \global \clef "dessus" \includeNotes "dessus" >>
      \newHaraKiriStaffB << \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \newHaraKiriStaffB << \global \clef "taille" \includeNotes "taille" >>
      \newHaraKiriStaffB << \global \clef "quinte" \includeNotes "quinte" >>
      \newHaraKiriStaffB << \global \clef "basse" \includeNotes "basse" >>
    >>
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "voix1"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "voix2"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "voix3"
    >> \includeLyrics "paroles3"
    \new Staff \withLyrics <<
      \global \includeNotes "voix4"
    >> \includeLyrics "paroles4"
    \new Staff << \global \clef "basse" \includeNotes "basse-continue"
                  { s1 s2. s1 s2.*2 s1 s2.*2 \break }
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}