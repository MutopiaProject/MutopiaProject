\score {
  \new StaffGroupNoBar <<
    << 
      \context Voice = "dessus" << 
        \set Voice . autoBeaming = ##f
        \scoreInit \global 
        \voixDessus \includeNotes "voix-dessus"
      >>
      \lyricsto "dessus" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "dessus" \new Lyrics \includeLyrics "paroles2"
    >>
    << 
      \context Voice = "bas-dessus" << 
        \set Voice . autoBeaming = ##f
        \global 
        \basDessus \includeNotes "voix-bas-dessus"
      >>
      \lyricsto "bas-dessus" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "bas-dessus" \new Lyrics \includeLyrics "paroles2"
    >>
    \newStaff << \global \basse \includeNotes "basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
