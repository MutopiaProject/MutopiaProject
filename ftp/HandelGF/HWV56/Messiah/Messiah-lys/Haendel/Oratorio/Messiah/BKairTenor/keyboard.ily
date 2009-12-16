\new PianoStaff \notemode <<
  \new Staff = "up" <<
    \global
    \includeNotes "violini"
  >>
  \new Staff = "down" <<
    \global \clef "bass"
    \includeNotes "bassi"
  >>
>>
