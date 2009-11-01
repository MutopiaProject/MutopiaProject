\score {
  \notemode {
    \new PianoStaff \with { instrumentName = \markup \center-column { \smallCaps "L'Incertaine" } } <<
      \new Staff = "up" <<
        \global
        << { \oneVoice sol'16 |
             <sib re' sol'>8 sib'16 do'' \voiceOne re''8 mi''16 fad''
             \grace fad''8 sol''8 \mordent sol' \oneVoice r8 \voiceOne re''16 mi''|
             \grace mi''8 fa'' \grace mib'' re'' \appoggiatura do'' si' do''16 re''
             \appoggiatura re''8 do'' \grace sib' la' ~ la' sib'!16 do'' |
             re''8 do''16 -\prall sib' sib' la' ~ la' la'
             \appoggiatura la'8 si' \mordent r16 do'' \grace sib'8 la' sol'16 -\prall fad' |
             sol'4 ~ sol'16 sib' la' sol' fa' -\prall mi' re' mi' fa' sol' la' si' |
             si' do'' do'' dod'' ~ dod'' re'' ~ re'' do'' sib' la' sol' fa' fa' mi' ~ mi' fad' |
             fad' sol' ~ sol'8 ~ sol'16 sib' la' sol' \appoggiatura sol' fa'8 mi'16 -\prall re' la8 dod' \pralldown |
             \clef "bass" re'16 la sol -\prall fa \oneVoice r \voiceOne sol fa-\prall mi
             \oneVoice r \voiceOne la sol-\prall fa \oneVoice r \voiceOne sol fa-\prall mi |
             r la re si si do' ~ do' dod' ~ dod'8 re' ~ \grace la <la re'> re'16 dod' |
             \oneVoice \grace dod'8 re' \mordent re fad \mordent la <re fad la re'>8. r16 \clef "treble" r8 r16 sol' |
             \clef "bass" \oneVoice \grace dod'8 re' \mordent re fad \mordent la <fad la re'>4. \clef "treble" r16 re' |
             \voiceOne re'8 fad'16 sol' sol' la' sib' do'' re''8 mib''16 re'' re'' do'' re'' do'' |
             \grace do'' si'8 \pralldown do'' ~ do'' sib' ~ sib' -\prall r16 lab' lab' sol' ~ sol' la' |
             la' sib' ~ << { sib' re'' } \new Voice { \voiceThree fa'8 } >> re''16 ( do'' ) \oneVoice r \voiceOne re''
             re'' ( mib'' ) \oneVoice r \voiceOne mib'' mib'' re'' \oneVoice r \voiceOne mi'' |
             mi'' fa'' \oneVoice r \voiceOne fa'' fa'' mi'' \oneVoice r \voiceOne fad''
             sol''8 \mordent sol' \oneVoice r \voiceOne re''16 mi'' |
             \appoggiatura mi'' fa''8 \appoggiatura mib'' re'' \appoggiatura do'' si' do''16 re'' \appoggiatura re''8 do'' \appoggiatura sib' la' ~ la' sib'16 do'' |
             \grace do''8 re'' do''16 -\prall sib' \grace sib' la'8 -\prall re''
             sol' \mordent \oneVoice r16 \voiceOne la' sib' do'' re'' mi'' |
             mi'' fa'' ~ fa'' fad'' fad'' sol'' ~ sol'' fa'' mib'' re'' do'' sib' sib' la' ~ la' si' |
             si' do'' ~ do''8 ~ do''16 mib'' re'' do'' \appoggiatura do'' sib'8 la'16 -\prall sol' re'8 fad' \pralldown |
             \clef "bass" \oneVoice r16 \voiceOne re' do' -\prall sib \oneVoice r \voiceOne do' sib -\prall la
             \oneVoice r \voiceOne re' do' -\prall sib \oneVoice r \voiceOne do' sib -\prall la |
             \oneVoice r re' mi' re' dod' do' re' do' \appoggiatura do' sib8. -\prall la16 la8. -\prall sol16 |
             \clef "treble" sol re' sol' sib sib la sol' fad' \appoggiatura fad'8 sol' \mordent sol r r16 re' |
             sol re' sol' sib sib la sol' fad' \appoggiatura fad'8 sol' \mordent sol sib \mordent re'|
             <sol sib re' sol'>2
           } \\
           {
             s16 |
             s4 re''16 sib' ~ sib' do'' \grace re''8 s4. sib'8 |
             la' lab' ~ lab' sol'16 fa' sol'8 la'16 sol' fad'8 sol'16 la' |
             sib'8 la'16 sol' ~ sol'8 fa' fa' mib' ~ mib' re'16 do' |
             re' fa' mi' re' dod'8 mi' la s4 fa'8 |
             r sol' r16 la' re'8 s4. do'8 |
             r16 re' dod' re' mi'4 la s |
             re16\rest fa mi re s mi re dod s fa mi re s mi re dod |
             r8 re r sol ~ sol16 la ~ la fa fa mi ~ mi8 |
             s1*2 |
             <fad la>8 re'16 mi' mi' fad' -\prall sol' la' sib' sol' ~ sol'8 ~ sol' fa' ~|
             fa'8. mib'16 mib' re' sol' fa' mi' do' fa'8 fa' mib' |
             mib'16 fa' re' sib' sib' ( la' ) s si' si' ( do'' ) s do'' do'' sib' s dod'' |
             dod'' re'' s re'' re''8 s16 do'' re''8 s4 sib'8 |
             la' lab' ~ lab' sol'16 fa' sol'8 la'16 sol' fad'8 sol'16 la' |
             \grace la'8 sib' la'16 sol' ~ sol'8 fad' s4. sib'8 |
             r do'' r16 re'' sol'8 ~ sol'4 ~ sol'8 fa' |
             r16 sol' fad' sol' la'4 re'8 s4. |
             s16 sib la sol s la sol fad s sib16 la sol s la sol fad |
           }
         >>
      >>
      \new Staff = "down" <<
        \global \clef "bass"
        {
          r16 |
          <sol sol,>4 r8 sol16 la sib do' sib -\prall la sol8 \clef "treble" sol'16 sol' |
          re'8 fa' ~ fa' mib'16 -\prall re' mib'4 ~ mib'16 mib' re' do' |
          sib8 do' re' \clef "bass" re16 re sol,8 do \mordent ~ do sib,16 -\prall la, |
          sib,4 la,8 dod re re, r re, |
          mi, mi fa, fa sol, sol la, la |
          sib, sib dod4 -\prall re8 sol \pralldown la la,16 sol, |
          fa,4 sib, \mordent fa, \mordent sib, \mordent |
          fa, mi, re, <la,, la,> |
          re, r re,8 re16 mib re do sib, la, |
          re,4 r << { re8 do16 -\prall sib, } \\ { re,8 r } >> la,16 sol, fad, -\prall mi, |
          < re, re >4 < do, do > < sib,, sib, > < lab,, lab, > |
          < sol,, sol, >~ <sol, sol>8 sol, lab,8. sib,16 do,8 do |
          re \mordent sib, fa \mordent fa, do do, sol, sol |
          re re, la, la sib,16 do sib, -\prall la, sol,8 sol'16 sol' |
          re'8 fa' <fa fa'> mib'16 \mordent re' mib'4 <mib mib'>16 mib' re' do' |
          sib8 do'\pralldown re' re16 do sib, -\prall do sib, la, sol,8 sol |
          la, la sib, sib do do' re re' |
          mib4 \appoggiatura sol8 fad4 sol8 do' \pralldown re' re16 do |
          sib,4 mib \mordent sib, mib \mordent |
          << { sib,8 sol ~ sol fad sol4 fad8.-\prall r16 } \\ { sib,4 la, sol,16 la, sib, do re4 } >>|
          <sol,, sol,>4 <re, re> <sol,, sol,>8 sol,16 fad, sol, la, sib, sol, |
          <sol,, sol,>4 <re, re> <sol,, sol,> r |
          << <sol,, sol,>2 \new Voice { \voiceThree re,8 } >>
        }
      >>
    >>
  }
  \layout { }
  \midi { }
}