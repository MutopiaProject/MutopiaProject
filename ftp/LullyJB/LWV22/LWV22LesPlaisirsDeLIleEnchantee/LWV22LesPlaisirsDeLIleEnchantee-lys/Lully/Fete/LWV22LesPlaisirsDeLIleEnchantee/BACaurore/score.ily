\score {
  \new StaffGroupNoBar <<
    \new Staff <<
      \new Voice = "aurore" \with { autoBeaming = ##f } <<
        \global
        \clef "vbas-dessus" \includeNotes "aurore"
      >>
      \lyricsto "aurore" \new Lyrics \lyricmode { \includeLyrics "paroles1" }
      \lyricsto "aurore" \new Lyrics \lyricmode { \includeLyrics "paroles2" }
    >>
    \new Staff <<
      \global
      \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 208 4) } }
}