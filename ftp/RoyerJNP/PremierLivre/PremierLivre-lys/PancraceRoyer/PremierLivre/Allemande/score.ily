\score {
  \notemode {
    \new PianoStaff \with { instrumentName = \markup \center-column { \smallCaps Allemande } } <<
      \new Staff = "up" <<
        \global
        {
          do''16 |
          <do' mib' sol' \barre do''>2 ~ do''4. do''64[ sib' lab' sol' fa' mib' re' do'] ~|
          << { \voiceTwo do'2 ~ do'8. do'16 \grace do'8 si4 |
               do'8 r }
             \new Voice { \voiceOne lab'8. lab'16 sol'8. sol'16 \grace sol'8 fa'4 ~ fa'8. sol'16 |
                          \grace fa' mib'4 -\prall } >>
          \oneVoice \grace re'8 do'8. sol'16 \times 2/3 { sol'8 ( mib' sol' ) } \times 2/3 { mib' ( re' sol' )}|
          \grace sol' <do' mib' lab' \barreB do''>4. r16 do'' do''8*2/3( re'' ) sib'
          \appoggiatura { do''16 [ re'' ]} \voiceOne mib''8. mib''16 |
          mib''4 ( re''16 ) r8 re''16 re''8*2/3 mi'' do'' fa''8. fa''16 |
          fa''4 ( mib''16 ) r8 sol''16 \grace sol'' fa''8. -\prall mib''16 \grace mib''8 re''8. -\prall do''16 |
          \grace do''8 si'8. -\prall si'16 si'8*2/3( do'' ) re'' re'' ( mib'' ) fad' fad' ( sol' la' )|
          \oneVoice la' sib' mi' mi' fa' sol' sol' lab' re' re' mib' fa' |
          sol'8 r16 <fad' la'> <sol' sib'>8. <la' do''>16 <sib' re''>4 <sol' mib''> |
          \grace sol'8 fad'4 -\prall r8 r16 re' ~ re'8. re'16 ~ re'8. sol'16 |
          \grace sol'8 fad'4 -\prall \grace mi'8 re'8. re'16 ~ re'8. re'16 ~ re'8*2/3 dod' sol' |
          \set Staff.tieWaitForNote = ##t sol' ( fad' ) re' ~ re' re' ~ sib'
          << { \voiceOne <re' sib'>8. la'16 \grace la'8 sol'8. fad'16 |
               \appoggiatura { fad' [ sol' ]} la'4 \oneVoice r8*2/3 \tieDown re' ~ re''
               \tieNeutral <re' sib'>8. \voiceOne la'16 \grace la'8 sol'8.-\prall fad'16 |}
             \new Voice { \voiceTwo s8. do'16 \grace do'8 sib8. -\prall la16 |
                          \appoggiatura { la [ sib ]} do'4 s s8. do'16 \grace do'8 sib8. -\prall la16 |} >>
          \change Staff = "down" \voiceOne sol8 r16 sol64 sib mib' sib128 sol
          fa8 r16 fa64 la re' la128 fa
          mib8 r16 mib64 sol do' sol128 mib
          re8 r16 re64 fa sib fa128 re |
          do8 r16 do64 mib la mib128 do
          sib,8 r16 sib,64 re sol re128 sib,
          la,8 r16 do64 re fad re128 do
          sol,8 r16 \grace { sol32[ la ]} <sol sib>16 
          \grace <sol sib>8 <fad la>4.-\prall sol64*8/7^[ la sib do' \change Staff = "up" \oneVoice re' mi' fad'] sol'8. do'16
          << { do'8*2/3[ sib fad'] | fad'4 ( sol'2 ) } \\
             { s4*2/3 do'8*2/3 ~ | do'8. si32 do' re'16 ~ si ~ sol8 ~ <sol si re'>4 } >>
          r8 do'64*8/7[ re' mib' fa' sol' la' si'] |
          << { fad'4 ( sol'8 ) } \\ { do'8. si32 do' re'[ ( si sol16] ) }>>
          r16 sol'' <sol' si' re'' sol''>4. sol''64[ fa'' mib'' re'' do'' si' la' sol' ]|
          %% B
          << { mib''8. mib''16 re''8. re''16 \grace re''8 do''4 ~ do''8. re''16 |
               \grace do''8 si'8. -\prall la'16 \grace la'8 sib'8. \mordent do''16
               \grace sib'8 lab'4 -\prall \grace sol'8 fa'8*2/3 lab' reb'' |
               reb''4*2/3 do''8*2/3 ~ do''4*2/3 sib'8*2/3
               \oneVoice sib' do'' \mordent mi' r lab' reb'' ~ | \voiceOne
               reb''4*2/3 do''8*2/3~ do''4*2/3 si'8*2/3
               \oneVoice si' do'' \mordent mi' r8 r16 \voiceOne do'' |
               do''8. sib'16 \grace sib'8 lab'8. -\prall sol'16 \grace sol'8 lab'8. \mordent sib'16 do''8. \mordent reb''16 |
               lab'4 ( sol'8.) -\prall fa'32 sol' sol'4 } \\
             { sol'2 ~ sol'8. sol'16 \grace sol'8 fa'4 ~|
               fa'4. mi'8 s2 |
               reb''8*2/3 sol' do'' do'' fa' sib' s2 |
               reb''8*2/3 sol' do'' do'' fa' si' s4 s8. lab'16 |
               lab'8. sol'16 \grace sol'8 fa'8. mi'16 \grace mi'8 fa'4 fa' |
               fa' mi'8. -\prall re'32 mi' \grace mi'8 fa'4 \mordent } >>
          lab'8 r32 fa' sol' lab' |
          r8 r16 <fa'' \coule lab''>16 \voiceOne <fa'' lab''>8*2/3 <mib'' sol''> <re'' fa''> \grace <re'' fa''>8
          \once\override Script #'Y-offset = #0 <mib'' sol''>4_\mordent \oneVoice r8 mib'64[ fa' sol' fa' mib' re' do' sib] |
          r8 r16 <mib'' \coule sol''>16 \voiceOne <mib'' sol''>8*2/3 <re'' fa''> <do'' mib''> \grace <do'' mib''>8
          \once\override Script #'Y-offset = #-0.5 <re'' fa''>4_\mordent \oneVoice r8 re'64[ mib' fa' mib' re' do' si la] |
          r8 r16 <re'' fa''>16 \voiceOne <re'' fa''>8*2/3 <do'' mib''> <si' re''> \grace <si' re''>8
          \once\override Script #'Y-offset = #-1 <do'' mib''>4_\mordent \oneVoice r8 r16 sol' ~|
          sol'8. sol'16 sol'8*2/3( fa' ) do'' \grace do''8 si'16 -\prall la' sol'8 ~ sol'8. sol'16 ~|
          sol'8. sol'16 ~ sol'8*2/3 fa' do'' do'' si' sol' ~ \stemUp sol' sol' ~ mib'' |
          << { \voiceOne <sol' mib''>8. re''16 \grace re''8 do''8. -\prall si'16
               \grace { si'32 [ do'' ]} re''4 \oneVoice r8*2/3 \stemUp sol' ~ mib'' |
               \voiceOne <sol' mib''>8. re''16 \grace re''8 do''8. -\prall si'16 si'8. do''16 \mordent }
             \new Voice { \voiceTwo s8. fa'16 \grace fa'8 mib'8.\mordent re'16 \grace { re'32[ mib' ]} fa'4 s |
               s8. fa'16 \grace fa' mib'8.\mordent re'16 re'8. mib'16 \mordent } >>
          \oneVoice r8 r16 <mib' \coule sol'> |
          <mib' \coule sol'>8. <re' fa'>16 \grace <re' fa'>8 <do' mib'>8.\prall <si re'>16
          \grace { <si re'>64[ <do' mib'>64] } <re' fa'>4 r8 r16 <mib' sol'> |
          <mib' sol'>8. <re' fa'>16 \grace <re' fa'>8 <do' mib'>8. <si re'>16
          do'8 r16 do'64 mib' lab' mib'128 do' 
          sib8 r16 sib64 re' sol' re'128 sib |
          lab8 r16 lab64 do' fa' do'128 lab
          \change Staff = "down" \voiceOne sol8 r16 sol64 sib mib' sib128 sol
          fa8 r16 fa64 lab re' lab128 fa
          mib8 r16 mib64 sol do' sol128 mib |
          re8 r16 fa64 sol si sol128 fa
          do8 r16 \change Staff = "up" \oneVoice \grace { do'16[ re'] } \oneVoice <do' mib'>16
          << { \grace mib'8 \voiceOne re'4.-\prall do'64[ re' mib' fa' sol' la' si' do''] } \\
             { \grace do'8 \voiceTwo si4.-\prall } >>|
          \change Staff = "down" <do mib lab>8. \change Staff = "up" <do' mib' lab'>16
          \change Staff = "down" <sib, re sol>8. \change Staff = "up" <sib re' sol'>16
          \change Staff = "down" <lab, do fa>8. \change Staff = "up" <lab do' fa'>16
          \change Staff = "down" <sol, sib, mib>8. \change Staff = "up" <sol sib mib'>16 |
          \change Staff = "down" <fa, lab, re>8. <fa lab re'>16
          <mib, sol, do>8. <mib sol do'>16 <re, fa, sol, si,>8.^"Arpège" <re fa sol si>16
          <do, mib, sol, do>8.[ \change Staff = "up" \grace { do'16[ re'] } <do' mib'>16] |
          << { \grace mib'8 \voiceOne re'4.-\prall do'64[ re' mib' fa' sol' la' si' do'']
               do''8. mib'16 mib'8*2/3 ( re' ) si' |
               si'4 ( do'' )~ do'' } \\
             { \grace do'8 \voiceTwo si4.-\prall s8 s4 s4*2/3 fa'8*2/3 |
               fa'8. mib'32-\prall re' mib'16 sol'32~ mib' ~ do'8 ~ <do' mib' sol'>4 } >>
          r8 r16 sol'' |
          <sol' si' re'' sol''~>2. sol''8 sol''64 fa'' mib'' re'' do'' si' la' sol' |
          << { si'4 ( do'' )~ do''2 } \\ { fa'8. mib'32-\prall re' mib'16 sol'32~ mib' ~ do'8 ~ <do' mib' sol'>2 } >>|
        }
      >>
      \new Staff = "down" <<
        \global \clef "bass"
        {
          r16 |
          <do, mib, sol, do>4. do,64*8/9[ re, mib, fa, sol, la, si, do re] <mib mib,>4 <do, do> |
          <fa fa,> <mib, mib> <re re,> ~ <sol, re sol> ~ |
          <sol do>_\mordent do,8 r <do do'>4 <sib sib,> |
          << { \stemUp <lab, \barreB lab>4. } \new Voice { \voiceThree <do mib>8 } >> r8 r4 r8 r16 \change Staff = "up" \voiceTwo sol'16 |
          sol'8*2/3 la' fa' sib'8. sib'16 sib'4 la'16 r8 la'16 |
          la'8*2/3( si' ) sol' do''8. sib'16 lab'8. sol'16 fa'8. lab'16 |
          sol'8. fa'16 mib'8. re'16 do'8. do'16 sib8. la16 |
          \change Staff = "down" \oneVoice sol8. sib16 lab8. -\prall sol16 fa8. lab16 sol8.-\prall fa16 |
          mib8 r16 <mib mib,> <re, re>8. <do do,>16 <sib, sib,,>4 \grace { do32 [ sib, do ]} \afterGrace do4\prall { sib,16[ do ]}|
          <re re,>4 <sib sol> <la fa> <sol mib> |
          <la re> <sib sol> <la fa> <sol mi> |
          <la re> sib, \mordent do re |
          mib sib, do \mordent re |
          \voiceTwo sol,4 fa, mib, re, |
          do, sib,, la,, sol,, |
          re2 \oneVoice <sol sol,>4 <re, re> |
          <sol, sol,,> fa, mib,_\prall re, |
          <sol, sol,,>4. r16 sol64*4/5[ fa mib re do] << <re sol>2 \\ { si,4 sol, } >> |
          %% B
          <do do,>4 <sib,, sib,> <la, la,,> lab,\mordent |
          sol, <do do,> fa, fa\mordent |
          mib reb do fa \mordent |
          mib reb do lab, |
          sib, \mordent do << { fa8. sol16 lab8. \mordent sib16 } \\ fa,4 >>|
          do'2 r4 fa |
          <sib sib,> \change Staff = "up" \voiceTwo sib' mib' \change Staff = "down" \oneVoice mib4 |
          <lab lab,> \change Staff = "up" \voiceTwo lab' re' \change Staff = "down" \oneVoice re4 |
          <sol sol,> \change Staff = "up" \voiceTwo sol' do' \change Staff = "down" \oneVoice do4 |
          <sib, sib> <lab lab,> <sol, sol> <do' mib'>|
          <re' sib> <do' la> <re' sol> mib |
          fa sol lab mib |
          fa \mordent sol do' <mib mib,> |
          <fa fa,>_\mordent <sol, sol> <lab lab,> mib, |
          fa, sol, do sib, |
          lab, \voiceTwo sol, fa, mib, |
          re, do, \oneVoice sol2 |
          s1*2 |
          sol2 do4 sol, |
          do, do8. re16 mib4 do |
          <sol, sol,,> <la,, la,> << si,\mordent \\ r >> <sol, sol,,> |
          do, do2.\mordent |
        }
      >>
    >>
  }
  \layout { }
  \midi { }
}