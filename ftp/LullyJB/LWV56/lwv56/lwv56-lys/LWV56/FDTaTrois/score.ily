\score {
  \new StaffGroupNoBar <<
    \new InnerChoirStaff <<
      \newStaffWithLyrics << 
        \scoreInit
        \global \voixHauteContre \includeNotes "voix-haute-contre" 
      >> \includeLyrics "paroles1"
      \newStaffWithLyrics << 
        \global \voixTaille \includeNotes "voix-taille" 
      >> \includeLyrics "paroles2"
      \newStaffWithLyrics << 
        \global \basse \includeNotes "voix-basse" 
      >> \includeLyrics "paroles3"
    >>
    \newStaff << \global \basse \includeNotes "basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}