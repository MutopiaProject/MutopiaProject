\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaff \withLyrics <<
      \global \clef "vtaille" \includeNotes "captifs"
      { s2.*19 s1*6 s2.*5 \break }
    >> \includeLyrics "paroles-captifs"
    \new Staff << \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
}
