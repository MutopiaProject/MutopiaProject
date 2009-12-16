\new ChoirStaff <<
  \new Staff \withLyrics <<
    \global \clef "treble" \includeNotes "vcanto"
  >> \includeLyrics "lyrics1"
  \new Staff \withLyrics <<
    \global \clef "treble" \includeNotes "valto"
  >> \includeLyrics "lyrics2"
  \new Staff \withLyrics <<
    \global \clef "G_8" \includeNotes "vtenore"
  >> \includeLyrics "lyrics3"
  \new Staff \withLyrics <<
    \global \clef "bass" \includeNotes "vbasso"
  >> \includeLyrics "lyrics4"
>>
