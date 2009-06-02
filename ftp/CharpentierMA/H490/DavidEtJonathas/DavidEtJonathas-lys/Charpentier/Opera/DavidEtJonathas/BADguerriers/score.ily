\score {
  \new StaffGroupNoBar <<
    \new StaffGroup <<
      \new Staff << \global \clef "dessus"
                    { \includeNotes "dessus1-A" \break
                      \includeNotes "dessus-B"
                      \includeNotes "dessus-C" \break
                      \includeNotes "dessus1-D" \break
                      \includeNotes "dessus-E" } >>
      \newHaraKiriStaff << \global \clef "dessus"
                           { \includeNotes "dessus2-A"
                             s2. s2.*30
                             \includeNotes "dessus2-D" } >>
      \newHaraKiriStaffB << \global \clef "haute-contre"
                            \includeNotes "haute-contre" >>
      \newHaraKiriStaffB << \global \clef "taille"
                            \includeNotes "taille" >>
    >>
    \new ChoirStaff <<
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus"
      >> \includeLyrics "paroles-dessus"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles-haute-contre"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vtaille" \includeNotes "voix-taille"
      >> \includeLyrics "paroles-taille"
      \new Staff \withLyrics <<
        \characterName \markup "Un Guerrier"
        \global \clef "vbasse" \includeNotes "voix-basse"
      >> \includeLyrics "paroles-basse"
    >>
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}
