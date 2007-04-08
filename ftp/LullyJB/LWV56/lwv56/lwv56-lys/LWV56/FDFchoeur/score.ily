\score {
  \new StaffGroupNoBar <<
    \new InnerChoirStaff <<
      \newStaffWithLyrics << 
        \scoreInit
        \global \voixDessus \includeNotes "voix-dessus" 
      >> \includeLyrics "paroles1"
      \newStaffWithLyrics << 
        \global \voixHauteContre \includeNotes "voix-haute-contre" 
      >> \includeLyrics "paroles2"
      \newStaffWithLyrics << 
        \global \voixTaille \includeNotes "voix-taille" 
      >> \includeLyrics "paroles3"
      \newStaffWithLyrics << 
        \global \basse \includeNotes "voix-basse" 
      >> \includeLyrics "paroles4"
    >>
    \new InnerStaffGroup <<
      \newStaff << \global \dessus \includeNotes "dessus" >>
      \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
      \newStaff << \global \taille \includeNotes "taille" >>
      \newStaff << \global \quinte \includeNotes "quinte" >>
      \newStaff << \global \basse \includeNotes "basse" >>
    >>
    \newStaff << \global \basse \includeNotes "basse-continue" >>
  >>
  \header {
    titre = "Chœur"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}