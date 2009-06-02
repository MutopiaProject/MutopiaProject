\score {
  \new StaffGroupNoBar <<
    \new ChoirStaff <<
      \new Staff \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus1"
      >> \includeLyrics "paroles1"
      \new Staff \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus2"
      >> \includeLyrics "paroles2"
    >>
    \new ChoirStaff <<
      \new Staff \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus3"
      >> \includeLyrics "paroles3"
      \new Staff \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus4"
      >> \includeLyrics "paroles3"
      \new Staff \withLyrics <<
        \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
      >> \includeLyrics "paroles3"
    >>
  >>
  \layout { }
}