\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new GrandStaff <<
        \newHaraKiriStaff << \global \clef "dessus"
                             \instrumentName \markup Dessus
                             { s1*47 \break s1*8 \break s1 s1.*6 s1*4 s1.*32 s1*45 \break }
                             { \includeNotes "dessus-a"
                               \includeNotes "dessus-b1"
                               \includeNotes "dessus-c"
                               \includeNotes "dessus-d1"
                               \includeNotes "dessus-e"
                               \includeNotes "dessus-f1"
                               \includeNotes "dessus-g" } >>
        \newHaraKiriStaffB << \global \clef "dessus"
                              { s1*25 \break
                                \includeNotes "dessus-b2"
                                s1*13
                                \includeNotes "dessus-d2" \break
                                s1*15
                                \includeNotes "dessus-f2" } >>
      >>
      \newHaraKiriStaff <<
        \instrumentName \markup Haute-contres
        \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \newHaraKiriStaff <<
        \instrumentName \markup Tailles
        \global \clef "taille" \includeNotes "taille" >>
      \newHaraKiriStaff <<
        \instrumentName \markup Basses
        \global \clef "basse" \includeNotes "basse" >>
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
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vbasse" \includeNotes "voix-basse"
      >> \includeLyrics "paroles4"
    >>
    \newHaraKiriStaff \withLyrics <<
      \characterName \markup Jonathas 
      \global \clef "vdessus" \includeNotes "jonathas"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName \markup { Basse continue }
      \global \clef "basse" \includeNotes "basse-continue"
      \includeFigures "chiffres"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}
