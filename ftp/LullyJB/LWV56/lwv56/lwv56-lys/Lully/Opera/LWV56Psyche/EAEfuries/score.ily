\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \characterName \markup \center-align \smallCaps { Première Furie }
      \global \clef "vhaute-contre" \includeNotes "furie1"
    >> \includeLyrics "paroles1"
    \new Staff \withLyrics <<
      \characterName \markup \center-align \smallCaps { Deuxième Furie }
      \global \clef "vtaille" \includeNotes "furie2"
    >> \includeLyrics "paroles1"
    \new Staff \withLyrics <<
      \characterName \markup \center-align \smallCaps { Troisième Furie }
      \global \clef "vbasse" \includeNotes "furie3"
    >> \includeLyrics "paroles3"
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 192 4) } }
}
