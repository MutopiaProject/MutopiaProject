
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << \scoreInit \global
                           \basDessus \includeNotes "bas-dessus"
                         >>  \includeLyrics "paroles1"
    \newStaffWithLyrics << \global
                           \petiteHauteContre \includeNotes "petite-haute-contre"
                         >>  \includeLyrics "paroles2"
    \newStaffWithLyrics << \global
                           \basse \includeNotes "voix-basse"
                         >> \includeLyrics "paroles3"
    \new StaffGroupNoBracket <<
      \newStaff << \global \dessus \includeNotes "dessus1" >>
      \newStaff << \global \dessus \includeNotes "dessus2" >>
      \newStaff << \global \basse \includeNotes "basse" >>
    >>
  >>
  \header {
    petitTitre = "Ritournelle"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 132 }
}
