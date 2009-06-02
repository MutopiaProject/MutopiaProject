\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new GrandStaff <<
        \newHaraKiriStaffB <<
          \global \clef "dessus"
          { \includeNotes "dessus-a1" \includeNotes "dessus-b"
            \includeNotes "dessus-c1" \includeNotes "dessus-d" } >>
        \newHaraKiriStaffB <<
          \global \clef "dessus"
          { \includeNotes "dessus-a2" \break s2.*16 \break
            \includeNotes "dessus-c2" \break } >>
      >>
      \newHaraKiriStaffB << \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \newHaraKiriStaffB << \global \clef "taille" \includeNotes "taille" >>
      \newHaraKiriStaffB << \global \clef "basse" \includeNotes "basse" >>
    >>
    \new ChoirStaff <<
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus"
      >> \includeLyrics "paroles2"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles3"
      \new Staff \withLyrics <<
        \global \clef "vbasse" \includeNotes "saul-david-jonathas-joadab"
      >> \includeLyrics "paroles1"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vbasse" \includeNotes "voix-basse"
      >> \includeLyrics "paroles4"
    >>
    \new Staff << \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { }
  \midi { }
}