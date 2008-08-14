\score {
  \new StaffGroupNoBar <<
    \newTinyStaff << 
      \context Voice = "dessus" \with { autoBeaming = ##f } << 
        \global \clef "vdessus" \includeNotes "voix-dessus-bis"
      >>
      \new Voice \with { autoBeaming = ##f } << 
        \global \includeNotes "voix-bas-dessus-bis"
      >>
      \lyricsto "dessus" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "dessus" \new Lyrics \includeLyrics "paroles2"
    >>
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
}
