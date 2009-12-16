\new PianoStaff \notemode <<
  \new Staff = "up" <<
    \global
    { \override Staff.NoteCollision #'merge-differently-dotted = ##t
      R1*5 |
      \updown la4. si8 dod' re' mi' si |
      dod'[ la] \upup fad'2 mi'4 |
      la re'2 dod'4 |
      \updown fad4. fad8 sold mi la4 ~|
      la8 sold la si dod' re' mi' sol |
      \upup re'4. mi'8 fad' sol' la' mi' |
      fad' re' si'2 la'4 |
      re' sol'2 fad'4 |
      si4. si8 dod' la
      << { la'4 | sol'2 fad'4 fad'8 mi' |
           la'4. si'8 dod'' re'' mi'' si' |
           dod'' la' fad''2 mi''4 | } \\
         { re'4 ~|
           re' dod' re'2 |
           re'8 mi' fad' sol' mi'4. re'8 | }>>
      << { la'4 re''2 dod''4 |
           fad''2 mi'' |
           re'' dod'' } \\
         { s4 fad' mi' la' |
           fad'4 <fad' la'> <sold' si'> <la' mi'> |
           <fad' la'> << \new Voice { \voiceThree sold'4 } { mi'8[ re'] } >> <mi' la'>2 } >>
      re''4. mi''8 fad'' sol'' la'' mi'' |
      fad'' re'' si''2 la''4 |
      re'' sol''2 fad''4 |
      si''4. dod'''16 si'' dod'''8 la'' re''' fad'' |
      sol'' mi'' la'' sol'' fad'' re'' fad'' sold'' |
      << { la'' mi'' la''2 sold''4 |
           la'' r8 la'' sold''4 dod''' |
           r8 dod''' si'' la'' sold'' si'' mi''4 |
           r8 la'' re'''2 dod'''4 |
           si''2 la'' | } \\
         { la'4. si'8 dod'' re'' mi'' si' |
           dod'' la' fad''2 mi''4 |
           la' re''2 dod''4 |
           fad''4. sold''16 fad'' sold''8 mi'' la''4 ~|
           la''8 re'' sol''!4 ~ sol''8 sol'' fad'' mi'' |} >>
      <re''' fad'' la''>4 r8 <dod''' sol'' mi''> <re''' la'' fad''>4 <la'' dod'' mi''> |
      << { la''8[ fad''] } \\ re''4 >> <re''' fad'' re''>4 <dod'' mi'' sol''> <fad'' la' dod''> |
      <re'' fad'> <mi'' si'> <la' dod'' mi'> <la'' dod'' fad''> |
      <la'' re'' dod'' fad''> <sol'' si' re''> <sol'' la' mi''> <fad'' la'' la'> |
      << <sol'' mi''>2 \\ { si'4 la' } >> <fad'' re'' la'>4 r8 fad''8 |
      << { sol'' mi'' la'' sol'' fad'' re'' la''4 ~|
           la'' sold'' la''8 dod''' re''' si'' |} \\
         { r2 r4 r8 dod'' |
           re'' si' mi'' re'' dod'' la' fad'' sold'' |} >>
      <dod''' la'' mi''>4 r8 <si'' sold'' mi''>
      << { la''4 sold'' } \\ { mi''8 <fad'' si'> <mi'' si'> <re'' si'> } >>|
      <la'' dod'' mi''>4 la' sold' <dod'' sold''> |
      <fad'' dod''> << <si'' fad''> \\ { si'8 la' } >> <mi' sold'>4 <mi'' sold' dod''>4 |
      << { <mi'' dod''>4 re'' } \\ { la'4. la'8 } >> <mi'' si'>4 <la'' mi'' dod''> |
      << { <si'' fad''>4 mi'' } \\ { <re'' si'>4. <re'' si'>8 } >> <mi'' dod'' la'>4 ~ la'8 si' |
      << { dod''8 re'' mi''4 ~ mi''8 re''16 dod'' si'8 dod'' |
           re'' mi'' fad''4 ~ fad''8 mi''16 re'' dod''8 re'' | } \\
         { mi'4. fad'8 sol' la' si'4 ~|
           si'8 la'16 sol' fad'8 sol' la'2 } >>|
      <la'' mi' dod''>4 << mi'' \\ { la'8[ sol'] } >> <fad'' re'' fad'>4 ~ re''8 mi'' |
      << { fad'' sol'' la''4 ~ la''8 sol''16 fad'' mi''8 fad'' |
           sol'' la'' si''4 ~ si''8 la''16 sol'' fad''8 sol'' |
           la'' si''16 dod''' re'''8 dod''' si'' la'' sol'' fad'' |
           mi''4 la''2 sol''4 ~|
           sol'' fad'' mi''2 |
           re''4. mi''8 fad'' sol'' la'' mi'' |
           fad''4 r r2 |
           r r4 fad'' |
           si' mi''2 <re''~ si'>4 |
           <re'' si'> <la' dod''> <la' si'> <sold' mi''> } \\
         { la'4. si'8 dod'' re'' mi''4 ~|
           mi''8 re''16 dod'' si'8 dod'' re''4. re''8 |
           dod'' re''16 mi'' fad''8 mi'' re''4 mi''8 <re'' si'> |
           dod''4. re''16 dod'' si'2 |
           dod''4 re''2 dod''4 |
           la' fad' s2 |
           la'8 fad' si'2 la'4 |
           re' sol'2 fad'4 |
           sold'4. fad'16 mi' la'4. sold'16 fad' |
           mi'2 mi' |} >>
      <la' mi''>8 re'' dod'' si' la'4 r |
      fad''4. mi''8 re'' dod'' si' fad'' |
      << { fad''4 mi'' fad''4. sold''8 |
           lad'' si'' dod'''2 si''4 |
           si'' la'' sold''2 |
           fad''4. mi''8 red'' dod'' si'4 |
           si'8 la' sold' <fad' re'> <mi' dod'> <re' si> dod' si |
           r2 re''4. dod''8 |
           si'4 mi'' ~ mi''8 re'' dod'' si' |
           la' si'16 dod'' re''4 ~ re''8 do'' re''4 |
           mi''4. fad''16 sol'' la''4. sol''8 |
           fad''4 sol''2 fad''4 |
           <sol'' re''>4 r si'8 dod'' re''4 ~|
           re''8 dod''16 si' la'8 si' dod'' re'' mi''4 ~|
           mi''8 re''16 dod'' si'8 dod'' re'' mi'' fad'' sol'' |
           la''4 la''2 sold''4 |
           la'' mi'' ~ mi''8 re'' dod''4 |
           fad''4. mi''8 re'' dod'' si' dod''16 re'' |
           mi''4. re''8 dod'' si' la' si'16 dod'' |
           re''4. mi''8 fad'' sol'' la'' mi'' | } \\
         { s4 si'2 <lad' dod''>4 |
           dod''4 lad''8 sold'' fad''4. fad''8 |
           <mid'' sold''>4 fad''2 mid''4 |
           lad'8 sold' fad'4 r2 |
           mi'4. s8 s2 |
           la'4. sol'8 fad'4 si' |
           si'8 la' sol' fad' mi' fad'16 sol' la'4 |
           la'8 sol' fad' mi' re'4 si'8 la' |
           sol' la'16 si' do''2 do''4 |
           do'' si' la'2 |
           sol'4. la'8 re'4. mi'8 |
           fad' sol' la'4 ~ la'8 sol'16 fad' mi'8 fad' |
           sol' la' si'2 la'4 |
           <la' mi''>4 <la' mi''> re''2 |
           dod''4 r r la' ~|
           la'8 sol' fad'4 si'4. la'8 |
           sol' fad' mi' fad'16 sol' la'4. sol'8 |
           fad'4 sol' <la' re''>4 dod'' } >>
      <fad'' la' re''>2 <mi'' la' dod''>4
      << { mi'' ~| mi''8 re'' dod'' si' la'4 re'' ~| re'' } \\
         { la' | sol'2 fad' | mi'4 } >>
      <mi'' dod'' la'> <fad'' re'' la'> <re''' la'' fad''> |
      <dod''' mi'' la''> <re''' fad'' la''>
      << { re''' dod''' |
           re'''4 la'' ~ la''2 |
           la''8 sol'' fad'' mi'' fad'' sol'' la''4 |
           sol''4. la''8 si'' dod''' re''' la'' |
           si'' la'' si'' la'' sol'' re''' dod''' si'' |} \\
         { <mi'' la''>2 |
           <fad'' re''>2 <la' fad''>8 sol'' fad'' mi'' |
           re''4 la' re'' fad''8 mi'' |
           re''4 mi''8 fad'' sol''4 la''8 re'' |
           re''4 sol''8 fad'' mi'' fad'' mi'' re'' | } >>
      <dod''' mi'' la''>2 <dod''' mi'' la''> |
      R1\fermataMarkup |
      <re''' la'' re''>2 <re''' fad'' la''> |
      <re''' mi'' la''>2 <dod''' mi'' la''> |
      <re''' fad'' la''>\breve*1/2 |
    }
  >>
  \new Staff = "down" <<
    \global \clef "bass"
    { \override Staff.NoteCollision #'merge-differently-dotted = ##t
      re4. mi8 fad sol la mi |
      fad re si2 la4 |
      re sol2 fad4 |
      si4. si8 dod' la re'4 ~|
      re' dod' re' fad8 mi |
      \voiceTwo re mi fad sold la4 la, |
      r la, sold, dod |
      r fad mi la |
      r re2 dod4 |
      si,2 la,4 r |
      \oneVoice fad8 si la sol re'4 dod' |
      re' re dod fad |
      r si la re' |
      sol sol2 fad4 |
      mi2 re4. mi8 |
      fad4 re la la, |
      mi' <dod' la> sold dod' |
      r s2. |
      r4 re2 dod4 |
      si,2 la, |
      R1*5 |
      s1*5 |
      re4. mi8 fad sol la mi |
      fad8 re si2 la4 |
      re sol2 fad4 |
      si4. si8 dod' la re'4 ~|
      re' dod' re'2 
      R1*2 |
      la,4. si,8 dod re mi si, |
      dod la, re2 dod4 |
      la, re2 dod4 |
      fad4. fad8 sold mi la4 ~|
      la sold la la ~|
      << { \voiceOne la8 si dod' re' mi'4. re'16 dod' |
           si8 dod' re' mi' fad'4. mi'16 re' | } \\
         { r4 mi4 ~ mi8 fad sol la |
           si4. la16 sol fad8 sol la4 | } >>
      la8 si dod'4 re' re ~|
      << { re8 mi fad sol la4. sol16 fad |
           mi8 fad sol la si4. si8 } \\
         { r4 la,4 ~ la,8 si, dod re |
           mi4. re16 dod si,8 dod re mi | } >>
      <fad la> <mi sol> <re fad> <mi sol>16 <fad la> <sol si>8 fad mi fad16 sol |
      la8 sol fad mi re4 mi |
      la,8 la si la sol mi la sol |
      << { s4 re' ~ re'8 mi' \downup fad' sol' } \\ { fad8 mi re4 r2 } >>|
      re4. mi8 fad sol la fad |
      si4. dod'16 si dod'8 la re'4 ~|
      re' dod' fad si |
      sold la mi4. re8 |
      dod si, la,4 << { dod'8 re' mi'4 ~|
                        mi' re'8 dod' si dod' re' dod' } \\
                      { la4. sol8 |
                        fad4 lad si4. la8 | } >>
      << si4 \\ sol2 >> fad |
      fad4. mi8 re2 |
      dod4 si, dod2 |
      fad,4 fad si4. la8 |
      sold fad mi4 la4. sol8 |
      << { r4 re' ~ re'8 dod' si4 |
           mi'4. re'8 dod' si la si16 dod' |
           re'4. do'8 si4 si |
           mi'4. re'8 do' si la4 |
           la si8 do' } \\
         { fad8 mi re4 r2 |
           r la4. sol8 |
           fad4 si ~ si8 la sol fad |
           mi4 la ~ la8 sol fad mi |
           re2 } >> re'4. do'8 |
      << { re'4 sol ~ sol8 la si dod' |
           re'4. dod'16 si la8 si dod' re' |
           mi'4. re'16 dod' } \\
         { si8 la sol2 re4 ~|
           re8 mi fad sol la4. sol16 fad |
           mi8 fad sol la } >> si dod' re'4 ~|
      re' dod' si2 |
      << { mi'4. re'8 dod'4 fad' ~|
           fad'8 mi' re' dod' si4 mi' ~|
           mi'8 re' dod' si la si16 dod' re'4 } \\
         { la2 la4. sol8 |
           fad4 si si8 la sol fad |
           mi fad16 sol la4 la8 sol fad mi | } >>
         re dod si,4 la,2 |
      re8 mi fad sol la2 |
      la1 |
      la |
      la4 re la2 |
      re1 |
      re2 do |
      si,4 si2 fad4 |
      sol re si mi |
      sol1 |
      R1^\fermataMarkup |
      fad2 re |
      la la, |
      <re, re>\breve*1/2 |
    }
  >>
>>
