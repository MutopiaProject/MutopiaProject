\score {
  \new StaffGroupNoBar <<
    \newTinyStaff << 
      \context Voice = "silene" << 
        \set Voice . autoBeaming = ##f
        \characterName \markup Silene
        \global \clef "vtaille" \includeNotes "silene" 
      >>
      \lyricsto "silene" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "silene" \new Lyrics \includeLyrics "paroles2"
    >>
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
}
