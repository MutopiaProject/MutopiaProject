\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \global \includeNotes "pluton-thesee"
    >> \includeLyrics "paroles"
    \newHaraKiriStaffB <<
      \global
      { s1*5 s1 s2. s1 s1 s2. s1*3 \break
        << s1*0-"Bassons et basse continue"
           \includeNotes "basse" >> \break } >>
    \new Staff <<
      { s1*5 s1 s2. s1 s1 s2. s1*3 s1*0-"Basse du grand chœur" }
      \global \includeNotes "basse-grand-choeur" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
