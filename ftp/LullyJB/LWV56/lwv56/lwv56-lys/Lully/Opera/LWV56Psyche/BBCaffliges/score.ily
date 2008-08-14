\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaff << \global \clef "dessus" \includeNotes "dessus1" >>
      \newHaraKiriStaff << \global \clef "dessus" \includeNotes "dessus2" >>
    >>
    \newHaraKiriStaff \withLyrics << 
      \global
      \clef "vbas-dessus" \includeNotes "bas-dessus"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaff \withLyrics << 
      \global \clef "vpetite-haute-contre" \includeNotes "petite-haute-contre"
    >> \includeLyrics "paroles2"
    \newHaraKiriStaff \withLyrics << 
      \global \clef "vbasse" \includeNotes "voix-basse"
    >> \includeLyrics "paroles3"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 192 4) } }
}
