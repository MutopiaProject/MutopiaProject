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
      \global \includeNotes "voix1"
    >> \includeLyrics "paroles1"
    \new Staff \withLyrics <<
      \global \includeNotes "voix2"
    >> \includeLyrics "paroles2"
    \new Staff \withLyrics <<
      \global \includeNotes "voix3"
    >> \includeLyrics "paroles3"
    \new Staff \withLyrics <<
      \global \includeNotes "voix4"
    >> \includeLyrics "paroles4"
    \new Staff <<
      \global \includeNotes "basse-continue"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
  \midi { }
}