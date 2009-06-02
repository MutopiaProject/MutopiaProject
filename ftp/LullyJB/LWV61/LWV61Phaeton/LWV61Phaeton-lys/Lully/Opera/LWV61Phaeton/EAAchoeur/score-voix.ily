\score {
  \new ChoirStaff <<
    \new Staff \withLyrics <<
      {
        \markUpBegin \mark \markup \smaller \smallCaps Ritournelle
        s4 s2.*30 s2
        \markUpBegin \mark \markup \smaller \smallCaps "Chœur des heures du jour"
        s4 s2.*28 s2
        s4 \break s2.*30 s2
        \markUpBegin \mark \markup \smaller \smallCaps "Récit d'une des heures du jour"
        s4 s2.*30 s2 \break
        \markUpBegin \mark \markup \column \smaller \smallCaps {
          "Chœur des heures du jour" "et des quatre saisons"
        }
      }
      \global \includeNotes "voix1"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaff \withLyrics <<
      \global \includeNotes "voix2"
    >> \includeLyrics "paroles2"
    \newHaraKiriStaff \withLyrics <<
      \global \includeNotes "voix3"
    >> \includeLyrics "paroles3"
    \newHaraKiriStaffB \withLyrics <<
      \global \includeNotes "voix4"
    >> \includeLyrics "paroles4"
  >>
  \layout { }
}