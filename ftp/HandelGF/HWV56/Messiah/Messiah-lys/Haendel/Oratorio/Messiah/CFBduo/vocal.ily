\new ChoirStaff <<
  \new Staff \withLyrics <<
    \characterName \markup Contr'alto
    \global \clef "treble" \includeNotes "valto"
  >> \includeLyrics "lyrics1"
  \new Staff \withLyrics <<
    \characterName \markup Tenore
    \global \clef "G_8" \includeNotes "vtenore"
  >> \includeLyrics "lyrics2"
>>
