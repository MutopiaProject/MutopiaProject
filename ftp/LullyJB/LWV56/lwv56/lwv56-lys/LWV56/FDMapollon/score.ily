\score {
  \new StaffGroupNoBar <<
    << 
      \context Voice = "apollon" << 
        \set Voice . autoBeaming = ##f
        \characterName \markup Apollon
        \scoreInit \global 
        \voixHauteContre \includeNotes "apollon" 
      >>
      \lyricsto "apollon" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "apollon" \new Lyrics \includeLyrics "paroles2"
    >>
    \newStaff << \global \basse \includeNotes "basse" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout {
    indent = \largeindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \tempo 2 = 92 }
}
