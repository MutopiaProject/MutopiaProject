\score {
  \new StaffGroupNoBar <<
    \newHaraKiriStaff \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "psyche"
    >> \includeLyrics "paroles"
    \newHaraKiriStaffB \withLyrics << 
      \global \clef "vhaute-contre" \includeNotes "furie1"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaffB \withLyrics << 
      \global \clef "vtaille" \includeNotes "furie2"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaffB \withLyrics << 
      \global \clef "vbasse" \includeNotes "furie3"
    >> \includeLyrics "paroles3"
    \new Staff <<
      { 
        s1*2 s2. s1 s2.*2 s1*2
        \break
        s1*24
        \break
        s1 s1 s2.*2 s1*3 s1*24
        \break
        s1 s2.*5 s1*24
        \break
        s1*4 s2. s1 s4.
      }
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 102 4) } }
}
