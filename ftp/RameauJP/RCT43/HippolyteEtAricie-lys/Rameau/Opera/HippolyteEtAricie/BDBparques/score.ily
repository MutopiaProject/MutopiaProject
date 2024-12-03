\score {
  \new StaffGroupNoBar <<
    \new Staff \withLyrics <<
      \characterName \markup { \concat { P \super \smallCaps re } \smallCaps Parque }
      \global \includeNotes "parque1"
    >> \includeLyrics "paroles"
    \new Staff \withLyrics <<
      \characterName \markup { \concat { 2 \super \smallCaps e } \smallCaps Parque }
      \global \includeNotes "parque2"
    >> \includeLyrics "paroles"
    \new Staff \withLyrics <<
      \characterName \markup { \concat { 3 \super \smallCaps e } \smallCaps Parque }
      \global \includeNotes "parque3"
    >> \includeLyrics "paroles"
    \new Staff <<
      \instrumentName \markup { Basse continue }
      \global \includeNotes "basse" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 220 4) } }
}
