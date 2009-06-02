\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaff << \global \clef "dessus" \includeNotes "dessus" >>
      \newHaraKiriStaff << \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \newHaraKiriStaff << \global \clef "taille" \includeNotes "taille" >>
      \newHaraKiriStaff << \global \clef "quinte" \includeNotes "quinte" >>
      \newHaraKiriStaff << \global \clef "basse" \includeNotes "basse" >>
    >>
    \newHaraKiriStaffB <<
      \global \clef "vdessus"
      \new Voice = "bergere" \with { autoBeaming = ##f } \includeNotes "bergere"
      \lyricsto "bergere" \new Lyrics \includeLyrics "paroles1"
      \lyricsto "bergere" \new Lyrics \includeLyrics "paroles2"
    >>
    \new Staff << \global \clef "basse" \includeNotes "basse-continue"
                  { s4. s1.*9 s2. s4. s4. s1.*19 s2. s4. \break }
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}
