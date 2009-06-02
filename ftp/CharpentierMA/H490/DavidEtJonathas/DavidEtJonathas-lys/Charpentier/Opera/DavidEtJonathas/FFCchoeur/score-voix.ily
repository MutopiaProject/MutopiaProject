\score {
  <<
    \new ChoirStaff <<
      \new Staff \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix1-dessus1"
      >> \includeLyrics "paroles11"
      \new Staff \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix1-dessus2"
      >> \includeLyrics "paroles12"
      \new Staff \withLyrics <<
        \global \clef "vbasse" \includeNotes "voix1-basse"
        { s1*92 \break }
      >> \includeLyrics "paroles13"
    >>
    \new ChoirStaff <<
      \new Staff \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix2-dessus"
      >> \includeLyrics "paroles21"
      \new Staff \withLyrics <<
        \global \clef "vhaute-contre" \includeNotes "voix2-haute-contre"
      >> \includeLyrics "paroles22"
      \new Staff \withLyrics <<
        \global \clef "vtaille" \includeNotes "voix2-taille"
      >> \includeLyrics "paroles23"
      \new Staff \withLyrics <<
        \global \clef "vbasse" \includeNotes "voix2-basse"
      >> \includeLyrics "paroles24"
    >>
  >>
  \layout { }
}
