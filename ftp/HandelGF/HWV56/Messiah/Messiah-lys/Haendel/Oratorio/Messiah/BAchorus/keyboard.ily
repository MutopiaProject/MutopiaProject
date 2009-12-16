\new PianoStaff \notemode <<
  \new Staff = "up" <<
    \global
    {
      <sib' re'>4 r8 sol'8 << { sol''8. fa''16 mib''8.-\trill re''16 }
                              \\ { r4 r8 \change Staff = "down" \voiceOne sol8 } >> |
      << { re''4 do''8.-\trill sib'16 sib'8. la'16 do''4 ~ }
         \\ { sol'8. fa'16 mib'8. re'16 re'4 sol'8.-\trill fad'16 } >> |
      << { do''8[ re''] } \\ <fad' re'>4 >> <sib' sol' re'>8. <la' sol' mib'>16
      <sol' sib' re'>4 <fad' la' do'>8.-\trill <sol' sib>16 |
      <sol' sib>4 << { <sib' re''>2 do''8 sol'8 }
                     \\ { r8 sol' sol'8. fa'16 mib'8. re'16 } >> |
      << { sol''8. fa''16 mib''8. re''16 re''4 do'' }
         \\ { <sib' re''>4 do''8. sib'16 sib'8. re'16 sol'8. fad'16 } >> |
      <re'' la' fad'>8. <do'' la'>16 <sib' sol'>8. <re'' la' fad'>16
      <re''' la'' fad''>8. <do''' la'' fad''>16 <sib'' sol'' re''>8. <la'' fad'' re''>16 |
      <la'' fad'' re''>4 << { r8 re''8 do''4 } \\ { sol'4 ~ sol' } >> <sib' fad'>8. <la' fad'>16 |
      <sib' sol' re'>8. <la' do'>16 <sol' sib>8. <fad' do'>16 <sol' re'>8 re' sol' <la' fad' do'>8 |
      <sib' sol' re'>8. <do'' la'>16 <re'' sib'>8. <mi'' sib'>16 <fa'' do'' la'>4. <fa'' re''>8 |
      << { fa''4. fa''8 } \\ { <fa'' re''>8. <mib''! do''>16 <re'' sib'>8. <do'' la'>16 } >>
      <fa'' re'' la'>8. <mib'' do'' fa'>16 <re'' sib' fa'>8. <do'' fa' la'>16 |
      << { <do'' la'>4 sib'8. la'16 la'4 si' }
         \\ { fa'8. mib'16 <re' fa'>8. <do' fa'>16  do'8. sol'16 fa'8. <sol' mi'>16 } >> |
      <do'' mi' sol'>8. <sib' mi' sol'>16 <la' do' fa'>8. <sol' mi' do'>16 <sol' mi'>4 r8 <do'' mi'>8 |
      fa'8. sol'16 <la' fa'>8. <sib' sol'>16
      << { do''4 r8 do''8 } \\ { <la' fa'>8. <sol' mi'>16 <fa' re'>8. <mi' do'>16 } >> |
      << { sib'8. do''16 re''8. mi''16 fa''4 fa'' }
         \\ { <re' fa'>4. sib'8 <do'' la'>8. <sib' sol'>16 <la' fa'>8. sol'16 } >> |
      <fa'' la'>4 <mi'' sol'> <fa'' la'> r8 <re'' la' re'> |
      <sib' sol' re'>8. <re'' la' re'>16 <do'' sol' mib'>8. <re'' fad' la'>16 <re'' fad' la'>4 r8 <re'' sol' sib'> |
      << { sol''8. fa''16 <mib'' do''>8. <re'' sib'>16 } \\ { <sol' do''>4 sol' } >> <re'' sib' sol'>4 sib' |
      << { sib'4 sib' sib'2 } \\ { r4 r8 sib mib'8. sol'16 fa'8. <lab' re'>16 } >> |
      << sib'1 \\ { sol'8. mib'16 re'8. <fa' re'>16 mib'8. <sol' mib'>16 <fa' mib'>8. <lab' re'>16 } >> |
      << sib'1 \\ { <sol' mib'>8. mib'16 re'8. <fa' re'>16 mib'8. <sol' mib'>16 <fa' re'>8 <fa' re'> } >> |
      << sib'2 \\ { <sol' mib'>4 <fa' sib>8. <mib' do'>16 } >> <re' fa'>4 re'' |
      << { sib' la'8. sol'16 re''2 ~ } \\ { r2 r4 r8 re' } >> |
      << { re''2 re'' } \\ { sol'8. sib'16 la'8. <do'' fad'>16 sib'8. sol'16 <fad' do''>8. <la' mib'>16 } >> |
      << { re''2 re'' } \\ { <sol' re'>8. <sib' sol'>16 <la' fad'>8. <do'' la'>16
                             <sib' sol'>8. <sol' re'>16 <fad' do'>8. <la' mib'>16 } >> |
      << re''1 \\ { <sol' re'>8. <sib' sol'>16 <la' fad'>8 <fad' la'> <sol' re'>4 <la' re'>8 <sib' sol'> } >> |
      <re'' la' fad'>4. <do'' la' fad'>8 <sib' sol' re'>4 <la' fad' re'>8 <sib' sol' re'> |
      <la' fad' re'>8 re' << { re''2 do''4 } \\ { r8 <re' sol'> <mi' sol'>4. <mi' do'>8 } >> |
      <do'' fad' la'>4 << { sib' la'4. sol'8 } \\ { <re' sib>8 <do' sol'> <sol' re'>4 <fad' re'> } >> |
      <sol' sib re'>4 r8 sol' sol''8. fa''16 mib''8. re''16 |
      << { re''4 do''8. sib'16 sib'8. la'16 do''4~ }
         \\ { sol'8. fa'16 mib'8. re'16 re'4 sol'8. fad'16 } >> |
      << { do''8. re''16 sib'8. la'16 } \\ { <fad' la'>4 <sol' re'> } >>
      <sib' sol' re'>4 << { <fad' la'>8. sol'16 } \\ re'4 >>|
      <sol' re'>1 
    }
  >>
  \new Staff = "down" <<
    \global \clef "bass"
    {
      sol4 sol, r2 |
      r4 r8 sol, sol8. fa16 mib8. re16 |
      re4 sol8. do16 re4 re, |
      sol,1 |
      sol,4. sol,8 sol8. fa16 mib8. re16 |
      re2 ~ re4. re8 |
      re'8. do'16 sib8. la16 la4. re8 |
      sol4 sol8. la16 sib4. la8 |
      sol4. sol8 fa2 |
      fa1 |
      fa4. fa8 fa8. mi16 re8. do16 |
      do2 << { do'8. sib16 la8. sol16 } \\ { do4. do8 } >> |
      <re la>4 do8. sib,16 la,4 r8 la |
      sib4 la8. sol16 la4 r8 <sib re'> |
      do'4 <do do'> <fa do'> r8 fad |
      sol8. fa16 mib8. re16 re4 r8 sol |
      mib4 do sol r |
      r2 r4 r8 sib, |
      <mib sib>8. <sol sib>16 <fa lab>8. lab16 sol8 sib4 sib,8 |
      mib8. <sol sib>16 <fa lab>8. lab16 sol8 sib4 lab8 |
      sol4 re8. mib16 sib,4 r |
      R1 |
      r4 r8 re sol8. sib16 la8. do'16 |
      sib8 re'4 re8 sol8. sib16 la8. do'16 |
      sib8 re'4 do'8 sib4 fad8 sol |
      re1 ~|
      re4 r8 sib, do4 do8 do |
      re4 sol, re re, |
      sol,2. << do'4 \\ { s8 sol } >> |
      <sol sib>4. sol,8 sol8. fa16 mib8. re16 |
      re4 sol, re re, |
      sol,1 |
    }
  >>
>>
