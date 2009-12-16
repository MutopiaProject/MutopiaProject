\new PianoStaff \notemode <<
  \new Staff <<
    \global
    {
      la''8\f |
      re''4 mi''8 dod'' re'' mi'' |
      fad''4 sol''8 mi''4 <dod'' mi''>8 |
      << { la' si'16 la' sol' fad' mi'4 la'8 } \\ { re'4 mi'8 dod' re' mi' } >> |
      << { la'4 la'8 } \\ { fad'8 sol' fad' } >> <la' mi'>4 la'8 |
      re'4 mi'8 dod' re' <mi'' mi'> |
      <la' fad'>4 <si' re'>8 <sold' mi'> <la' fad'> <si' sold'> |
      <dod'' la'>4 <re'' re'>8 << { si' dod'' re'' } \\ { mi'4 r8 } >> |
      mi''8 fad'' mi'' re'' dod'' << { si'32( dod'' re''16) } \\ sold'8 >> |
      <dod'' la' mi'>4 <si'' sold''>32( <dod''' la''> <re''' si''>16) << { dod'''[ si'' la''8] } \\ { la''[ mi''] } >> r8 |
      r4 <re'' si'>32 <mi'' dod''> <fad'' re''>16 <mi'' dod''> <re'' si'> <dod'' la'>8 <mi'' dod''>32 <fad'' re''> <sol'' mi''>16 |
      << { fad'' mi'' re'' fad'' sold'' la'' sold'' fad'' mi'' sold'' la'' si'' |
           la'' sold'' fad'' la'' si'' dod''' si'' la'' sold'' si'' dod''' re''' |
           dod''' si'' la''8 si''32( dod''' re'''16) dod'''[ si'' la''8] }
         \\ { re''8 la'16 re'' mi'' fad'' mi''8 si'16 mi'' fad'' sold'' |
              fad''8 dod''16 fad'' sold'' la'' mi''8. sold''16 la'' si'' |
              la''8 mi'' sold''32 ( la'' si''16 ) la''8[ mi''] } >> r8 |
      r4 <re'' si'>32( <mi'' dod''> <fad'' re''>16) <mi'' dod''> <re'' si'> <dod'' la'>8 <la'' mi''> |
      << { la''4. ~  la''4 la''8 |
           la''16 sold'' fad''8 la'' sold''16 la'' si'' la'' sold'' fad'' |
           mi''8 la''4 ~ la'' sold''8 |
           la'' mi''16 re'' dod'' si' la'8 mi'' la'' |
           re''4 mi''8 dod'' re'' mi'' | }
         \\ { fad''16 mi'' re''8 fad'' mi''16 re'' dod''8 mi'' |
              re''4. ~ re''4 re''8 |
              dod''16 si' dod'' mi'' re'' dod'' si' la' si' dod'' re'' si' |
              dod'' re'' dod'' si' la' sold' la' si' dod'' re'' mi'' dod'' |
              la'4 <si' mi'>8 <mi' la'>4 la'8 | } >>
      <fad'' re''> <sol'' mi''> <fad'' re''> <fad'' re''> <mi'' dod''>16 <mi'' dod''> <fad'' re''> <mi'' dod''> |
      <la'' re''> <si'' sol''> <la'' fad''> la' si' la' <sol'' dod''> <la'' re''> <sol'' dod''> la' si' la' |
      <fad'' re''> <sol'' mi''> <fad'' re''> <la' fad'> <si' sol'> <la' fad'> <dod'' mi'> <re'' fad'> <dod'' mi'>8 <mi'' dod''> |
      r4 <mi'' dod''>32( <fad'' re''> <sol'' mi''>16) << { fad''[ mi'' re''8] } \\ { re''8[ la'] } >> r |
      r4 <sol'' mi''>32( <la'' fad''> <si'' sol''>16) << { <la'' fad''> <sol'' mi''> <fad'' re''> la'' si'' dod''' }
                                                         \\ { re''8 la' <mi'' la''> } >> |
      << { re'''8 dod''' si'' la'' sol'' fad'' } \\ { <fad'' re''>4 <sol'' re''>8 re''4 <re'' la'>8 } >> |
      <mi' re' si>4.~ <mi' re' si>8 <mi'' re'' si'> <mi'' re'' si'> |
      << { mi''16 la'' dod''' la'' mi'' la'' dod'' re'' mi'' dod'' la' la'' }
         \\ { dod''4. la'16 si' dod'' la' la'8 } >> |
      si''8 la'' sol'' fad'' mi'' re'' |
      do'16 la' do'' la' fad' la' do' la' do'' la' fad' la' |
      do' la' do'' la' fad' la' do' la' do'' la' fad' la' |
      <si' sol' re'>4 <sol'' si' mi''>8 <mi'' dod''>4 <dod'''! mi'' la''>8 |
      <re''' fad'' la''> la'16 sol' fad' mi' re'8 fad'' la'' |
      re''4 mi''8 dod'' re'' mi'' |
      fad'' sol'' fad'' fad''-\trill mi'' la' |
      la''16 si'' la'' la' si' la' sol'' la'' sol'' la' si' la' |
      fad'' sol'' fad'' la' si' la' mi'' fad'' mi'' la'' si'' dod''' |
      \override Beam #'auto-knee-gap = #1 re''' dod''' re''' la si do' si la sol si' dod''! re'' |
      mi'' re'' mi'' si dod' re' dod' si la dod'' re'' mi'' |
      fad'' mi'' fad'' dod' re' mi' re' dod' si re' mi' fad' |
      mi' re' dod' mi' fad' sol' fad' mi' re' la'' si'' dod''' \revert Beam #'auto-knee-gap |
      re'''8 dod''' si'' la'' sol'' fad'' |
      mi'4.-\trill mi'-\trill |
      mi'4-\trill re''8 dod''16 mi'' la' sol'' fad'' re'' |
      mi'' sol' fad' re'' mi' dod'' re''8 re'-\fermata r |
    }
  >>
  \new Staff <<
    \global { \clef "bass" \grace s8 }
    {
      \hideNotes \grace re,8( \unHideNotes re, ) |
      r4 r8 r4 la8 |
      re4 mi8 dod re mi |
      fad4 sol8 la si dod' |
      re' mi' re' dod'4 dod'8 |
      si4 sold8 la4 r8 |
      r4 r8 r4 mi'8 |
      la4 si8 sold la si |
      dod' re' dod' si4 mi8 |
      la4 r8 r4 re8 |
      la4 r8 r4 la,8 |
      re4 si,8 mi4 dod8 |
      fad4 fad8 sold4 sold8 |
      la4 r8 r4 mi8 |
      la4 r8 r4 dod'8 |
      re'16 dod' si8 re' dod'16 si la8 dod' |
      si4. ~ si4 mi8 |
      la fad4 re mi8 |
      la,4. la,4 la8 |
      fad4 sol8 la si dod' |
      re' dod' re' la la sol |
      fad fad fad mi mi mi |
      re4. la,4 la8 |
      re'4 r8 r4 sol8 |
      re'4 r8 r4 dod'8 |
      si la sol fad mi re |
      sold,4. ~ sold,8 sold sold |
      la2. |
      r4 r8 r4 <re fad>8 |
      <re fad>4 <re la>8 <re fad>4 <re la>8 |
      << { fad4 la8 fad4 } \\ { re4. ~ re4 } >> re8 |
      sol4 mi8 la4 la,8 |
      re4. ~ re4 re8 |
      fad sol mi la si dod' |
      re' mi' re' la4 sol8 |
      fad4 re'8 mi4 dod'8 |
      re4 re'8 dod'4 la8 |
      fad4 re8 sol, si la |
      sold4 sold,8 la, dod' si |
      lad4 lad,8 si, re si, |
      dod la, dod re fad re |
      si la sol fad mi re |
      sold, si, la, sold, si, la, |
      sold, si, sold, la, dod re |
      sol la la, re4 \fermata r8 |

    }
  >>
>>
