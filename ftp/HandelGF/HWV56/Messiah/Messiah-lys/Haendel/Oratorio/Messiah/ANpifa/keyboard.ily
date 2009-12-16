\new PianoStaff \notemode <<
  \new Staff = "up" <<
    \global
    { \override Staff.NoteCollision #'merge-differently-dotted = ##t
      << { do''( re''8) } \\ do''4. >> <mi'' do''>4( <fa'' re''>8) <sol'' mi''>4. <la'' fa''> |
      <sol'' mi''>8. <fa'' re''>16 <mi'' do''>8 <fa'' re''>4.-\trill
      <mi'' do''>-\trill <fa'' re''>16( <sol'' mi''> <la'' fa''>4) |
      <sol'' mi''>8.-\trill <fa'' re''>16 <mi'' do''>8 <fa'' re''>4.-\trill
      <mi'' do''>~ <mi'' do''>4 <re'' si'>8 |
      <mi'' do''>8. <fa'' re''>16 <sol'' mi''>8 <fa'' re''>8. <sol'' mi''>16 <mi'' do''>8
      << { re''4. sol''4 <re'' si'>8 } \\ { si'4 la'8 si'8. la'16 si'8 } >>|
      <mi'' do''>4-\trill <re'' si'>8 <mi'' do''>8. <re'' si'>16 <do'' la'>8
      << { re''4. mi''16( fa'' sol''4) } \\ { si'4 la'8 sol'4. } >>|
      <mi'' do''>4 <re'' si'>32( <mi'' do''> <fa'' re''>16) <mi'' do''>4.-\trill
      << { re''4 sol'8 sol''4. ~ |
           sol'' fa'' fa''8.-\trill mi''16 <re'' sol'>8 mi''4 do''8 |
           re''4 do''8 re''4 mi''8 <fa'' sib'>4 <do'' la'>8 <fa'' re''>4. ~ |
           <fa'' re''> mi''8. re''16 mi''8 re''4 si'8 } \\
         { si'4. r4 sol'8 |
           la'4 sol'8 la'4 si'8 do''4 sol'8 do''4 do''8 |
           do''4. sib' ~ sib'4 la'8 re''4. ~|
           re'' do'' ~ do''4 sol'8 } >> <sol'' mi''>4. ~ |
      <sol'' mi''>8. <fa'' re''>16 <mi'' do''>8 <fa'' re''>8.-\trill ~ <mi'' do''>16 <re'' si'>8
      do''4. <fa'' re''>16( <sol'' mi''> <la'' fa''>4) |
      <sol'' mi''>8.-\trill ~ <fa'' re''>16 <mi'' do''>8 <mi'' do''>4( <re'' si'>8) do''2.-\fermata |
      << { sol'4 la'8 si'4 do''8 } \\ { sol'4. ~ sol'4 la'8 } >> <re'' si'>4. <mi'' do''> |
      <fa'' re''>8. <sol'' mi''>16 <fa'' re''>8 <mi'' do''>8. <re'' si'>16 <mi'' do''>8
      <re'' si'>4. <mi'' do''> |
      <fa'' re''>8. <sol'' mi''>16 <fa'' re''>8 <mi'' do''>8. <re'' si'>16 <mi'' do''>8
      <re'' si'>4. <re'' si'> ~ |
      <re'' si'>8. <mi'' do''>16 <re'' si'>8 <re'' si'>4 <re'' si'>8
      << { sold''4. si'' } \\ re''2. >>|
      << { re''8. mi''16 re''8 } \\ { sold'4 si'8 } >> <do'' la'>4 <si' sold'>8
      <do'' la'>4. <do'' la'> ~ |
      <do'' la'>8. <re'' si'>16 <do'' la'>8 <do'' la'>4 <do'' la'>8
      <fad'' do''>4. <la'' do''> |
      << { do''8. re''16 do''8 } \\ { fad'4 la'8 } >> <si' sol'>4 <la' fad'>8
      <si' sol'>4. <mi'' do''> |
      <re'' si'>8. <do'' la'>16 <si' sol'>8 <do'' la'>8. <si' sol'>16 <la' fad'>8
      <si' sol'>4. <mi'' do''> |
      <re'' si'>8. <do'' la'>16 <si' sol'>8 <do'' la'>8. <si' sol'>16 <la' fad'>8
      << { sol''8. fad''16 mi''8 } \\ { si'4 do''8 } >> <re'' si'>4 <do'' la'>8 |
      <si' sol'>4. <la' fad'> << sol'2. \\ { sol'4. si' } >> |
    }
  >>
  \new Staff = "down" <<
    \global \clef "bass"
    {
      do1. ~|
      do ~|
      do2. ~ do4. ~ do4 sol8 |
      do2. sol, ~|
      sol,1. ~|
      sol,2. ~ sol,4. r4 mi8 |
      fa4. re do r4 la8 |
      sib4. sol fa r4 re8 |
      mi4 re8 mi4 fa8 sol2. |
      sol, do ~|
      do4 fa8 sol4 sol,8 do4 \fermata re8 mi4 fad8 |
      sol1. ~|
      sol ~|
      sol |
      fa2. mi ~|
      mi la4 sol8 fad4 mi8 |
      re1. ~|
      re2. sol ~|
      sol1. ~|
      sol2. sol,4 la,8 si,4 do8 |
      re4. re, sol4 fa8 mi4 re8 |
    }
  >>
>>
