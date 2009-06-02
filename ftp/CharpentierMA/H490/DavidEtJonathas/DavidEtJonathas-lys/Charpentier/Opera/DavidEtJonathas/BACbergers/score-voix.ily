\score {
  \new ChoirStaff <<
    \new Staff \withLyrics <<
      \characterName \markup "Une Bergère"
      \global \clef "vdessus" \includeNotes "berger1"
    >> \includeLyrics "paroles1"
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vdessus" \includeNotes "berger2"
    >> \includeLyrics "paroles2"
    \newHaraKiriStaffB \withLyrics <<
      \global \clef "vdessus" \includeNotes "berger3"
    >> \includeLyrics "paroles3"
  >>
  \layout { indent = \largeindent }
}
