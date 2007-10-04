\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newStaff <<
        \instrumentName \markup { \null \translate #'(0 . -10) Violons }
        \global \dessus \includeNotes "dessus1" >>
      \newStaff << \global \dessus \includeNotes "dessus2" >>
    >>
    \newStaffWithLyrics <<
      \characterName \markup "Le Chevalier"
      \set Staff . shortInstrumentName = "C."
      \global \voixHauteContre \includeNotes "chevalier"
    >> \includeLyrics "paroles-chevalier"
    \newStaffWithLyrics <<
      \characterName \markup "Ubalde"
      \set Staff . shortInstrumentName = "U."
      \global \basse \includeNotes "ubalde"
    >> \includeLyrics "paroles-ubalde"
    \newStaff <<
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
      {
        s2.*14 \break
        s1*17 s2. \break
        s1.*15 \break
        s1*19 \break
      }
    >>
  >>
  \layout { 
    indent = \largeindent
    \context { \RemoveEmptyStaffContext }
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
