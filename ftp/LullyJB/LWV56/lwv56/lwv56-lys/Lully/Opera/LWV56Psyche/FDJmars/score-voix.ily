\score {
  \new Staff \withLyrics <<
    \characterName \markup Mars
    \global \clef "basse" \includeNotes "mars" 
  >> \includeLyrics "paroles"
  \layout { indent = \largeindent }
}
