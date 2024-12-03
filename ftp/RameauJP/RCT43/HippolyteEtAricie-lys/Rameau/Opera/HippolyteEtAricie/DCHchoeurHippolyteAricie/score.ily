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
    \new ChoirStaff <<
      \newHaraKiriStaffB \withLyrics <<
        \global \includeNotes "voix-dessus"
      >> \includeLyrics "paroles-choeur"
      \newHaraKiriStaffB \withLyrics <<
        \global \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles-choeur"
      \newHaraKiriStaffB \withLyrics <<
        \global \includeNotes "voix-taille"
      >> \includeLyrics "paroles-choeur"
      \newHaraKiriStaffB \withLyrics <<
        \global \includeNotes "voix-basse"
      >> \includeLyrics "paroles-choeur"
    >>
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "hippolyte-aricie"
    >> \includeLyrics "paroles"
    \new Staff << \instrumentName \markup \center-align { Basses Bassons }
                  \global \includeNotes "basse" >>
    \new Staff << \instrumentName \markup Contre-basses
                  \global \includeNotes "contre-basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
