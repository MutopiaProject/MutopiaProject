\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "dessus" \with { autoBeaming = ##f } <<
        { s2.*7 s2. s2. s2.*19 s2. s2. 
          s2.*8 s2.*16 \break }
        \global \clef "vdessus" \includeNotes "voix-dessus"
      >>
      \lyricsto "dessus" \new Lyrics { \includeLyrics "paroles1" \includeLyrics "paroles1" }
      \lyricsto "dessus" \new Lyrics { \includeLyrics "paroles2" \includeLyrics "paroles2" }
    >>
    \newHaraKiriStaffB <<
      \new Voice = "haute-contre" \with { autoBeaming = ##f } <<
        \global \clef "vhaute-contre" \includeNotes "voix-haute-contre"
      >>
      \lyricsto "haute-contre" \new Lyrics { \includeLyrics "paroles1" }
      \lyricsto "haute-contre" \new Lyrics { \includeLyrics "paroles2" }
    >>
    \newHaraKiriStaffB <<
      \new Voice = "taille" \with { autoBeaming = ##f } <<
        \global \clef "vtaille" \includeNotes "voix-taille"
      >>
      \lyricsto "taille" \new Lyrics { \includeLyrics "paroles1" }
      \lyricsto "taille" \new Lyrics { \includeLyrics "paroles2" }
    >>
    \newHaraKiriStaffB <<
      \new Voice = "basse" \with { autoBeaming = ##f } <<
        \global \clef "vbasse" \includeNotes "voix-basse"
      >>
      \lyricsto "basse" \new Lyrics { \includeLyrics "paroles1" }
      \lyricsto "basse" \new Lyrics { \includeLyrics "paroles2" }
    >>
  >>
  \layout { }
}
