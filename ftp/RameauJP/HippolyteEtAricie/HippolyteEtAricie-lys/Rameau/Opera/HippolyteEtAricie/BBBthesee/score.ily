\score {
  \new StaffGroupNoBar <<
    \new Staff <<
      \instrumentName \markup { Basson I }
      \global \includeNotes "basson1" >>
    \new Staff <<
      \instrumentName \markup { Basson II }
      \global \includeNotes "basson2" >>
    \new Staff \withLyrics <<
      \characterName \markup Thésée
      \global \includeNotes "thesee"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName \markup \center-align { "Basse continue" Contre-basse }
      \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
