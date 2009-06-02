\score {
  \new ChoirStaff <<
    \newHaraKiriStaffB \withLyrics <<
      { s2.*41 \break s1.*3 s1*7 s1.*4 s1 s1.*2 s1*4 \break s1.*37 s1 s2.  s1*6 s2. }
      \global \clef "vbas-dessus" \includeNotes "theone"
    >> \includeLyrics "paroles-theone"
    \newHaraKiriStaff \withLyrics <<
      \global \clef "vbas-dessus" \includeNotes "libye"
    >> \includeLyrics "paroles-libye"
  >>
  \layout { }
}