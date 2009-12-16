\new PianoStaff \notemode <<
  \new Staff = "up" <<
    \global
    { r8 |
      r <si' sol'> <mi'' si' sol'>4 r8 << { la' <fad'' do''>4 } \\ { fad'16. mi'32 fad'4 } >>|
      r8 <la' fad'> <fad'' red'' la'>4 r8 << { si' <mi'' si'>4 } \\ { sol'16. fad'32 mi'4 } >>|
      r2 r8 fad'8 << { si'4 ~} \\ { r8 <fad' si> } >> |
      << { si'4 la'8 mi'' } \\ { <mi' do'>2 } >> <red'' fad'>4 r8 si'8 |
      sol'' <fad'' red''> <mi'' si'> <re'' la'> <do'' sol'> <si' fad'> r <si' sol'> ~ |
      << { \voiceOne si'[ mi'' la'8. si'16] } \new Voice { \voiceTwo mi'2 } >> \oneVoice <si' red' fad'>4 r |
      r8 re''\p sol''4 r8 fad'' la''4 |
      r8 sold'' si''4 r8 la' la''4 |
      r8 do'' la''4 r8 sol' sol''4 |
      r8 si' mi''4 r8 la' sol''4 |
      r8 la' fad''4 r8 sol' mi''4 |
      r8 mi' re' mi' si4 r |
      r8 do' si do' sol4 r8 si'8 |
      sol'' <fad'' red''> <mi'' si'> <re'' la'> <do'' sol'> <si' fad'> r <si' sol'> ~ |
      << { \voiceOne si'[ mi'' la'8. si'16] } \new Voice { \voiceTwo mi'2 } >> \oneVoice <si' red' fad'>4 r |
    }
  >>
  \new Staff = "down" <<
    \global \clef "bass"
    {
      r8 |
      r mi sol mi r fad la fad |
      r red si, red r mi sol mi |
      r mi sol fad mi re r re |
      do2 si,4 r |
      r8 si, sol fad mi re r mi |
      do2 si,4 r |
      r8 sol si sol r re fad re |
      r si sold mi r la do' la |
      r la fad re r sol si sol |
      r mi sol mi r dod mi dod |
      r red fad red r mi sol mi |
      r do si, do sol,4 r |
      r8 la, sol, la, mi,4 r |
      r8 si, sol fad mi re r mi |
      do2 si,4 r |
    }
  >>
>>
