
\score {
  \new StaffGroupNoBar <<
    << 
      \context Voice = "haute-contre" << 
        \set Voice . autoBeaming = ##f
        \scoreInit \global
        \voixHauteContre \includeNotes "haute-contre"
      >>
      \lyricsto "haute-contre" \new Lyrics \includeLyrics "haute-contre-paroles1"
      \lyricsto "haute-contre" \new Lyrics \includeLyrics "haute-contre-paroles2"
    >>
    << 
      \context Voice = "basse" << 
        \set Voice . autoBeaming = ##f
        \global
        \basse \includeNotes "voix-basse"
      >>
      \lyricsto "basse" \new Lyrics \includeLyrics "basse-paroles1"
      \lyricsto "basse" \new Lyrics \includeLyrics "basse-paroles2"
    >>

    \new Staff << \global \basse \includeNotes "basse" >> 
  >>
  \header {
    petitTitre = "Première chanson à boire"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 80 }
}
