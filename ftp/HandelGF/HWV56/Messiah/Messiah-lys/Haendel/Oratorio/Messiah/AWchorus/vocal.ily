\new ChoirStaff <<
  \new Staff \withLyrics <<
    \characterName \markup Canto
    \global \clef "treble" \includeNotes "vcanto"
  >> \includeLyrics "lyrics1"
  \new Staff \withLyrics <<
    \characterName \markup Alto
    \global \clef "treble" \includeNotes "valto"
  >> \includeLyrics "lyrics2"
  \new Staff \withLyrics <<
    \characterName \markup Tenore
    \global \clef "G_8" \includeNotes "vtenore"
  >> \includeLyrics "lyrics3"
  \new Staff \withLyrics <<
    \characterName \markup Basso
    \global \clef "bass" \includeNotes "vbasso"
  >> \includeLyrics "lyrics4"
>>
