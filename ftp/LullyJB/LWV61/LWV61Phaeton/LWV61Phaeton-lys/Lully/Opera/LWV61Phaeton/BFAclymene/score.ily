\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "clymene"
    >> \includeLyrics "paroles"
    \new Staff << \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres"
                  { s2.*8 s1 s2.*4 s1 s2. s1 s2.*5
                    \markDownEnd \mark \markup \italic { Clymène se retire à l'écart. } }
                >>
  >>
  \layout { }
  \midi { }
}
