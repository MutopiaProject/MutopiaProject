\score {
  \new Staff <<
    \global \clef "vdessus"
    \new Voice = "bergere" \with { autoBeaming = ##f } \includeNotes "bergere"
    \lyricsto "bergere" \new Lyrics \includeLyrics "paroles1"
    \lyricsto "bergere" \new Lyrics \includeLyrics "paroles2"
  >>
  \layout { }
}
