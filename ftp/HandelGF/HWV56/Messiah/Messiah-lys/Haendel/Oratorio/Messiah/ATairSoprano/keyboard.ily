\new PianoStaff \notemode <<
  \new Staff <<
    \global
    \includeNotes "violini"
  >>
  \new Staff <<
    \global \clef "bass"
    \includeNotes "bassi"
  >>
>>
