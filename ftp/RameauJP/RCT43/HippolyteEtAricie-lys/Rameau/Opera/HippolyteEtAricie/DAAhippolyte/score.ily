\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff << \instrumentName \markup Flûtes
                    \global \includeNotes "flute" >>
      \new Staff << \instrumentName \markup Violons
                    \global \includeNotes "violon" >>
      \new Staff << \instrumentName \markup Haute-contres
                    \global \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup Tailles
                    \global \includeNotes "taille" >>
    >>
    \newHaraKiriStaff \withLyrics <<
      \characterName \markup Hippolyte
      \global \includeNotes "hippolyte"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup { Basse continue }
                  \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 88 4) } }
}