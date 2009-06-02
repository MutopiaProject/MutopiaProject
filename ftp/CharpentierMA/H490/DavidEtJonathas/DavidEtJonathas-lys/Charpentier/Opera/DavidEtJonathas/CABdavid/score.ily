\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket \with {
      \consists "Instrument_name_engraver"
      instrumentName = "Dessus              "
    } <<
      \newHaraKiriStaff <<
        \global \clef "dessus" \includeNotes "dessus1" >>
      \newHaraKiriStaff <<
        \global \clef "dessus" \includeNotes "dessus2" >>
    >>
    \new ChoirStaff <<
      \newHaraKiriStaffB \withLyrics <<
        { s1*23 s2 s2^\markup { Chœur de la suite de Jonathas,
                                qu'on entend et qu'on ne voit point. } }
        \global \clef "vdessus" \includeNotes "voix-dessus1"
      >> \includeLyrics "paroles1"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus2"
      >> \includeLyrics "paroles2"
    >>
    \new Staff \withLyrics <<
      \characterName \markup David
      \global \clef "vhaute-contre" \includeNotes "david"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup Basses
                  \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}