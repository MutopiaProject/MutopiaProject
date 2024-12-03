\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << \instrumentName \markup { Violons I }
                    \global \includeNotes "violon1" >>
      \new Staff << \instrumentName \markup { Violons II }
                    \global \includeNotes "violon2" >>
      \new Staff << \instrumentName \markup { Basson I }
                    \global \includeNotes "basson1" >>
      \new Staff << \instrumentName \markup { Basson II }
                    \global \includeNotes "basson2" >>
    >>
    \new Staff \withLyrics <<
      \characterName \markup Tisiphone
      \global \includeNotes "tisiphone"
    >> \includeLyrics "paroles-tisiphone"
    \new Staff \withLyrics <<
      \characterName \markup Thésée
      \global \includeNotes "thesee"
    >> \includeLyrics "paroles-thesee"
    \new Staff << \instrumentName \markup { Basse continue }
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
