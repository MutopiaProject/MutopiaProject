\score {
  \new ChoirStaff <<
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vbasse" \includeNotes "saul"
    >> \includeLyrics "paroles2"
    \newHaraKiriStaff \withLyrics <<
      \global \clef "vbasse" \includeNotes "achis-saul"
    >> \includeLyrics "paroles1"
  >>
  \layout { }
}