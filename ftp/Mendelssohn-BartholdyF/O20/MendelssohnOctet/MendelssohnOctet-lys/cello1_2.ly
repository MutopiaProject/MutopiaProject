%Cello 1, 2nd movement
\version "2.19.80"

FirstCelloSecondMovement =
{
\override TupletBracket.bracket-visibility = ##f
 \relative c' {  
  \key c \minor
  \clef "bass"
  \time 6/8
  R2.
  ees4(\p d8 c8.) b16 c8 |
  c4( bes!8 aes8.) g16 aes8 |
  R2.*6 |
  r8 aes,-.(\< aes-. aes f' des\!) |
  bes(\> ees) ees(\! aes,) r r |
  R2.*2 |
  des2.\pp~ |
  des4.~ des8 r r |
  R2. |
  r4 r8 \deprecatedcresc f4( ees8) |
  b'4( c8) f,( g) g |
  b16\f( d f aes g8) aes,16( b d f ees8) |
  ees16( des) c8( b) c-. des4\accent |
  e8-. fis4\accent r4 r8 |
  r g,,\p^\markup{\bold\italic "pizz."} g r4 r8 |
  r \deprecateddim g g\! r4 r8 |
  r4 r8 c(\pp^\markup{\bold\italic "arco"} b bes |
  a aes g) c r r |
  r f,4 \deprecateddim c8-.( c-. c-. |
  c-.) \tuplet 3/2 {r16 ees'16[\(\ff f]} \tuplet 3/2 {ges[ ees c]\)} bes8\( \omit TupletNumber \tuplet 3/2 {a16\)[ ees'\( f]} \tuplet 3/2 {ges[ ees c]\)} |
  bes8\( \tuplet 3/2 {a16[\) aes\( bes]} \tuplet 3/2 {ces[ aes f\)]} ees8\( \tuplet 3/2 {d!16\)[ aes'\( bes]} \tuplet 3/2 {ces[ aes f]\)} |
  ees8\( \tuplet 3/2 {\stemUp d16\)[ \stemNeutral ges'\pp\( aes] } \tuplet 3/2 {bes[ ges f]} \tuplet 3/2 {ees[ ges aes]} \tuplet 3/2 {bes[ ges f]} \tuplet 3/2 {ees[ ges bes\)]} |
  
  %% Bar 30
  \tuplet 3/2 {f\([ aes bes]} \tuplet 3/2 {ces[_\markup{\bold\italic "sempre" \dynamic "pp"} aes ges]} \tuplet 3/2 {f[ aes ces]} \tuplet 3/2 {f,[ aes bes]} \tuplet 3/2 {ces[ aes ges]} \tuplet 3/2 {f[ aes ces\)]} |
  \tuplet 3/2 {g![\( bes c!]} \tuplet 3/2 {des[ c bes]} \tuplet 3/2 {aes[ bes g]} \tuplet 3/2 {f[ aes bes]} \tuplet 3/2 {c[ aes g]} \tuplet 3/2 {f[ aes c]\)} |
  \tuplet 3/2 {g[\( bes c]} \tuplet 3/2 {des[ bes aes]} \tuplet 3/2 {g[ bes des]} \tuplet 3/2 {g,[ bes c]} \tuplet 3/2 {des[ bes aes]} \tuplet 3/2 {g[ bes des]\)} |
  \tuplet 3/2 {a[\( c d!]} \tuplet 3/2 {ees[ d c]} \tuplet 3/2 {bes[ c a]} \tuplet 3/2 {g[ bes c]} \tuplet 3/2 {d[ bes a]} \tuplet 3/2 {g[ bes d]\)} |
  \tuplet 3/2 {g,[\( bes d]} \tuplet 3/2 {ees[ bes aes!]} \tuplet 3/2 {g[ bes ees]} \tuplet 3/2 {g,[ c e]\)} \tuplet 3/2 {e,[( g c])} \tuplet 3/2 {c,([ f aes)]} |
  \tuplet 3/2 {c,[\( ees! f]} \tuplet 3/2 {ges[ ees des]} \tuplet 3/2 {c[ ees ges]\)} \stemDown \tuplet 3/2 {bes,[\(\< d ees]\!} \stemNeutral \tuplet 3/2 {f[\> d c]\!}  \tuplet 3/2 {bes[ d f]\)} |
  \tuplet 3/2 {bes,[\(\< ees f]\!} \tuplet 3/2 {ges[\> ees bes\!]\)} \tuplet 3/2 {bes([ ees ges])} \tuplet 3/2 {bes,[\(\<_\markup{\bold\italic\large "cresc."} f' g\!]} \tuplet 3/2 {aes[\> f bes,]\!\)} \tuplet 3/2 {bes([ f' aes)]} |
  \tuplet 3/2 {bes,[( g' bes])} \tuplet 3/2 {bes,[( d f)]} \tuplet 3/2 {bes,[( e g])} \tuplet 3/2 {bes,[(\f f' aes])} \tuplet 3/2 {bes,[(\< ees ges])} \tuplet 3/2 {bes,([ d f)]} |
  \tuplet 3/2 {aes-.\ff[ aes-. g-.]} \tuplet 3/2 {f-.[ f-. ees-.]} \tuplet 3/2 {d[ d d]} \deprecateddim \tuplet 3/2 {ees8.:16} \tuplet 3/2 {f8.:16} \tuplet 3/2 {g8.:16} |
  aes4.\(\p \tuplet 3/2 {ees8.:16\)} \deprecateddim \tuplet 3/2 {d8.:16} \tuplet 3/2 {ees8.:16} |
  
  %% Bar 40
  ees2.\pp~ |
  ees( |
  f |
  g4. aes) |
  R2. |
  r4 r8 r ees'( bes |
  ees,2.) |
  f( |
  g4.) aes( |
  a4 bes16) bes-. a4( bes16) bes-. |
  a4( g8) r4 r8 |
  r4 r8 b4( c16) c-. |
  b4( c16) c-. b4( c8) |
  R2.*3 |
  \tuplet 3/2 {r16 ges\([ aes]} \tuplet 3/2 {bes[ ges f]} \tuplet 3/2 {ees[ ges bes]} \tuplet 3/2 {f[ aes bes]} \tuplet 3/2 {ces[ aes ges]} \tuplet 3/2 {f[ aes ces]\)} |
  \tuplet 3/2 {f,\([ aes bes]} \tuplet 3/2 {ces[ aes ges]} \tuplet 3/2 {f[ aes ces]} \tuplet 3/2 {g[ bes c]} \tuplet 3/2 {des[ c bes]} \tuplet 3/2 {aes[ bes g]} |
  f8\) r r r4 r8 |
  \tuplet 3/2 {r16 aes\([ bes]} \tuplet 3/2 {c[ aes g]} \tuplet 3/2 {f[ aes c]} \deprecatedcresc \tuplet 3/2 {g[ bes c]} \tuplet 3/2 {des[ bes aes]} \tuplet 3/2 {g[ bes des]\)} |
  \tuplet 3/2 {g,\([ bes c]} \tuplet 3/2 {des[ bes aes]} \tuplet 3/2 {g[ bes des]} \tuplet 3/2 {a[ c d]} \tuplet 3/2 {ees[ d c]} \tuplet 3/2 {bes[ c aes]} |
  bes8\) r r \tuplet 3/2 {r16 bes,\([\<_\markup{\bold\italic\large "cresc."} c]\!} \tuplet 3/2 {d\>[ bes a]\!} \tuplet 3/2 {g\)[ g( f)]} |
  \deprecatedcresc ees2. |
  r4 r8 \tuplet 3/2 {r16 fes[\<\( ges]\!} \tuplet 3/2 {aes\>[ fes des]\!\)} \tuplet 3/2 {aes'([ fes des)]} |
  aes'4. aes\< |
  g16\f[ r32 g' a16 r32 a b16 r32 b] c16[ r32 c ees16 r32 ees c16 r32 c] |
  g16[ r32 g fis16 r32 fis f16 r32 f] ees16[ r32 ees32 c16 r32 c ees16 r32 c] |
  \undo \omit TupletNumber
  \tuplet 3/2 {g'16[ g' fis]} 
  \omit TupletNumber
  \tuplet 3/2 {g[ d f]} \tuplet 3/2 {ees[ d c]} \tuplet 3/2 {b[ d b]} \tuplet 3/2 {g[ f d]} \tuplet 3/2 {g[ ees c]} |
  g16 r g8\p^\markup{\bold\italic "pizz."} g c, d bes' |
  ees, ees' ees, e c c' |
  f, g ees! aes aes' aes, |
  g r r g'4.^\markup{\bold\italic "arco"}~ |
  g8 r r c4.( |
  b8) r r r4 r8 |
  R2.*2 |
  c,2.(\pp |
  d |
  e4. f) |
  R2. |
  r4 r8 r c( g |
  aes!) bes16( c des ees f g aes bes c des) |
  f4( ees16 des c bes aes g f ees) |
  ees( f g aes bes c) des,4.( |
  d!4 ees16) ees-. d4( ees16) ees-. |
  d4( ees8) f4. |
  g( g8.) g16-.( f-. f-.) |
  g8. g16-.( aes-. aes-.) g4( aes8)~ |
  aes4. r8 g g( |
  c b bes a aes g) |
  c,( aes' g f4) r8 |
  R2. |
  ees'4(^\markup{\bold\italic "espress."} d8 c8.) b16 c8 |
  c4( bes!8 aes8.) g16 aes8 |
  R2.*3 |
  c,8-.( c-. c-.) c,4 r8 |
  c'8-.( c-. c-.) c,4 r8 |
  c'8-.( c-. c-.) c,8 r c'( |
  c,) r f( c\< f c\! |
  f\> c\! c-.) c-. r r |
  R2.
  \bar "|."
 }    
 \revert TupletBracket.bracket-visibility
}

FirstCelloSecondMovementTiming =
{
 s2.*1^\markup {" " \raise #4.0 \bold\huge "Andante"} |
 s2.*52 \pageBreak
 s2.
}