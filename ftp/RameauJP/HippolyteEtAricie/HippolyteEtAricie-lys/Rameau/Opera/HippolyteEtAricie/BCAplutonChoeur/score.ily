\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new Staff <<
        \instrumentName \markup { Violons I }
        { s2.*40 s4. s4.^\markup { Violons I } }
        \global \includeNotes "violon1" >>
      \new Staff <<
        \instrumentName \markup { Violons II }
        { s2.*40 s4. s4.^\markup { Violons II } }
        \global \includeNotes "violon2" >>
      \newHaraKiriStaffB <<
        { s2.*40 s4. s4.^"Haute-contres" }
        \global \includeNotes "haute-contre" >>
      \newHaraKiriStaffB <<
        { s2.*40 s4. s4.^"Tailles" }
        \global \includeNotes "taille" >>
      \new Staff <<
        \instrumentName \markup Bassons
        { s2.*40 s4. s4.^"Bassons" }
        \global \includeNotes "basson" >>
    >>
    \newHaraKiriStaffB \withLyrics <<
      { s2.*40 s4. s4.^"Chœur" }
      \global \includeNotes "voix-haute-contre"
    >> \includeLyrics "paroles-haute-contre"
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "voix-taille"
    >> \includeLyrics "paroles-taille"
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "voix-basse"
    >> \includeLyrics "paroles-basse"
    \new Staff \withLyrics <<
      \characterName \markup Pluton
      { s2.*40 s4. s4.^"Pluton" }
      \global \includeNotes "pluton"
    >> \includeLyrics "paroles"
    \new StaffGroupNoBracket <<
      \new Staff <<
        \instrumentName \markup { Basse continue }
        { s2.*40 s4. s4.^"Basse continue" }
        \global \includeNotes "basse" >>
      \newHaraKiriStaffB <<
        { s2.*40 s4. s4.-"Contre-basse" }
        \global \includeNotes "contre-basse" >>
      >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
