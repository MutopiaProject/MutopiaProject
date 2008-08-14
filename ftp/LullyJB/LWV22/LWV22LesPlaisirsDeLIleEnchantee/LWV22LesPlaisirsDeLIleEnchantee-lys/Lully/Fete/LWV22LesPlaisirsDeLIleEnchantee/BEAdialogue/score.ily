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
      \characterName \markup { \smallCaps Moron \hspace #8 }
      \includeNotes "moron"
    }
    \new Staff \withLyrics <<
      \characterName \markup Satyre
      \global \clef "vbasse" \includeNotes "satyre"
    >> \includeLyrics "paroles"
    \new Staff <<
      \global \clef "basse" \includeNotes "basse"
      \includeFigures "chiffres"
    >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 120 4) } }
}