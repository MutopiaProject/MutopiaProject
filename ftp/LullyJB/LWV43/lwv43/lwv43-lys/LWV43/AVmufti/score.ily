\score {
  \new StaffGroupNoBar <<
    \newStaff << \scoreInit \global \dessus \includeNotes "dessus-1" >>
    \newStaff << \global \dessus \includeNotes "dessus-2" >>
    << 
      \context Voice = "basse" << 
        \set Voice . autoBeaming = ##f
        \global
        \basse \includeNotes "voix-basse"
      >>
      \lyricsto "basse" \new Lyrics \includeLyrics "paroles"
      \lyricsto "basse" \new Lyrics \includeLyrics "paroles2"
    >>
    \newStaff << \global \basse \includeNotes "basse" >>
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 80 }
}
