\score {
  <<
    \new StaffGroup <<
      \new Staff << \global \clef "dessus" \includeNotes "dessus" >>
      \new Staff << \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \new Staff << \global \clef "taille" \includeNotes "taille" >>
      \new Staff << \global \clef "quinte" \includeNotes "quinte" >>
      \new Staff << \global \clef "basse" \includeNotes "basse" >>
    >>
    \new ChoirStaff <<
      \new Staff \withLyrics << 
        \global \clef "vdessus" \includeNotes "voix-dessus" 
      >> \includeLyrics "paroles1"
      \new Staff \withLyrics <<
        \global \clef "vhaute-contre" \includeNotes "voix-haute-contre" 
      >> \includeLyrics "paroles2"
      \new Staff \withLyrics <<
        \global \clef "vtaille" \includeNotes "voix-taille" 
      >> \includeLyrics "paroles3"
      \new Staff \withLyrics <<
        \global \clef "vbasse" \includeNotes "voix-basse" 
      >> \includeLyrics "paroles4"
    >>
    \new StaffGroup <<
      \new Staff << \global \clef "basse" \includeNotes "basse-continue" >>
    >>
  >>
  \layout { } 
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}