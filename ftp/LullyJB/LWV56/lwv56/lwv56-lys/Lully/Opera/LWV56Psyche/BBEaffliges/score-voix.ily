\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \global
      \clef "vpetite-haute-contre" \includeNotes "petite-haute-contre"
    >> \includeLyrics "paroles1"
    \new Staff \withLyrics << 
      \global \clef "vbasse" \includeNotes "voix-basse"
    >> \includeLyrics "paroles2"
  >>
  \layout { }
}
