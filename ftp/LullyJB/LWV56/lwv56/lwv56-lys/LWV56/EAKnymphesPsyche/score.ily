\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup \instruments { \smallCaps Premiere
                                            \smallCaps Nymphe }
      \set Staff.shortInstrumentName = \markup { 1 \hspace #-1 \super è N. }
      \global \voixDessus \includeNotes "nymphe1"
    >> \includeLyrics "paroles1"
    \newStaffWithLyrics << 
      \characterName \markup \instruments { \smallCaps Deuxieme
                                            \smallCaps Nymphe }
      \set Staff.shortInstrumentName = \markup { 2 \hspace #-1 \super è N. }
      \global \basDessus \includeNotes "nymphe2"
    >> \includeLyrics "paroles2"
    \newStaffWithLyrics << 
      \characterName \markup Psyche
      \set Staff.shortInstrumentName = \markup { Psy. }
      \global \basDessus \includeNotes "psyche"
    >> \includeLyrics "paroles"
    \newStaff << 
      \scoreInit
      \global \basse \includeNotes #"basse"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout {
    indent = \largeindent
    \context { \RemoveEmptyStaffContext }
    #(define tweak-key (*current-piece*))
  }
  \midi { \tempo 4 = 92 }
}
