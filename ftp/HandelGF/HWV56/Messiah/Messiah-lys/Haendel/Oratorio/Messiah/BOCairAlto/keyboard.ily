\new PianoStaff \notemode <<
  \new Staff = "up" <<
    \global
    \includeNotes "violini"
    { s8 s2.*23 \allowPageTurn }
  >>
  \new Staff = "down" <<
    \global \clef "bass"
    \includeNotes "bassi"
  >>
>>
