\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new GrandStaff <<
        \newHaraKiriStaff << \global \clef "dessus"
                             { s1.*7 \break }
                             { \includeNotes "dessus-af1"
                               \includeNotes "dessus-b"
                               \includeNotes "dessus-c"
                               \includeNotes "dessus-d"
                               \includeNotes "dessus-e1"
                               \includeNotes "dessus-f" } >>
        \newHaraKiriStaff << \global \clef "dessus"
                             { \includeNotes "dessus-af2"
                               \break s1.*8 \break
                               \includeNotes "dessus-e2" \break } >>
      >>
      \newHaraKiriStaff << \global \clef "dessus" \includeNotes "dessus-av" >>
      \newHaraKiriStaff << \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \newHaraKiriStaff << \global \clef "taille" \includeNotes "taille" >>
      \newHaraKiriStaff << \global \clef "basse" \includeNotes "basse" >>
    >>
    \new ChoirStaff <<
      \newHaraKiriStaff \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus"
      >> \includeLyrics "paroles1"
      \newHaraKiriStaff \withLyrics <<
        \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles2"
      \newHaraKiriStaff \withLyrics <<
        \global \clef "vtaille" \includeNotes "voix-taille"
      >> \includeLyrics "paroles3"
      \newHaraKiriStaff \withLyrics <<
        \global \clef "vbasse" \includeNotes "voix-basse"
      >> \includeLyrics "paroles4"
    >>
    \newHaraKiriStaff \withLyrics <<
      \global \clef "vhaute-contre" \includeNotes "david"
    >> \includeLyrics "paroles"
    \new Staff <<
      \global \clef "basse" \includeNotes "basse-continue"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
  \midi { }
}
