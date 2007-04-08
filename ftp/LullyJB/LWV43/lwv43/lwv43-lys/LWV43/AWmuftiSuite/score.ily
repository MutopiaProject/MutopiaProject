
\score {
  \new StaffGroupNoBar <<
    \new Staff <<
      \context Voice <<
        \scoreInit \global \clef bass
        \hideNotes \notemode {
          sol8 sol8 sol8 sol8 sol2 
          sol8 sol8 sol8 sol8 sol2 
          sol8 sol8 sol8 sol8 sol2 |
          sol8 sol8 sol8 sol8 sol2 |
          %% 5
          sol2 sol8 sol8 sol16 sol16 sol16 sol16 |
          sol2 sol8 sol8 sol16 sol16 sol16 sol16 |
          s1 |
          sol8 sol8 sol8 sol8 sol8 sol8 sol8 sol8 |
          sol8 sol8 sol8 sol8 sol2 |
          %% 10
          s1 |
          s2 sol4 sol4 |
          sol2 sol16 sol16 sol16 sol16 sol16 sol16 sol16 sol16 |
          sol2 sol8 sol8 sol16 sol16 sol16 sol16 |
          sol2 sol8 sol8 sol16 sol16 sol16 sol16 |
          %% 15
          s1 |
          sol8 sol8 sol8 sol8 sol8 sol8 sol8 sol8 |
          sol8 sol8 sol8 sol8 sol2 |
          s1
          s2 sol4 sol4 |
          %% 20
          sol2 sol16 sol16 sol16 sol16 sol16 sol16 sol16 sol16 |
          sol16 sol16 sol16 sol16 sol16 sol16 sol16 sol16 sol1 |
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
