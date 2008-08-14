\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \global
      \clef "vbas-dessus" \includeNotes "bas-dessus"
    >> \includeLyrics "paroles1"
    \new Staff \withLyrics << 
      \global \clef "vpetite-haute-contre" \includeNotes "petite-haute-contre"
    >> \includeLyrics "paroles2"
    \new Staff \withLyrics << 
      \global \clef "vbasse" \includeNotes "voix-basse"
    >> \includeLyrics "paroles3"
  >>
  \layout { }
}
