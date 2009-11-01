\score {
  \notemode {
    \new PianoStaff \with { instrumentName = \markup \center-column \smallCaps { "La Marche" "des Scythes" } } <<
      \new Staff = "up" <<
        \global
        { %% rondeau
          r4 mib'\mordent mib' mib' |
          \appoggiatura re'8 do'4-\pralldown re' re' re' |
          \appoggiatura do'8 si4-\pralldown do' do' do' |
          do' sib8 -\prall la re'2 ~|
          re'8 re' do' -\pralldown si \appoggiatura { do'16[ re'] } mib'2 |
          \clef "bass" si8 fa si re' ~
          << { re'2~| \hideNotes re'8 \unHideNotes } \\
             { si lab fa \tieDown si ~| \oneVoice <si re'> re' sol si^\prall } >>
          do' sol mib do' |
          mib ( re mib ) do'-| mib ( re mib ) do'-| |
          mib ( re mib ) do'-| mib do' re si-\pralldown |
          <mib sol do'>4\fermata \clef "treble" mib'\mordent mib' mib' |
          %%
          << { do'4 s2 \hideNotes mib'4 ~ |
               \unHideNotes mib' } \\
             { do'8 sol mib' sol r8 do'\mordent mib' do' ~|
               do' sib mi' sib ~ \oneVoice sib reb' mi' sib ~ |
               sib do'\mordent mi' sib r do' fa' do' |} >>
          lab ( sol lab ) fa'-| lab ( sol lab ) fa'-| |
          lab ( sol lab ) fa'-| lab fa' sol mi'-\pralldown |
          fa' do' lab' do' ~ do' re'\mordent lab' do' ~|
          do' si sol' re' r si-\pralldown do' si |
          r la fa' do' fa lab si re' ~|
          re' sol do' la re' si mib' do' |
          re'4-\pralldown mib'\mordent mib' mib' |
          %%
          \set Staff.tieWaitForNote = ##t
          r8^"Façon d'arpéger" sol32[ do' re' mib']
          << \new Voice { \voiceOne sol'4 } { \voiceTwo \tieUp sol'16[ ~ mib' ~ do' ~ \tieDown sol] ~ } >>
          \oneVoice <sol do' mib' sol'>8 sol32[ do' re' mib']
          << \new Voice { \voiceOne sol'4 } { \voiceTwo \tieUp sol'16[ ~ mib' ~ do' ~ \tieDown sol] ~ } >> |
          \oneVoice <sol do' mib' sol'>8 do'32*1/2[ do' re' mib' fa' sol' la' si']
          << \new Voice { \voiceOne do''4 } { \voiceTwo \tieUp do''16[ ~ sol'~ mib' ~ \tieDown do'] ~ } >>
          \oneVoice <do' mib' sol' do''>8 do'16[ mib'32 sol']
          << \new Voice { \voiceOne do''4 } { \voiceTwo do''16[ sol' mib' do'] } >> |
          \newSpacingSection \oneVoice <re' fa' lab' re''>2 <re' fa' lab' re''>2 |
          <re' fa' sol' si' re''> <re' fa' sol' si' re''> |
          <do' mi' sol' do''> <do' mi' sol' do''> |
          <do' mib'! fad' la'! do''> <do' mib'! fad' la'! do''> |
          <re' fad' la' do''> <re' fad' la' do''> |
          <re' sol' sib'> <sib re' sol' sib'> |
          <la do' mib' la'> <la do' mib' la'> |
          <la do' re' fad' la'> <la do' re' fad' la'> |
          <sol si re' sol'> <sol si re' sol'> |
          <sol do' mib' sol'> <sol do' mib' sol'> |
          <la do' mib' sol'> <la do' mib' sol'> |
          <la do' re' fad'> <la do' re' fad' la'> |
          <sol sib re' sol'> <sol sib re' sol'> |
          <sol sib dod' mi' sol'> <sol sib dod' mi' sol'> |
          <la do'! re' fad' la'> <la do'! re' fad' la'> |
          <sol si re' la'> <sol si re' la'> |
          <sol sib re' sol'> <sol sib re' sol'> |
          \newSpacingSection r2 s |
          r4 mib'\mordent mib' mib' |
          %%
          r4 la'' la''\mordent la'' |
          la'' sol''8 -\prall fad'' sol'' sol'' la'' si'' |
          << { do'''2 ~ do'''8 do''' re''' do''' |
               si''2 ~ si''8 si'' do''' sold'' |
               la''2 ~ la''8 la'' si'' fad'' |
               sol''2 ~ sol''8 sol'' la'' mi'' |
               fa''2 ~ fa''8 re'' sol'' fa'' |} \\
             { do''' sol'' la'' mi'' fa''2 ~|
               fa''8 fa'' sol'' fa'' mi''2 ~|
               mi''8 mi'' fa'' dod'' re''2 ~|
               re''8 re'' mi'' si' do''2 ~|
               do''8 dod'' re'' la' si'2 | } >>
          mi''2 -\prall \voiceOne mi'16 re' mi' la' mi' re' mi' la' |
          fa' mi' re' mi' fa' sol' la'32 si' do'' re'' fa'16 mi' fa' si' fa' mi' fa' si' |
          sol' fa' mi' fa' sol' la' si'32 do'' re'' mi'' sol'16 fa' sol' do'' sol' fa' sol' do'' |
          la' sol' fa' sol' la' si' do''32 re'' mi'' fa'' la'16 sol' la' re'' la' sol' la' re'' |
          si' la' sol' la' si' do'' re''32 mi'' fa'' sol'' si'16 la' si' mi'' si' la' si' mi'' |
          do'' si' la' si' do'' re'' mi''32 fa'' sol'' la'' do''16 si' do'' fa'' do'' si' do'' fa'' |
          re'' do'' si' do'' re'' mi'' fa''32 sol'' la'' si'' re''16 do'' re'' sol'' re'' do'' re'' sol'' |
          \oneVoice mi''16*1/2 do'' re'' mi'' fa''32 sol'' la'' si'' do'''4 la''\mordent la'' |
          la''16 sol'' fa'' mi'' re'' do'' si' la' sol''4\mordent sol''\mordent |
          sol''16 fa'' mi'' re'' do'' si' la' sol' fa'' mi'' re'' do'' si' la' sol' fa' |
          fa'' mi'' re'' do'' si' la' sol' fa' mi'' re'' do'' si' la' sol' fa' mi' |
          mi'' re'' do'' si' la' sol' fa' mi' re'' do'' si' la' sol' fa' mi' re' |
          re'' do'' si' la' sol' fa' mi' re' do'' si' la' sol' fa' mi' re' do' |
          do'' si' la' sol' fa' mi' re' do' si' do'' re'' do'' si' la' sol' fa' |
          mi' do'' sol' mi' <mi'' sol''> do'''[ sol'' mi''] <do'' mi''> sol'' [ mi'' do'' ] <sol' do''> mi''[ do'' sol']|
          <mi' sol'> do'' [ sol' mi' ] <do' mi'> sol' [ mi' do' ]
          \change Staff = "down" <sol do'> mi' [ do' sol ] <mi sol> do' [ sol mi ]|
          \change Staff = "up" r4 <mi' sol' do''>-| r <re' fa' sol' si'>-| |
          r2 do'''4.^"Petit clavier"_\suspension r8 |
          r4 mib'\mordent mib' mib' |
          mib'16 do' mib' do'' fa' do' fa' do'' sol' do' sol' do'' lab' do' lab' do'' |
          mib' do' mib' do'' fa' do' fa' do'' sol' do' sol' do'' lab' do' lab' do'' |
          mib' do' mib' do'' fa' do' fa' do'' sol' do' sol' do'' mib' do' mib' do'' |
          lab' do' lab' do'' sol' do' sol' do'' fa' do' fa' do'' mib' do' mib' do'' |
          lab' do' lab' do'' sol' do' sol' do'' fa' do' fa' do'' mib' do' mib' do'' |
          lab' do' lab' do'' sol' do' sol' do'' fa' do' fa' do'' mib' do' mib' do'' |
          si' sol' si' sol'' do'' sol' do'' sol'' re'' sol' re'' sol'' mib'' sol' mib'' sol'' |
          si' sol' si' sol'' do'' sol' do'' sol'' re'' sol' re'' sol'' mib'' sol' mib'' sol'' |
          si' sol' si' sol'' do'' sol' do'' sol'' re'' sol' re'' sol'' si' sol' si' sol'' |
          mib'' sol' mib'' sol'' re'' sol' re'' sol'' do'' sol' do'' sol'' sib'! sol' sib' sol'' |
          mib'' sol' mib'' sol'' re'' sol' re'' sol'' do'' sol' do'' sol'' sib' sol' sib' sol'' |
          mib'' sol' mib'' sol'' re'' sol' re'' sol'' do'' sol' do'' sol'' sib' sol' sib' sol'' |
          <la' re'' fad''>8 r << { re'''4 re''' re''' |
                                   do'''2 do'''4 do''' |
                                   sib''2 <\couleB sib''> |
                                   <la' re'' fad'' la''>4 re''' re''' re''' |
                                   do'''2 do'''4 do''' |
                                   sib'' s <\couleB sib''>2 | } \\
                                 { sib'4\rest sib'' sib'' |
                                   sib''4 la''8^\prall sol'' la''4 la'' |
                                   la'' re'' <dod'' mi''>2 |
                                   s4 sib'\rest sib'' sib'' |
                                   sib'' la''8^\prall sol'' la''4 la'' |
                                   la'' re'' <dod'' mi''>2 | } >>
          \repeat unfold 2 { re''16 la' fad' re' \change Staff = "down" la fad la \change Staff = "up" re' }|
          \repeat unfold 2 { re''16 la' fad' re' \change Staff = "down" la fad la \change Staff = "up" re' }|
          \repeat unfold 2 { do'' la' fad' re' \change Staff = "down" la fad la \change Staff = "up" re' }|
          \repeat unfold 2 { do'' la' fad' re' \change Staff = "down" la fad la \change Staff = "up" re' }|
          r4 << { sol'' sol'' sol'' |
                  fa'' fa'' fa'' fa'' |
                  mib''2 lab'' |
                  lab''4. lab''16*2/3[ sol'' fa''] sol''2 ~|
                  sol''4. sol''16*2/3[ fa'' mi''] fa''2*1/2 re''4 ~|
                  <re'' fa''>4. fa''16*2/3[ mib'' re''] mib''2*1/2 ~ do''4 ~|
                  <mib'' do''>4. mib''16*2/3[ re'' do''] re''2 ~|
                  re''4. re''16*2/3[ do'' si'] do''4. do''16*2/3[ re'' mib''] } \\
                { s4 mib'' mib'' |
                  mib'' re''8 -\prall do'' re''4 re'' |
                  re'' sol' <do'' mib''>2 |
                  <re'' fa''> <reb'' mi'' sol''> ~|
                  <do'' mi''>~ do''4 re''8\mordent do'' |
                  si'2 sib'4 do''8 sib' |
                  la'2 <lab' si'>~ |
                  <sol' si'> ~ sol' } >>|
          <si re' fa' sol'>2 <do' \coule mib' sol'> |
          \voiceTwo \repeat unfold 4 { sol'16 re' si sol }|
          \repeat unfold 4 { sol' mib' do' sol }|
          \repeat unfold 4 { sol' re' si sol }|
          \repeat unfold 4 { sol' mib' do' sol }|
          \repeat unfold 4 { sib' fa' re' sib }|
          \repeat unfold 4 { sib' sol' mib' sib }|
          \repeat unfold 4 { sib' fa' re' sib }|
          \repeat unfold 4 { sib' sol' mib' sib }|
          \repeat unfold 4 { do'' sol' mi' do' }|
          \repeat unfold 4 { do'' lab' fa' do' }|
          \repeat unfold 4 { do'' sol' mi' do' }|
          \repeat unfold 4 { do'' lab' fa' do' }|
          \repeat unfold 4 { re'' la' fad' re' }|
          \repeat unfold 4 { re'' sib' sol' re' }|
          \repeat unfold 4 { re'' la' fad' re' }|
          re''[ si' sol' re'] \oneVoice
          << { sol''4 sol'' sol'' |
               fa'' fa'' fa'' fa'' |
               mib''2 <\couleB mib''> |
               re''4 sol'' sol'' sol'' |
               fa'' fa'' fa'' fa'' |
               mib''2 <\couleB mib''> } \\
             { r4 mib'' mib'' |
               mib'' re''8 -\prall do'' re''4 re'' |
               re'' sol' <fad' la'>2 |
               <sol' \coule si'>4 r mib'' mib'' |
               mib'' re''8 -\prall do'' re''4 re'' |
               re'' sol' <fad' la'>2 | } >>
          <sol' \coule si' re''>4 r \repeat unfold 10 { do''32 sib' lab' sol' fa' mib' re' do' }|
          r do'' si' la' sol' fa' mib' re' do'16 re'32 mib' fa' sol' la' si'
          do''16 si'32 la' sol' fa' mib' re' do' sol' fa' mib' re' do' si la |
          sol sol'' fa'' mib'' re'' do'' si' la' sol' do'' si' la' sol' fa' mib' re'
          do' sol' fa' mib' re' do' si la sol16 la32 si do' re' mib' fa' |
          sol' \change Staff = "down" \voiceOne do' si la sol fa mib re do16 re32 mib fa sol la si
          do'16 si32 la sol fa mib re do16 re32 mib fa sol la si
          si2\suspension \mark \markup \smaller "Arpège" <do mib fad la do'>2 |
          <do mib fad la do'> <do mib fad la do'> |
          <re fad sol si> r |
          \oneVoice \change Staff = "up" r4 mib'\mordent mib' mib' |
        }
      >>
      \new Staff = "down" <<
        \global \clef "bass"
        {
          do,4 sol8 fa sol fa sol\mordent sol, |
          lab, mib fa mib fa mib fa\mordent fa, |
          sol, re mib re mib re mib\mordent mib, |
          fa, mib re do fa,16[ fa mib fa] fa,[ fa mib fa] |
          sol,8 fa mib re sol,16[ sol fa sol] sol,[ sol fa sol] |
          lab,2 sib,,8 re \mordent sib,,8 re\mordent |
          mib,2 ~ << { \voiceTwo mib, } \new Voice { \voiceOne mib4 mib\rest } >> |\oneVoice
          fa,1*3/4_\prall \afterGrace s4 { mib,16[ fa,] } |
          <sol,, sol,>4 sol, sol,\mordent sol, |
          << << do4\fermata \new Voice { \voiceThree <mib, sol,>8 } >> \\ do,4 >> sol8 fa sol fa sol\mordent sol, |
          %%
          do,2 do |
          sol\mordent sol, |
          lab, ~ << { \voiceTwo lab, } \new Voice { \voiceOne lab8 lab\rest lab4\rest } >> | \oneVoice
          sib,1*3/4 -\prall \afterGrace s4 { lab,16[ sib, ]} |
          <do, do>4 do\mordent do do\mordent |
          << { r2 fa | r mi | mib re |
               mib,4 mib re do |} \\
             { fa,2 ~ fa, | fa, mi, | mib, re, |
               mib, re,4 do, } >>|
          <sol,, sol,>4 sol8 fa sol fa sol\mordent sol, |
          %%
          \set Staff.tieWaitForNote = ##t
          do,32[~ mib,~ sol,~ do]~ <do, mib, sol, do>4. do,32[~ mib,~ sol,~ do]~ <do, mib, sol, do>4. |
          do,32[~ mib,~ sol,~ do]~ <do, mib, sol, do>4. \voiceOne\tieDown do32[ mib~ sol~ do'] <mib sol>4. |\oneVoice
          <do re fa lab>2 <do re fa lab> |
          <si, re fa sol> <si, re fa sol> |
          <sib,! do mi sol> <sib,! do mi sol> |
          <la, do mib fad la> <la, do mib fad la> |
          <sib, re fad la> <sib, re fad la> |
          <sib, re sol> <sol, sib, re sol> |
          <sol, la, do mib> <sol, la, do mib> |
          <fad, la, do re> <fad, la, do re> |
          <fa,! sol, si, re> <fa,! sol, si, re> |
          <mib, sol, do> <mib, sol, do> |
          <do, mib, sol, la, do> <do, mib, sol, la, do> |
          <re, fad, la, do re> <re, fad, la, do re> |
          <re, sol, sib, re> <re, sol, sib, re> |
          <re, sol, sib, dod> <re, sol, sib, dod> |
          <re, fad, la, do! re> <re, fad, la, do! re> |
          <re, sol, si, re> <re, sol, si, re> |
          <re, sol, sib,! re> <re, sol, sib,! re> |
          << \new Voice { \voiceTwo re,2 } \new Voice { \voiceOne re } \new Voice { \voiceOne \afterGrace s64 {sol,16[ la,]} } >>
          re'32 do' si la sol fad sol la sol fad mi re do si, do re |
          sol,,4 sol8 fa sol fa sol\mordent sol, |
          %%
          \repeat unfold 4 { do16 do' mi' do' } |
          \repeat unfold 4 { si, si re' si } |
          \repeat unfold 4 { la, la do' la } |
          \repeat unfold 4 { sol, sol si sol } |
          \repeat unfold 4 { fa, fa la fa } |
          \repeat unfold 4 { mi, mi sol mi } |
          \repeat unfold 4 { re, re fa re } |
          \repeat unfold 2 { do, do mi do } \repeat unfold 2 { do' si do' do } |
          re4 re, \repeat unfold 2 { re'16 do' re' re }|
          mi4 mi, \repeat unfold 2 { \change Staff = "up" mi'16 re' mi' \change Staff = "down" mi }|
          fa4 fa, \repeat unfold 2 { \change Staff = "up" fa'16 mi' fa' \change Staff = "down" fa }|
          sol4 sol, \repeat unfold 2 { \change Staff = "up" sol'16 fa' sol' \change Staff = "down" sol }|
          la4 la, \repeat unfold 2 { \change Staff = "up" la'16 sol' la' \change Staff = "down" la }|
          si4 si, \repeat unfold 2 { \change Staff = "up" si'16 la' si' \change Staff = "down" si }|
          do'4 do \repeat unfold 2 { do16 do' mi' do' }|
          \repeat unfold 4 { si, si re' si }|
          \repeat unfold 4 { la, la do' la }|
          \repeat unfold 4 { sol, sol si sol }|
          \repeat unfold 4 { fa, fa la fa }|
          \repeat unfold 4 { mi, mi sol mi }|
          \repeat unfold 4 { re, re fa re }|
          do,4 s2. |
          s1
          <do, do>4 r sol,-| r |
          do r s2 |
          r4 sol8 fa sol fa sol\mordent sol, |
          %%
          << { do,4 re, mib, fa, } \\ { do,8 do re, re mib, mib fa, fa } >>|
          << { do,4 re, mib, fa, } \\ { do,8 do re, re mib, mib fa, fa } >>|
          << { do,4 re, mib, do, } \\ { do,8 do re, re mib, mib do, do } >>|
          << { fa,4 mib, lab, sol, } \\ { fa,8 fa mib, mib lab, lab sol, sol } >>|
          << { fa,4 mib, lab, sol, } \\ { fa,8 fa mib, mib lab, lab sol, sol } >>|
          << { fa,4 mib, re, mib, } \\ { fa,8 fa mib, mib re, re do, do } >>|
          << { sol,,4 la,, si,, do, } \\ { sol,,8 sol, la,, la, si,, si, do, do } >>|
          << { sol,,4 la,, si,, do, } \\ { sol,,8 sol, la,, la, si,, si, do, do } >>|
          << { sol,,4 la,, si,, sol,, } \\ { sol,,8 sol, la,, la, si,, si, sol,, sol, } >>|
          << { do,4 sib,, mib, re, } \\ { do,8 do sib,, sib, mib, mib re, re } >>|
          << { do,4 sib,, la,, sol,, } \\ { do,8 do sib,, sib, la,, la, sol,, sol, } >>|
          << { do,4 sib,, la,, sol,, } \\ { do,8 do sib,, sib, la,, la, sol,, sol, } >>|
          \repeat unfold 4 { re,16 re do re }|
          \repeat unfold 4 { re, re fad re }|
          \repeat unfold 4 { re, re fad re }|
          \repeat unfold 4 { re, re do re }|
          \repeat unfold 4 { re, re fad re }|
          \repeat unfold 2 { re, re fad re } \repeat unfold 2 { re, re sol re }|
          re,2 <re, re> |
          \repeat unfold 3 { <re, re> <re, re> | }
          \repeat unfold 2 { sol,16 sol si sol } \repeat unfold 2 { sol, sol do' sol }|
          \repeat unfold 2 { sol, sol do' sol } \repeat unfold 2 { sol,16 sol si sol }|
          \repeat unfold 4 { do do' mib' do' }|
          \repeat unfold 2 { si, si re' si } \repeat unfold 2 { si, si reb' si }|
          \repeat unfold 2 { la, la do' la } \repeat unfold 2 { lab, lab do' lab }|
          \repeat unfold 2 { sol, sol si sol } \repeat unfold 2 { sol, sol sib sol }|
          \repeat unfold 2 { fad, fad la fad } \repeat unfold 2 { fa, fa lab fa }|
          \repeat unfold 2 { mi, mi sol mi } \repeat unfold 2 { mib, mib sol mib }|
          \repeat unfold 2 { re, re fa re } \repeat unfold 2 { do, do mib do }|
          <sol,, sol,>4 \change Staff = "up" \voiceOne <si' re''> <si' re''> <si' re''>|
          <do'' mib''> \change Staff = "down" <do do,> <do do,> <do do,>|
          <sol,, sol,> \change Staff = "up" <si' re''> <si' re''> <si' re''>|
          <do'' mib''> \change Staff = "down" <do do,> <do do,> <do do,>|
          <sib,, sib,> \change Staff = "up"  <re'' fa''> <re'' fa''> <re'' fa''>|
          <mib'' sol''> \change Staff = "down" <mib, mib> <mib, mib> <mib, mib>|
          <sib,, sib,> \change Staff = "up" <re'' fa''> <re'' fa''> <re'' fa''>|
          <mib'' sol''> \change Staff = "down" <mib, mib> <mib, mib> <mib, mib>|
          <do, do> \change Staff = "up" <mi'' sol''> <mi'' sol''> <mi'' sol''>|
          <fa'' lab''> \change Staff = "down" <fa, fa> <fa, fa> <fa, fa>|
          <do, do> \change Staff = "up" <mi'' sol''> <mi'' sol''> <mi'' sol''>|
          <fa'' lab''> \change Staff = "down" <fa, fa> <fa, fa> <fa, fa>|
          <re, re> \change Staff = "up" <fad'' la''> <fad'' la''> <fad'' la''>|
          <sol'' sib''> \change Staff = "down" <sol, sol> <sol, sol> <sol, sol>|
          <re, re> \change Staff = "up" <fad'' la''> <fad'' la''> <fad'' la''>|
          <sol'' si''> \change Staff = "down" \oneVoice sol,16 sol si sol \repeat unfold 2 { sol, sol do' sol }|
          \repeat unfold 2 { sol, sol do' sol } \repeat unfold 2 { sol, sol si sol }|
          \repeat unfold 2 { sol, sol si sol } \repeat unfold 2 { sol, sol do' sol }|
          \repeat unfold 2 { sol, sol si sol } \repeat unfold 2 { sol, sol do' sol }|
          \repeat unfold 2 { sol, sol do' sol } \repeat unfold 2 { sol, sol si sol }|
          \repeat unfold 2 { sol, sol si sol } \repeat unfold 2 { sol, sol do' sol }|
          sol,4 r <do do,> r |
          <fa, fa> r <sol sol,> r |
          <lab, lab> r <mib, mib> <fa, fa> |
          <sol, sol> r r2 |
          <sol,, sol,>2 ~ <sol,, sol,> |
          \voiceTwo <sol,, sol,>2 ~ <sol,, sol,> |
          r2 <sol,, do, mib, fad,> |
          <sol,, do, mib, fad,> <sol,, do, mib, fad,> |
          <sol,, sol,> r |\oneVoice
          do,4 sol8 fa sol fa sol\mordent sol, |
        }
      >>
    >>
  }
  \layout { }
  \midi { }
}