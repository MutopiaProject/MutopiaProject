\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \characterName \markup Armide
      \set Staff . shortInstrumentName = "A."
      \global \basDessus \includeNotes "armide"
    >> \includeLyrics "paroles-armide"
    \newStaffWithLyrics <<
      \characterName \markup Renaud
      \set Staff . shortInstrumentName = "R."
      \global \voixHauteContre \includeNotes "renaud"
      { 
        s1*4 s2. s1 s2. s1*6 s2.*3 s1*4 s2. s1 s1 s2. s1*2 s2.*4 s1
        s2. s1 s2.*16 s2.*11
        \set Staff . voltaOnThisStaff = ##t
        s2.*4
        \set Staff . voltaOnThisStaff = ##f
      }

    >> \includeLyrics "paroles-renaud"
    \newStaff <<
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { 
    indent = \largeindent
    \context { \RemoveEmptyStaffContext } 
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
