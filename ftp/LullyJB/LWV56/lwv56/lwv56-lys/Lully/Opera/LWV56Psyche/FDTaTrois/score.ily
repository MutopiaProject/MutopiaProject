\score {
  \new StaffGroupNoBar <<
    \new InnerChoirStaff <<
      \new Staff \withLyrics <<
        \global \clef "vhaute-contre" \includeNotes "voix-haute-contre" 
      >> \includeLyrics "paroles1"
      \new Staff \withLyrics <<
        \global \clef "vtaille" \includeNotes "voix-taille" 
      >> \includeLyrics "paroles2"
      \new Staff \withLyrics <<
        \global \clef "vbasse" \includeNotes "voix-basse" 
      >> \includeLyrics "paroles3"
    >>
    \new Staff << \global \clef "basse" \includeNotes "basse" >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}