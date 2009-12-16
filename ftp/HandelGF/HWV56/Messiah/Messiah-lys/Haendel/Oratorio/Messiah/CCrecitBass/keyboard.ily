\new PianoStaff \notemode <<
  \new Staff = "up" <<
    \global
    {
      <la' fad' re'>1 ~ |
      <la' fad' re'>2 ~ <si' fad' re'> ~ |
      <si' fad' re'>1 |
      <dod' sol' mi'> ~ |
      <dod'' sol' mi'>4 ~ <dod'' fad' dod'> re'8 <si' fad'>16 <si' fad'> <si' fad' si>4 ~ |
      <si' mid' si>2 r8 <la' fad' dod'>16 <la' fad' dod'> <la' fad' dod'>8 <fad'' la' re''>16 <fad'' la' re''> |
      <fad'' la' re''>4 r r8 s <sold'' mi'' si'>16[ <sold'' mi'' si'>16] <sold'' mi'' si'>8[ <re'' si' mi'>16 <re'' si' mi'>16] |
      <dod'' la' mi'>4 r r2 |
    }
  >>
  \new Staff = "down" <<
    \global \clef "bass"
    {
      re1 ~|
      re2 si, ~|
      si,1 |
      lad, |
      la,2 r8 sold,16 sold, sold,4 ~|
      sold,2 r8 fad,16 fad, fad,8 re16 re |
      re4 r r8 s mi16[ mi] mi8[ mi,16 mi,] |
      la,4 r r2 |
    }
  >>
>>
