\new ChoirStaff <<
  \new Staff \withLyrics <<
    \global \includeNotes "vcanto"
    { \characterName \markup Canto \clef "treble" \grace s8 }
  >> \includeLyrics "lyrics1"
  \new Staff \withLyrics <<
    \global \includeNotes "valto"
    { \characterName \markup Alto \clef "treble" \grace s8 }
  >> \includeLyrics "lyrics2"
  \new Staff \withLyrics <<
    \global \includeNotes "vtenore"
    { \characterName \markup Tenore \clef "G_8" \grace s8 }
  >> \includeLyrics "lyrics3"
  \new Staff \withLyrics <<
    \global \includeNotes "vbasso"
    { \characterName \markup Basso \clef "bass" \grace s8 }
  >> \includeLyrics "lyrics4"
>>