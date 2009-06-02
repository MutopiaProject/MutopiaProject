\score {
  \new Staff \withLyrics <<
    \characterName \markup "La Pythonisse"
    \keepWithTag #'() \global
    \clef "vhaute-contre" \includeNotes "pythonisse"
  >> \includeLyrics "paroles"
  \layout { indent = \largeindent }
}