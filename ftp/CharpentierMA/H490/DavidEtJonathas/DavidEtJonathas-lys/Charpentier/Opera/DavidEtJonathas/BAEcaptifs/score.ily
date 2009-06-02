\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \characterName \markup \center-column \smallCaps { Première Captive }
      \global \clef "vdessus" \includeNotes "voix-dessus1"
    >> \includeLyrics "paroles1"
    \new Staff \withLyrics <<
      \characterName \markup \center-column \smallCaps { Seconde Captive }
      \global \clef "vdessus" \includeNotes "voix-dessus2"
    >> \includeLyrics "paroles2"
    \new Staff << \instrumentName \markup { Basse continue }
                  \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}
