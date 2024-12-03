\score {
  \new StaffGroupNoBar<<
    \new InnerStaffGroup <<
      \newHaraKiriStaffB <<
        { s8 s2.*2 s1 s1*2 s1*6 s2 s4 s4^"Haute-contres" } 
        \global \includeNotes "haute-contre"
      >>
      \newHaraKiriStaffB <<
        { s8 s2.*2 s1 s1*2 s1*6 s2 s4 s4-"Tailles" }
        \global \includeNotes "taille"
      >>
    >>
    \new InnerChoirStaff <<
      \newHaraKiriStaffB \withLyrics <<
        \global \includeNotes "voix-dessus1"
      >> \includeLyrics "paroles-choeur"
      \newHaraKiriStaffB \withLyrics <<
          \global \includeNotes "voix-dessus2"
        >> \includeLyrics "paroles-choeur"
      \newHaraKiriStaffB \withLyrics <<
        \global \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles-choeur"
    >>
    \new Staff \withLyrics <<
      { s8 s2.*2 s1 s1*2 s1*6 \break \grace s8 } 
      \global \includeNotes "phedre-aricie-hippolyte"
    >> \includeLyrics "paroles"
    \new Staff << \global \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 108 4) } }
}
