\score {
  \notemode {
    \new PianoStaff \with { instrumentName = \markup \center-column { \smallCaps "La Zaïde" \smaller Rondeau } } <<
      \new Staff = "up" <<
        \global
        {
          fad''4. \mordent sol''8 fad'' mi'' |
          \appoggiatura mi'' re''2 -\prall re''4 |
          sol''4. \mordent fad''8 mi'' -\prall re'' |
          \appoggiatura re'' dod''4. -\prall re''8 la' si' |
          \appoggiatura si' dod''4. \mordent re''8 la' si' |
          \appoggiatura si' dod''4. \mordent re''8 mi'' fad'' |
          \appoggiatura fad'' sol''4. \mordent la''8 mi'' sol'' |
          fad''8. \mordent sol''32 la'' \appoggiatura la''8 sol''4. -\prall fad''8 |
          \appoggiatura fad'' mi''2 -\prall mi''8 r |
          fad''4. sol''8 fad'' mi'' |
          \appoggiatura mi'' re''2 -\prall \afterGrace re''4 { mi''16 [ fad'' ]}|
          sol''4. fad''8 mi'' -\prall re'' |
          \appoggiatura re'' dod''4. -\prall re''8 la' si' |
          \appoggiatura si' dod''4. \mordent re''8 la' si' |
          \appoggiatura si' dod''4. \mordent re''8 mi'' fad'' |
          \appoggiatura fad'' sol''4. \mordent la''8 mi'' sol'' |
          fad'' la'' dod'' mi'' re''4 \mordent ~|
          \afterGrace re'' { mi''32 [ re'' dod'' mi'' ]}\appoggiatura fad''8 mi''4. -\prall re''8 |
          re''4. ( la'8 fad' re' )|
          re'' la' si' \mordent dod'' re'' \mordent mi'' |
          << { s2 s8 sol'' |
               la''4 la'' \afterGrace la'' { si''32 [ la'' sol'' la'' ]} } \\
             { fad''8 \mordent dod'' re'' \mordent mi'' fad'' \mordent mi'' |
               fad''4 fad'' sol'\rest } >>
          la''2. -\prall ~|
          la'' -\prall ~|
          la'' -\prall ~|
          << la'' -\prall { s2 s8 sol''16 [( la'' ] } >>|
          si''8 ) la'' \pralldown si'' la'' sol'' -\prall fad'' |
          mi'' -\prall re'' dod'' -\prall si' la' sol' |
          fad' la' si' \mordent dod'' re'' \mordent mi'' |
          << { s2 s8 sol'' |
               la''4 la'' \afterGrace la'' { si''32 [ la'' sol'' la'' ]} } \\
             { fad''8 \mordent dod'' re'' \mordent mi'' fad'' \mordent mi'' |
               fad''4 fad'' sol'\rest } >>
          la''2. -\prall ~|
          la'' -\prall ~|
          la'' -\prall ~|
          << la'' -\prall { s2 s8 sol''16 [( la'' ] } >>|
          si''8 ) la'' \pralldown si'' la'' sol'' -\prall fad'' |
          mi'' -\prall re'' dod'' -\prall si' la' sol' |
          re''4. sol''32 fad'' mi'' fad'' sol''8 re'' |
          \appoggiatura re'' mi''4. \mordent fad''32 mi'' re'' mi'' fad''8 dod'' |
          \appoggiatura dod'' re''4. \mordent mi''32 re'' dod'' re'' mi''8 si' |
          dod'' -\prall re'' mi'' \mordent fad'' sol'' \mordent la'' |
          \appoggiatura sol'' fad''4 -\prall \appoggiatura mi''8 re'' sol''32 fad'' mi'' fad'' sol''8 re'' |
          \appoggiatura re'' mi''4. \mordent fad''32 mi'' re'' mi'' fad''8 dod'' |
          \appoggiatura dod'' re''4. \mordent mi''32 re'' dod'' re'' mi''8 si' |
          dod'' -\prall re'' mi'' \mordent fad'' sol'' \mordent la'' |
          \appoggiatura sol'' fad''4 -\prall \appoggiatura mi''8 re'' r
          << { mi''4 |
               mi''4. (\suspension fad''8 ) \oneVoice r \voiceOne sol''16 mi'' |
               mi''4. (\suspension fad''8 ) \oneVoice r \voiceOne sol''16 mi'' | } \\
             { dod''4 |
               dod''4. ( re''8 )\mordent s mi''16 dod'' |
               dod''4. ( re''8 )\mordent s mi''16 dod'' |} >>
          fad''8 mi'' re'' -\prall dod'' si' -\prall la' |
          \appoggiatura la' sold'4 -\prall \appoggiatura fad'8 mi' r la'8. \suspension si'32 dod'' |
          dod''4 ( si'8 )-\prall la' re'' dod'' |
          si' \mordent mi'' si' dod'' sold' la' |
          << { mi' mi'' si' dod'' sold' la' } \\ mi'2 >>|
          mi'8 fad' sold' \mordent la' si' \mordent sold' |
          la' \mordent mi' fad' \mordent sold' la' \mordent si' |
          << { dod'' \mordent sold' la' \mordent si' dod'' \mordent re'' |
               mi''4 mi'' \afterGrace mi'' { fad''32 ([ mi'' re'' mi'' )] }} \\
             { s2 s8 si' |
               dod''4 dod'' s } >>
          mi''2. -\prall ~|
          mi''2. -\prall ~|
          mi''2. -\prall ~|
          mi''4 -\prall la''8 sold'' \pralldown la'' mi'' |
          fad'' mi'' \pralldown fad'' mi'' re'' -\prall dod'' |
          si' -\prall la' sold' -\prall fad' mi' re' |
          dod' mi' la' dod' si sold' \pralldown |
          la'16 mi' dod' mi' la' mi' dod' la \change Staff = "down" \voiceOne mi dod mi la |
          la,2. \suspension |
          \change Staff = "up" \oneVoice fad''8 la'' dod'' mi'' re''4 \mordent ~|
          re''8 mi''32*4/5 ([ re'' dod'' re'' mi'' )]\appoggiatura fad''8 mi''4. -\prall \afterGrace re''8 { re''32[ dod'' si' la' sol' fad' mi' re' mi' fad' sol' la' si' dod'']} |
          <re' fad' la' re''>2.
        }
      >>
      \new Staff = "down" <<
        \global \clef "treble"
        {
          << { re'8 la' re' la' la sol' |
               \appoggiatura sol' fad'2 -\prall si'4\rest |
               sol8 re' si' la' sol' -\prall fad' |
               la re' mi' \mordent fad' dod' re' |
               la re' mi' \mordent fad' dod' re' |
               la re' mi' \mordent fad' dod' re' |
               si ( re' ) dod' ( mi' ) la dod' | } \\
             { re'4 re' la |
               si2. |
               sol4 s2 |
               la2. |
               la |
               la |
               si4 dod' la |} >>
          re'8. mi'32 fad' \appoggiatura fad'8 mi'4. -\prall re'8 |
          la' sol' la' si' dod'' la' |
          << { re'8 la' re' la' la sol' |
               \appoggiatura sol' fad'2 -\prall si'4\rest |
               sol8 re' si' la' sol' -\prall fad' |
               la re' mi' \mordent fad' dod' re' |
               la re' mi' \mordent fad' dod' re' |
               la re' mi' \mordent fad' dod' re' |
               si ( re' ) dod' ( mi' ) la( dod') |
               re' fad' mi' sol' fad' la' |
               sol' si' \appoggiatura re'' dod''4. -\prall r8 | } \\
             { re'4 re' la |
               si2. |
               sol4 s2 |
               la2. |
               la |
               la |
               si4 dod' la |
               re' mi' fad' |
               sol' la'2 | } >>
          \clef "bass" re'8 la fad re re,4 |
          \clef "treble" re'4. la'8 si' \mordent dod'' |
          re'' \mordent la' si' \mordent dod'' re'' \mordent r |
          << { re' ( fad' la' re'' ) fad'' re'' |
               la' dod'' mi'' sol'' dod'' sol'' | } \\
             { re'2 r4 |
               la'2 dod''4 } >>
          fad''8 -\prall mi'' re'' re'' fad'' re'' |
          << { la' dod'' mi'' sol'' la' sol'' } \\ { la'2 la'4 } >>|
          fad''8.[-\prall re''32*2/3 mi'' fad''] fad''4. -\prall mi''16 fad'' |
          sol''8 fad'' \pralldown sol'' fad'' mi'' -\prall re'' |
          dod'' -\prall si' la' sol' fad' -\prall mi' |
          re'4. la'8 si'\mordent dod'' |
          re'' \mordent la' si' \mordent dod'' re'' \mordent r |
          << { re' fad' la' re'' fad'' re'' |
               la' dod'' mi'' sol'' la' sol'' } \\
             { re'2 s4 | la'2 la'4 } >>
          fad''8 -\prall mi'' re'' re'' fad'' re'' |
          << { la' dod'' mi'' sol'' la' sol'' } \\ { la'2 la'4 } >> |
          fad''8.[-\prall re''32*2/3 mi'' fad''] fad''4. -\prall mi''16 ( fad'' |
          sol''8 ) fad'' \pralldown sol'' fad'' mi'' -\prall re'' |
          dod'' -\prall si' la' sol' fad' -\prall mi' |
          << { re' fad' la' re' si'( re' |
               si') mi' sold' la' dod' la' ~|
               la' re' fad' sol' si sol' |
               la si dod' \mordent re' mi' dod' |
               re' fad' la' re' si'( re' |
               si' ) mi' sold' la' dod' la' ~|
               la' re' fad' sol' si sol' |
               la si dod' \mordent re' mi' \mordent dod' |
               \clef "bass" re'2 la4 ~|
               la2 } \\
             { re'4. re'4 re'8 |
               dod'2 dod'4 |
               si2 si4 |
               la2 s4 |
               re'4. re'4 re'8 |
               dod'2 dod'4 |
               si2 si4 |
               la2. |
               re2 la4 |
               re2 } >> la,4 |
          re2 la,4 |
          re8 mi fad mi re fad |
          mi,2 dod'8. re'32 mi' |
          mi8 mi' re' -\prall dod' si la |
          \appoggiatura la sold4. -\prall la8 mi fad |
          \appoggiatura fad sold4. \mordent la8 mi fad |
          << { sold la si \mordent dod' re' \mordent si |
               \clef "treble" dod' \mordent dod' re' \mordent mi' fad' \mordent sold' } \\
             { mi2. | la4 } >>
          la'8 \mordent mi' fad' \mordent sold' la' \mordent r |
          << { la dod' mi' la' dod'' la' |
               mi' sold' si' re'' mi' re'' |} \\
             { la2 s4 | mi'2 mi'4 } >>
          dod''8 -\prall si' la' la' dod'' la' |
          << { mi' sold' si' re'' mi' re'' } \\ { mi'2 mi'4 } >>|
          dod''8.[-\prall la'32*2/3 si' dod''] dod''4. -\prall si'16 dod'' |
          re''8 dod'' \pralldown re'' dod'' si' -\prall la' |
          sold' -\prall fad' mi' re' dod' -\prall si |
          \clef "bass" la4 dod mi \mordent |
          la,2 r4 |
          \voiceTwo la,,2. | \oneVoice \clef "treble"
          << { re'8 fad' mi' sol' \slurDown \afterGrace fad'4 ( { sol'32[ fad' sol'] }|
               sol'4 -\prall ) dod''4. -\prall } \\
             { re'4 mi' s | s \slurUp\appoggiatura { fad'16 [ sol' ]} la'4. } >> r8 |
          \clef "bass" <re, fad, la, re>2. |
        }
      >>
    >>
  }
  \layout { }
  \midi { }
}