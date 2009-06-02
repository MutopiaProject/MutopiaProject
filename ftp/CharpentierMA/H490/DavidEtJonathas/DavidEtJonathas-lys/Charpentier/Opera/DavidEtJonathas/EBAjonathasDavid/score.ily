\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaff << \global \clef "dessus" \includeNotes "dessus1" >>
      \newHaraKiriStaff << \global \clef "dessus" \includeNotes "dessus2" >>
    >>
    \new ChoirStaff <<
      \new Staff \withLyrics <<
        \characterName \markup Jonathas
        \global \clef "vdessus" \includeNotes "jonathas"
      >> \includeLyrics "paroles-jonathas"
      \new Staff \withLyrics <<
        \characterName \markup David
        \global \clef "vhaute-contre" \includeNotes "david"
      >> \includeLyrics "paroles-david"
    >>
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent}
  \midi { }
}