\score {
  \new Staff \with { \remove "Time_signature_engraver" } \withLyrics
  \notemode {
    \keys sol \major
    \time 3/4 \partial 4.
    \clef "vbasse"
    \satyreMark sol8 si8. sol16 |
    re'4. \moronMark sol8 si sol |
    re'4 \satyreMark sib sib8. sib16 |
    sib2
  } \lyricmode {
    La, la, la, la.
    La, la, la, la.
    Fa, fa, fa, fa.
  }
  \layout { }
}