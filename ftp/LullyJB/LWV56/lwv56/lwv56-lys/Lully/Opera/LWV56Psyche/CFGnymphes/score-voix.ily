\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics << 
      \characterName \markup \center-align \smallCaps { Deuxième Nymphe }
      \global \clef "vbas-dessus" \includeNotes "nymphe1"
    >> \includeLyrics "paroles1"
    \new Staff \withLyrics << 
      \characterName \markup \center-align \smallCaps { Troisième Nymphe }
      \global \clef "vbas-dessus" \includeNotes "nymphe2"
    >> \includeLyrics "paroles2"
  >>
  \layout { indent = \largeindent }
}
