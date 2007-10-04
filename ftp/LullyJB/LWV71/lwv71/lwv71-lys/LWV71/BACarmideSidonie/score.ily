\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \set Staff . instrumentName = "A."
      \set Staff . shortInstrumentName = "A."
      \global \basDessus \includeNotes "armide"
    >> \includeLyrics "paroles-armide"
    \newStaffWithLyrics <<
      \set Staff . instrumentName = "S."
      \set Staff . shortInstrumentName = "S."
      \override Score.VerticalAxisGroup #'remove-first = ##t
      \global \basDessus \includeNotes "sidonie"
      %%{ s1*4 s1.*3 s1*2 s1*2 s1 s1.*2 s1*2 s2.*4 \break }
    >> \includeLyrics "paroles-sidonie"
    \newStaff << \global \dessus \includeNotes "dessus" >>
    \newStaff << \global \hauteContre \includeNotes "haute-contre" >>
    \newStaff << \global \taille \includeNotes "taille" >>
    \newStaff << \global \quinte \includeNotes "quinte" >>
    \newStaff << \global \basse \includeNotes "basse-continue"
                 \includeFigures "chiffres" >>
  >>
  \layout { 
    indent = \noindent
    \context { \RemoveEmptyStaffContext } 
  }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
