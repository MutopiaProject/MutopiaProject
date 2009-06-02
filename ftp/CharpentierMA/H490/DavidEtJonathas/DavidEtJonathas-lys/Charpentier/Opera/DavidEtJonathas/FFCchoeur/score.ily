\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new GrandStaff <<
        \newHaraKiriStaff << \global \clef "dessus"
                             { \includeNotes "dessus-a"
                               \includeNotes "dessus-b1"
                               \includeNotes "dessus-c"
                               \includeNotes "dessus-d1"
                               \includeNotes "dessus-e"
                               \includeNotes "dessus-f" } >>
        \newHaraKiriStaffB << \global \clef "dessus"
                              { s1*23 \break
                                \includeNotes "dessus-b2" \break
                                s1*27
                                \includeNotes "dessus-d2" \break } >>
      >>
      \newHaraKiriStaff << \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \newHaraKiriStaff << \global \clef "taille" \includeNotes "taille" >>
      \newHaraKiriStaff << \global \clef "basse"
                           { \includeNotes "basse-a"
                             \includeNotes "basse-b1"
                             \includeNotes "basse-c"
                             \includeNotes "basse-d"
                             \includeNotes "basse-e1"
                             \includeNotes "basse-f"
                             \includeNotes "basse-g1"
                             \includeNotes "basse-h" } >>
      \newHaraKiriStaffB << \global \clef "basse"
                           { s1*10 \break
                             \includeNotes "basse-b2"
                             R1*80 \break
                             \includeNotes "basse-e2" \break
                             s1*28 \break
                             \includeNotes "basse-g2" \break } >>
      \newHaraKiriStaffB << \global \clef "basse"
                           { s1*10
                             \includeNotes "basse-b3"
                             R1*80
                             \includeNotes "basse-e3"
                             s1*28
                             \includeNotes "basse-g3" \break } >>
    >>
    \new ChoirStaff <<
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix1-dessus1"
      >> \includeLyrics "paroles11"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix1-dessus2"
      >> \includeLyrics "paroles12"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vbasse" \includeNotes "voix1-basse"
        { s1*92 \break }
      >> \includeLyrics "paroles13"
    >>
    \new ChoirStaff <<
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix2-dessus"
      >> \includeLyrics "paroles21"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vhaute-contre" \includeNotes "voix2-haute-contre"
      >> \includeLyrics "paroles22"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vtaille" \includeNotes "voix2-taille"
      >> \includeLyrics "paroles23"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vbasse" \includeNotes "voix2-basse"
      >> \includeLyrics "paroles24"
    >>
    \new Staff <<
      \global \clef "basse" \includeNotes "basse-continue"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
  \midi { }
}
