\score {
  \notemode {
    \new PianoStaff \with { instrumentName = \markup \center-column { \smallCaps "Le Vertigo" \smaller Rondeau } } <<
      \new Staff = "up" <<
        \global
        {
          sol'2 ~ sol'32 la' sib' do'' re'' mi'' fad'' sol'' |
          sol'2 ~ sol'32 la' sib' do'' re'' mi'' fad'' sol'' |
          sol'2 ~ sol'32 la' sib' do'' re'' mi'' fad'' sol'' |
          sol'4 << { sib' \mordent sib' | sib' -\prall la' } \\
                   { sol' sol' | sol' fad' } >> r |
          re''16 do'' si' do'' re''8 fa' re'' fa' |
          fa'4 -\prall mi' r |
          do''16 sib' la' sib' do''8 mib' do'' mib' |
          mib' -\prall re' sib'2 \mordent |
          dod'4 la'16 sol' fad' mi' re' do' sib la |
          sib4 r16 re'32 mi' fad' sol' la' sib' do'' re'' mi'' fad'' sol'' la'' sib'' do''' |
          \repeat unfold 6 { <sol'' sib'' re'''>16 re'' }|
          \repeat unfold 6 { <sol'' sib'' re'''> mib'' }|
          \repeat unfold 6 { <sol'' la'' do'''> mib'' }|
          fad''2 \pralldown sol''4 |
          do'' \pralldown re''16 do'' sib' la' sol' fad' mi' re' |
          sol'4 \mordent sol2 |
          \repeat unfold 3 { re''16 sib' sol' re' }|
          << { re'2 (\suspension mib'8 ) sib'\rest } \\ { re' sol ~ sol2 } >>|
          do''16 la' fad' mib' do' mib' fad' la' do'' la' fad' mib'32 do' |
          << { do'2 (\suspension re'8 ) sib'\rest } \\ { do' la ~ la2 } >>|
          sib'16 fa' re' sib re' sol' sib' sol' re'32 sib re' sol' sib' sol' re' sib |
          << { sib2 (\suspension do'8 ) sib'\rest } \\ { sib sol ~ sol2 } >>|
          la'8 ( sol' fad' mib' re' do' )|
          <la \coule do'>2(\suspension <sol sib>8) r |
          \repeat unfold 12 <sol sib re' sol'>16 |
          \repeat unfold 12 <la do' mib' sol'> |
          \repeat tremolo 12 <sol sib re' sol'>^"Continuer les doubles croches" |\noBreak
          \repeat tremolo 12 <la do' mib' sol'> |
          \repeat tremolo 12 <sol sib re' sol'> |
          \repeat tremolo 12 <la do' mib' sol'> |
          \repeat unfold 8 < la do' re' sol' >16 \repeat unfold 4 < la do' re' fad' > |
          <la do' re' fad'>2( <sol sib re' sol'>8) r |
          <la do' re' fad'>2 <sol sib re' sol'>8 r |
          %%
          sol'2 \mordent ~ sol'32 la' si' do'' re'' mib'' fa'' sol'' |
          <si re' fa'>2 sol'32 la' si' do'' re'' mib'' fa'' sol'' |
          <do' mib'>2 sol'32 la' si' do'' re'' mib'' fa'' sol'' |
          <si re' fa'>2 sol'32 la' si' do'' re'' mib'' fa'' sol'' |
          r4 << { mib'\mordent mib' | mib' -\prall re' } \\
                { do' do' | do' si } >> r |
          sol'16 do' si do' mi' do' si do' sol' do' si do' |
          lab' do' si do' fa' do' si do' lab' do' si do' |
          sol' do' si do' mi' do' si do' sol' do' si do' |
          lab'4 r32 fa' sol' lab' sib' do'' re'' mi'' fa''8 r |
          la'16 re' do' re' fad' re' do' re' la' re' do' re' |
          sib' re' do' re' sol' re' do' re' sib' re' do' re' |
          la' re' do' re' fad' re' do' re' la' re' do' re' |
          si'4 r32 sol' la' si' do'' re'' mi'' fa'' sol''8 r |
          r2 << { mib''4~ | mib'' } \\ { do''4 ~| do'' } >>
          sib'8 ( re'' ) la' ( do'' )|
          sib' ( re'' ) do'' ( mib'' ) re'' ( fa'' )|
          do'' ( mib'' ) sib' ( re'' ) la' ( do'' )|
          sib' ( re'' ) la' ( do'' ) sol' ( sib' )|
          << { sib'2 do''8 } \\ { sol'2 la'8 } >> r |
          fa''16 sib' la' sib' re'' sib' la' sib' fa'' sib' la' sib' |
          sol'' sib' la' sib' mib'' sib' la' sib' sol'' sib' la' sib' |
          fa'' sib' la' sib' re'' sib' la' sib' fa'' sib' la' sib' |
          sol''4 ~ sol''16 sib' mib'' sol'' sib''8 r |
          sol''16 do'' si' do'' mi'' do'' si' do'' sol'' do'' si' do'' |
          la'' do'' si' do'' fa'' do'' si' do'' la'' do'' si' do'' |
          sol'' do'' si' do'' mi'' do'' si' do'' sol'' do'' si' do'' |
          la''4 ~ la''16 do'' fa'' la'' do'''8 r |
          sib'' sib' sib'' sib' sib'' la'' |
          sol'' fa'' mib'' re'' do'' sib' |
          <fa' la' do'' mib''>4. do''8 \appoggiatura do'' re''4 \mordent ~|
          re''8 mib'' \appoggiatura re'' do''4. -\prall sib'8 |
          sib'2 \mordent r4 |
          sol'2 \mordent ~ sol'32 la' si' do'' re'' mib'' fa'' sol'' |
          sol'2 \mordent ~ sol'32 la' si' do'' re'' mib'' fa'' sol'' |
          << { fa'4 sol'' fa' } \\ re' >> |
          fa' -\prall mi' r |
          la'2 ~ la'32 si' dod'' re'' mi'' fa'' sol'' la'' |
          la'2 ~ la'32 si' dod'' re'' mi'' fa'' sol'' la'' |
          << { sol'4 la'' sol' } \\ mi' >>|
          sol' -\prall fad' r |
          sol' fa' -\prall mi'8 r |
          mi'4 re' -\prall dod'8 r |
          << { re'8 la mi' la fa' la | fa'2 ( mi'8 )-\prall } \\
             { s4 dod' re' | re'2 ( dod'8 )} >> r |
          dod'' ( mi'' ) mi'' ( sol'' ) dod'' ( mi'' )|
          \repeat unfold 12 <la re' fa'>16 |
          re''8 ( fa'' ) fa'' ( la'' ) re'' ( fa'' )|
          \repeat unfold 12 <la dod' mi' sol'>16 |
          dod''8( mi'' ) mi'' ( sol'' ) dod'' ( mi'' )|
          \repeat unfold 12 <fa' sold' si' re''>16 |
          \repeat tremolo 12 <fa' la' re''>^"Continuer les doubles croches" |\noBreak
          \repeat tremolo 12 <mi' sol' sib' dod''>|
          \repeat tremolo 12 <fa' la' re''>|
          \repeat tremolo 12 <mi' sol' sib' re''>|
          \repeat unfold 8 <mi' sol' la' re''> \repeat unfold 4 <mi' sol' la' dod''>|
          <mi' sol' la' dod''>2 r4 |
          re''2 ~ re''32 mi'' fad'' sol'' la'' sib'' do''' re''' |
          << do''2 \\ la' >> re''32 mi'' fad'' sol'' la'' sib'' do''' re''' |
          << sib'2 \\ sol' >> re''32 mi'' fad'' sol'' la'' sib'' do''' re''' |
          << do''2 \\ la' >> re''32 mi'' fad'' sol'' la'' sib'' do''' re''' |
          r4 re'' sib'8. ( sol'16 )|
          r4 do'' la'8. ( fad'16 )|
          r4 sib' sol'8. ( mi'16 )|
          \repeat unfold 4 <re' fad' la'>16 \repeat unfold 4 <re' sol' sib'> \repeat unfold 4 <re' la' do''>|
          \repeat unfold 4 <re' sol' sib'> \repeat unfold 4 <re' fad' la'> \repeat unfold 4 <re' mi' sol'>|
          \repeat unfold 4 <re'' fad'' la''> \repeat unfold 4 <re'' sol'' sib''> \repeat unfold 4 <re'' la'' do'''>|
          \repeat unfold 4 <re'' sol'' sib''> \repeat unfold 4 <re'' fad'' la''> \repeat unfold 4 <re'' mi'' sol''>|
          \repeat unfold 4 <re' fad' la'>16 \repeat unfold 4 <re' sol' sib'> \repeat unfold 4 <re' la' do''>|
          \repeat unfold 4 <re' sol' sib'> \repeat unfold 4 <re' fad' la'> \repeat unfold 4 <re' mi' sol'>|
          \repeat unfold 4 <re'' fad'' la''> \repeat unfold 4 <re'' sol'' sib''> \repeat unfold 4 <re'' la'' do'''>|
          \repeat unfold 4 <re'' sol'' sib''> \repeat unfold 4 <re'' fad'' la''> \repeat unfold 4 <re'' mi'' sol''>|
          <mi'' sol'' la'' dod'''>4 <re'' fad'' la'' re'''> r |
        }
      >>
      \new Staff = "down" <<
        \global \clef "bass"
        {
          \repeat unfold 3 <sol sib re'>4 |
          \repeat unfold 3 <mib sol sib mib'> |
          \repeat unfold 3 <re sol sib> |
          <dod mi sol sib> r2 |
          re16 mi32 fad sol la sib do' re'8-| la-| fad-| re-| |
          si,2. \pralldown |
          do16 re32 mi fad sol la si do'8-| sol-| mi-| do-| |
          <la, la,,>4 r2 |
          sib,4 <sol, sol,,>2 |
          <la,, la,>4 fad,2\pralldown |
          <sol, sol,,>4 r2 |
          \repeat unfold 3 <sib, re sol>4 |
          \repeat unfold 3 <do, mib, sol, do> |
          \repeat unfold 3 <la, la,,> |
          <re, re>2 mib4 |
          do' \pralldown re'16 do' sib la sol fad mi re |
          sol4 \mordent <sol sol,>2 |
          <sib, sib,,> r4 |
          <do, do>2 r4 |
          <la,, la,>2 r4 |
          <fad,, fad,>2 r4 |
          <sol,, sol,>2 r4 |
          mi, r2 |
          fad,4 r2 |
          sol,4 r2 |
          \repeat unfold 3 <sib,, re, sol, sib,>4 |
          \repeat unfold 3 <do, mib, sol, do> |
          \repeat unfold 3 <re, sol, sib, re> |
          \repeat unfold 3 <mib, mib> |
          \repeat unfold 3 <sib,, re, sol, sib,> |
          \repeat unfold 3 <do, mib, sol, do> |
          \repeat unfold 3 <re, re> |
          <sol,, sol,>2. |
          <sol,, sol,>2. |
          %%
          <sol, si, re sol>2. |
          \repeat unfold 6 { <sol, si, re>16 sol }|
          \repeat unfold 6 { <sol, do mib> sol }|
          \repeat unfold 6 { <sol, si, re> sol }|
          <fad fad,>2 r4 |
          sol,16 la,32 si, do re mib fa sol8-| re-| si,-| sol,-||
          mi, mi do, do mi, mi |
          fa, fa lab, lab fa, fa |
          mi, mi do, do mi, mi |
          fa,16 sol,32 lab, sib, do re mi fa8 r r4 |
          fad,8 fad re, re fad, fad |
          sol, sol sib, sib sol, sol |
          fad, fad la, la fad, fad |
          sol,16 la,32 si, do re mi fa sol8 r r4 |
          \clef "treble" do'2. \mordent |
          fa'2 \mordent r4 |
          fa' r2 |
          fa'4 r2 |
          fa'4 r2 |
          fa' \mordent r4 |
          \clef "bass" re,8 re sib,, sib, re, re |
          mib, mib sol, sol mib, mib |
          re, re sib,, sib, re, re |
          mib16 fa32 sol lab sib do' re' mib'8 r r4 |
          mi,8 mi do, do mi, mi |
          fa, fa la, la fa, fa |
          mi, mi do, do mi, mi |
          fa,16 sol,32 la, sib, do re mi fa8 r r4 |
          \clef "treble" <re' fa'>4 <re' fa'> <re' fa'> |
          mib'8 fa' sol' fa' mib' re' |
          do'2 -\prall sib4 |
          \clef "bass" mib\pralldown fa fa, |
          <sib, sib,,>2 r4 |
          \repeat unfold 6 { <sol, si, re>16 sol }|
          \repeat unfold 6 { <sol, si, re> sol }|
          \repeat unfold 6 { <sol, si, re> sol }|
          <do do,>4 r2 |
          \repeat unfold 6 { <la, dod mi>16 la }|
          \repeat unfold 6 { <la, dod mi> la }|
          \repeat unfold 6 { <la, dod mi> la }|
          <re re,>4 r2 |
          sib8 re' la re' sol dod' |
          sib, sol la, fa sol, mi |
          fa, fa mi, mi re, re |
          <la, la,,>2 r4 |
          R2. |
          \repeat unfold 6 { <la,, re, fa,>16 la, }|
          R2. |
          \repeat unfold 6 { <la,, dod, mi,>16 la, }|
          R2. |
          \repeat unfold 3 <sold, sold>4 |
          \repeat unfold 3 <la, re fa la>|
          \repeat unfold 3 <sib sib,>|
          \repeat unfold 3 <fa, la, re fa>|
          \repeat unfold 3 <sol sol,>|
          \repeat unfold 3 <la, la>|
          <re, re>2 r4 |
          \repeat unfold 6 { <re fad la>16 re' } |
          \repeat unfold 6 { <re fad la> re' } |
          \repeat unfold 6 { <re sol sib> re' } |
          \repeat unfold 6 { <re fad la> re' } |
          re,4 r2 |
          << { re8[ ( re'] ) } \\ re2 >> r4 |
          << { re8[ ( dod'] ) } \\ re2 >> r4 |
          \repeat unfold 6 <re re,>4 |
          \repeat unfold 36 { re,16 re }|
          <re re,>4 r2 |
        }
      >>
    >>
  }
  \layout { }
  \midi { }
}