\score {
  \new StaffGroupNoBar <<
    \new StaffGroupNoBracket <<
      \newHaraKiriStaff << \global \clef "dessus" \includeNotes "dessus1" >>
      \newHaraKiriStaff << \global \clef "dessus" \includeNotes "dessus-a2" >>
      \newHaraKiriStaffB << \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \newHaraKiriStaffB << \global \clef "taille" \includeNotes "taille" >>
      \newHaraKiriStaffB << \global \clef "quinte" \includeNotes "quinte" >>
      \newHaraKiriStaffB << \global \clef "basse" \includeNotes "basse" >>
    >>
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "voix1"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "voix2"
    >> \includeLyrics "paroles2"
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "voix3"
    >> \includeLyrics "paroles3"
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "voix4"
    >> \includeLyrics "paroles4"
    \new Staff <<
      {
        \markUpBegin \mark \markup \smaller \smallCaps Ritournelle
        s4 s2.*30 s2 \break
        \markUpBegin \mark \markup \smaller \smallCaps "Chœur des heures du jour"
        s4 s2.*28 s2 \break
        \markUpBegin \mark \markup \smaller \smallCaps Ritournelle
        s4 s2.*30 s2 \break
        \markUpBegin \mark \markup \smaller \smallCaps "Récit d'une des heures du jour"
        s4 s2.*30 s2 \break
        \markUpBegin \mark \markup \column \smaller \smallCaps {
          "Chœur des heures du jour" "et des quatre saisons"
        }
      }
      \global \clef "alto" \includeNotes "basse-continue"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
  \midi { }
}