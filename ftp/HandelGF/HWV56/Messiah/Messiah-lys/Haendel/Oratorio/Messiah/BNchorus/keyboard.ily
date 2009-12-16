\new PianoStaff \notemode <<
  \new Staff = "up" <<
    \global
    {
      r4 r8 <la'' fad'' re''> <re''' la'' re''>4 <la'' fad'' re''> |
      <si'' re'' si'> <la'' dod'' mi''>8 <sol'' dod'' mi''> <fad'' re''> <re'' si''> << sol''4 \\ { <dod'' mi''>8 <si' re''> } >> |
      <sol'' mi'' la'>4 <fad'' la' re''> << { mi''4. re''8 } \\ { <la' re''>4 <mi' dod''> } >> |
      << { re''4 la'' re''' la'' |
           si'' la''8 sol'' fad''4 mi'' |
           la'' mi'' fad'' mi''8 re'' |
           dod'' mi'' la'' mi'' fad'' mi''16 re'' dod''8 si'16 dod'' |
           re''8 mi'' fad'' sol'' la'' la' si' la'16 si' |
           dod''4 re''2 dod''4 | } \\
         { s8 la' re'' la' si' la'16 sol' fad'8 mi'16 fad' |
           sol'8 si' dod'' si'16 dod'' re''8 re' la' mi' |
           fad' mi'16 re' dod'8 si16 dod' re'8 fad' sold' fad'16 sold' |
           la'4 dod''8. si'16 la'4. sol'!8 |
           fad'4. mi''8 re''4 sol'8 fad' |
           mi'4 la' sol'4. sol'8 |
         } >>

      
      <re'' fad'>4 la' re'' la' |
      si' la'8 sol' << { r8 la' re'' la' } \\ fad'2 >> |
      << { si'8 la'16 sol' fad'8 mi'16 fad' sol'8 la' si' do'' |
           re''4 sol''2 fad''4 |
           mi'' r r2 | } \\
         { re'4. do'8 si4. la'8 |
           sol'4. mi''8 la'4 \change Staff = "down" \voiceOne re'4 ~ |
           re'4 \change Staff = "up" \voiceTwo dod'8 si dod' re' mi' la | } >>
      r8 si' mi'' si' dod'' si'16 la' sold'8 fad'16 sold' |
      la'8 si' dod'' re'' mi''4 << { dod''8 si' |
                                     la'2 <la' fad'>4 si' | } \\
                                   { mi'4 |
                                     dod' mi' fad' mi'8 re' } >>
      <mi' dod'>4 re' ~ re' dod'8 re' |
      << { mi'4. mi'8 } \\ { r8 si mi' si } >> <dod' mi'> \change Staff = "down" \voiceOne si16 la sold8 fad16 sold |
      la8 fad si la \change Staff = "up" \oneVoice si'8\rest mi' la' mi' |
      fad' mi'16 re' dod'8 si16 dod' re'8 dod' si mi' |
      r8 mi''8[ la'' mi''] << { fad'' mi''16 re'' dod''8 si'16 dod'' } \\ { la'4. sol'8 } >>|
      re''8 mi'' fad'' sol'' la'' la'16 si' do''8 re''16 do'' |
      << { si'4 mi''8 re'' dod''4 fad''8 mi'' |
           re'' mi''16 fad'' sol''4 ~ sol''8 fad''16 mi'' fad''8 mi''16 re'' |
           dod''8 re'' mi''4 la'8 si'16 la' sol'8 fad' | } \\
         { re'8 mi'16 fad' sol'8 fad' mi' fad'16 sol' la'8 sol' |
           fad'4 mi''8 re'' la'2 |
           la'4. sol'8 fad' sol'16 fad' mi'8 re' } >>
      <mi' dod'>8 <mi' dod'> <mi' dod' la> mi' fad' << { s8 la'4 } \\ { la'8[ la' <mi' sol'>8] } >> |
      << { re''4 la' si' la'8 sol' } \\ { <fad' re'>4. dod'8 re'8 sol'16 fad' mi'8 re'16 mi' } >>|
      <la fad'>4 <mi' la>8 <fad' la> <sol' re' si>4 <la' fad' re'> |
      <si' re' si> <dod'' sol' mi'> <re'' la' fad'> <mi'' la' mi'>8 <mi'' la' mi'> |
      <fad'' la' re''>4 << sol'' \\ { <sol' re''>8 mi''16 re'' } >> <sol'' mi'' dod''>4 <fad'' re''> |
      << { <fad'' re''> <mi'' dod''> <mi'' la'> ~ <re'' la'> } \\ { fad'4. sol'8 fad'4. sol'16 fad' } >>|
      <dod'' sol' mi'>4 <re'' fad' la'> <re'' mi' la'> <dod'' mi' la'> |
      <re'' fad' la'> r8 <la'' fad''>\f <re''' la''>4 <la'' fad'' re''> |
      <si'' re''> <la'' dod'' mi''>8 <sol'' dod'' mi''> <fad'' re''> <re'' si'> << sol''4 \\ { <dod'' mi''>8 <re'' si'> } >> |
      << { <sol'' mi''>4 <fad'' re''> mi''4. re''8 } \\ { la'2. <mi' dod''>4 } >>|
      <re'' fad'>1 |
    }
  >>
  \new Staff = "down" <<
    \global \clef "bass"
    {
      re4 r8 re fad4 re |
      sol la8 la si2 |
      dod'4 re' la4. la8 |
      re8 s4. s2 |
      s1*2 |
      r4 la re' la |
      si la8 sol fad4 sol ~|
      sol fad mi4. mi8 |
      re8 la re' la si la16 sol fad8 mi16 fad |
      sol8 si dod' si16 dod' re'4 re |
      sol re mi re8 do |
      si,4. dod8 re mi fad sol |
      la4. mi8 la, si, dod re |
      <mi sol>4 \clef "treble"  mi' la' mi' |
      fad' mi'8 re' dod' \clef "bass" mi la mi |
      fad mi16 re dod8 si,16 dod re8 fad sold fad16 sold |
      la8 fad si la sold mi la4 ~|
      la sold8 sold \voiceTwo la4 mi ~|
      << { s2 sold4 la } \\ { mi re2 dod4 } >> |\oneVoice
      <la re> <sold mi> <la fad> sold |
      << dod'2 \\ { la4 la } >> re' la |
      << { fad'4. mi'8 re'2 } \\ { si4 la8 sol fad2 } >> |
      sol8 fad mi fad16 sol la8 sol fad sol16 la |
      si4. la16 si dod'4 re' |
      la4. la8 la2 |
      la2 r8 la re' la |
      si la16 sol fad8 mi16 fad sol8 si, dod si,16 dod |
      re8 la,16 si, do8 re16 do si,8 sol fad mi16 fad |
      sol8 fad16 sol mi8 la16 sol fad8 mi16 re dod8 si,16 dod |
      re8 dod16 re si,8 mi la,2 |
      la,1 ~|
      la,2. la,4 |
      re r8 re fad4 re |
      sol la8 la si2 |
      dod'4 re' la la, |
      <re la>1 |
    }
  >>
>>
