\score {
  \new Staff << 
    \context Voice = "silene" \with { autoBeaming = ##f } << 
      \characterName \markup Silene
      \global \clef "vtaille" \includeNotes "silene" 
    >>
    \lyricsto "silene" \new Lyrics \includeLyrics "paroles1"
    \lyricsto "silene" \new Lyrics \includeLyrics "paroles2"
  >>
  \layout { indent = \largeindent }
}
