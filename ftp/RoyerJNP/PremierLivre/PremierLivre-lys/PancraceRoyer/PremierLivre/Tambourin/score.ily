\score {
  \notemode {
    \new PianoStaff \with { instrumentName = \markup \center-column { \smallCaps Tambourin \line \smaller { Suite des Matelots } } } <<
      \new Staff = "up" <<
        \global
        {
          re''16 dod'' re'' mi'' fad'' mi'' fad'' sol'' |
          la''8 sol'' fad'' -\prall mi'' |
          mi''16 fad'' sol''8 sol'' fad'' -\prall |
          mi''16 re'' dod'' re'' mi''8 la' |
          re''16 dod'' re'' mi'' fad'' mi'' fad'' sol'' |
          la''8 sol'' fad'' -\prall mi'' |
          mi''16 sol'' fad'' mi'' fad'' mi'' re'' dod'' |
          re''4\mordent re'\mordent \fermata |
          mi''16 re'' mi'' fad'' mi'' re'' mi'' fad'' |
          mi'' re'' mi'' fad'' mi'' re'' mi'' fad'' |
          mi''8 la'' dod'' -\prall re'' |
          mi''16 re'' dod'' si' la'4 |
          si'16 dod'' si' dod'' re''8 re'' |
          re'4\mordent re'\mordent |
          si'16 dod'' si' dod'' re''8 re'' |
          mi'4\mordent mi'\mordent |
          dod''16 ( re'' dod'' re'' ) mi'' ( fad'' mi'' re'' )|
          dod'' ( re'' dod'' re'' ) mi'' ( fad'' mi'' re'' )|
          dod'' ( mi'' re'' dod'' ) si' ( re'' dod'' si' )|
          la'4\mordent la'\mordent |
          re''16 dod'' re'' mi'' fad'' mi'' fad'' sol'' |
          la''8 sol'' fad'' -\prall mi'' |
          mi''16 fad'' sol''8 sol'' fad'' -\prall |
          mi''16 re'' dod'' re'' mi''8 la' |
          re''16 dod'' re'' mi'' fad'' mi'' fad'' sol'' |
          la''8 sol'' fad'' -\prall mi'' |
          mi''16 sol'' fad'' mi'' fad'' mi'' re'' dod'' |
          re''4\mordent re'\mordent \fermata |
          fa''16 sol'' la''8 re'' fa'' |
          mi'' sold'' \appoggiatura sold'' la''4 |
          re''16 mi'' fa''8 sib' re'' |
          do'' mi'' \appoggiatura mi'' fa''4 |
          sib'16 do'' re''8 sol' sib' |
          la' dod'' \appoggiatura dod'' re''4 |
          sol'16 sib' la' sol' la' sol' fa' mi' |
          fa' sol' fa' mi' re'4 |
          re''16 mi'' fa''8 la' si' |
          <mi' la' do''>4 <mi' la' do''> |
          do''16 re'' mib''8 mib'' fad' |
          <sib re' sol'>4 <sib re' sol'>|
          sib''16 la'' sol'' la'' sib'' la'' sol'' fa'' |
          mi'' fa'' sol'' fa'' mi'' re'' do'' sib' |
          la' do'' fa''8 sol'16 sib' mi''8 |
          <la do' fa'>4 <la do' fa'> |
        }
      >>
      \new Staff = "down" <<
        \global \clef "bass"
        {
          \repeat unfold 8 { <re, la, re>4 <re, la, re>4 | }
          << { dod'16 si dod' re' dod' si dod' re' |
               dod' si dod' re' dod' si dod' re' |
               dod'8 re' mi' fad' |
               dod'4 -\prall dod' |} \\
             { la la |
               la la |
               la s |
               la la } >>
          <sol, re sol>4 <sol, re sol> |
          <fad, fad> <fad, fad> |
          <sol, re sol> <sol, re sol> |
          <sold, sold> <sold, sold> |
          <la, mi la> <la, mi sold> |
          <la, mi la> <la, mi sold> |
          <la, la> <mi, mi> |
          <la,, la,> <la,, la,> |
          \repeat unfold 8 { <re, la, re>4 <re, la, re>4 | }
          <re' fa'>4 <re' fa'> |
          <do' mi'> <do' mi'> |
          <sib re'> <sib re'> |
          <la do'> <la do'> |
          <sol sib> <sol sib> |
          <fa la> <fa la> |
          <mi re'> <la dod'> |
          <re, re> <re, re> |
          <re, re> <re, re> |
          <la,, la,> <la,, la,> |
          R2 |
          <sib,, sib,>4 <sib,, sib,> |
          <sol,, sol,> <sol,, sol,> |
          <do, do> <do, do> |
          <fa, fa> <do, do> |
          <fa,, fa,> <fa,, fa,> |
        }
      >>
    >>
  }
  \layout { }
  \midi { }
}