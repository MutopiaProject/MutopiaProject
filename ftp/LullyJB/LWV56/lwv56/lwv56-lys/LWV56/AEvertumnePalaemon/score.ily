\score {
  \new StaffGroupNoBar <<
    <<
      \context Voice = "vertumne" << 
        \set Voice . autoBeaming = ##f
        \characterName \markup Vertumne
        \scoreInit \global 
        \voixHauteContre \includeNotes #"vertumne"
      >>
      \lyricsto "vertumne" \new Lyrics \includeLyrics "paroles-vertumne"
      \lyricsto "vertumne" \new Lyrics \includeLyrics "paroles-vertumne2"
    >>
    <<
      \context Voice = "palaemon" << 
        \set Voice . autoBeaming = ##f
        \characterName \markup Palaemon
        \global \voixTaille \includeNotes #"palaemon" 
      >>
      \lyricsto "palaemon" \new Lyrics \includeLyrics "paroles-palaemon"
      \lyricsto "palaemon" \new Lyrics \includeLyrics "paroles-palaemon2"
    >>
    \newStaff << \global \basse \includeNotes #"basse"
                 \includeFigures "chiffres" >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { indent = \largeindent
            #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
