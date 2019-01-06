%Cello 2, 1st movement
\version "2.19.80"

SecondCelloFirstMovement =
{
 \relative c {  
  \key c \minor
  \clef "bass"
  \time 4/4
  ees,1\p
  \repeat volta 2 {
   ees
   %<< {d } {s4. s8 \cresc s2} >> |
   d \cresc
   c2(\f g') |
   aes1\fp |
   f |
   ees |
   d2(\f bes') |
   ees,8 r r ees( g bes ees g) |
   c,4(\sf bes8) ees,( g bes ees g) |
   c,4(\sf bes8) ees,( g bes ees g) |
   c,,2( d)\sf |
   ees4. ees8( g bes ees g) |
   c,4(\sf bes8) ees,( g bes ees g) |
   c,4(\sf bes8) ees,( g bes ees g) |
   c,,2\p\accent d\accent |
   e\accent \deprecatedcresc f\accent |
   g\accent \deprecatedcresc a\accent |
   b2\f\accent c4\accent aes!\accent |
   bes!2:16\ff bes2:16 |
   ees,8 r r4 r2 |
   r4 ees'(\p d ees |
   bes2) r |
   r4 e( f aes |
   c2) r4 f,( |
   e) r r f( |
   c) r r a( |
   bes1) |
   ees,4 r r f'( |
   e) r r f( |
   c) r r a(\sf |
   bes2 \deprecatedcresc aes'! |
   g2. aes4) |
   bes1\f~ |
   \deprecateddim bes |
   aes,\p |
   ees |
   ees |
   \deprecatedcresc d |
   des\f |
   c\p |
   c |
   des2 -\tweak DynamicTextSpanner.bound-details.left.padding -1 \cresc e\f |
   g <c, c'> |
   f4. c''8( aes f c aes) |
   des4\sf( c8) c'( aes f c aes) |
   des4\sf( c8) aes'( f c aes f) |
   d!2\fp e\accent |
   \deprecatedcresc f\accent g\accent |
   aes\accent g2:16\f |
   c,2:16 d4:16 ees4:16 |
   d8 r r4 r2 |
   R1 |
   r2 r4 fis\p( |
   \deprecateddim g1 |
   d4)\! r r fis(\pp |
   g2)~ g8 g-.( g-. g-.) |
   \deprecatedcresc ges1( |
   f8)\p f4 f f f8~ |
   f f4 f f f8~ |
   \deprecatedcresc f f f f f f f f |
   f f f f f f f f |
   f f f f\f( a b c d) |
   c4\accent( a8) \deprecatedcresc f( a b c d) |
   c2\accent a\accent |
   <f c'>4\accent\ff <f c'>4\accent <f c'>4\accent <f c'>4\accent |
   <f c'>8 f f f f f f f |
   bes r r4 r2 |
   R1*3 |
   bes1_\markup{\dynamic "sf pp"}~ |
   bes( |
   f |
   bes8) r r4 d8^\markup{\bold\italic "pizz."} r r4 |
   g8 r r4 d,8 r r4 |
   g1^\markup{\bold\italic "arco"}_\markup{\dynamic "sf pp"}~ |
   g~ |
   g2( d |
   
   %% Bar 80
   g4) r r2 |
   g1_\markup{\dynamic "sf pp"}~ |
   g( |
   d)( |
   g8) r r4 r2 |
   g1( |
   c8) r r4 ees,8^\markup{\bold\italic "pizz."} r r4 |
   aes8 r r4 ees8 r r4 |
   aes8 bes c d! ees f g aes |
   bes, c d ees f g a bes |
   c, ees c a a c f c |
   c' a ees c c ees a c |
   c a a ees d d' d, d' |
   d, d' d, d' g, d bes g |
   R1*2 |
   f''1_\markup{\dynamic "f sf"}^\markup{\bold\italic "arco"}~ |
   f~ |
   f8 ees16( d c bes a g f8) ees16( d c bes a g |
   f1)~ |
   
   %% Bar 100
   << {f~ } {s2..\< s8\! } >> |
   f1 |
   d\ff~ |
   d_\markup{\bold\italic "sempre" \dynamic "ff"}~ |
   d( |
   ees8) r r4 r bes'8\f r |
   ees, r r4 r bes'8 r |
   ees r d r ees r d r |
   \deprecatedcresc ees( d) ees( d) ees8-. d,-. ees-. e-. |
   f16\ff f f f f f f f f8 r f r |
   f''-. d-. bes-. g-. f-. d-. bes-. g-. |
   f r r4 r2 |
   r4 g8 r ees r f r |
   bes4. bes8\f( d f bes d) |
   g,,4. g8( bes d g bes) |
   d,,4. d8( f bes d f) |
   des,2\sf( c8) r f r |
   bes4. bes8( d f bes d) |
   g,,4. g8( bes d g bes) |
   d,,4. d8( f bes d f) |
   des,2\accent( c8) r f r |
   des2\accent( c8) r f r |
   des2\ff( c8) r f r |
   bes r ges4\accent( f2)~ |
   f8 r ges4\accent( f2)~ |
   f8 r ges4\accent( f8) r f r |
   bes r f r bes r f r |
  }
  \alternative {
   {
    r4 bes8 r r4 f8 r |
    r bes r bes r bes r bes |
    r bes r bes r bes r bes |
    r4 bes r bes |
    ees,1\fp |
   }
   {
    bes'4 r8 d,\f( f  bes d d') |
   }
  }
  bes4. f,8( bes d f f') |
  d4. bes,8( d f bes d) |
  aes!2 aes,! |
  g4 r r r8 c'\sf( |
  b g d b g4) r8 c'\sf( |
  b g d b g4) r8 c'\sf( |
  b g d) aes'\accent( g d b) g'\accent( |
  
  %% Bar 140
  f d b) ees\accent( d bes g) ees'16 ees |
  d\< d c c b b a a g8:16 f8:16 ees8:16 d8:16\! |
  c2\ff c''4.. c16 |
  c8 r g4-.\accent( g-.\accent g-.\accent) |
  f2 f4.. f16 |
  f8 r f4-.\accent( f-. -\tweak Y-offset 4 \accent f-.\accent) |
  bes2 bes4.. bes16 |
  bes8 r bes4-.\accent( bes-.\accent bes-.\accent) |
  aes2 aes4.. aes16 |
  aes8 r aes4-.\accent( aes-.\accent aes-.\accent) |
  aes2 aes4.. aes16 |
  aes8 r des,4-.\accent( des-.\accent des-.\accent) |
  c1~ |
  c8 r <c, c'>4-.^\accent( <c c'>-.^\accent <c c'>-.^\accent) |
  r  <c c'>-.^\accent( <c c'>-.^\accent <c c'>-.^\accent) |
  r e-.^\accent\f( e-.^\accent e-.^\accent) |
  r \deprecateddim f-.( f-. f-.) |
  r \stemUp des'-.\mf( c-. bes-.) |
  r \deprecateddim des-.( c-. bes-.)\! \stemNeutral |
  R1*10 |
  f1\sfp~ |
  f |
  c' |
  f |
  bes,2( f |
  c'1) |
  f\p( |
  aes,2 ees) |
  bes'1~ |
  bes2~bes8 r r4 |
  R1*12 |
  ges1(\pp |
  f |
  ees |
  bes') |
  ges( |
  f |
  ees1)~ |
  ees~ |
  ees |
  bes'\p |
  g! |
  e |
  f |
  ees! |
  d |
  c |
  bes'8\p bes4 \deprecatedcresc bes bes bes8~ |
  bes bes4 bes bes bes8~ |
  bes bes4\mf bes bes bes8~ |
  
  %% Bar 210
  bes bes4 bes \deprecatedcresc bes bes8~ |
  bes bes4 bes bes bes8~ |
  << {bes bes4 bes bes bes8~} {s2 s2\< } >> |
  bes8\! r r4 r2 |
  R1 |
  d,16\f( c d ees f g \deprecatedcresc aes bes aes g f ees d c d ees) |
  f( e f g aes g aes bes c8) c,16(\ff d ees f g a |
  bes a c bes d c ees d) f( e g f aes! g f ees) |
  d_\markup{\bold\italic "sempre" \dynamic "ff"}( c ees d f ees d c) bes( a bes b c bes aes g) |
  aes( g f e) f( ees d c) d8 bes'16( a bes c d ees) |
  
  %% Bar 220
  f( ees d c d ees f g) f(\< ees d c bes aes! g f\! |
  ees1\fp) |
  ees |
  \deprecatedcresc d |
  c2(\f g') |
  aes1\fp |
  f |
  \deprecatedcresc ees |
  d2(\f bes') |
  ees,8 r r ees( g bes ees g) |
  c,4\sf( bes8) ees,( g bes ees g) |
  c,4\sf( bes8) ees,( g bes ees g) |
  c,,2\p\accent d\accent |
  ees\accent f\accent |
  \deprecatedcresc g\accent aes\accent |
  bes\accent b\accent |
  c8\f c4 c c c8( |
  a)\sf a4 a a a8( |
  bes1\fp\>)~ |
  bes~ |
  \deprecateddim bes |
  ees,\pp~ |
  ees~ |
  ees( |
  bes' |
  ees,4) r r2 |
  R1 |
  r2 ees8^\markup{\bold\italic "pizz."} r r4 |
  aes8 r r4 ees8 r r4 |
  aes8 bes c d ees f bes, r |
  r bes d bes g' bes, c r |
  r c ees c aes' c, d r |
  r d g, g' c, c, g' g' |
  c, c, g' g' c, g ees c |
  R1*2 |
  bes'2^\markup{\bold\italic "arco"}_\markup{\dynamic "p" \large\bold\italic "cresc."}( b |
  c bes!4 aes) |
  g1\f~ |
  g |
  c\sf\<~ |
  c\! |
  <d, bes'>1~\ff |
  <d bes'>~ |
  \set doubleSlurs = ##t
  <d bes'>( |
  <ees bes'>8) \set doubleSlurs = ##f r r4 bes'8\f r r4 |
  ees,8 r r4 bes'8 r r4 |
  ees8 r d r ees r d r |
  ees( d) ees( d) ees-. d,-. ees-. d-. |
  ees2:16\< aes2:16\ff |
  bes8 r c r aes r bes r |
  ees,4.\f ees8( g bes ees g) |
  c,,4. c8( ees g c ees) |
  g,4. g8( bes ees g bes) |
  ges,2\sf( f8) r bes r |
  ees,4. ees8( g bes ees g) |
  c,,4. c8( ees g c ees) |
  g,4. g8( bes ees g bes) |
  ges,2\accent( f8) r bes r |
  ges2\accent( f8) r bes r |
  ges2\ff\accent( f8) r bes r |
  ees,8 r ees16 ees ees f g g ees g bes bes g bes |
  ees8 r ees4\p bes'2( |
  ees8) r g,16\ff g g f ees ees g ees c c ees c |
  bes8 r ees4\p bes2( |
  ees,4) r r f( |
  c) r r f( |
  c) r r e( |
  f1) |
  aes\pp~ |
  aes2( ges |
  f ees |
  d des |
  c) \stemUp ees( |
  bes' des |
  aes2.) \stemNeutral \deprecatedcresc aes16-. aes-. bes-. g-. |
  aes2~ aes8 r aes16-. aes-. bes-. g-. |
  \deprecatedcresc aes2~ aes8 r a16-. a-. bes-. gis-. |
  a1\f( |
  bes8)\p bes bes bes bes2:8 |
  
  %% Bar 300
  g2:8 g2:8 |
  \deprecatedcresc aes2:8 aes2:8 |
  a2:8\< a2:8 |
  bes8\f bes g g aes!2:8 |
  bes2:8 bes2:8 |
  ees,8 ees g g aes2:8 |
  bes2:8\< aes2:8 |
  g2:8\ff c8 c bes bes |
  aes2:8 aes2:8 |
  f2:8 f2:8 |
  bes2:8 bes2:8 |
  bes2:8 bes2:8 |
  bes2:8 bes2:8 |
  aes2:8 aes2:8 |
  \deprecatedcresc g2:8^\markup{\dynamic "sf"} g2:8^\markup{\dynamic "sf"} |
  aes2:8^\markup{\dynamic "sf"} a2:8^\markup{\dynamic "sf"} |
  bes2:8\ff bes2:8 |
  bes2:8 bes2:8 |
  ees,4\fp ees ees ees |
  \deprecatedcresc ees ees ees ees |
  d\f d d\< d |
  c2:16 bes'2:16\ff |
  ees,8 r r4 bes'8 r r4 |
  ees,8 r r4 r2 |
  \bar "|."
 }    
}

SecondCelloFirstMovementTiming =
{
 s1^\markup {" " \raise #4.0 \bold\huge "Allegro moderato ma con fuoco"} | 
 s1*180 \pageBreak
 s1*59
 s1^\markup{" " \raise #2.0 \bold\huge "poco rit."} |
 s1*3 |
 s1^\markup{" " \raise #2.0 \bold\huge "a tempo"}
}