
\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newStaff << \scoreInit \global \dessus \includeNotes #"dessus1" >>
      \newStaff << \global \dessus \includeNotes #"dessus2" >>
    >>
    << 
      \context Voice = "haute-contre" << 
        \set Voice . autoBeaming = ##f
        \override Score.VerticalAxisGroup #'remove-first = ##t
        \global \voixHauteContre \includeNotes "voix-haute-contre"
      >>
      \lyricsto "haute-contre" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "haute-contre" \new Lyrics \includeLyrics "paroles2"
    >>

    \newStaffWithLyrics << 
      \global \basse \includeNotes "voix-basse"
    >>  \includeLyrics "paroles3"
    
    \newStaff << \global \basse \includeNotes #"basse" >>
  >>
  \header {
    entree = "TROISIÈME ENTRÉE"
    entreeTexte = \markup \justify {
      Ritournelle des Espagnols
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) 
            \context { \RemoveEmptyStaffContext } }
  \midi { \tempo 4 = 132 }
}
