\score {
  \new StaffGroupNoBar <<
    \newTinyStaff << 
      \context Voice = "apollon" \with { autoBeaming = ##f } << 
        \characterName \markup Apollon
        \global \clef "vhaute-contre" \includeNotes "apollon" 
      >>
      \lyricsto "apollon" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "apollon" \new Lyrics \includeLyrics "paroles2"
    >>
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
}
