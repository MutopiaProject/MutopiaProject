\score {
  \new StaffGroupNoBar << 
    \new Staff = main \newStaffWithLyrics <<
      \global \includeNotes "isbe-fatime"
      { s4 s2.*3 s1 s1*2 s2.*2 s1 s1*3 s1 s1 s2. s1*2 \break
        <<
          \new Staff \with { alignAboveContext=main } \notemode { 
            \key re \major
            \solUn re''4_"Trompettes" re''8 mi'' re''4 re''8 mi'' |
            re''4 la' fad' re' |
            <<
              { fad'' fad''8 sol'' fad''4 fad''8 sol'' |
                fad''4 re'' la' fad' | }
              \\ { re''4 re''8 mi'' re''4 re''8 mi'' |
                   re''4 la' fad' re' | }
            >>
          }
          \new Staff \with { alignAboveContext=main } \notemode {
            \key re \major
            \faQuatre R1*2 | re4_"Timballes" re8 re re4 re8 re |
            re4. re16 re re re re re re4 
          }
        >>
        \break
      }
    >> \includeLyrics "paroles"
    \newStaff << \global \includeNotes "basse"
                 \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 76 4) } }
}
