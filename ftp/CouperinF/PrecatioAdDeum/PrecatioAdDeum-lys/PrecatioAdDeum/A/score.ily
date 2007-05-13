\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \global \includeNotes "basse-taille1"
    >> \includeLyrics "paroles1"
    \newStaffWithLyrics <<
      \global \includeNotes "basse-taille2"
    >> \includeLyrics "paroles2"
    \newStaffWithLyrics <<
      \global \includeNotes "basse"
    >> \includeLyrics "paroles3"
    \newStaff << \scoreInit \global \includeNotes "basse-continue"
                 \includeFigures "chiffres" >>
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 200 4) } }
}
