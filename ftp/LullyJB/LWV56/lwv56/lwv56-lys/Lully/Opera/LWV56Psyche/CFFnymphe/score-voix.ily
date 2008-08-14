\score {
  \new Staff \withLyrics << 
    \characterName \markup \center-align { \smallCaps Première
                                           \smallCaps Nymphe }
    \global \clef "vbas-dessus" \includeNotes "nymphe"
  >> \includeLyrics "paroles"
  \layout { indent = \largeindent }
}
