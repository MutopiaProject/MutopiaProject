\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff <<
        \instrumentName \markup \center-align {
          \line { Hautbois I }
          \line { Musettes I } }
        \global \includeNotes "hautbois1"
      >>
      \new Staff <<
        \instrumentName \markup \center-align {
          \line { Hautbois II }
          \line { Musettes II } }
        \global \includeNotes "hautbois2"
      >>
      \new Staff <<
        \instrumentName \markup { Violons I }
        \global \includeNotes "violon1"
      >>
      \new Staff <<
        \instrumentName \markup { Violons II }
        \global \includeNotes "violon2"
      >>
      \new Staff <<
        \instrumentName \markup Haute-contres
        \global \includeNotes "haute-contre"
      >>
      \new Staff <<
        \instrumentName \markup Tailles
        \global \includeNotes "taille"
      >>
      \new Staff <<
        \instrumentName \markup Bassons
        \global \includeNotes "basson"
      >>
    >>
    \new ChoirStaff \with { instrumentName = "Chœur          " } <<
      \newHaraKiriStaffB \withLyrics <<
        \global \includeNotes "voix-dessus1"
      >> \includeLyrics "paroles-dessus1"
      \newHaraKiriStaffB \withLyrics <<
        \global \includeNotes "voix-dessus2"
      >> \includeLyrics "paroles-dessus2"
      \newHaraKiriStaffB \withLyrics <<
        \global \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles-haute-contre"
      \newHaraKiriStaffB \withLyrics <<
        \global \includeNotes "voix-taille"
      >> \includeLyrics "paroles-taille"
      \newHaraKiriStaffB \withLyrics <<
        \global \includeNotes "voix-basse"
      >> \includeLyrics "paroles-basse"
    >>
    \new Staff <<
      \instrumentName \markup { Basse continue }
      \global \includeNotes "basse"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 132 4) } }
}
