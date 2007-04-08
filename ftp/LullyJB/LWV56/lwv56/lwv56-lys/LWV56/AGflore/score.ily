\score {
  \new StaffGroupNoBar <<
    <<
      \context Voice = "flore" << 
        \set Voice . autoBeaming = ##f
        \characterName \markup Flore
        \scoreInit \global 
        \basDessus \includeNotes #"flore"
      >>
      \lyricsto "flore" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "flore" \new Lyrics \includeLyrics "paroles2"
    >>
    \newStaff << \global \basse \includeNotes #"basse"
                 \includeFigures "chiffres" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { indent = \largeindent
            #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 144 }
}
