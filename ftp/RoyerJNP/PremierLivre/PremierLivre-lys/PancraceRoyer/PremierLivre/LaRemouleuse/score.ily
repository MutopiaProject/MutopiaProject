\score {
  \notemode {
    \new PianoStaff \with { instrumentName = \markup \center-column { \smallCaps "La Remouleuse" \smaller "Rondeau" } } <<
      \new Staff = "up" <<
        \global
        {
          << { si'8 si' la' -\prall si' |
               si' ( sol' ) do'' do'' si' -\prall do'' |
               do'' ( la' ) re'' re'' do'' -\prall re'' |
               re'' si' do'' ~ do'' ( la' ) re'' |
               si' -\prall \slurDown \appoggiatura la' sol' \slurUp si' si' la' -\prall si' |
               si' ( sol' ) do'' do'' si' -\prall do'' |
               do'' ( la' ) re'' re'' do'' -\prall re'' |
               re'' do'' -\prall si' si'8. -\prall la'16 sol'8 |
               <si re' sol'>4\fermata sol''8 sol'' fad'' -\prall sol'' |
               sol'' re'' mi'' mi'' re'' -\prall mi'' |
               mi'' si' do'' \mordent re'' mi'' re'' |
               \appoggiatura re'' do''4 -\prall si'8 \appoggiatura si' la'4 -\prall sol'8 |
               la'4 \mordent sol''8 sol'' fad'' -\prall sol'' |
               sol'' re'' mi'' mi'' re'' -\prall mi'' |
               mi'' si' do'' \mordent re'' mi'' re'' |
               \appoggiatura re''8 do''4 -\prall si'8 \appoggiatura si' la'4 -\prall sol'8 |
               la'4 \mordent \custosNote si'8 
             } \\
             { sol' sol' fad' sol' |
               sol' mi' la' la' sol' la' |
               la' fad' si' si' la' si' |
               si' sol' la' ~ la' fad' re'' |
               s4 sol'8 sol' fad' sol' |
               sol' mi' la' la' sol' la' |
               la' fad' si' si' la' si' |
               si' la' sol' sol'8. fad'16 sol'8 |
               s4 si'8 si' la' -\prall si' |
               si' sol' do'' do'' si' -\prall do'' |
               do'' sol' la' \mordent si' do'' si' |
               \appoggiatura si' la'4 -\prall sol'8 \appoggiatura sol' fad'4 -\prall mi'8 |
               fad' \mordent re' si' si' la' si' |
               si' sol' do'' do'' si' -\prall do'' |
               do'' sol' la' \mordent si' do'' si' |
               \appoggiatura si' la'4 -\prall sol'8 \appoggiatura sol' fad'4 -\prall mi'8 |
               fad'[ re'] \custosNote sol' 
             } >>
          sib' la' sol' |
          re''4. \suspension fad''8 ( la'' re'' )|
          sol''4. \suspension do''8 sib' -\prall la' |
          re'' fad'' sol'' do'' sib' -\prall la' |
          sib' la' -\prall sol'16 r sib'8 la' -\prall sol' |
          re''4. \suspension fad''8 ( la'' re'' )|
          sol''4. \suspension do''8 sib' -\prall la' |
          re'' fad'' sol'' sib'8. -\prall la'16 sol'8 |
          <sib re' sol'>4.\fermata sib'8 la' sol' |
          << { mib''4. ~ mib'' ~|
               mib''8 re'' do'' re'' mib'' fa'' ~|
               fa''4. mib''4 -\prall re''8 | } \\
             { <sol' do''>4 sib'8 la' sib' do'' |
               fa'4. sib'4 lab'8 ~|
               lab' sol' sib' lab'4 -\prall sib'8 } >>
          \appoggiatura re'' do''4. -\prall fa''8-| la' \turn sib' |
          sol''-| sib' \turn do'' la''-| do'' \turn re'' |
          sib''-| re'' \turn mib'' ~ mib'' do''' mib'' |
          mib'' re'' sib'' do''4 -\prall sib'8 |
          sib'4 \mordent << { re''8 re'' do'' fa'' |
                              fa'' mi'' mib'' mib'' re'' sol'' |
                              sol'' fad'' fa'' fa'' mi'' la'' |
                              \appoggiatura sol'' fad''2 r16 sol'' fa'' mi'' re''32 mi'' re'' mi'' fad'' sol'' fad'' sol'' | } \\
                            { sib'8 sib'4 la'8 |
                              la' sol' do'' do'' si' sib' |
                              sib' la' re'' re'' dod'' do'' |
                              do''2 r } >>
          << sol''1-\prall \\ { s2. \afterGrace s4 { fad''16 [ sol'' ] } } >>|
          \appoggiatura sol''8 \suspension la''2 \mordent sib'8 la'-\prall sol' |
          \custosNote re''8*6 |
          <sib re' sol'>4 <sol' si'>8 \custosNote <sol' si'>8
        }
      >>
      \new Staff = "down" <<
        \global \clef "bass"
        {
          r8 sol4. |
          do' \mordent la |
          re' \mordent si |
          mi'4 \mordent do'8 re'4 \mordent re8 |
          sol4 \mordent r8 sol,4. |
          <do do,>4.\mordent la, |
          <re re,>4.\mordent si, |
          mi4 \mordent do8 re4 \mordent re,8 |
          <sol, sol,,>4 s8 s4. |
          s2.*7 |
          s4. r4 r8 |
          sib la -\prall sol do4. |
          si8 ( re' sol ) mib' re' -\prall do' |
          sib la -\prall sol fad mi fad |
          sol4 \mordent r8 r4 r8 |
          sib la -\prall sol do4. |
          si8 ( re' sol ) mib' re' -\prall do' |
          sib la -\prall sol re4 re,8 |
          <sol,, sol,>4. sol8 la sib |
          do re mib fa sol la |
          sib4. \clef "treble" sib8 do' re' |
          mib'4 \mordent re'8 do'4 -\prall sib8 |
          fa'4. re'4 r8 |
          mib'4 r8 fa'4 r8 |
          sol'4 r8 la'4 r8 |
          sib'4 mib'8 fa'4 \clef "bass" fa8 |
          <sib sib,>4 r8 <fa fa'>4. |
          \clef "treble" do'4. \mordent <sol sol'> |
          re' \mordent <la la'> ~|
          <la' re'>2 r |\clef "bass" 
          \change Staff = "up" \voiceTwo r16*1/2 sib'[ re'' sib' sol' re'
          \change Staff = "down" \oneVoice sib32*1/2 sol re sib,] sol,8 r r2 |
          re,2 r4 r8 |
          s2. |
          <sol,, sol,>4 r8 \custosNote sol4
        }
      >>
    >>
  }
  \layout { }
  \midi { }
}