\score {
  \new Staff <<
    \context Voice = "flore" \with { autoBeaming = ##f } << 
      \characterName \markup Flore
      \global \clef "vbas-dessus" \includeNotes "flore"
    >>
    \lyricsto "flore" \new Lyrics \includeLyrics "paroles1"
    \lyricsto "flore" \new Lyrics \includeLyrics "paroles2"
  >>
  \layout { indent = \largeindent }
}
