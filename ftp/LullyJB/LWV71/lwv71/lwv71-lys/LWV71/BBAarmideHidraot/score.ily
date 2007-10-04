\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newStaff <<
        \instrumentName \markup { \null \translate #'(0 . -10) "Violons" }
        \global \dessus \includeNotes "violon1"
      >>
      \newStaff << \global \dessus \includeNotes "violon2" >>
    >>
    \newStaffWithLyrics <<
      %%\override Score.VerticalAxisGroup #'remove-first = ##t
      { s1*5 s1*2 s2. s1*4 s2. s1*4 s2.*2 s1 s2.*3 s1*6 s2.
        \set Staff . voltaOnThisStaff = ##t 
        s2.*10
        \set Staff . voltaOnThisStaff = ##f
      }
      \characterName \markup "Armide"
      \set Staff . shortInstrumentName = "A."
      \global \basDessus \includeNotes "armide"
    >> \includeLyrics "paroles-armide"
    \newStaffWithLyrics <<
      \characterName \markup "Hidraot"
      \set Staff . shortInstrumentName = "H."
      \global \basse \includeNotes "hidraot"
    >> \includeLyrics "paroles-hidraot"
    \newStaff <<
      \global \basse \includeNotes "basse"
      \includeFigures "chiffres"
      { s1*5 s1*2 s2. s1*4 s2. s1*4 s2.*2 s1 s2.*3 s1*6 s2. s2.*19 \break
        s2.*38 s1 \break
        s1*18 \break 
        s1.*13 s1 \break }
    >>
  >>
  \layout { 
    indent = \largeindent
    \context { \RemoveEmptyStaffContext } 
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
