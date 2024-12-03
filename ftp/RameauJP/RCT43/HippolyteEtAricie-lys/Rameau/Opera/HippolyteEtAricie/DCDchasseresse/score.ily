\score {
  \new StaffGroupNoBar <<
    \new Staff << \instrumentName \markup "Un hautbois"
                  \global \includeNotes "hautbois" >>
    \new Staff \withLyrics <<
      \characterName \markup "Une chasseresse"
      \global \includeNotes "chasseresse"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName \markup \center-align {
        "Un basson" "Basse continue"
      }
      \global \includeNotes "basse" >>
  >>
  \layout { indent=\largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 144 4) } }
}
