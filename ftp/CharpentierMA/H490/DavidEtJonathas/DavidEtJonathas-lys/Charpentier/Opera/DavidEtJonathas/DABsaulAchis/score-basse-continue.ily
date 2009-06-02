\score {
  \new StaffGroupNoBar <<
    \new ChoirStaff <<
      \newTinyHaraKiriStaff \withLyrics <<
        { s1*8 s1. \break
          s1.*37 s1*2 \allowPageTurn
          s1*3 s2.*15 \break
          s2.*47 \break \allowPageTurn
        }
        \global \clef "vbasse" \includeNotes "reduction"
      >> \includeLyrics "paroles-reduction"
    >>
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
}