\score {
  \new StaffGroupNoBar <<
    \newTinyStaff \withLyrics <<
      \global \clef "vbasse" \includeNotes "saul-pythonisse"
    >> \includeLyrics "paroles-saul-pythonisse"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
}