\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \new GrandStaff <<
        \newHaraKiriStaffB <<
          \global \clef "dessus" 
          { \includeNotes "dessus1-a"
            \includeNotes "dessus-b"
            \includeNotes "dessus1-c"
            \includeNotes "dessus-d"
            \includeNotes "dessus1-e"
            \includeNotes "dessus-f"
            \includeNotes "dessus1-g"
            \includeNotes "dessus-h"
            \includeNotes "dessus1-i"
            \includeNotes "dessus-j" } >>
        \newHaraKiriStaffB <<
        \global \clef "dessus"
        { \includeNotes "dessus2-a"
          \includeNotes "dessus-silence-b" \break
          \includeNotes "dessus2-c"
          \includeNotes "dessus-silence-d" \break
          \includeNotes "dessus2-e" \break
          \includeNotes "dessus-silence-f" \break
          \includeNotes "dessus2-g" \break
          \includeNotes "dessus-silence-h" \break
          \includeNotes "dessus2-i" \break
          \includeNotes "dessus-silence-j" } >>
      >>
      \newHaraKiriStaffB <<
        \global \clef "haute-contre" \includeNotes "haute-contre"
      >>
      \newHaraKiriStaffB <<
        \global \clef "taille" \includeNotes "taille"
      >>
      \newHaraKiriStaffB <<
        \global \clef "basse" \includeNotes "basse"
      >>
    >>
    \new ChoirStaff <<
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus1"
      >> \includeLyrics "paroles-dessus1"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus2"
      >> \includeLyrics "paroles-dessus2"
      \newHaraKiriStaff \withLyrics <<
        \characterName \markup Jonathas
        \global \clef "vdessus" \includeNotes "jonathas"
      >> \includeLyrics "paroles-dessus"
      \newHaraKiriStaffB \withLyrics <<
        { s1*5 s2.*15 \break
          s1*25 \break
          s2.*8 \break
        }
        \global \clef "vhaute-contre" \includeNotes "david"
      >> \includeLyrics "paroles-haute-contre"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vtaille" \includeNotes "voix-taille"
      >> \includeLyrics "paroles-taille"
      \newHaraKiriStaffB \withLyrics <<
        \global \clef "vbasse" \includeNotes "voix-basse"
      >> \includeLyrics "paroles-basse"
    >>
    \new Staff << \instrumentName \markup \center-column { Basse continue }
                  \global \clef "basse" \includeNotes "basse-continue"
                  \includeFigures "chiffres" >>
  >>
  \layout { indent = \largeindent }
  \midi { }
}