
\score {
  \new StaffGroupNoBar <<
    \new Staff <<
      \context Voice <<
        \scoreInit \global \clef bass
        \hideNotes \notemode {
          sol8 sol8 sol8 sol8 sol8 sol8 sol8 sol8 
          sol8 sol8 sol8 sol8 sol8 sol8 sol8 sol8 |
          s1 s1 s1 |
          sol8 sol8 sol8 sol8 s2 |
          s1 |
          sol8 sol8 sol8 sol8 sol8 sol8 sol8 sol8 |
          sol8 sol8 sol8 sol8 s2 
        }
      >>
      \new Lyrics {
        \override LyricText #'self-alignment-X = #LEFT
        \includeLyrics "mufti-paroles" 
      }
    >>
    \newStaffWithLyrics << 
      \global
      \voixHauteContre \includeNotes "haute-contre"
    >>  \includeLyrics "paroles"
    \newStaffWithLyrics << 
      \global
      \voixTaille \includeNotes "taille1"
    >>  \includeLyrics "paroles"
    \newStaffWithLyrics << 
      \global
      \voixTaille \includeNotes "taille2"
    >>  \includeLyrics "paroles"
    \newStaffWithLyrics <<
      \global
      \basse \includeNotes "basse"
    >> \includeLyrics "paroles"
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 2 = 120 }
}
