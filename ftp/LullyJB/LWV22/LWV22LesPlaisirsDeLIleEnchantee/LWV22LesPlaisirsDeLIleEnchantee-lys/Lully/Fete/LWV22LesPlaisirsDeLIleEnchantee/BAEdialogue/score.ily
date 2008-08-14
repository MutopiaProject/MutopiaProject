\score {
  \new StaffGroupNoBar <<
    \new Staff \with { \remove "Time_signature_engraver"
                       \remove "Clef_engraver"
                       \remove "Key_signature_engraver"
                       \remove "Bar_engraver"
                       \override StaffSymbol #'stencil = ##f
                       \override StaffSymbol #'line-count = #1
                     }
    {
      \includeNotes "lyciscas"          
    }
    \new Staff \withLyrics <<
      \global \clef "vtaille" \includeNotes "voix-taille"
    >> \includeLyrics "paroles1"
    \new Staff \withLyrics <<
      \global \clef "vbasse-taille" \includeNotes "voix-basse-taille"
    >> \includeLyrics "paroles2"
    \new Staff \withLyrics <<
      \global \clef "vbasse" \includeNotes "voix-basse"
    >> \includeLyrics "paroles3"
    \new Staff <<
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}