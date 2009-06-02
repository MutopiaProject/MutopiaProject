\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaff << \global \clef "dessus" \includeNotes "dessus" >>
      \newHaraKiriStaff << \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \newHaraKiriStaff << \global \clef "taille" \includeNotes "taille" >>
      \newHaraKiriStaff << \global \clef "quinte" \includeNotes "quinte" >>
    >>
    \newHaraKiriStaffB <<
      \new Voice = "dessus" \with { autoBeaming = ##f } <<
        \global \clef "vdessus" \includeNotes "voix-dessus"
      >>
      \lyricsto "dessus" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "dessus" \new Lyrics \includeLyrics "paroles2"
    >>
    \newHaraKiriStaffB <<
      \new Voice = "bas-dessus" \with { autoBeaming = ##f } <<
        \global \clef "vbas-dessus" \includeNotes "voix-bas-dessus"
      >>
      \lyricsto "bas-dessus" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "bas-dessus" \new Lyrics \includeLyrics "paroles2"
    >>
    \newHaraKiriStaffB <<
      \new Voice = "haute-contre" \with { autoBeaming = ##f } <<
        \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
      >>
      \lyricsto "haute-contre" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "haute-contre" \new Lyrics \includeLyrics "paroles2"
    >>
    \new Staff <<
      { s4 s1*7 s2 s4 s4 s1*13 s2 s4 \break }
      \global \clef "basse" \includeNotes "basse-continue"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
  \midi { }
}