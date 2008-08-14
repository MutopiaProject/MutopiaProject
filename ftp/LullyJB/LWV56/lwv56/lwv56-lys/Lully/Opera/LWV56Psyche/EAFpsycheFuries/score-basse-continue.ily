\score {
  \new StaffGroupNoBar <<
    %%\newTinyHaraKiriStaffB \withLyrics <<
    %%  \global \clef "vhaute-contre" \includeNotes "furie1bis"
    %%  \new Voice \with { autoBeaming = ##f } \includeNotes "furie2bis"
    %%>> \includeLyrics "paroles1"
    \newTinyStaff \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "psyche-furie3"
    >> \includeLyrics "paroles-psyche-furie3"
    \new Staff <<
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
      { s1*2 s2. s1 s2.*2 s1*2 s1*24 \pageBreak }
    >>
  >>
  \layout { }
}
