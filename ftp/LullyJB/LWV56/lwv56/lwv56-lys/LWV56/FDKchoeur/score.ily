\score {
  \new StaffGroupNoBar <<
    \new InnerChoirStaff <<
      \newStaffWithLyrics << 
        \scoreInit
        \global \voixDessus \includeNotes "voix-dessus" 
      >> \includeLyrics "paroles"
      \newStaffWithLyrics << 
        \global \voixHauteContre \includeNotes "voix-haute-contre" 
      >> \includeLyrics "paroles"
      \newStaffWithLyrics << \global \voixTaille \includeNotes "voix-taille" >>
      \includeLyrics "paroles"
      \newStaffWithLyrics << \global \basse \includeNotes "voix-basse" >>
      \includeLyrics "paroles"
    >>
    \new InnerStaffGroup <<
      \newStaff << \global \dessus \includeNotes "dessus" >>
      \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
      \newStaff << \global \taille \includeNotes "taille" >>
      \newStaff << \global \quinte \includeNotes "quinte" >>
      \newStaff << \global \basse \includeNotes "basse" >>
    >>
    \new InnerStaffGroup <<
      \newStaff << \global \dessus \includeNotes "trompette" >>
      \newStaff << \global \basse \includeNotes "timbales" >>
    >>
    \newStaff << \global \basse \includeNotes "basse-continue"
                 \includeFigures "chiffres" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}