
\score {
  \new StaffGroupNoBar <<
    << 
      \context Voice = "bas-dessus" << 
        \scoreInit 
        \override Score.VerticalAxisGroup #'remove-first = ##t
        \set Voice . autoBeaming = ##f
        \global \basDessus \includeNotes "bas-dessus"
      >>
      \lyricsto "bas-dessus" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "bas-dessus" \new Lyrics \includeLyrics "paroles2"
    >>
    << 
      \context Voice = "taille" << 
        \set Voice . autoBeaming = ##f
        \global \voixTaille \includeNotes "voix-taille"
      >>
      \lyricsto "taille" \new Lyrics \includeLyrics "paroles3"
      \lyricsto "taille" \new Lyrics \includeLyrics "paroles4"
    >>
    \newStaff << \global \basse \includeNotes "basse" >> 
  >>
  \layout { #(define tweak-key (*current-piece*)) 
            \context { \RemoveEmptyStaffContext } }
  \midi { \tempo 4 = 120 }
}
