\score {
  \notemode {
    \new PianoStaff \with { instrumentName = \markup \smallCaps "Les Matelots" } <<
      \new Staff = "up" <<
        \global
        {
          re'2 \mordent la' \mordent |
          la'8 ( sol' mi' sol' ) sol' ( fa' re' fa' )|
          \appoggiatura fa' mi'4 la <re' fa' sib' re''>2 |
          \appoggiatura re''8 do''4 \appoggiatura sib'8 la'4 \appoggiatura la'8 sib'4. \mordent do''8 |
          la'4 -\prall la'8. sib'16 do''2 \mordent |
          do'4 mi'8. fad'16 sol'4 sib'8. do''16 |
          re''2 \mordent re'4 fa'8. sol'16 |
          < la dod' mi' la' >2 < la re' fa' la' >|
          < la dod' mi' la' >4 sol'8-. fa'-. mi'-. re'-. dod'-.-\prall si-. |
          s1 |
          fa'2 \mordent do'' \mordent |
          sib'8 ( la' sol' fa' ) fa' ( mi' re' do' )|
          sol'2 \mordent re'' \mordent |
          do''8 ( sib' la' sol' ) sol' ( fa' mi' re' )|
          la'2 re'' |
          << { re'' \suspension ( dod''8 )-\prall \oneVoice r \voiceOne mi''4 |
               mi''8 re'' ~ re'' re'' re'' do'' ~ do'' do'' |
               do''[ si'] } \\
             { mi'2 s4 do'' |
               do''8 si' mi' si' si' la' mi' la' |
               la'[ sold'] } >> mi'4 r sold'8. la'16 |
          \appoggiatura la'8 si'2 \mordent re'4 fa''-| |
          fa''8 ( mi'' do'' mi'' ) mi'' ( re'' si' re'' )|
          re'' ( do'' si' la' ) do'' ( si' la' sold' )|
          sold'2 (\suspension la'8 )\mordent r r4 |
          fa'2 \mordent do'' \mordent |
          sib'8 ( la' sol' fa' ) fa' ( mi' re' do' )|
          sol'2 \mordent re'' \mordent |
          do''8 ( sib' la' sol' ) sol' ( fa' mi' re' )|
          la'2 re'' |
          <mi' re''>2 \suspension ( dod''8)-\prall r
          << { la'4 |
               la'8 sol' ~ sol' sol' sol' fa' ~ fa' fa' |
               fa'[ mi'] } \\
             { fa'4 |
               fa'8 mi' la mi' mi' re' la re' |
               re'[ dod'] } >> la4 r dod''8. re''16 |
          \appoggiatura re''8 mi''2 \mordent sol'4 sib' |
          sib'8 ( la' fa' la' ) la' ( sol' mi' sol' )|
          sol' ( fa' mi' re' ) fa' ( mi' re' dod' )|
          re' ( mi' fa' sol' la' si' do'' la' )|
          <re' fa' sib' re''>2\suspension r |
          re''8 ( do'' la' do'' ) do'' ( sib' sol' sib' )|
          sib' ( la' fa' la' ) la' ( sol' mi' sol' )|
          sol' ( fa' mi' re' ) fa'4 \mordent mi' -\prall |
          re'8 r8 re''32 do'' sib' la' sol' fa' mi' re' fa'4 \mordent mi' |
          re'2 \mordent re' \mordent |
          re'1 |
        }
      >>
      \new Staff = "down" <<
        \global \clef "bass"
        {
          R1 |
          la2 \mordent re' \mordent |
          \appoggiatura re'8 do'4 do < sib, sib,, > sib |
          la ( fa' ) sol ( mi' )|
          fa4 fa8. sol16 la4 \mordent do' |
          < mi, mi > < do do, > < sib,, sib, > < sol, sol,, > |
          re, re8. mi16 fa4\mordent re |
          dod -\prall <la, la,,> fa, \mordent re, |
          <la,, la,>2 <la, la,,> |
          <la,, la, dod mi la>1 |
          R1 |
          fa2 \mordent do' \mordent |
          do'8 ( sib la sol ) sol ( fad mi re )|
          sol2 \mordent re' \mordent |
          re'8 ( dod' si la ) sol ( fa mi re )|
          <la, la,,>2 r |
          sold,2 la, |
          mi,4 sold8. la16 \appoggiatura la8 si2 \mordent |
          <re re,>4 sold8. la16 \appoggiatura la8 si2 \mordent |
          do4 ( la ) si, ( sold )|
          la, do re \mordent mi |
          <la la,>2 r |
R1 |
          fa2\mordent do'\mordent |
          do'8 ( sib la sol ) sol ( fad mi re )|
          sol2 \mordent re' \mordent |
          re'8 ( dod' si la ) sol ( fa mi re )|
          <la, la,,>2 r |
          <la, la,,>1 |
          la,4 dod'8. re'16 \appoggiatura re'8 mi'2 \mordent |
          <sol sol,>4 dod'8. re'16 \appoggiatura re'8 mi'2 \mordent |
          fa4 ( re' ) mi ( dod' )|
          re2 la, |
          < re re, > < do, do > |
          < sib, sib,, > r |
          la,4 fad sol, sol |
          fa, ( re ) mi, ( dod )|
          re, ( fa, ) sol, la, |
          < sib, sib,, > r sol, la, |
          re do8 -\prall sib, la, sol, fa, -\prall mi, |
          < re, re fa la >1 
        }
      >>
    >>
  }
  \layout { }
  \midi { }
}