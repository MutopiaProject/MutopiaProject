\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff <<
        \repeat unfold 9 { s1 \noBreak s1 \break }
        \instrumentName \markup { Violons I }
        \global \includeNotes "violon1"
      >>
      \new Staff <<
        \instrumentName \markup { Violons II }
        \global \includeNotes "violon2"
      >>
      \new Staff <<
        \instrumentName \markup { Violons III }
        \global \includeNotes "violon3"
      >>
      \new Staff <<
        \instrumentName \markup Violoncelles
        \global \includeNotes "violoncelle"
      >>
      \new Staff <<
        \instrumentName \markup { Basses de violon }
        \global \includeNotes "basse-de-violon"
      >>
      \new Staff <<
        \instrumentName \markup Bassons
        \global \includeNotes "basson"
      >>
    >>
    \new Staff \withLyrics <<
      \characterName \markup Thésée
      \global \includeNotes "thesee"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName \markup \center-align {
        "Basse du" "petit chœur" "Contre-basse"
      }
      \global \includeNotes "contre-basse"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
