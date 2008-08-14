\score {
  <<
    \new StaffGroup <<
      \new Staff << \instrumentName \markup Dessus
                    \global \clef "dessus" \includeNotes "dessus" >>
      \new Staff << \instrumentName \markup "Haute-contres"
                    \global \clef "haute-contre" \includeNotes "haute-contre" >>
      \new Staff << \instrumentName \markup Tailles
                    \global \clef "taille" \includeNotes "taille" >>
      \new Staff << \instrumentName \markup Quintes
                    \global \clef "quinte" \includeNotes "quinte" >>
      \new Staff << \instrumentName \markup Basses
                    \global \clef "basse" \includeNotes "basse" >>
    >>
    \new StaffGroup <<
      \new Staff << \instrumentName \markup Trompette
                    \global \clef "dessus" \includeNotes "trompette" >>
      \new Staff << \instrumentName \markup Timbales
                    \global \clef "basse" \includeNotes "timbales" >>
    >>
    \new ChoirStaff \with { instrumentName = "CHŒUR            " }<<
      \new Staff \withLyrics <<
        \global \clef "vdessus" \includeNotes "voix-dessus" 
      >> \includeLyrics "paroles"
      \new Staff \withLyrics << 
        \global \clef "vhaute-contre" \includeNotes "voix-haute-contre" 
      >> \includeLyrics "paroles"
      \new Staff \withLyrics <<
        \global \clef "vtaille" \includeNotes "voix-taille"
      >> \includeLyrics "paroles"
      \new Staff \withLyrics <<
        \global \clef "vbasse" \includeNotes "voix-basse"
      >> \includeLyrics "paroles"
    >>
    \new StaffGroup <<
      \new Staff << \instrumentName \markup \center-align { Basse continue }
                    \global \clef "basse" \includeNotes "basse-continue"
                    \includeFigures "chiffres" >>
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}