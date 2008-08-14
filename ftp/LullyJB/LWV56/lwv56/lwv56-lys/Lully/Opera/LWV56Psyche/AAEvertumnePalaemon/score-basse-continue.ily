\score {
  \new StaffGroupNoBar <<
    \newTinyStaff <<
      \context Voice = "voix" \with { autoBeaming = ##f } << 
        \global \includeNotes "vertumne-palaemon"
      >>
      \lyricsto "voix" \new Lyrics \includeLyrics "paroles"
      \lyricsto "voix" \new Lyrics \includeLyrics "paroles2"
    >>
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
}
