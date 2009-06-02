\score {
  \new StaffGroupNoBar <<
    \new StaffGroup <<
      \newHaraKiriStaffB <<
        {  s2.*19 s1*6 s2.*5 \break }
        \global \clef "dessus" \includeNotes "dessus" >>
      \newHaraKiriStaffB <<
        \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \newHaraKiriStaffB <<
        \global \clef "taille" \includeNotes "taille" >>
      \newHaraKiriStaffB <<
        \global \clef "basse" \includeNotes "basse" >>
    >>
    \new ChoirStaff <<
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus"
      >> \includeLyrics "paroles-dessus"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles-haute-contre"
      \newHaraKiriStaff \withLyrics <<
        { s2.^"Deux captifs" }
        \global \clef "vtaille" \includeNotes "voix-taille"
      >> \includeLyrics "paroles-taille"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vbasse" \includeNotes "voix-basse"
      >> \includeLyrics "paroles-basse"
    >>
    \new Staff << \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}
