\score {
  \notemode {
    \new PianoStaff \with { instrumentName = \markup \center-column { \smallCaps "La Majestueuse" \smaller Courante } } <<
      \new Staff = "up" <<
        \global
        {
          re''8  |
          <fa' la' re''>4. mi''8 fa''8. dod''16  |
          re''8.( la'16) sib'8. ( sol'16 ) la'8. ( mi'16 )|
          \appoggiatura mi'8 fa'4.\mordent mi'8 re'4 |
          << { << re''4 \new Voice { \voiceThree <fa' sib'>8 } >> re''4. mi''8 |
               \appoggiatura mi'' fa''4 \appoggiatura fa''8 mi''4. -\prall re''8 |
               \appoggiatura re'' dod''4. -\prall \oneVoice si'8[ la' r16 mi'] | } \\
             { re'4 fa'4. sol'8 |
               la'4 \appoggiatura la'8 sol'4. fa'8 |
               mi'4 } >>
          r8. \change Staff = "down" \voiceOne <mi la>16 \change Staff = "up" \oneVoice r8. mi'16 r8. \voiceOne mi''16 |\oneVoice
          << { mi''4 ( fa''8 ) mi'' \slurDown \appoggiatura mi'' re''8.-\prall do''16 } \\
             { dod''4 re''8\mordent } >>
          r8. \change Staff = "down" \voiceOne <re sol>16 \change Staff = "up" \oneVoice r8. re'16 r8. \voiceOne re''16 |\oneVoice
          << { re''4 ( mi''8 ) re'' \slurDown \appoggiatura re'' do''8.-\prall si'16 } \\
             { si'4 do''8\mordent } >>
          r8. re''16 re''8. ( do''16 ) r8. si'16 |
          si'8. ( la'16 )\appoggiatura la'8 sold'4. -\prall \afterGrace la'8 { mi'16[ fad'] }|
          << <si mi' sold'>8 { si'8.[ si'16 ( do''8. ) sold'16 ( la'8. ) fad'16] } >>|
          r8. sold'16 \appoggiatura sold'8 la'8. si'16 \appoggiatura si'8 do''8. la'16 |
          \appoggiatura la'8 si'4.\mordent r16.*4/3 \grace { mi'32[ fad' sold' la' si' do'' re'' mi''] } mi'8. mi''16 |
          \appoggiatura mi''8 re''8. -\prall do''16 \appoggiatura do''8 si'4. -\prall la'8 |
          << { \oneVoice r <do' mi' la'> r <do' mi' la'>~ \voiceOne <si mi' la'> <mi' sold'> |
               <mi' sold'> la' ~ << la'4. <dod' mi'>4 >> re'8 } \\
             { s2 si8 re' ~ |
               re'16 dod'32 si dod'16 mi'32 la ~ la4 }>>|
          << <la re'>2 \\ { fa4. fa8\rest } >> r8 re'' |
          <fa' la' re'' >4. mi''8 \appoggiatura mi'' fa''8. dod''16 |
          \appoggiatura dod''8 re''8. la'16 \appoggiatura la'8 sib'8. sol'16 \appoggiatura sol'8 la'8. mi'16 |
          \appoggiatura mi'8 fa'2\mordent ~ fa'64*16/11[ sol' fa' mi' re' mi' fa' sol' la' si' dod'']|
          re''16 r r8 << { re''4. mi''8 } \\ { fa'4. sol'8 } >>|
          << { <mi' sold'>8 la' ~ <la' dod' mi'>4 } \\
             { re'16 dod'32 si dod'16 mi'32 la ~ la4 }>> r8 mi' |
          r8. la'16 r8. mi''16 r8. la''16 |
          la''2 r16 sol''32*6/9 fa'' sol'' la'' sol'' fa'' mi'' re'' do'' |
          \appoggiatura do''8 sib'8. -\prall la'16 \appoggiatura la'8 sib'4.\mordent do''8 |
          \appoggiatura sib' la'4 -\prall \appoggiatura la'8 sib'4.\mordent do''8 |
          \appoggiatura do'' re''8. do''16 \appoggiatura do''8 sib'8. la'16 \appoggiatura la'8 sol'8. fa'16 |
          \set Staff.tieWaitForNote = ##t fa'8. mi'16 r8. mib'16 \appoggiatura mib'8 re'8. ~ fad'16 |
          <re' fad'>4( sol'8.)\mordent fa'16 mi'8. -\prall do'64*4/7 re' mi' fa' sol' la' sib' |
          do''8.[ do''32*2/3 sib' la'] sib'8.[ sib'32*2/3 la' sol'] la'8.[ fa''64*4/6 mi'' re'' do'' sib' la' ]|
          sol'8. sol'32*2/3 la' sib' \appoggiatura la'8 sol'4. -\prall fa'8 |
          r8. <la do' fa'>16 r8. la'16 la'8. ( sol'16 )|
          r8. <fad la re'>16 ~ <fad la re'>8. <la re' fad' la'>16 ~ <la re' fad' la'>8 r16 fad'' |
          fad''4\suspension sol''16 r r si' si'8. la'16 |
          r8. <sold si mi'>16 ~ <sold si mi'>8. <si mi' sold' si'>16 ~ <si mi' sold' si'>8 r16 sold'' |
          sold''4\suspension ( la''8. ) la'16 la'8. sol'16 |
          r8. sib'16 sib'8. ( la'16 ) r8. sol'16 |
          sol'8. ( fad'16 ) r8. sol'16 sol'8. ( fa'16 )|
          fa'8. mi'16 r8. re'16 re'8. dod'16 |
          r8. fa'16 \appoggiatura fa'8 mi'8. -\prall re'16 r8. re'16 |
          r8. fa'16 \appoggiatura fa'8 mi'8. -\prall re'16 r8. re'16 |
          r8. << { dod''16 re''8. mi''16 fa''8. re''16 } \\ { la' si'8. dod''16 re''8. si'16 } >>|
          r8. << { dod'16 \appoggiatura dod'8 re'8. mi'16 \appoggiatura mi'8 fa'8. re'16 } \\
                 { la \appoggiatura la8 si8. dod'16 \appoggiatura dod'8 re'8. si16 } >>|
          r8. << { dod''16 re''8. mi''16 fa''8. sol''16 |
                   la''4 la'' la'' |
                   la'' sol'' sol'' |
                   sol''\mordent la''8. sol''16 \slurDown \appoggiatura sol''8 fa''8. -\prall mi''16 |
                   mi''8.\mordent fa''32 sol'' \appoggiatura fa''8 mi''4.-\prall re''8 } \\
                 { la'16 si'8. dod''16 re''8. mi''16 |
                   fa''4\mordent fa'' fa'' |
                   fa''4. fa''8 mi''8. -\prall re''16 |
                   mi''4 r la'8 r |
                   sib'4 la' sol' } >>|
          <re' fa' la' re''>4. r16 mi' \appoggiatura mi'8 fa'8. dod'16 |
          \appoggiatura dod'8 re'8. la'16 \appoggiatura la'8 sib'8. sol'16 \appoggiatura sol'8 la'8. mi'16 |
          fa'8[ -\prall mi'64 re' mi' fa' sol' la' si' dod''] <re' fa' la' re''>4 r8 re''64[ do'' sib' la' sol' fa' mi' re']|
          sib'8. mi'16 \appoggiatura fa'8 mi'4. -\prall re'8 |
          re'4.\suspension r16 mi' \appoggiatura mi'8 fa'8. dod'16 |
          \appoggiatura dod'8 re'8. la'16 \appoggiatura la'8 sib'8. sol'16 \appoggiatura sol'8 la'8. mi'16 |
          fa'8[ -\prall mi'64 re' mi' fa' sol' la' si' dod''] <re' fa' la' re''>4 r8 re''64[ do'' sib' la' sol' fa' mi' re']|
          sib'8. mi'16 \appoggiatura fa'8 mi'4. -\prall re'8 |
          \clef "bass" r <fa la re'> r <fa la re'>~ -\prall <mi la re'> ~ <sol la dod'> |
          << { dod' <re' fa> ~ re'4 } \\ { sol16 fa32 mi fa16 la32 ~ re ~ <re fa la>4 } >> r8. mi'16 |
          << { dod'8 <re' fa> ~ re'2 } \\ { sol16 fa32 mi fa16 la32 ~ re ~ <re fa la>2 } >> |
        }
      >>
      \new Staff = "down" <<
        \global \clef "bass"
        { r8 |
          \override Staff.NoteCollision #'merge-differently-dotted = ##t
          %%\override Staff.NoteCollision #'merge-differently-headed = ##t
          << { re'8.( mi'16) } \\ re8 >> \clef "treble" fa'8. ( sol'16 ) la'8. ( mi'16 )|
          << { fa'8. fad'16 } \\ re'8 >> sol'8. mi'16 fa'8. dod'16 
          re'4 \clef "bass" re r |
          <sib,, sib,>4. <sib, sib>8 <la, la> <sol, sol> |
          << { fa8.[ ( sol32*2/3 fa sol] ) } \\ fa,8 >> sol4. -\prall ( fa16 sol )|
          la4 la, r |
          la,,8. \voiceTwo dod16 \oneVoice la,8. \change Staff = "up" \voiceTwo dod'16 \change Staff = "down" \oneVoice la8. \change Staff = "up" \voiceTwo dod''16 |
          \change Staff = "down" \oneVoice re4 re, r |
          sol,,8. \voiceTwo si,16 \oneVoice sol,8. \change Staff = "up" \voiceTwo si16 \change Staff = "down" \oneVoice sol8. \change Staff = "up" \voiceTwo si'16 |
          \change Staff = "down" \oneVoice do4 do, r |
          \clef "treble" <fa' la'>4 <mi' sol'> <re' fa'>|
          <do' mi'> <si re'> <la do'>|
          \clef "bass" << <mi, sold, si,>8 { mi8.[ sold16 ( la8. ) si16 ( do'8. ) la16] } >>|
          << { mi8. si16 do'8. sold16 la8. fad16 } \\ mi2 >>|
          \appoggiatura fad8 <re sold>4. r8 << << do'4 \new Voice { \voiceThree <mi sol>8 } >> \\ do4 >> |
          << { \appoggiatura do'8 \voiceOne si8. -\prall la16 \appoggiatura la8 sold4. -\prall si8\rest } \\
             { re4 mi2 } >>|
          la,4 mi\mordent mi, |
          la, la,,8 sol, fa, mi, |
          re,8. fa,16 la,8. re16 fa8. la16 |
          \clef "treble" re'8. ( mi'16 )\appoggiatura mi'8 fa'8. ( sol'16 )\appoggiatura sol'8 la'8. ( mi'16 )|
          << { fa'8. fad'16 sol'8. mi'16 fa'8. dod'16 } \\ re'4 >>|
          \appoggiatura dod'8 re'4\mordent \clef "bass" re r |
          <sib, re fa sib>4. <sib sib,>8 <la la,> <sol sol,> |
          la,4 la,, r |
          <la,, la,> <la, dod mi la> ~ <sol la dod' mi'> |
          \set Staff.tieWaitForNote = ##t
          << { \tieDown fa8 la ~ re' ~ fa' <fa la re'>4 } \\ fa2 >>|
          << { re'4. do'8 ~ do'4 |
               mib8 do' re re' do la } \\
             { << \new Voice { \voiceFour sol2.} { fa4 mi do }>>|
               mib re do } >>|
          sib,8. do'16 re'8. do'16 sib8. la16 |
          do4 do, do' |
          sib sib, sib |
          << { <la fa'> <mi' sol> <fa' fa> } \new Voice { \voiceThree do'2. } >>|
          <sib re' fa'>4 << { \appoggiatura fa'8 \voiceOne mi'4. -\prall mi'8\rest } \\ do'2 >>|
          fa,4 fa\mordent dod |
          << { re, re do } \\ { re,2 do,4 } >>|
          sib, r2 |
          << { mi,4 mi re } \\ { mi,2 re,4 } >>|
          dod r2 |
          <fa'\mordent re' >4 < mib' do' > < re' sib >|
          <do' la> <sib re'> <do' la> |
          <sib sol> <la fa> <sol mi>|
          <fa la\mordent> r <fa la>|
          <sol sib> r <sold si>|
          <la\mordent la,> r2 |
          la,4\mordent r2 |
          <la, la,,>4. r16 sol, fa,8. -\prall mi,16 |
          re,8. re16 mi8. <fa re>16 <sol mi>8. <la fa>16 |
          <sol sib\mordent>4 <sol sib> <sol sib>-\prall |
          << { la4 mi' \appoggiatura mi'8 re'8. -\prall dod'16 |
               dod'8. re'32 mi' \appoggiatura re'8 dod'4. -\prall dod'8\rest } \\
             { dod2 re8 r |
               sol4 la2 } >>|
          << { re8. mi16 \appoggiatura mi8 fa8.\mordent sol16 la8. mi16 |
               fa8. fad16 sol8. mi16 fa8. dod16 } \\
             << \new Voice { \voiceFour re2 }
                { <re, fa, la,>8 s4. r4 |
                  re2 r4 } >> >>
          re4 <fa, la, re fa>4. r8 |
          << { mi -\prall re dod4. -\prall r8 } \\ { sol,4 la,2 } >>|
          << { re8. mi16 \slurDown \appoggiatura mi8 fa8.\mordent sol16 la8. mi16 |
               fa8. fad16 sol8. mi16 fa8. dod16 } \\
             << \new Voice { \voiceFour re2 }
                { <re, fa, la,>8 s4. r4 |
                  re2 r4 } >> >>
          re4 <fa, la, re fa>4. r8 |
          << { mi -\prall re dod4. -\prall r8 } \\ { sol,4 la,2 } >>|
          <re, fa, la, re>4 la,\mordent la,, |
          re, re\mordent r |
          << { re,4 re2\mordent } \\ re,2 >> |
        }
      >>
    >>
  }
  \layout { }
  \midi { }
}