\score {
  \notemode {
    \new PianoStaff \with { instrumentName = \markup \center-column \smallCaps { "Suite de" "la Bagatelle" } } <<
      \new Staff = "up" <<
        \global
        {
          re''16 mib'' |
          re''8 do'' sib' -\prall la' |
          sib' \mordent la' sib' do'' \pralldown |
          re'' sol' sol' sol'' |
          fad'' -\prall mi''16 fad'' re''8 la'' |
          \appoggiatura la'' sib''4. \mordent la''8 |
          sol'' -\prall fa'' mi'' -\prall re'' |
          dod'' -\prall la'16 si' dod'' re'' si' dod'' |
          re'' mi'' dod'' re'' mi'' fa'' re'' mi'' |
          fa''8 mi''16 -\prall re'' mi''8 dod'' \pralldown |
          re'' la' re''4\mordent ~|
          re''16 mi'' dod'' re'' mi'' fa'' re'' mi'' |
          fa''8 mi''16 -\prall re'' mi''8 dod'' \pralldown |
          <fad' la' re''>4. re''16 mib'' |
          fa''8 sib'' sib'' fa'' -\prall |
          sol''4. \mordent fa''8 \pralldown |
          sol'' fa'' mib'' -\prall re'' |
          do'' -\prall do'' fa''4\pralldown ~|
          fa''8 re''16 mib'' fa'' sol'' mib'' fa'' |
          sol'' la'' fa'' sol'' la'' sib'' sol'' la'' |
          sib''8 \mordent fa''16 sol'' fa'' mib'' re'' do'' |
          \appoggiatura do'' re''8. \mordent mib''16 \appoggiatura re''8 do''8. -\prall sib'16 |
          <re' fa' sib'>4. re''8 |
          re'' do'' do'' re'' -\prall |
          \appoggiatura re'' mib''4. \mordent mib''8 |
          mib'' re'' re'' mi'' -\prall |
          \appoggiatura mi'' fa''4. \mordent fa''8 |
          mi''16 -\prall re'' mi'' fa'' mi'' fad'' sol'' la'' |
          fad''8 -\prall sol'' la'' \mordent sib'' |
          la''16 sol'' fad'' mi'' re''8 la'' |
          sib'' ( la'' )-\prall sib'' la'' |
          \appoggiatura la'' sol''4. -\prall fa''8 |
          mib'' \mordent re'' do'' -\prall sib' |
          la' -\prall fad''16 sol'' la'' sib'' sol'' la'' |
          sib''8 la''16 -\prall sol'' la''8 fad'' \pralldown |
          sol'' re'' sol''4\mordent ~|
          sol''16 la'' fad'' sol'' la'' sib'' sol'' la'' |
          sib''8 \mordent re'' sol''4\mordent ~|
          sol''16 la'' fad'' sol'' la'' sib'' sol'' la'' |
          sib''8 la''16 -\prall sol'' la''8 fad'' -\prall |
          sol'' fad''16 \pralldown mi'' re'' do'' sib' la' |
          \appoggiatura la'8 sib'8. la'16 la'8. -\prall sol'16 |
          <sib re' sol'>4.
        }
      >>
      \new Staff = "down" <<
        \global \clef "treble"
        {
          sib'16 do'' |
          sib'8 la' sol'-\prall fad' |
          sol' \mordent re' sol' \mordent la' |
          sib' sib'16 la' sib'8 -\prall sol' |
          re'4. fad''8 |
          sol'' \mordent re'' sol' la' |
          sib' \mordent la' sol' sib' |
          la'4 r |
          r8 la'16 si' dod'' re'' si' dod'' |
          re''8 sib' sol' la' |
          re'4 r8 re' |
          la' \mordent la'16 si' dod'' re'' si' dod'' |
          re''8 sib' sol' la' |
          \clef "bass" <re' re>4. \clef "treble" sib'16 do'' |
          re''8 fa'' re'' sib' |
          mib'' sib' mib' sib' |
          mib'' re'' do'' -\prall sib' |
          la' -\prall fa'16 sol' la' sib' sol' la' |
          sib'8 sib'16 do'' re'' mib'' do'' re'' |
          mib''8 do'' fa'' \mordent mib'' |
          re'' re''16 mib'' re'' do'' sib' la' |
          sib'8 mib' fa' \clef "bass" fa |
          <sib sib,>4. \clef "treble" sib'8 |
          sib' la' la' si' -\prall |
          do'' sol' sol' la' |
          \appoggiatura la' sib'4. \mordent sib'8 |
          la' sol' la' si'-\prall |
          do''4. la'8 |
          re'' mi'' fad'' \mordent sol'' |
          re''4 r |
          r r8 re'' |
          mib'' re'' mib'' si' |
          do'' \mordent sib' la' -\prall sol' |
          re' re''16 mi'' fad'' sol'' mi'' fad'' |
          sol''8 mib'' do'' re'' |
          sol'4. sol'8 |
          re'' \mordent re''16 mi'' fad'' sol'' mi'' fad'' |
          sol''8 \mordent r r sol' |
          re'' \mordent re''16 mi'' fad'' sol'' mi'' fad'' |
          sol''8 mib'' do'' re'' |
          sib' la'16 -\prall sol' fad'8 -\prall re' |
          sol' \mordent mib' << { fad'8. -\prall r16 } \\ re'4 >>|
          \clef "bass" <sol sol,>4.
        }
      >>
    >>
  }
  \layout { }
  \midi { }
}