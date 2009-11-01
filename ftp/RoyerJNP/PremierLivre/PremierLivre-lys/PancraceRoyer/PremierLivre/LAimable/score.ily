\score {
  \notemode {
    \new PianoStaff \with { instrumentName = \markup \center-column { \smallCaps "L'Aimable" } } <<
      \new Staff = "up" <<
        \global
        {
          \override Staff.NoteCollision #'merge-differently-dotted = ##t
          <<
            \new Voice \with { autoBeaming = ##f } {
              \voiceOne re''8. re''8 re''16 ~|
              re'' s s4 |
              do''8. do''8 do''16 ~|
              do'' s s4 |
              sol''8. sol''8 sol''16 |
              sol''8. sol''8 sol''16 |
              sol''8. sol''8 sol''16 |
              sol''8. sol''8 sol''16 |
              sol''8. sol''8 re''16 |
            }
            \new Voice {
              \voiceTwo re''16( sib' sol' ) re'' re' re'' |
              mi' re'' do'' -\prall sib' do'' mib' |
              do''( la' fad') do'' do' do'' |
              re' do'' sib' -\prall la' sib' sol' |
              sol'' ( re'' sib' ) sol'' sol' sol'' |
              sol''( mib'' do'') sol'' sol' sol'' |
              sol''( re'' si') sol'' sol' sol'' |
              sol'' ( mib'' do'' ) sol'' sol' sol'' |
              sol'' ( re'' sib' ) sol'' sol' re'' |
            }
          >>
          mib'' re'' do'' -\prall sib' la' sol' |
          fad' -\prall mi' re' do' sib -\prall la |
          sib re' mib' sol' la fad' \turn |
          sol' re' sib \clef "bass" sol re sib, |
          sol,4 \clef "treble" sib'16 la' |
          << { sol' sib' la' -\prall sol' la' sol' } \\ { s4 la'8 } >>|
          \grace { re'16[ mi'] } <re' fad' la'>8. la'16 sol' -\prall fad' |
          <<
            \new Voice \with { autoBeaming = ##f } {
              \voiceOne re''8. re''8 re''16 |
              s4. |
              do''8. do''8 do''16 |
              s4. |
              sol''8. sol''8 sol''16 |
              sol''8. sol''8 sol''16 |
              sol''8. sol''8 sol''16 |
              sol''8. sol''8 sol''16 |
              sol''8. sol''8 re''16 |
            }
            \new Voice {
              \voiceTwo re''16( sib' sol') re'' re' re'' |
              mi' re'' do'' -\prall sib' do'' mib' |
              do''( la' fad') do'' do' do'' |
              re' do'' sib' -\prall la' sib' re' |
              sol'' ( re'' sib' ) sol'' sol' sol'' |
              sol'' ( mib'' do'' ) sol'' sol' sol'' |
              sol'' ( re'' si' ) sol'' sol' sol'' |
              sol'' ( mib'' do'' ) sol'' sol' sol'' |
              sol'' ( re'' sib' ) sol'' sol' re'' |
            }
          >>
          mib'' re'' do'' -\prall sib' la' sol' |
          fad' la' do' mib' re' -\prall do' |
          si re' fa' lab' sol' -\prall fa' |
          mi' sol' fad' la' do' mib' |
          re' fad' sol' re' sol re' |
          mib' \mordent sol' sib sol' la fad' \turn |
          sol' re' sib \clef "bass" re sib, sol, |
          s4. | \clef "treble"
          <<
            \new Voice \with { autoBeaming = ##f } {
              \voiceOne
              sib'8. sib'8 sib'16 ~|
              sib' s s4 |
              la'8. la'8 la'16 ~|
              la' s s4 |
              sol'8. sol'8 sol'16 ~|
              sol' s s4 |
              la'8. la'8 la'16 |
              la'8. la'8 la'16 |
              la'8. la'8 la'16 |
              la'8. la'8 la'16 |
              la'8. la'8 la'16 |
            }
            \new Voice {
              \voiceTwo sib'16 sol' mi' sib' re' sib' |
              dod' sib' la' sol' fa' ^\prall mi' |
              la' fa' re' la' do' la' |
              si la' sol' fa' mi' ^\prall re' |
              sol' mi' dod' sol' sib sol' |
              la sol' fa' mi' re' dod' ^\prall |
              la'( fa' re') la' la la' |
              la'( mi' dod') la' la la' |
              la'( fa' re') la' la la' |
              la'( mi' dod') la' la la' |
              la'( fa' re') la' la la' |
            }
          >>
          \grace { mi'16 [ fa' ]} sol' sib' la' sol' fa' -\prall mi' |
          fa' la' re'' do'' sib' -\prall la' |
          sib' la' sol' fa' mi' re' |
          \clef "bass" dod' -\prall mi' sol sib la -\prall sol |
          fa la sib \mordent re' mi dod' \turn |
          re' la fad re la, fad, |
          re,4 r8 |
          \clef "treble"
          <<
            \new Voice \with { autoBeaming = ##f } {
              \voiceOne re''8. re''8 re''16\laissezVibrer |
              %%
              sib'8. sib'8 sib'16 |
              sib'8. sib'8 s16 |
            }
            \new Voice {
              \voiceTwo re''16( sib' sol' ) re'' re' re'' |
              %%
              sib' fa' re' sib' sib sib' |
              sib' sol' mib' sib' sib sol' |
            }
          >>
          sol' ( fa' si fa' sol fa' )|
          fa' ( mib' do' mib' sol mib' )|
          \appoggiatura mib' re'4 -\prall r8 |
          sol'16 ( mi' do' ) sol' sol sol' |
          \appoggiatura sol'8 lab'4 \mordent r8 
          <<
            \new Voice \with { autoBeaming = ##f } {
              \voiceOne do''8. do''8 
            }
            \new Voice {
              \voiceTwo do''16( la' mib') do'' do' mib' |
            }
          >>
          re' do'' si' re'' re' fa' ~|
          fa' lab' sol' fa' mib' -\prall re' |
          mib' sol' lab' do'' re' si' |
          \appoggiatura si' do''4 \mordent r8 |
          mib''16 do'' la' do'' do' mib' |
          \appoggiatura mib'8 re'4 r8 |
          re''16 sib' sol' sib' sib re' |
          \appoggiatura re'8 do'4 r8 |
          do''16 la' fad' la' la do' |
          do' ( si ) r8 r16 <re' fa'> |
          < re' fa' >( < do' mi' >) r8 r16 < mi' sol' >|
          < mi' sol' > r r8 r16 < mi' sol' >|
          < mi' sol' >( < re' fa' >) r8 r16 < fa' la' >|
          < fa' la' >( <mi' sol' >) r8 r16 < sol' sib' >|
          < sol' sib' >4\suspension ( < fad' la' >16) r |
          <<
            \new Voice \with { autoBeaming = ##f } {
              \voiceOne re''8. re''8 re''16\laissezVibrer |
            }
            \new Voice {
              \voiceTwo re''16( sib' sol' ) re'' re' re'' |
            }
          >>
        }
      >>
      \new Staff = "down" <<
        \global \clef "bass"
        { \override Staff.NoteCollision #'merge-differently-dotted = ##t
          sol,8. sib16 sib, sib ~|
          << { \voiceOne sib sib la sol la8 } \new Voice { \voiceTwo do4. } >>|
          \oneVoice la,8. la16 la, la ~|
          << { \voiceOne la la sol fad sol8 } \new Voice { \voiceTwo sib,4. } >>|
          \oneVoice sib,8 re'4 |
          do8 mib'4 |
          si,8 re'4 |
          do8 mib'4 |
          sib,8 re'4 |
          do8 mib'16 re' do' sib |
          la sol fad la re fad |
          sol8 do re |
          sol,4 r8 |
          <<
            \new Voice \with { autoBeaming = ##f } {
              \voiceOne re'8. re'8 re'16 ~|
              re' [ re' do' -\prall sib] do'8 |
              do'8. s |
              sib sib16 [ sib, sib ]~|
              sib [ sib la -\prall sol ] la8 |
              \oneVoice la,8. la16 [ la, la ]~|
              \voiceOne la [ la sol -\prall fad ] sol8 }
            \new Voice {
              \voiceTwo re'16 ( sib sol) re' re re' |
              mib4 r8 |
              do'16 ( la re ) do' sib^\prall la |
              sol,4 s8 |
              do4. |
              s |
              sib,
            }
          >>
          sib,8 re'4 |
          do8 mib'4 |
          si,8 re'4 |
          do8 mib'4 |
          sib,8 re'4 |
          do8 mib'16 re' do' sib |
          la8 fad4 -\prall |
          sol8 \mordent si,4 |
          sib,8 la, la |
          sib, sib r |
          do re re, |
          sol,4 r8 |
          <sol, sol,,>4. |
          <sol, sol>4\mordent r8 |
          <la, la>4\mordent r8 |
          <fa, fa>4\mordent r8 |
          <sol, sol>4\mordent r8 |
          <mi, mi>4\mordent r8 |
          <fa, fa>4\mordent r8 |
          fa,8 fa4\mordent |
          sol,8 sol4 \mordent |
          fa,8 fa4 \mordent |
          sol,8 sol4 \mordent |
          fa,8 fa4 \mordent |
          dod4. -\prall |
          \appoggiatura { si,16 [ dod ]} re8 fa \mordent re |
          sol, sib, \mordent sol, |
          la, dod r |
          re \mordent sol, la, |
          re,4 r8 |
          << { re4 do8 } \\ { re16 fad la fad do la } >>|
          sib,8. sib16 sib, sib \laissezVibrer |
          %%
          re,8 fa4 |
          mib,8 sol4 |
          re,8 re4 |
          do,8 do4 |
          sol,16 sib, re sol fa, sol |
          mi,8 mi4 |
          fa,16 lab, do fa lab do' |
          fad,8 la4 |
          sol, r8 |
          si4 r8 |
          do' fa sol |
          do16 mib sol do' mib' do' |
          la,8 fa4 |
          sib,16 re fa sib re' sib |
          sol,8 mib4 |
          la,16 ( do mib la do' mib' )|
          fad,8 re4 |
          sol,16 ( re sol re si, sol )|
          do ( mi sol do' mi' ) r |
          la, ( dod mi la dod' ) r |
          re ( fa la re' fa' ) r |
          dod ( mi sol sib dod' ) r |
          re4. |
          sib,8. sib16 sib, sib \laissezVibrer |
        }
      >>
    >>
  }
  \layout { }
  \midi { }
}