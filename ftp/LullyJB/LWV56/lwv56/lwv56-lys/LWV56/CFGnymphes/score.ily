\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics << 
      \characterName \markup \instruments { \smallCaps Deuxieme
                                            \smallCaps Nymphe }
      \global \basDessus \includeNotes "nymphe1"
    >> \includeLyrics "paroles1"
    \newStaffWithLyrics << 
      \characterName \markup \instruments { \smallCaps Troisieme
                                            \smallCaps Nymphe }
      \global \basDessus \includeNotes "nymphe2"
    >> \includeLyrics "paroles2"
    \newStaff << \scoreInit \global \basse \includeNotes #"basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { 
    indent = \largeindent
    #(define tweak-key (*current-piece*)) 
  }
  \midi { \tempo 4 = 132 }
}
