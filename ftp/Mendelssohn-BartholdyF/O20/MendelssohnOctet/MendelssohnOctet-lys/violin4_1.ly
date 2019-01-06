%Violin 4, 1st movement
\version "2.19.80"

FourthViolinFirstMovement =
{
 \relative c' {  
  \key c \minor
  \time 4/4
  \repeat "tremolo" 4 { bes16\p\( g } \repeat "tremolo" 4 { bes g\) } |
  \repeat volta 2 {
   \repeat "tremolo" 4 { bes\( g } \repeat "tremolo" 4 { bes g\) } |
   << {\repeat "tremolo" 4 { bes\( g } \repeat "tremolo" 4 { bes g\) }}  {s4. \deprecatedcresc s8 s2} >> |
   \repeat "tremolo" 4 { c16\f\( g } \repeat "tremolo" 4 { bes g\) } |
   c8 c16\p\( aes c aes c aes \repeat "tremolo" 4 { c aes\) } |
   \repeat "tremolo" 4 { c16\( aes } \repeat "tremolo" 4 { c16 aes\) } |
   \deprecatedcresc \repeat "tremolo" 4 { ces16\( aes } \repeat "tremolo" 4 { ces16 aes\) } |
   \repeat "tremolo" 4 { bes16\f\( aes } \repeat "tremolo" 4 { bes16 aes\) } |
   bes16[\( g es' bes] \repeat "tremolo" 6 { ees16 bes\) } |
   ees16\sf[\( a, ees' a,] \repeat "tremolo" 6 { ees'16 bes\) } |
   ees16\sf[\( a, ees' a,] \repeat "tremolo" 6 { ees'16 bes\) } |
   \repeat "tremolo" 4 { ees16\( a, } \repeat "tremolo" 4 { bes16\sf aes\) } |
   \repeat "tremolo" 4 { ees'16\( bes } \repeat "tremolo" 4 { ees16 bes\) } |
   ees16\sf[\( a, ees' a,] \repeat "tremolo" 6 { ees'16 bes\) } |
   ees16\sf[\( a, ees' a,] \repeat "tremolo" 6 { ees'16 bes\) } |
   \repeat "tremolo" 4 { ees\p( c) } \repeat "tremolo" 4 { f( bes,) } |
   \repeat "tremolo" 4 { g'( des) } \deprecatedcresc \repeat "tremolo" 4 { aes'( f) } |
   \repeat "tremolo" 4 { bes( g) } \deprecatedcresc \repeat "tremolo" 4 { c( ges) } |
   \repeat "tremolo" 4 { aes\f( f) } g!( ees g ees aes ees aes ees) |
   ees2:16\ff d4:16 f4:16 |
   g8 r ees16-.\p ees-. ees-. f-. g-. g-. ees-. g-. bes-. bes-. g-. bes-. |
   ees8-. r r4 r2 |
   r4 des16-. des-. des-. c-. bes-. bes-. des-. bes-. g-. g-. bes-. g-. |
   e8-. r r4 r2 |
   r4 c'16-. c-. des-. b-. c2~ |
   c4 c16-. c-. des-. b-. c2~ |
   c4 c16-. c-. des-. b-. c2~ |
   c8 c-.( c-. c-.) c( bes! a aes |
   g) r c16-. c-. des-. b-. c2~ |
   c4 c16-. c-. des-. b-. c2~ |
   c4 c16-. c-. des-. b-. c2~ |
   c8 c( bes! a bes c des d |
   \deprecatedcresc ees f g aes bes c d ees) |
   ees4\f r r2 |
   \deprecateddim ees,1~\mf |
   ees4 aes,(\p ees aes, |
   g8) r \repeat "tremolo" 6 {bes16\( g} |
   \repeat "tremolo" 4 { bes g } \repeat "tremolo" 4 { bes g\) } |
   \deprecatedcresc \repeat "tremolo" 4 { bes\( g } \repeat "tremolo" 4 { bes g\) } |
   \repeat "tremolo" 4 { bes\(\f g } \repeat "tremolo" 4 { bes g\) } |
   \repeat "tremolo" 6 { bes\(\p g} bes8\) bes'( |
   g[ e] des) bes16( g bes g bes g bes8) des'( |
   \deprecatedcresc bes f des bes) des'( bes g\f e) |
   bes''( des, bes g e) r8 r4 |
   \repeat "tremolo" 4 { c16\( f } \repeat "tremolo" 4 { c f\) } |
   b,16\sf\( f' b, f' \repeat "tremolo" 6 {c f\) } |
   b,16\sf\( f' b, f' \repeat "tremolo" 6 {c f\) } |
   \repeat "tremolo" 4 { b,\(\p f' } \repeat "tremolo" 4 { bes, c\) } |
   aes\( c aes c aes des aes des \deprecatedcresc \repeat "tremolo" 4 {bes ees\) } |
   c\( ees c ees c f c f \repeat "tremolo" 4 {d\f f\) } |
   ees4:16 g4:16 g4:16 g4:16 |
   fis8 r d'16-.\p d-. ees-. cis-. d2~ |
   d4 d16-. d-. ees-. cis-. d2~ |
   d4 d16-. d-. ees-. cis-. \deprecateddim d2~ |
   d4 d16-. d-. ees-. cis-. d4\! r |
   R1*3 |
   f,1~\p |
   f4 f2 f4( |
   \deprecatedcresc g1)~ |
   g4 g2 g4( |
   f2.)\f f8. f16 |
   << { f2. } {s4 \deprecatedcresc s2} >> f8. f16 |
   \repeat "tremolo" 4 {ees\ff\( c} \repeat "tremolo" 4 {ees c\)} |
   ees\sf( c ees c) ees\sf( c ees c) ees\sf( c ees c) ees\sf( c ees c) |
   ees\sf( c ees c) ees\sf( c ees c) ees\sf( c ees c ees\sf c ees c) |
   d8 r bes'4\p( c d |
   ees d8 cis) d4 bes8( c |
   
   %% Bar 70
   d4 ees8 d) d( c bes c) |
   bes4 r r2 |
   r4 \stemUp bes( a aes \stemNeutral |
   d,8 ees) f( g) f4 r |
   r2 a( |
   bes8) r r4 r2 |
   R1 |
   g'1~_\markup{\dynamic "sf pp"} |
   g( |
   d |
   g,4) r r2 |
   g1~_\markup{\dynamic "sf pp"} |
   g1~ |
   g2( d |
   g,8) r r4 r2 |
   r r4 g''8^\markup{\bold\italic "pizz."} g |
   g g, ees' ees ees bes ees, ees |
   ees c' aes ees ees bes' ees ees |
   aes,[ g] aes r r2 |
   d!8 c bes a g f ees d |
   c a c ees a ees c a |
   c ees a c a a ees c |
   a ees' ees a, bes g' fis d' |
   g, d' fis, d' g, d' bes, g' |
   g, r r4 r2 |
   R1 |
   r4 d'\f^\markup{\bold\italic "arco"}( ees f |
   g f8 e) f4 d8( ees |
   f4 g8 f) ees2( |
   d4) d( ees f) |
   
   %% Bar 100
   g( f8 e) f4 d8( ees |
   f4 g8 f) f( ees d ees) |
   f1~\ff |
   f~_\markup{\bold\italic "sempre" \dynamic "ff"} |
   f( |
   g8) r r4 r r8 bes,\f |
   bes( ees g bes) bes4 r |
   bes2 bes\accent |
   \deprecatedcresc bes4\accent bes\accent bes8-. bes-. bes-. bes-. |
   d,16\ff d d d d d d d f bes, bes bes bes bes bes bes |
   bes d d d d d d d d f f f f f f f |
   f8 r r4 r2 |
   r4 <d bes'>8 r <g bes> r <f a> r |
   <d bes'>16\f <d bes'> <d bes'> <d bes'> d4:16 d2:16 |
   d2:16 d2:16 |
   f2:16 f2:16 |
   g2:16 f2:16 |
   f2:16 f2:16 |
   <d bes'>2:16 <d bes'>2:16 |
   bes'2:16 bes2:16 |
   <g bes>2:16 <a c>2:16 |
   g2:16 f2:16 |
   e2:16\ff ees2:16 |
   d8 d16 d bes'( d,) d-. d-. bes'( d,) d-. d-. bes'( d,) d-. d-. |
   bes'( d,) d-. d-. bes'( d,) d-. d-. bes'( d,) d-. d-. bes'( d,) d-. d-. |
   bes'( d,) d-. d-. bes'( d,) d-. d-. bes'( d,) d-. d-. ees8 r |
   d r ees r d r ees r |
  }
  \alternative {
   { 
    r4 d8 r r4 a'8 r |
    r f r f r ees r g |
    r bes r bes r bes r bes |
    r4 aes,! r <d bes' f'> |
    \repeat "tremolo" 4 {bes16\fp\( g} \repeat "tremolo" 4 {bes g\)} |
   }
   {
    \repeat "tremolo" 4 {f'\f\( d} \repeat "tremolo" 4 {f d\)} |
   }
  }
  \repeat "tremolo" 4 {f\( d} \repeat "tremolo" 4 {f d\)} |
  \repeat "tremolo" 4 {bes'\( f} \repeat "tremolo" 4 {bes f\)} |
  \repeat "tremolo" 4 {b\( f} \repeat "tremolo" 4 {b f\)} |
  \set doubleSlurs = ##t
  <b, d>8 <b d>4 <b d> <b d> <c d>8( |
  <b d>) <b d>4 <b d> <b d> <c d>8( |
  <b d>) <b d>4 <b d> <b d> <c d>8( |
  <b d>) \set doubleSlurs = ##f d( g c d4) r8 g,,( |
  b d g b d4) r |
  g,,16\< g a a b b c c d8:16 ees8:16 f8:16 f8:16\! |
  ees8 r c16\ff c c d ees ees c ees g g ees g |
  c8 r r4 r2 |
  r4 f16 f f ees des des f des bes bes des bes |
  f8 r r4 r2 |
  r4 bes16 bes bes c des des bes des f f des f |
  bes8 r r4 r2 |
  r4 aes16 aes aes ges f f aes f des des f des |
  aes8 r r4 r2 |
  r4 des,16 des des ees f f des f aes aes f aes |
  b8 r r4 r2 |
  r4 c16 c c bes! aes aes c aes f f aes f |
  c8 r <g' bes>4-.\accent( <g bes>-. -\tweak Y-offset -4 \accent <g bes>-.)\accent |
  r aes-.\accent( aes-.\accent aes-.)\accent |
  r g-.\f\accent( g-. -\tweak Y-offset -4 \accent g-.)\accent |
  r \deprecateddim f-.( f-. f-.) |
  r bes,\mf-.( bes-. bes-.) |
  r \deprecateddim e-.( e-. e-.) |
  r bes-.\p( bes-. bes-.) |
  R1*4 |
  r4 aes'-.\p( aes-. aes-.) |
  r g-.( g-. g-.) |
  R1*3 |
  f'1\sfp( |
  e2 f) |
  c1~ |
  c4_\markup{\bold\italic "espress."}( aes' g f |
  e2 f4 c) |
  c1~ |
  c4 \deprecateddim c( f ees! |
  d!2 ees4 bes)~ |
  bes1~ |
  bes2~ bes8\! r r4 |
  R1*4 |
  c,1(\pp |
  d |
  a' |
  d,)~ |
  d2( c |
  bes4) d( ees f |
  ges2 f4 ees) |
  d1 |
  R1*2 |
  r4 ges( f ees |
  bes1) |
  R1*2 |
  r4 ges'( f ees) |
  r ges( f ees) |
  r ges( f ees |
  bes8)\p bes4 bes bes bes8~ |
  bes bes4 bes bes bes8~
  bes bes4 bes bes bes8( |
  aes) aes4 aes aes aes8( |
  f') f4 f f f8~ |
  f f4 f f f8~ |
  f f4 f f f8( |
  ees) ees4 ees \deprecatedcresc ees ees8~ |
  ees ees4 ees8( e) e4 e8( |
  f) aes,4\mf aes aes aes8~ |
  aes aes4 aes \deprecatedcresc aes aes8( |
  g) g4 g bes bes8( |
  c) \deprecatedcresc c4 c c c8( |
  d) bes'4\f bes bes bes8~ |
  bes bes4 bes \deprecatedcresc bes bes8~ |
  bes bes4 bes bes bes8~ |
  bes bes4 bes,8 c16\ff( bes c d ees f g a |
  bes a c bes d c ees d) f( e g f aes! g f ees) |
  d(_\markup{\bold\italic "sempre" \dynamic "ff"} c ees d f ees d c) bes( a bes b c bes aes g) |
  aes( g f e) f( ees d c) d( c bes a bes c d ees) |
  
  %% Bar 220
  f( ees d c d ees f g) aes(\< g f g aes bes c d\! |
  ees8) bes,16\p\( g bes g bes g \repeat "tremolo" 4 {bes g\)} |
  \repeat "tremolo" 4 {bes\( g} \repeat "tremolo" 4 {bes g\)} |
  \deprecatedcresc \repeat "tremolo" 4 {bes\( g} \repeat "tremolo" 4 {bes g\)} 
  \repeat "tremolo" 4 {c\f\( g} \repeat "tremolo" 4 {bes g\)} |
  c8 c16\p\( aes c aes c aes \repeat "tremolo" 4 {c aes\)} |
  \repeat "tremolo" 4 {c\( aes} \repeat "tremolo" 4 {c aes\)} |
  \deprecatedcresc \repeat "tremolo" 4 {ces\( aes} \repeat "tremolo" 4 {ces aes\)} |
  \repeat "tremolo" 4 {bes\f\( aes} \repeat "tremolo" 4 {bes aes\)} |
  bes\( g ees' bes ees bes ees bes \repeat "tremolo" 4 {ees bes\)} |
  ees\sf\( a, ees' a, \repeat "tremolo" 6 {ees' bes\)} |
  ees\sf\( a, ees' a, \repeat "tremolo" 6 {ees' bes\)} |
  \repeat "tremolo" 4 {ees\p\( a,} \repeat "tremolo" 4 {f' bes,\)} |
  \repeat "tremolo" 4 {ees\( bes} \repeat "tremolo" 4 {f' d\)} |
  << {\repeat "tremolo" 4 {ees\( bes}  \repeat "tremolo" 4 {aes' f\)}} {s4 \deprecatedcresc s2.} >>  |
  \repeat "tremolo" 4 {aes16\( f} \repeat "tremolo" 4 {d f\)} |
  \repeat "tremolo" 4 {ees\f\( c} \repeat "tremolo" 4 {ees c\)} |
  \repeat "tremolo" 4 {ees\sf\( c} \repeat "tremolo" 4 {ees c\)} |
  ees8\sf r r4 r2 |
  R1*7 |
  c'1~\accent\p |
  c8 r r4 r2 |
  r4 ees8^\markup{\bold\italic "pizz."} ees ees bes ees, ees |
  ees8 r <aes, ees' c'> r r2 |
  <d  bes' f'>8 r r4 <d bes' bes'>8 r r4 |
  r <g, ees' ees'>8 r r2 |
  <d' c' aes'>8 r d' b' ees, c' d, b' |
  ees, c' d, b' c8 r r4 |
  r r8 c,,^\markup{\bold\italic "arco"}( ees aes c aes') |
  ees1~ |
  \deprecatedcresc ees |
  ees2( bes) |
  <ees, bes'>1~\f |
  <ees bes'> |
  <ees ees'>1~\sf |
  <ees ees'> |
  bes\ff~ |
  bes~ |
  bes~ |
  bes8 r r4 r r8 bes\f |
  bes( ees g bes) bes r r4 |
  bes2 bes\accent |
  bes4\accent bes\accent bes8-. bes-. bes-. bes-. |
  g2:16\< ees2:16\ff |
  
  %% Bar 270
  ees8 r <g, ees' c'> r < aes f' c'> r f' r |
  ees2:16\f ees2:16 |
  g2:16 g2:16 |
  g2:16 g2:16 |
  a2:16 aes2:16 |
  g2:16 g2:16 |
  g2:16 g2:16 |
  bes2:16 g2:16 |
  a2:16 aes2:16 |
  a2:16 aes2:16 |
  a2:16\ff aes2:16 |
  g8 r ees16 ees ees f g g ees g bes bes g bes |
  ees8 r r4 r2 |
  r4 g16 g g f ees ees g ees c c ees c |
  bes8 r r4 r2 |
  r2 r4 aes\p( |
  g) r r f( |
  e) r r2 |
  R1*11 |
  bes'1\p~ |
  bes |
  \deprecatedcresc c~ |
  c\< |
  bes16\f\( g bes g b g b g \repeat "tremolo" 4 {c aes\)} |
  \repeat "tremolo" 4 {bes!( g)} \repeat "tremolo" 4 {bes( aes)} |
  \repeat "tremolo" 4 {bes\( g} \repeat "tremolo" 4 {c aes\)} |
  \repeat "tremolo" 4 {bes(\< g)} \repeat "tremolo" 4 {bes( f)} |
  g2:16\ff g2:16 |
  aes2:16 aes2:16 |
  aes2:16 aes2:16 |
  bes2:16 bes2:16 |
  bes2:16 bes2:16 |
  g2:16 g2:16 |
  f2:16 f2:16 |
  \deprecatedcresc ees2:16^\markup{\dynamic "sf"} ees2:16^\markup{\dynamic "sf"} |
  ees2:16^\markup{\dynamic "sf"} ees2:16^\markup{\dynamic "sf"} |
  ees2:16\ff ees2:16 |
  d2:16 d2:16 |
  ees16\fp\( g, bes g bes g bes g \repeat "tremolo" 4 {bes g\)} |
  \deprecatedcresc \repeat "tremolo" 4 {bes\( g} \repeat "tremolo" 4 {bes g\)} |
  \repeat "tremolo" 4 {bes\f\( g} \repeat "tremolo" 4 {bes\< g\)} |
  c2:16\! f2:16\ff |
  ees8 r r4 <bes aes' bes>8 r r4 |
  <bes g' bes>8 r r4 r2 |
  \bar "|."
 }    
}

FourthViolinFirstMovementTiming =
{
 s1^\markup {" " \raise #4.0 \bold \huge { Allegro moderato ma con fuoco}}
 s1*167 \pageBreak
 s1*72
 s1^\markup{" " \raise #2.0 \bold\huge "poco rit."} |
 s1*3 |
 s1^\markup{" " \raise #2.0 \bold\huge "a tempo"}
}