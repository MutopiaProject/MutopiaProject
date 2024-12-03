\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << \instrumentName \markup Hautbois
                    \global \includeNotes "hautbois" >>
      \new Staff << \instrumentName \markup Violons
                    \global \includeNotes "violon" >>
      \new Staff << \instrumentName \markup Haute-contres
                    \global \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup Tailles
                    \global \includeNotes "taille" >>
      \new Staff << \instrumentName \markup Bassons
                    \global \includeNotes "basson" >>
    >>
    \new ChoirStaff \with { instrumentName = "Chœur          " } <<
      \new Staff \withLyrics <<
        { s1*79 s1^\markup \large "Petit chœur" }
        \global \includeNotes "voix-dessus"
      >> \includeLyrics "paroles-dessus"
      \newHaraKiriStaffB \withLyrics <<
        { s1*79 \break s1*8 \break }
        \global \includeNotes "voix-dessus2"
      >> \includeLyrics "paroles-dessus2"
      \new Staff \withLyrics <<
        \global \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles-haute-contre"
      \new Staff \withLyrics <<
        \global \includeNotes "voix-taille"
      >> \includeLyrics "paroles-taille"
      \new Staff \withLyrics <<
        { s1*95 \noBreak }
        \global \includeNotes "voix-basse"
      >> \includeLyrics "paroles-basse"
    >>
    \new Staff << \instrumentName \markup { Basse continue }
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 144 4) } }
}
