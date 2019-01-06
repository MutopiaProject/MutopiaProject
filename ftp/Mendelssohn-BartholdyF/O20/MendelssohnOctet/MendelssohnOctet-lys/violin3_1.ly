%Violin 3, 1st movement
\version "2.19.80"

ThirdViolinFirstMovement =
{
 \relative c' {  
  \key c \minor
  \time 4/4
  \repeat "tremolo" 4 { ees16\p\( bes } \repeat "tremolo" 4 { ees16 bes\) } |
  \repeat volta 2 {
   \repeat "tremolo" 4 { ees16\( bes } \repeat "tremolo" 4 { ees16 bes\) } |
   << {\repeat "tremolo" 4 { ees16\( bes } \repeat "tremolo" 4 { ees16 bes\) }}  {s4. \deprecatedcresc s8 s2} >>|
   \repeat "tremolo" 4 { ees16\f\( c } \repeat "tremolo" 4 { ees16 bes\) } |
   \repeat "tremolo" 4 { ees16\fp\( c } \repeat "tremolo" 4 { ees16 c\) } |
   \repeat "tremolo" 4 { ees16\( c } \repeat "tremolo" 4 { ees16 c\) } |
   \deprecatedcresc \repeat "tremolo" 4 { f16\( ces } \repeat "tremolo" 4 { f16 ces\) } |
   \repeat "tremolo" 4 { f16\f\( bes, } \repeat "tremolo" 4 { f'16 bes,\) } |
   \repeat "tremolo" 4 { g'16\( ees } \repeat "tremolo" 4 { g16 ees\) } |
   fis16\sf\( ees fis ees \repeat "tremolo" 6 { g16 ees\) } |
   fis16\sf\( ees fis ees \repeat "tremolo" 6 { g16 ees\) } |
   \repeat "tremolo" 4 { ges16\( ees } \repeat "tremolo" 4 { f16\sf bes,\) } |
   \repeat "tremolo" 4 { g'!16\( ees } \repeat "tremolo" 4 { g16 ees\) } |
   fis16\sf\( ees fis ees \repeat "tremolo" 6 { g16 ees\) } |
   fis16\sf\( ees fis ees \repeat "tremolo" 6 { g16 ees\) } |
   \repeat "tremolo" 4 { ges16\p( ees) } \repeat "tremolo" 4 { aes16( f) } |
   \repeat "tremolo" 4 { bes16( g!) } \deprecatedcresc \repeat "tremolo" 4 { ces16( aes) } |
   \repeat "tremolo" 4 { des16( bes) } \deprecatedcresc \repeat "tremolo" 4 { ees16( c!) } |
   \repeat "tremolo" 4 { d!16(\f aes) } c( g c g c aes c aes) |
   
   %% Bar 20
   g2:16\ff f4:16 d'4:16 |
   ees8 r ees,16\p-. ees-. ees-. f-. g-. g-. ees-. g-. bes-. bes-. g-. bes-. |
   ees8-. r r4 r2 |
   r4 des16-. des-. des-. c-. bes-. bes-. des-. bes-. g-. g-. bes-. g-. |
   e8 r r4 r2 |
   r4 c'16-. c-. des-. b-. c2~ |
   c4 c16-. c-. des-. b-. c2~ |
   c4 c16-. c-. des-. b-. c2~ |
   c8 c-.( c-. c-.) c( bes! a aes |
   g) r c16-. c-. des-. b-. c2~ |
   c4 c16-. c-. des-. b-. c2~ |
   c4 c16-. c-. des-. b-. c2~ |
   c8 c( bes! a bes c des d |
   \deprecatedcresc ees f g aes bes c d ees) |
   ees4(\f bes g ees |
   << { \deprecateddim s2 s2\! } { bes1) } >> |
   R1 |
   ees,16\p\( bes ees bes ees bes ees bes \repeat "tremolo" 4 {ees bes\)} |
   \repeat "tremolo" 4 {ees\( bes} \repeat "tremolo" 4 {ees bes\)} |
   \deprecatedcresc \repeat "tremolo" 4 {ees\( bes} \repeat "tremolo" 4 {ees bes\)} |
   
   %% Bar 40
   \repeat "tremolo" 4 {ees\f\( bes} \repeat "tremolo" 4 {ees bes\)} |
   e4 r8 g,(\p bes e g e |
   des'4.)\accent bes,8( \deprecatedcresc e g bes e |
   f4.)\accent bes,,8( g' bes des\f bes') |
   g4( e bes g) |
   \repeat "tremolo" 4 {f16\( aes} \repeat "tremolo" 4 {f aes\)} |
   \repeat "tremolo" 4 {f\sf\( aes} \repeat "tremolo" 4 {f aes\)} |
   \repeat "tremolo" 4 {f\sf\( aes} \repeat "tremolo" 4 {f aes\)} |
   \repeat "tremolo" 4 {f\p\( aes} \repeat "tremolo" 4 {g bes\)} |
   \repeat "tremolo" 4 {f\( aes} \deprecatedcresc \repeat "tremolo" 4 {bes des\)} |
   \repeat "tremolo" 4 {aes\( c} \repeat "tremolo" 4 {b\f d!\)} |
   c4:16 ees4:16 d4:16 cis4:16 |
   d8 r d16-.\p d-. ees-. cis-. d2~ |
   d4 d16-. d-. ees-. cis-. d2~ |
   d4 d16-. d-. ees-. cis-. \deprecateddim d2~ |
   d4 d16-. d-. ees-. cis-. d4 d16-. d-. ees-. cis-. |
   d4\! r r2 |
   R1*2 |
   bes1\p~ |
   
   %% Bar 60
   bes4 bes2 bes4 |
   \deprecatedcresc bes1~ |
   bes4 bes2 bes4( |
   a2.\f) a8. a16 |
   << { a2. } { s2 \deprecatedcresc s4 } >> a8. a16 |
   \repeat "tremolo" 4 {a\(\ff ees} \repeat "tremolo" 4 {a ees\)} |
   a(\sf ees a ees) a(\sf ees a ees) a(\sf ees a ees) a(\sf ees a ees) |
   a(\sf ees a ees) a(\sf ees a ees) a(\sf ees a ees a ees a ees) |
   << {bes'1~ bes } \\ {d,8_\markup{\dynamic "fpp"} s2.. s1 } >> |
   f~ |
   f4 r r2 |
   r4 bes(\p c d |
   f8 ees) d( cis) d4 bes8( c |
   d4 ees8 d) d( c) bes-. c-. |
   bes8 r a-.^\markup{\bold\italic "stacc."} g-. g( fis) e-. fis-. |
   g r a-. g-. g( fis) e-. fis-. |
   g8 r r4 r2 |
   R1*2 |
   b,16\pp( d b d b8) r r2 |
   r4 b4\p( c d |
   ees d8 c) d4 b8( c |
   d4 ees8 d) d( c) b-. c-. |
   b8 r r4 r2 |
   r4 g''8^\markup{\bold\italic "pizz."} g g d g, g |
   g r r4 r2 |
   r4 ees'8 ees ees bes ees, ees |
   c' bes aes g f ees d c |
   bes r r4 r2 |
   a'8 ees a c c a ees c |
   ees a c ees c c a ees |
   c a' a c, d bes' a fis' |
   bes, g' a, fis' bes, g' g, d' |
   g,, r r4 r2 |
   R1 |
   r4 bes'\f^\markup{\bold\italic "arco"}( c d |
   ees d8 cis) d4 bes8( c |
   d4 ees8 d) d( c bes c) |
   bes4 bes8.( c16) c8.( d16) d8.( ees16) |
   ees4( d8 cis) d4 bes8( c |
   d4 ees8 d) d( c bes c) |
   <f, bes>1\ff~ |
   <f bes>_\markup{\bold\italic "sempre" \dynamic "ff"}~ |   
   \set doubleSlurs = ##t  
   <f bes>( |
   <g bes>8) \set doubleSlurs = ##f   r r4 r r8 bes,\f( |
   ees g bes ees bes4) r |
   ees4( bes) ees( bes) |
   \deprecatedcresc ees8( bes) ees( bes) ees-. bes-. ees-. bes-. |
   f16\ff bes, bes bes bes bes bes bes bes d d d d d d d |
   d f f f f f f f f bes bes bes bes bes bes bes |
   bes8 r r4 r2 |
   r4 <g, d' bes'>8 r <g ees' bes'> r <c ees> r |
   <d f>16\f <d f> <d f> <d f> f4:16 f2:16 |
   g2:16 g2:16 |
   d4:16 bes'4:16 bes2:16|
   bes2:16 a2:16 |
   bes2:16 bes2:16 |
   d2:16 d2:16 |
   f2:16 f2:16 |
   e2:16 ees2:16 |
   bes2:16 a2:16 |
   bes2:16\ff a2:16 |
   bes8 bes16 bes d( bes) bes-. bes-. d( bes) bes-. bes-. d( bes) bes-. bes-. |
   d( bes) bes-. bes-. d( bes) bes-. bes-. d( bes) bes-. bes-. d( bes) bes-. bes-. |
   d( bes) bes-. bes-. d( bes) bes-. bes-. d( bes) bes-. bes-. f8 r |
   f r f r f r f r |
  }
  \alternative {
   {
    r4 <d bes'>8 r r4 <f c'>8 r |
    r bes r aes! r g r bes |
    r bes r bes r bes r bes |
    r4 c, r <d bes' aes'> |
    <ees bes' g'>8 r ees16\p\( bes ees bes \repeat "tremolo" 4 {ees bes\)} |
   }
   {
    \repeat "tremolo" 4 {bes'\f\( f} \repeat "tremolo" 4 {bes f\)} |
   }
  }
  \repeat "tremolo" 4 {bes\( f} \repeat "tremolo" 4 {bes f\)} |
  \repeat "tremolo" 4 {d'\( bes} \repeat "tremolo" 4 {d bes\)} |
  \repeat "tremolo" 4 {d\( b} \repeat "tremolo" 4 {d b\)} |
  \repeat "tremolo" 4 {d,\sf\( b} \repeat "tremolo" 4 {d b\)} |
  \repeat "tremolo" 6 {f'\( d} f8\) d-. |
  \repeat "tremolo" 6 {f16\( d} f8\) d-. |
  d( g b d f4) r8 b,,( |
  d g b d f4) r8 g, |
  b,16\< b c c d d ees ees f8:16 g8:16 a8:16 b8:16\! |
  c8 r c16\ff c c d ees ees c ees g g ees g |
  c8 r r4 r2 |
  r4 f,16 f f ees des des f des bes bes des bes |
  f8 r r4 r2 |
  r4 bes16 bes bes c des des bes des f f des f |
  bes8 r r4 r2 |
  r4 aes16 aes aes ges f f aes f des des f des |
  aes8 r r4 r2 |
  r4 des,16 des des ees f f des f aes aes f aes |
  b8 r r4 r2 |
  r4 c'16 c c bes! aes aes c aes f f aes f |
  c8 r <des e>4-.(\accent <des e>-.\accent <des e>-.)\accent |
  r <c f>-.(\accent <c f>-.\accent <c f>-.)\accent |
  r des-.\f(\accent c-. -\tweak Y-offset 4 \accent bes-.)\accent |
  r \deprecateddim aes-.( aes-. aes-.) |
  r e\mf-.( e-. e-.) |
  r \deprecateddim g-.( g-. g-.) |
  r e-.(\p e-. e-.) |
  r f-.( f-. f-.) |
  r f-.( f-. f-.) |
  r f-.( f-. f-.) |
  r f-.( f-. f-.) |
  r f-.( f-. f-.) |
  r f-.( f-. f-.) |
  r \deprecateddim f-.( r f-.) |
  r2 f2\pp( |
  r e) |
  R1*9 |
  r4 g,\p( aes bes |
  c2 bes4 aes) |
  bes( g aes bes |
  ces2 bes4 aes) |
  bes1\pp~ |
  bes2( a |
  g8) r bes4( c d |
  ees2 d4 c |
  bes) r r2 |
  e1( |
  f |
  c'2 f,) |
  f1 |
  bes,( |
  aes' |
  a |
  f) |
  bes,( |
  aes'! |
  a)~ |
  a~ |
  a( |
  bes4) r r2 |
  R1*4 |
  aes!8\p aes4 aes aes aes8( |
  ees) ees4 ees ees ees8~ |
  ees bes4 bes \deprecatedcresc bes bes8~ |
  bes bes4 bes bes bes8( |
  aes) f'4\mf f f f8~ |
  f f4 f4 \deprecatedcresc f f8( |
  ees) ees4 ees ees ees8( |
  ges) \deprecatedcresc ges4 ges8( f) f4 f8~ |
  f bes4\f bes bes bes8~ |
  bes bes4 bes \deprecatedcresc bes bes8~ |
  bes bes4 bes bes bes8~ |
  bes bes,4 bes8 c16\ff( bes c d ees f g a |
  bes a c bes d c ees d) f( e g f aes! g f ees) |
  d_\markup{\bold\italic "sempre" \dynamic "ff"}( c ees d f ees d c) bes( a bes b c bes aes g) |
  aes( g f e) f( ees d c) d( c bes a bes c d ees) |
  
  %% Bar 220
  f( ees d c d ees f g) aes(\< g f g aes bes c d\! |
  ees8) ees,16\p\( bes ees bes ees bes \repeat "tremolo" 4 {ees bes\)} |
  \repeat "tremolo" 4 {ees\( bes} \repeat "tremolo" 4 {ees bes\)} |
  \deprecatedcresc \repeat "tremolo" 4 {ees\( bes} \repeat "tremolo" 4 {ees bes\)} |
  \repeat "tremolo" 4 {ees\f\( c} \repeat "tremolo" 4 {ees bes\)} |
  \repeat "tremolo" 4 {ees\fp\( c} \repeat "tremolo" 4 {ees c\)} |
  \repeat "tremolo" 4 {ees\( c} \repeat "tremolo" 4 {ees c\)} |
  \deprecatedcresc \repeat "tremolo" 4 {f\( ces} \repeat "tremolo" 4 {f ces\)} |
  \repeat "tremolo" 4 {f\f\( bes,} \repeat "tremolo" 4 {f' bes,\)} |
  \repeat "tremolo" 4 {g'\( ees} \repeat "tremolo" 4 {g ees\)} |
  fis\sf\( ees fis ees \repeat "tremolo" 6 {g ees\)} |
  fis\sf\( ees fis ees \repeat "tremolo" 6 {g ees\)} |
  \repeat "tremolo" 4 {ges\p\( ees} \repeat "tremolo" 4 {aes f\)} |
  \repeat "tremolo" 4 {g!\( ees} \repeat "tremolo" 4 {aes f\)} |
  << {\repeat "tremolo" 4 {bes\( g} } { s4 \deprecatedcresc s} >> \repeat "tremolo" 4 {c16 aes\)} |
  \repeat "tremolo" 4 {d\( aes} \repeat "tremolo" 4 {f g\)} |
  ees8\f g4 g g g8 |
  \repeat "tremolo" 4 {f16\sf\( ees} \repeat "tremolo" 4 {f ees\)} |
  g8\sf r r4 r2 |
  R1*6 |
  r4 g8^\markup{\bold\italic "stacc."}\p-. f-. f( e) d-. e-. |
  f r g-. f-. f( e) d-. e-. |
  f r r4 r ees'8^\markup{\bold\italic "pizz."} ees |
  ees c aes aes ees r r4 |
  <aes, ees' c'>8 r r4 r <d bes' f'>8 r |
  r4 <d bes' bes'>8 r r2 |
  <g, ees' ees'>8 r r4 r <d' c' aes'>8 r |
  r4 <g, d' b' g'>8 r <g ees' c' g'> r <g d' b' g'> r |
  <g ees' c' g'> r <g d' b' g'> r <g ees' c' g'> r r ees'^\markup{\bold\italic "arco"}( |
  aes c ees c') g2\accent~ |
  g1~ |
  \deprecatedcresc g~ |
  g4 aes( ees d) |
  ees1\f~ |
  ees |
  <ees, ees'>~\sf |
  <ees ees'> |
  f\ff~ |
  f~ |
  f( |
  ees8) r r4 r r8 bes\f( |
  ees g bes ees bes) r r4 |
  ees( bes) ees( bes) |
  ees8( bes) ees( bes) ees-. bes-. ees-. bes-. |
  bes2:16\< aes2:16\ff |
  g8 r <ees c'> r <ees c'> r aes r |
  g2:16\f g2:16 |
  c2:16 c2:16 |
  bes2:16 bes2:16 |
  c2:16 bes2:16 |
  bes2:16 bes2:16 |
  c2:16 c2:16 |
  bes2:16 bes2:16 |
  c2:16 bes2:16 |
  c2:16 bes2:16 |
  
  %% Bar 280
  c2:16\ff bes2:16 |
  bes8 r ees16 ees ees f g g ees g bes bes g bes |
  ees8 r r4 r2 |
  r4 g,16 g g f ees ees g ees c c ees c |
  bes8 r bes,4\p c( d |
  ees) r r2 |
  R1*13 |
  ees'1~\p |
  ees |
  \deprecatedcresc ees~ |
  ees\< |
  ees16\f\( bes ees bes ees b ees b \repeat "tremolo" 4 {ees c\)} |
  \repeat "tremolo" 4 {ees( bes!)} \repeat "tremolo" 4 {d( bes)} |
  \repeat "tremolo" 4 {ees\( bes} \repeat "tremolo" 4 {ees c\)} |
  \repeat "tremolo" 4 {ees(\< bes)} \repeat "tremolo" 4 {d( bes)} |
  d2:16\ff c4:16 des4:16 |
  c2:16 c2:16 |
  c2:16 c2:16 |
  ees2:16 ees2:16 |
  d2:16 d2:16 |
  bes2:16 bes2:16 |
  bes2:16 bes2:16 |
  \deprecatedcresc bes2:16^\markup{\dynamic {sf}} b2:16^\markup{\dynamic {sf}} |
  c2:16^\markup{\dynamic {sf}} c2:16^\markup{\dynamic {sf}} |
  bes!2:16\ff bes2:16 |
  bes2:16 bes2:16 |
  bes16\fp\( g ees bes ees bes ees bes \repeat "tremolo" 4 {ees bes\)} |
  \deprecatedcresc \repeat "tremolo" 4 {ees\( bes} \repeat "tremolo" 4 {ees bes\)} |
  \repeat "tremolo" 4 {ees\f\( bes} << { \repeat "tremolo" 4 {ees bes\)} } {s2\<} >> |
  ees2:16\! aes2:16\ff |
  g8 r r4 <bes, aes' bes>8 r r4 |
  <bes g' bes>8 r r4 r2 |
  \bar "|."
 }    
}

ThirdViolinFirstMovementTiming =
{
 s1^\markup {" " \raise #4.0 \bold \huge { Allegro moderato ma con fuoco}}
 s1*176 \pageBreak
 s1*63
 s1^\markup{" " \raise #2.0 \bold\huge "poco rit."} |
 s1*3 |
 s1^\markup{" " \raise #2.0 \bold\huge "a tempo"}

}