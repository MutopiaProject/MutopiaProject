\score {
  \new StaffGroupNoBar <<
    \newSmallStaff <<
      \newStaffWithLyrics <<
        \global \basDessus \includeNotes "armide-hidraot"
      >> \includeLyrics "paroles"
    >>
    \newStaff << \global \basse \includeNotes "basse"
                 { s1*5 s1*2 s2. s1*4 s2. \pageBreak
                   %%
                   s1 s1 s1 \break
                   s1 \noBreak s2. \noBreak s2. \noBreak s1 \break
                   s2. \noBreak s2. \noBreak s2. \noBreak s1 \break
                   s1*4 \break
                   s1\noBreak s2.\noBreak s2.\noBreak s2.\noBreak s2.\noBreak s2.
                   s2.\noBreak s2.\noBreak s2.\noBreak s2.\noBreak s2.\noBreak s2.\noBreak s2.
                   %%
                   s2.*46 s1 \pageBreak }
                 \includeFigures "chiffres" >>
  >>
  \layout { }
}
