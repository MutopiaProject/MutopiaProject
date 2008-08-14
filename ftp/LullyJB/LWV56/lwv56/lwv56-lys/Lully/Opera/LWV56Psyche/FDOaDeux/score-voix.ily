\score {
  \new StaffGroupNoBar <<
    \new Staff << 
      \context Voice = "dessus" \with { autoBeaming = ##f } << 
        \global \clef "vdessus" \includeNotes "voix-dessus"
      >>
      \lyricsto "dessus" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "dessus" \new Lyrics \includeLyrics "paroles2"
    >>
    << 
      \context Voice = "bas-dessus" \with { autoBeaming = ##f } << 
        \global \clef "vbas-dessus" \includeNotes "voix-bas-dessus"
      >>
      \lyricsto "bas-dessus" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "bas-dessus" \new Lyrics \includeLyrics "paroles2"
    >>
  >>
  \layout { }
}
