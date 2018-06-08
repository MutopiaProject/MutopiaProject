%Cello 2, 2nd movement
\version "2.19.80"

SecondCelloSecondMovement =
{
\override TupletBracket.bracket-visibility = ##f
 \relative c' {  
  \key c \minor
  \clef "bass"
  \time 6/8
  R2.
  c4\p( b8 g4.) |
  c,2. |
  R2.*6 |
  r8 f,(\< fes ees des bes'\!) |
  << {ees,4.( } {s4\> s8\! } >> aes8) r r |
  R2.*2 |
  des,2.\pp~ |
  des4.~ des8 r r |
  R2.*3 |
  f4\f( ees8) b'4( c8) |
  
  %% Bar 20
  f,8( g f) ees-. f4\accent |
  g8-. a4\accent b8\p^\markup{\bold\italic "pizz."} c g |
  r4 r8 r \deprecateddim g g\! |
  r4 r8 c\pp(^\markup{\bold\italic "arco"} b bes |
  a aes g) c r r |
  r4 r8 r f,( g) |
  c r r r4 r8 |
  r8 \tuplet 3/2 {r16 ees[\(\ff f]} \tuplet 3/2 {ges[ ees c]\)} bes8\( \omit TupletNumber \tuplet 3/2 {a16\)[ ees'\( f]} \tuplet 3/2 {ges[ ees c]\)} |
  bes8\( \tuplet 3/2 {a16\)[ aes\( bes]} \tuplet 3/2 {ces[ aes f\)]} ees8\( \tuplet 3/2 {d!16\)[ aes'\( bes]} \tuplet 3/2 {ces[ aes f]\)} |
  ees8( d16) r r8 ees4.\pp~ |
  ees( d |
  c4) r8 f4.~ |
  f( e |
  d4) r8 g4.~ |
  g aes!( |
  a4.) bes~ |
  bes \deprecatedcresc bes |
  bes8 bes bes bes16\f bes bes\< bes bes bes |
  \undo \omit TupletNumber 
  
  \tuplet 3/2 {aes'\ff[ aes g]} \tuplet 3/2 {f[ f ees]} \tuplet 3/2 {d[ d d]} \deprecateddim \omit TupletNumber \tuplet 3/2 {ees8.:16} \tuplet 3/2 {f8.:16} \tuplet 3/2 {g8.:16} |
  aes8\p r r  \tuplet 3/2 {ees,8.:16} \deprecateddim \tuplet 3/2 {f8.:16} \tuplet 3/2 {g8.:16} |
  \undo \omit TupletNumber
  
  %% Bar 40
  aes4.~\pp aes8( ces aes) |
  ees2.( |
  f |
  g4. aes) |
  R2. |
  r4 r8 r ees'( bes |
  ees,2.) |
  f( |
  g4.) aes( |
  d,4 g16) g-. d4( g16) g-. |
  d4( g8) r4 r8 |
  r4 r8 g4( c16) c-. |
  g4( c16) c-. g4( c8) |
  r4 r8 r4 bes8(^\markup{\bold\italic "dolce"} |
  c f, g aes4) bes8( |
  c f, g aes4) bes8( |
  ees,) r r r4 r8 |
  r4 r8 r4 c'8^\markup{\bold\italic "dolce"}( |
  des g, a bes4) c8\( |
  f,2. |
  << {ees!4. d!4\)} {s8.\< s8.\> s4\!} >> r8 |
  \deprecatedcresc g2. |
  r4 r8 \tuplet 3/2 {r16 bes\(\<[ c]} \tuplet 3/2 {des\>[ bes aes]\!} \tuplet 3/2 {g[ f ees]\)} |
  \deprecatedcresc aes2.~ |
  \omit TupletNumber aes8 r \tuplet 3/2 {r16 c'[\<\( d!\!]} \tuplet 3/2 {ees[\> c aes]\)\!} r8 \tuplet 3/2 {r16 c,([ ees])} |
  g,16\f[ r32 g a16 r32 a b16 r32 b] c16[ r32 c ees16 r32 ees c16 r32 c] |
  g16[ r32 g fis16 r32 fis f16 r32 f] ees16[ r32 ees c16 r32 c ees16 r32 c] |
  \undo \omit TupletNumber \tuplet 3/2 {g'16[ g' fis]} \omit TupletNumber \tuplet 3/2 {g[ d f]} \tuplet 3/2 {ees[ d c]} \tuplet 3/2 {b[ d b]} \tuplet 3/2 {g[ f d]} \tuplet 3/2 {g[ ees c]} |
  g'16 r r8 r r4 r8 |
  R2.*2 |
  
  %% Bar 71
  g8-.\p( g-. g-. g-. g-. g-.) |
  g-.( g-. g-. c-. c-. c-.) |
  g r g'-.( \deprecateddim a-. a-. a-.) |
  b-.(\pp b-. g-.) r g, r |
  R2. |
  c,2.( |
  d |
  e4. f) |
  R2. |
  r4 r8 r c'( g |
  aes!2.) |
  bes |
  \stemUp
  c4.( des |
  g,4 c16) c-. g4( c16) c-. \stemNeutral |
  g4( c8) r4 r8 |
  r4 r8 c,8. c16-.( f-. f-.) |
  c8. c16-.( f-. f-.) f4.~ |
  f r4 g8(^\markup{\bold\italic\whiteout "sul C."}_\markup{\bold\italic "dolce"} |
  aes d, e f4 g8) |
  aes( d, e f4 g8) |
  aes( f g aes f aes16 f) |
  c'2.~ |
  c |
  R2.*3 |
  f,8-.( f-. f-.) c4 r8 |
  f-.( f-. f-.) c4 r8 |
  f-.( f-. f-.) c8 r f( |
  c) r r r4 r8 |
  r4 r8 r4 c8 |
  c r r r4 r8 |
  \bar "|."
  
 }
 \undo \omit TupletNumber
}

SecondCelloSecondMovementTiming =
{
 s2.*1^\markup {" " \raise #4.0 \bold\huge "Andante"} |
 s2.*95 \pageBreak
}