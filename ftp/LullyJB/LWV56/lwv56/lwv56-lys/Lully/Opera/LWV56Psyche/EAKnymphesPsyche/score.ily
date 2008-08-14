\score {
  \new StaffGroupNoBar <<
    \newHaraKiriStaff \withLyrics <<
      \characterName \markup \center-align \smallCaps { Première Nymphe }
      \set Staff.shortInstrumentName = \markup { \concat { 1 \super è } N }
      \global \clef "vdessus" \includeNotes "nymphe1"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaff \withLyrics << 
      \characterName \markup \center-align \smallCaps { Deuxième Nymphe }
      \set Staff.shortInstrumentName = \markup { \concat { 2 \super è } N }
      \global \clef "vbas-dessus" \includeNotes "nymphe2"
    >> \includeLyrics "paroles2"
    \newHaraKiriStaff \withLyrics <<
      \characterName \markup Psyché
      \set Staff.shortInstrumentName = \markup { P. }
      \global \clef "vbas-dessus" \includeNotes "psyche"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 92 4) } }
}
