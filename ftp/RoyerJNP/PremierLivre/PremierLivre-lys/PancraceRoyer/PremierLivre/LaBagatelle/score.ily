\score {
  \notemode {
    \new PianoStaff \with { instrumentName = \markup \center-column { \smallCaps "La Bagatelle" } } <<
      \new Staff = "up" <<
        \global
        {
          r4 r8 <sol' si'>-| <sol' si'>-| <la' do''>-| |
          <la' do''>4( <si' re''>16)_\mordent r <do'' mi''>8( <si' re''>16) r r8 |
          r < do'' mi'' >~ < do'' mi'' > < si' re'' > < si' re'' > < dod'' sol'' >|
          < dod'' sol'' >4( < re'' fad'' >16) r r8 \grace { sol''16[ la'' ]} si''4 |
          la'' sol'' -\prall fad''8 sol''32 fad'' mi'' fad'' |
          fad''4 -\prall mi''8 la''-| la'' re'' |
          re''4 ( mi''8 )\mordent la'' la'' re'' |
          re''4 ( mi''8 )\mordent la'' la'' re'' |
          \appoggiatura { mi''16 [ fad'' ]} sol''4. mi''8 \appoggiatura mi'' fad''4 \mordent ~|
          fad''8 sol''32 fad'' mi'' fad'' \appoggiatura fad''8 mi''4. -\prall re''8 |
          <la' fad' re''>4 r8 <sol' si'> <sol' si'> <la' do''> |
          <la' fad' re''>4. <fad' la'>8 <fad' la'> <sol' si'> |
          <sol' si'>( <fad' la'>) r <sol' si'>( <fad' la'>16) r r8 |
          r <sol' si'> <sol' si'> <la' do''> ~ <la' do''> <sold' si'> |
          <sold' si'>4( <la' do''>8) r <sol' si'>4 |
          << { \slurDown \appoggiatura si'8 \voiceOne <mi'' do''>4 re'' sol'' |
               \slurDown \appoggiatura fad''8 mi''4 fad'' \mordent sol''8 la''32 sol'' fad'' sol'' } \\
             { sol'4 si' re'' |
               re'' do'' re''8 r } >>|
          sol''4(-\prall fad''16 ) r re''8 re'' sol' |
          sol'4 ( la'8) \mordent re'' re'' sol' |
          sol'4 ( la'8 )\mordent re'' re'' sol' |
          \appoggiatura { la'16 [ si' ]} do''4. la'8 \appoggiatura la' si'4 \mordent ~|
          si'8 do'' \appoggiatura si' la'4. -\prall sol'8 |
          <si re' sol'>4. <fad' la'>8 <fad' la'> <sol' si'> |
          << << { sol'4. re''8 re'' sol' } \new Voice { \voiceThree s8 re'4 } >> \\ { sol'8[ si] } >>|
          sol'4 ( la'8 )\mordent re'' re'' sol' |
          sol'4 ( la'8 )\mordent re'' re'' sol' |
          \appoggiatura { la'16 [ si' ]} do''4. la'8 \appoggiatura la' si'4 \mordent ~|
          sol'8 sol''32*4/9 fad'' mi'' re'' do'' si' la' si' sol' \appoggiatura si'8 la'4. -\prall sol'8 |
          <si re' sol'>2. |
        }
      >>
      \new Staff = "down" <<
        \global \clef "bass"
        {
          sol,4 \mordent sol,, r |
          r8 sol \mordent sol,4 \clef "treble" r8 sol' |
          sol4 r8 sol' fad' -\prall mi' |
          re'4 \clef "bass" re \clef "treble"
          << { sol'8 re'' |
               fad' re'' mi' dod'' re' mi''32 re'' dod'' re'' |
               re''4 -\prall ( dod''8 ) \oneVoice r \voiceOne la'4 |
               sol'8 si' ( dod''16 ) r \oneVoice r8 \voiceOne la'4 |
               si' dod'' re'' ~|
               re'' \appoggiatura re''8 dod''4.-\prall r8 } \\
             { sol'4 |
               fad' mi' re' |
               la'4. s8 fad'4 |
               sol'4. s8 fad'4 |
               sol'4. s8 fad'4 |
               mi' la' re' |
               <sol' si'> la'2 } >>
          \clef "bass" re'4\mordent re8 r r4 
          re' re8 r r4 |
          r8 re \mordent re, r r re' |
          re4 r8 re' do' -\prall si |
          la4 la,8 r \clef "treble" mi'4 \mordent |
          do' sol'8. la'16 si'4 \mordent |
          do''8. si'16 la'4 -\prall << { si'8 do''32 si' la' si' |
                                         si'4 -\prall ( la'16) r } \\
                                       { sol'4 | re'2 } >> si4 |
          << { do'8 mi' ( fad'16 ) r \oneVoice r8 \voiceOne re'4 |
               do'8 mi' ( fad'16 ) r \oneVoice r8 \voiceOne re'4 |
               mi' fad' sol' |
               <mi' sol'> \appoggiatura sol'8 fad'4. -\prall r8 | } \\
             { do'4. s8 si4 |
               do'4. s8 si4 |
               la re' sol |
               do' re'2 |} >>
          \clef "bass" sol4\mordent sol,8 r r4 |
          sol sol,8 r fad,4 |
          << { sol,8 si, ( do16 ) r \oneVoice r8 \voiceOne la,4 |
               sol,8 si, ( do16 ) r \oneVoice r8 \voiceOne la,4 |
               si, do re ~|
               <si, re> \appoggiatura re8 do4. -\prall r8 | } \\
             { sol,4. s8 fad,4 |
               sol,4. s8 fad,4 |
               mi, la, re, |
               sol, la,2 } >>
          <sol, si, re sol>2.
        }
      >>
    >>
  }
  \layout { }
  \midi { }
}