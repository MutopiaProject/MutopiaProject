\new PianoStaff \notemode <<
  \new Staff  = "up" <<
    \global
    {
      r2 do'' | lab' reb'' | mi'1 | fa'2. sol'4 |
      << {
        lab'2. sib'4 | do''1 | r4 re'' sol'' fa'' | mib'' re'' do'' si' |
        do'' sol' do''2 ~| do'' sib' ~| sib' lab' | sol'1 |
        fa'4 sol' lab' sib' | do''2 do''4 sib' | R1 | r4 do'' fa'' mib'' |
        reb'' do'' sib' la' | sib' do'' reb''2 | do'' do'' | do''2. do''4 |
        re''1 | sol'2 r |
      } \\ {
        r2 fa' | mib' lab' | si1 | do'2 re' |
        mib'2. fa'4 | sol' fa' re' mi' | fa' do' fa'2 ~| fa' mi' |
        fa'1 | r4 sol' sol'2 | lab'4 sol' fa' mi' | fa'1 ~|
        fa' ~| fa'2 sib' ~| sib' lab' | sol' fa'4 mib' |
        re'4 re' sol' fa' | mib' re' do' si | } >>
      r4 sol' do'' sib' | lab' sol' fa' mi' | fa'2  fa''2 |
      mib'' lab'' | si'1 | do''2 re'' | mib''2. fa''8 mib'' |
      reb''4 do'' reb''2 |
      << { do''1 | fa'2 r | r4 do' fa' mib' | reb'4 do' sib do' |
           r4 sib' fa' sol' | lab'2. sib'8 lab' | sol'2 } \\
         { r2 fa' | reb' solb' | la1 | sib2. la4 |
           reb'2. mib'8 reb' | do'4 fa' do' re' | mi' fa' } >>
      sol'4 mi' | fa' sol' lab' sib' | do''4 sol' do'' sib' | lab' sol' fa' mi' |
      fa' do'' fa'' mib'' | reb'' do'' sib' la' |
      << { sib' do'' reb''2 ~| \oneVoice reb'' do'' | sib'1 ~|
           \voiceOne sib'2 lab' ~| lab'4 sib' sol' lab' | fa'2 sib' |
           sol' do'' | re'1 | mib'2 fa' | sol'2 lab'2 ~|
           lab'4 sib' sol' lab' | fa'1 | r2 mib'' | do''2 fa'' |
         } \\ { fa'1 | s1*2 |
                s4 mib' fa' mib' | re'2 mib' ~| mib' re' |
                mib' s | s1 | sib2 sib | mib'4 mib' re'4 do' |
                re'2 mib' ~| mib' re' | mib'1 | mib'2 r } >>
      sol'1 | lab'2 sib' |
      << { do''4 lab' reb''2 ~| reb''4 mib'' do'' reb'' | \oneVoice sib'2 lab'4 reb'' |
           \voiceTwo sib'1 | lab'2 \voiceOne do'' | lab' \oneVoice reb'' |
           mi'1 | fa'2 sol' | \voiceOne lab'1 | sol'2. fa'4 | sol'1 |
           mib'4 lab' sol' fa' | sol' do'' sol' lab' | sib'2. lab'8 sol' |
           lab'1 | la' | sib'4 sib' fa' sol' | lab'2. sol'8 fa' | sol'1 ~|
           sol'2 sol' |
           r2 fa'' | \oneVoice mib'' lab'' | si'1 | do''2 re'' | mib'' mi'' |
           \voiceOne fa''1 |
           do'' | do''2 sib' | lab'4 sol' lab' sib' | do''1 | do'' | sib' |
           do''\breve*1/2 \fermata |
         } \\ { 
           r2 fa' | mib'1 | s1 |
           \voiceOne r4 sib' mib'' reb'' | do'' sib' \voiceTwo lab' sol' | fa'2 s |
           s1*2 | do'4 fa' do' re' | mib' re' do'2 | re'4 re' sol' fa' |
           do'2 si | do'1 | s1 | r4 fa' do' re' |
           mib'2. reb'8 do' |
           reb'1 | re'! | mib'4 mib' sib do' | reb'2. do'8 sib |
           lab'1 | s1*4 |
           do''2 sib' | sol'4 sol' do'' sib' | lab' sol' fa' mi' | fa' mi' fa' sol' |
           lab'2. sol'4 | fa'1 ~| fa' | mi'\breve*1/2 |
         }
       >>
    }
  >>
  \new Staff = "down" <<
    \global \clef "bass"
    {
      fa,2 r2 |
      R1*10
      r2 do' |
      lab reb' |
      mi1 |
      fa2 sol |
      lab la |
      sib do' |
      reb'2. mib'4 |
      fa'2 <fa do'> |
      mib lab |
      si,1 |
      do2 re |
      << { do'2 sol | do'2. sib4 | do'2 do'4 re' |
           mib'1 | re' | sol | } \\
         { mib2 mi | fa2. sol4 | lab2. sib4 |
           do'2 do | r4 re sol fa | mib re do si, | } >>
      do do' sol la |
      sib fa sib2 ~|
      sib la |
      sib mib |
      fa1 |
      sib,2. fa4 |
      sib1 |
      fa |
      do2 do' |
      <lab do'> <reb' fa'> |
      << { r2 do' } \\ { <mi sol>1 } >>|
      <fa lab do'>2 <sol sib> |
      << do'1 \\ { lab2 la } >> |
      <sib reb'> <do' mib'> |
      reb'4 do' sib lab |
      << { mib'2 lab ~| lab4 sol lab sib | mib } \\
         { sol2 lab | mib2. re4 | do1 | } >>
      sib, ~|
      sib, |
      r2 lab |
      fa4 sib, sib lab |
      sol fa mib re |
      mib do fa2 |
      sib, mib |
      sib2. lab4 |
      << sib1 \\ { sol4 mib fa sol } >> |
      lab2 reb |
      << { r4 sib mib' reb' } \\ mib1 >> |
      do'4 sib lab sol |
      lab fa sib lab |
      sol mib lab2 |
      << { fa4 sol lab2 ~| lab sol | lab1 | } \\
         { reb4 mib fa reb | mib1 | lab, | } >>
      r2 sib |
      sol4 sol do' sib |
      lab reb' do' sib |
      r2 fa2 |
      mib lab |
      si,1 |
      do2 re |
      mib2. fa4 |
      sol fa re mi |
      fa1 ~|
      fa |
      sib, ~|
      sib,2 sib, |
      mib1 ~|
      mib2 mib |
      << { do'1 | sol'2 fa'4 mib' } \\ { lab2. sib4 | do'1 } >>|
      re'4 sol sol' fa' |
      mib' re' do' si |
      do'2 do' |
      lab reb' |
      mi1 |
      <fa fa'>2 <sol sib> |
      <lab do'>2. <sol sib>4 |
      << { lab4 sib do'2 } \\ { fa2. mib4 } >>|
      <reb reb'>1 ~|
      <reb reb'> |
      <do sol>\breve*1/2 \fermata |
    }
  >>
>>
