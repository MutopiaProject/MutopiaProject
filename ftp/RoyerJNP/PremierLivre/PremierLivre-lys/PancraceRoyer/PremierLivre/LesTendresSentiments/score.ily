\score {
  \notemode {
    \new PianoStaff \with { instrumentName = \markup \center-column { \smallCaps { "Les tendres" Sentiments }
                                                                      \smaller Rondeau } }
    <<
      \new Staff = "up" <<
        \global
        {
          re''4 |
          \appoggiatura re''8 do''4. -\prall re''8 \appoggiatura re'' mib''4 \mordent |
          \appoggiatura mib''8 re''4 -\prall \appoggiatura do''8 sib' r re''4 |
          \appoggiatura re''8 do''4. -\prall re''8 \appoggiatura re'' mib''4 \mordent |
          \appoggiatura mib''8 re''4 -\prall \appoggiatura do''8 sib' r mib''4 |
          mib''4. \suspension fa''8 \appoggiatura mib'' re''4 |
          \appoggiatura re''8 do''4. -\prall re''8 \appoggiatura do'' sib'4 |
          \appoggiatura sib'8 la'4. -\prall sib'8 \appoggiatura la' sol'4 |
          sol' ( fad'8 )-\prall r sol'4 |
          la' \appoggiatura la'8 sib'4. \mordent do''8 |
          \appoggiatura sib' la'4. -\prall r8
          << { re''4 |
               re'' (\suspension mib''8 ) r16 fa'' mi''4 |
               mi'' (\suspension fa''8 ) r16 sol'' fad''4 |
               fad'' (\suspension sol''8 ) r do''4 |
               do''4. re''8 do''4 |
               do'' -\prall sib'8 \oneVoice r \voiceOne re''4 |
               mib'' } \\
             { sol' |
               sol' r do'' |
               do''8 sib' la'4 re'' |
               re''8 do'' sib'4 sib' |
               sib' ( la'8 ) r la'4 |
               la' sol'8 s sol'4 ~|
               sol' } >>
          \grace <sol' sib'>8 <fad' la'>4.^\prall_\prall sol'8 |
          <sib re' sol'>2 re''4 | %%
          <sib re' sol'>2 sib''4 |
          sib'' ( mi''8) r la''4 |
          la'' ( re''8 ) r << { sol''4 | sol''} \\ { mi''4 | \appoggiatura re''8 dod''4 } >>
          fa''8 -\prall mi'' fa'' \mordent sol'' |
          \appoggiatura fa'' mi''2 \pralldown fa''4 |
          fa'' << { s sol'' |
                    sol'' s la'' |
                    la'' sol''8 -\prall fa'' mi'' re'' |
                    re''4 dod''8 -\prall r mi''4 \mordent |
                    mi'' re'' -\prall do'' |
                    \appoggiatura do''8 si'4 dod'' \mordent re'' |
                    re''4. mi''8 dod''4 -\prall |
                    dod'' ( re''8 )\mordent } \\
                  { mi''8 -\prall re'' dod'' si' |
                    la'4 fa''8 -\prall mi'' re'' do'' |
                    sib'4 r sib' |
                    sib' la' sol' |
                    sol' fad' la' |
                    la' sol' fa' |
                    \appoggiatura fa'8 mi'4. fad'8 sol'4 |
                    sol' ( fad'8 ) } >> r re''4 | %%
          <sib re' sol'>2 <re' \couleB sol' sib'>4 |
          \override Staff.NoteCollision #'merge-differently-dotted = ##t
          \slurUp << <do' mi'>4. { <sol' sib'>4\suspension( <fad' la'>8) } >> r <sol sib \coule re' sol'>4 |
          << <la do' mib'>4. { sol'4\suspension( fad'8) } >> r \slurNeutral
          << { re''4 |\slurDown
               \appoggiatura re''8 do''4 \appoggiatura sib'8 la'4 <\couleB re''> |
               \appoggiatura do''8 sib'4 -\prall \appoggiatura la'8 sol' \oneVoice r \voiceOne <sol' sib'>4 | \slurUp
               <sol' sib'>4\suspension(<fad' la'>8) } \\
             { sol'4 |
               sol'2 fad'4 |
               sol' s re' |
               <do' mib'>4. } >> r8 <sol sib re' sol'>4 |
          \slurUp << <la do' mib'>4. { sol'4\suspension( fad'8) } >> r \slurNeutral
          << { re''4 |\slurDown
               \appoggiatura re''8 do''4 \appoggiatura sib'8 la'4 re'' |
               \appoggiatura do''8 sib'4 -\prall \appoggiatura la'8 sol' \oneVoice r \voiceOne mib''4 |
               mib'' \suspension \appoggiatura re''8 dod'' \oneVoice r \voiceOne re''4 |
               re'' \suspension \appoggiatura do''8 si' \oneVoice r \voiceOne do''4 |
               do'' \suspension \appoggiatura sib'8 la' \oneVoice r \voiceOne sib'4 |
               \grace la'8 sol'4 
             } \\
             { sol'4 |
               sol'2 fad'4 |
               sol' s sib'~ |
               sib' la'8 s lab'4 ~|
               lab' sol'8 s sol'4 ~|
               sol' fa'8 s fa'4 |
               mi' } >> sol'4. ( la'16 sib' )|
          \appoggiatura sol'8 fad'2 -\prall re''4 \suspension |
          do'' \suspension do''4. \suspension sib'16*2/3[(-\prall la' sib')]|
          \appoggiatura sib'8 la'4. -\prall r8 << re''4 \\ sol' >> |
        }
      >>
      \new Staff = "down" <<
        \global \clef "treble"
        {
          << { sib'4 |
               \appoggiatura sib'8 la'4. -\prall sib'8 \appoggiatura sib' do''4 \mordent |
               \appoggiatura do''8 sib'4 -\prall \appoggiatura la'8 sol' r \grace { sol'16 [ la' ]} sib'4 |
               \grace sib'8 la'4. -\prall sib'8 \appoggiatura sib' do''4 \mordent |
               \appoggiatura do''8 sib'4 -\prall \appoggiatura la'8 sol' r sib'4 |
               fa'8 sol' la'4 sib'8 la' |
               mib' fa' sol'4 fa' |
               do'8 re' mib'4 re' |
               la8 do' mib' la sib mi' |
               la fad' \appoggiatura fad' sol'4. \mordent la'8 |
               \appoggiatura sol' fad'4. -\prall } \\
             { sol'4 |
               sol'2 fad'4 |
               sol' r sol' |
               sol'2 fad'4 |
               sol' r sol' |
               fa'2. |
               mib'2 re'4 |
               do'2 sib4 |
               la4. la8 sib4 |
               la sol r |
               re'4. } >> r8 sib4 |
          \appoggiatura sib8 do'4 \mordent r \clef "bass" la |
          re' \mordent r re |
          re ( mib8 ) r16 fa mi4 |
          mi ( fa8 )\mordent r fad4 -\prall |
          sol2 \afterGrace sib4 -\prall { do'16[ sib do'] }|
          do'4 -\prall re'2 |
          <sol, sol>2 si4 | %%
          <sol, sol>2 \clef "treble" << { sol'8 re'' ~|
                                          re'' re'' dod''4 fad'8 do'' ~|
                                          do'' do'' si'4 sib' |
                                          la'2 re''4 |
                                          \appoggiatura re''8 dod''4 -\prall } \\
                                        { sol' |
                                          la'2 fad'4 |
                                          sol'2 mi'4 |
                                          fa'2 re'4 |
                                          la'2 } >> \clef "bass" re4 |
          mi2 \mordent mi,4 |
          fa,2 fa4 |
          sol2 \mordent sol,4 |
          la,2 \mordent dod4 \pralldown |
          re2 fad4 |
          sol8 \mordent fa mi4 -\prall re |
          sol \pralldown la la, |
          <re re,>2 \clef "treble" << sib'4 \\ sol' >> |%%
          \clef "bass" <sol, sol>2 sol,4|
          < do do, >2 < sib,, sib, >4 |
          < la, la,, >2 sib4 |
          la re' \mordent re |
          sol2 sol,4 |
          < do do, >2 < sib,, sib, >4 |
          < la, la,, >2 sib4 |
          la re' \mordent re |
          sol \mordent r \clef "alto" << { sol' ~|
                                           sol'2 fa'4 ~|
                                           fa'2 mib'4 ~|
                                           mib'2 re'4 } \\
                                         { s |
                                           sol2 r4 |
                                           fa2 r4 |
                                           mib2 r4 | } >>
          < re re' >4 < do' mib' >2\mordent |
          << { re'2 re'8. mi'16 |
               fad'8. sol'32 la' <\couleB re'>4 sol' |
               \grace sol'8 fad'4. -\prall } \\
             { do'2 sib4 |
               <\couleC la> sol2 |
               re'4. } >> r8 si4 |
        }
      >>
    >>
  }
  \layout { }
  \midi { }
}