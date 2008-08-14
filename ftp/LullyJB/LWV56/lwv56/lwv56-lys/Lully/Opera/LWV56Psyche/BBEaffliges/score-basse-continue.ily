\score {
  \new StaffGroupNoBar <<
    \newTinyHaraKiriStaff \withLyrics << 
      \global
      \clef "vpetite-haute-contre" \includeNotes "petite-haute-contre"
    >> \includeLyrics "paroles1"
    \newTinyStaff \withLyrics << 
      \global \clef "vbasse" \includeNotes "voix-basse"
    >> \includeLyrics "paroles2"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
}
