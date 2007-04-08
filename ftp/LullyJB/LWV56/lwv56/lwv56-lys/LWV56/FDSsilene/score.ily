\score {
  \new StaffGroupNoBar <<
    << 
      \context Voice = "silene" << 
        \set Voice . autoBeaming = ##f
        \characterName \markup Silene
        \scoreInit \global 
        \voixTaille \includeNotes "silene" 
      >>
      \lyricsto "silene" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "silene" \new Lyrics \includeLyrics "paroles2"
    >>
    \newStaff << \global \basse \includeNotes "basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout {
    indent = \largeindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \tempo 2 = 112 }
}
