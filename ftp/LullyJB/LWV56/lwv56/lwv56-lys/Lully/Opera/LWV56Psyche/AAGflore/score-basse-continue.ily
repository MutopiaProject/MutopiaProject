\score {
  \new StaffGroupNoBar <<
    \newTinyStaff <<
      \context Voice = "flore" \with { autoBeaming = ##f } << 
        \characterName \markup Flore
        \global \clef "vbas-dessus" \includeNotes "flore"
      >>
      \lyricsto "flore" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "flore" \new Lyrics \includeLyrics "paroles2"
    >>
    \new Staff << \global \clef "basse" \includeNotes "basse"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
}
