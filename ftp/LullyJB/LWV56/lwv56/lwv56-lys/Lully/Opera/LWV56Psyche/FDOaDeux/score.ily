\score {
  \new StaffGroupNoBar <<
    << 
      \context Voice = "dessus" << 
        \set Voice . autoBeaming = ##f
        \global \clef "vdessus" \includeNotes "voix-dessus"
      >>
      \lyricsto "dessus" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "dessus" \new Lyrics \includeLyrics "paroles2"
    >>
    << 
      \context Voice = "bas-dessus" << 
        \set Voice . autoBeaming = ##f
        \global \clef "vbas-dessus" \includeNotes "voix-bas-dessus"
      >>
      \lyricsto "bas-dessus" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "bas-dessus" \new Lyrics \includeLyrics "paroles2"
    >>
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}
