\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new GrandStaff <<
        \newHaraKiriStaff << \global \clef "dessus"
                             { \includeNotes "dessus-a1"
                               \includeNotes "dessus-b"
                               \includeNotes "dessus-c"
                               \includeNotes "dessus-d1"
                               \includeNotes "dessus-e" } >>
        \newHaraKiriStaff << \global \clef "dessus"
                              { \includeNotes "dessus-a2" \break
                                s1 s1*40 \break
                                \includeNotes "dessus-d2" \break } >>
      >>
      \newHaraKiriStaffB << \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \newHaraKiriStaffB << \global \clef "taille" \includeNotes "taille" >>
      \newHaraKiriStaffB << \global \clef "basse" \includeNotes "basse" >>
    >>
    \new ChoirStaff <<
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus"
      >> \includeLyrics "paroles1"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles2"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vtaille" \includeNotes "voix-taille"
      >> \includeLyrics "paroles3"
      \newHaraKiriStaff \withLyrics <<
        \characterName \markup Achis 
        \global \clef "vbasse" \includeNotes "achis"
      >> \includeLyrics "paroles"
    >>
    \new Staff <<
      \global \clef "basse" \includeNotes "basse-continue"
      \includeFigures "chiffres"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}
