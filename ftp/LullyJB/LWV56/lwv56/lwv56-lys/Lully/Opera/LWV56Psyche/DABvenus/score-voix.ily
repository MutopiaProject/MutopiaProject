\score {
  \new Staff \withLyrics << 
    \characterName \markup Vénus
    \global { \clef "vbas-dessus" \includeNotes "venus" s4 }
  >> \includeLyrics "paroles"
  \layout { indent = \largeindent }
}
