\score {
  \notemode {
    \new PianoStaff \with { instrumentName = \markup \center-column { \smallCaps "La Sensible" \smaller Rondeau } } <<
      \new Staff = "up" <<
        \global
        {
          mib''4 re'' |
          \grace re''8 do''4-\prall si'-| \grace si'8 do''4. \mordent re''8 |
          \grace re'' mib''4 \mordent \appoggiatura re''8 do''4 fa''4. \suspension sol''8 |
          \appoggiatura fa'' mib''4. fa''8 \turn sol''4 fa''8 -\prall mib'' |
          mib''4 (\suspension re'' )\pralldown mib'' re'' |
          \grace re''8 do''4 -\prall si'-| \grace si'8 do''4. re''8 |
          \grace re'' mib''4 \mordent \grace re''8 do''4 fa''4. \suspension sol''8 |
          \grace fa'' mib''4. -\prall re''8 \grace mib'' re''4. -\prall do''8 |
          do'' ( sol' do' sol' ) lab' ( do' la' fa' )|
          si' sol' do'' mib' re' do'' fa' si' \turn |
          do'' sol' do' sol' lab' do' la' fa' |
          si' sol' do'' mib' re' do'' fa' si' \turn |
          << { do'' sol' mib' do' } \\ { do'' sol' mib' do' } >> \updown sol mib sol do' |
          \upup <do' mib' sol' do''>2 mib''4 re''
          %%
          << { do''8 sol' mib' do' } \\ { do'' sol' mib' do' } >> \updown sol mib sol do' |
          \upup <do' mib' sol' do''>2 \voiceOne do''4 re'' |
          \grace re''8 mi''4 \mordent fa'' do''4. sib'8 |
          \grace sib' lab'4 -\prall \grace sol'8 fa'4 sib'4. do''8 |
          \grace do'' re''4 \mordent mib'' sib'4. lab'8 |
          \grace lab' \oneVoice sol'4 -\prall \grace fa'8 mib'4 sol'4. la'8 |
          \grace la' sib'2_\mordent \suspension la'4. si'8 |
          \grace si' do''2_\mordent \suspension ~ \voiceOne do''8 re'' si' do'' |
          re'' sol'' si' do'' re'' mib'' fa'' sol'' |
          \grace fa'' mib''4 -\prall re''8 r \oneVoice sol'4 lab'8 ( sol' )|
          sol' ( fa' ) sol' ( fa' )\grace fa' mi'4 \pralldown fa'8 mib' |
          mib' re' sib mib' re' do' lab re' |
          do' sib sol mib' \updown sol fa \upup mib' re' |
          \grace re' <\barre mib'>2 mib''4 re'' |
          %%
          do''8( sol' mib' do') \updown sol( mib sol do') |
          \oneVoice do, ( mi, sol, do ) mi ( sol do' sol )|
          \upup mi' ( sol' do'' sol' ) sib' ( mi'' sol'' sib' )|
          \downdown fa, ( la, do fa ) la ( do' fa' do' )|
          fad, ( la, do mib ) fad ( la do' la )|
          \upup mib' ( fad' la' do'' ) mib'' ( fad'' la'' do'' )|
          \downdown sol, ( sib, re sol ) sib ( re' sol' re' )|
          re, ( fa, lab, si, ) re ( fa lab si )|
          \upup re'( fa' lab' si') re''( fa'' lab'' si' )|
          \grace si' do''\mordent s s2. |
          s1*2 |
          \grace dod''8 re''\mordent r r4 sib' \mordent la' |
          \grace la'8 sol'4 -\prall fad' \grace fad'8 sol'4. \mordent la'8 |
          \grace la' sib'4 \mordent \grace la'8 sol'4 do''4. re''8 |
          \grace do'' sib'4. -\prall la'8 \grace sib' la'4. -\prall sol'8 |
          r re' sol re' mib' sol mi' do' |
          fad' re' sol' sib la sol' la fad' \turn |
          sol' re' sol re' mib' sol mi' do' |
          fad' re' sol' sib la sol' la fad' \turn |
          sol' re' \updown si sol re si, re sol
          \upup r2 mib''4 re'' |
          %%
          do''8 ( sol' mib' do' ) \updown sol ( mib sol do' )|
          r sol ( do sol ) lab ( do la fa )|
          si ( sol do' mib ) re ( do' fa si )\turn |
          do'( sol do sol) lab( do la fa) |
          si( sol do' mib) re( do' fa si) \turn |
          do' ( sol mib do ) sol, ( mib, sol, do )|
          <do mib sol \barre do'>2
        }
      >>
      \new Staff = "down" <<
        \global \clef "treble"
        {
          << { do'8 sol' re' fa' |
               mib' sol' fa' lab' mib' la' re' si' |
               do' do'' \grace sib' la'4 re'8 re'' sol' si' |
               lab' do'' ~ do'' re'' mib' mib'' re'' do'' |
               \oneVoice sol' la' si' sol' \voiceOne do' sol' re' fa' |
               mib' sol' fa' lab' mib' la' re' si' |
               do' do'' \grace sib' la'4 re'8 re'' sol' si' |
               lab' do'' do'' do'' \grace do'' si'4. -\prall r8 } \\
             { do'4 re' |
               mib' fa' mib' re' |
               do' fa' re' sol' |
               lab' sol'8 fa' mib'4 fa' |
               s2 do'4 re' |
               mib' fa' mib' re' |
               do' fa' re' sol' |
               lab' fa' sol'2 } >> |
          \clef "bass" <mib mib,>2 <fa, fa> |
          <sol sol,> ~ <sol, sol,,> |
          <do, do> <fa, fa> |
          <sol sol,> ~ <sol, sol,,> |
          do, \voiceTwo r | \oneVoice
          << <do, do> \new Voice { \voiceThree <mib, sol,>8 } >>
          \clef "treble" << { do'8 sol' re' fa' } \\ { do'4 re' } >>|
          %%
          \clef "bass" do,2 \voiceTwo r | \oneVoice
          << <do, do>2 \new Voice { \voiceThree <mib, sol,>8 } >>
          << { lab8 \downup mib' fa' \downdown lab } \\ { lab4. lab8 } >>|
          sol \downup sol' \downdown fa \downup lab' mi' sol' do' mi' |
          \downdown fa4. \downup mib'8 re' fa' mib' sol' |
          fa' lab' sol' sib' re' fa' sib re' |
          \downdown mib4 mib, << { mib8 sib do' mib |
                                   re fa mi sol fa do' re' fa |
                                   mib sol fa lab } \\
                                 { mib4. mib8 |
                                   re4 mi fa4. fa8 |
                                   mib4 fa } >>
          sol \downup sol'8 la' |
          si'4 sol'8 la' si' do'' re'' si' |
          do''4 sol'8 r \downdown
          << { mib sol do' mib |
               reb do' sib reb do sib lab do |
               s4 sol ~ sol fa ~|
               fa mib } \\
             { mib4. mib8 |
               reb4. reb8 do4. do8 |
               sib,4. sol,8 lab,4. fa,8 |
               sol,2 <lab, do>4 sib, } >> |
          <mib, sib, mib sol sib>2
          \clef "treble" << { do'8 sol' re' fa' } \\ { do'4 re' } >>|
          %%
          \clef "bass" do,2 \voiceTwo r |
          \oneVoice s1*8 |
          mib,8( sol, do mib ) sol ( do' mib' do' )|
          mi, sol, sib, dod mi sol sib dod' |
          \upup mi' ( sol' sib' dod'' ) mi'' ( sol'' sib'' dod'' )|
          \downdown re,4 r \clef "treble"
          << { sol8 re' la do' |
               sib re' do' mib' sib mi' la fad' |
               sol sol' do' mi' la la' re' fad' |
               mib' sol' ~ sol'4 \grace sol'8 fad'4. -\prall r8 } \\
             { sol4 la |
               sib do' sib la |
               sol do' la re' |
               mib' do' re'2 |} >>
          \clef "bass" sib, do \mordent |
          re \mordent re, |
          sib, do \mordent |
          re \mordent re, |
          sol, s |
          sol,, 
          \clef "treble" << { do'8 sol' re' fa' } \\ { do'4 re' } >>|
          \clef "bass" do,2 s |
          \voiceTwo mib, fa, \mordent |
          sol, \mordent sol,, |
          mib, fa, \mordent |
          sol, \mordent sol,, |
          do, s |
          << do, \new Voice { \voiceThree <mib, sol,>8 } >>
        }
      >>
    >>
  }
  \layout { }
  \midi { }
}