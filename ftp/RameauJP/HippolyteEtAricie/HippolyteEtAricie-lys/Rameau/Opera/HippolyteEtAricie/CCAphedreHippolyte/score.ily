\score {
  \new StaffGroupNoBar <<
    \newHaraKiriStaffB <<
      \global \includeNotes "violon1" \includeNotes "violons"
    >>
    \newHaraKiriStaffB <<
      \global \includeNotes "violon2"
    >>
    \new Staff \withLyrics <<
      \global \includeNotes "phedre-hippolyte"
    >> \includeLyrics "paroles"
    \new Staff << 

      { s2. s1 s2. s1 s1 s2.*2 s1 s1*4 s2. s1*2 s2. s1 s2.*2 s1*2
        s2.*2 s1*2 s2. s1 s1*2 s4 s2. s2. s1 s1 s1*2 s2. s1*2 s2.
        s1 s2. s1 s2. s1 s2. \noBreak }
      \global \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
