\score {
  \new ChoirStaff <<
    \new Staff \withLyrics <<
      \characterName \markup Jonathas
      \global \clef "vdessus" \includeNotes "jonathas"
    >> \includeLyrics "paroles-jonathas"
    \new Staff \withLyrics <<
      \characterName \markup David
      \global \clef "vhaute-contre" \includeNotes "david"
    >> \includeLyrics "paroles-david"
  >>
  \layout { indent = \largeindent}
}