
\score {
  \new StaffGroupNoBar <<
    \newStaffWithLyrics <<
      \scoreInit \global
      \voixHauteContre \includeNotes "haute-contre"
    >>  \includeLyrics "haute-contre-paroles"
    \newStaffWithLyrics << 
      \global
      \voixTaille \includeNotes "taille"
    >>  \includeLyrics "taille-paroles"
    \newStaffWithLyrics <<
      \global
      \basse \includeNotes "voix-basse"
    >> \includeLyrics "basse-paroles"
    \newStaff << \global \basse \includeNotes "basse" >>
  >>
  \layout { 
    indent = \noindent
    #(define tweak-key (*current-piece*))
  }
  \midi { \tempo 2 = 108 }
}
