
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \scoreInit \global 
      \voixDessus
      \includeNotes "voix-dessus"
    >>  \includeLyrics "paroles-dessus"
    \newStaffWithLyrics << 
      \global 
      \petiteHauteContre \includeNotes "voix-petite-haute-contre"
    >>  \includeLyrics "paroles-petite-haute-contre"
    \newStaffWithLyrics << 
      \global \voixTaille \includeNotes "voix-taille"
    >>  \includeLyrics "paroles-taille"
    \newStaffWithLyrics << 
      \global \basse \includeNotes "voix-basse"
    >>  \includeLyrics "paroles-basse"
    \newStaff << \global \basse \includeNotes "basse" >> 
  >>
  \header {
    titre = "Dialogue des gens qui en musique demandent des livres"
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 72 }
}
