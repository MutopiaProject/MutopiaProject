
\score {
  \new StaffGroupNoBar <<
    << 
      \context Voice = "taille" << 
        \set Voice . autoBeaming = ##f
        \scoreInit \global
        \voixTaille \includeNotes "taille"
      >>
      \lyricsto "taille" \new Lyrics \includeLyrics "taille-paroles1"
      \lyricsto "taille" \new Lyrics \includeLyrics "taille-paroles2"
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
    petitTitre = "Deuxième chanson à boire"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 80 }
}
