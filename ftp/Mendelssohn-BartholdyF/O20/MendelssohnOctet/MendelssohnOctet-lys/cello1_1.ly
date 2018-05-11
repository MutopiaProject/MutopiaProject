%Cello 1, 1st movement
\version "2.19.80"

FirstCelloFirstMovement =
{
 \relative c {  
  \key c \minor
  \clef "bass"
  \time 4/4
  \repeat "tremolo" 4 {ees16\(\p bes} \repeat "tremolo" 4 {ees bes\)} |
  \repeat volta 2 {
   \repeat "tremolo" 4 {ees\( bes} \repeat "tremolo" 4 {ees bes\)} |
   << {\repeat "tremolo" 4 {ees\( bes} \repeat "tremolo" 4 {ees bes\)} } {s4. s8 \cresc s2 } >>|
   \repeat "tremolo" 4 {ees16\f\( c} \stemDown \repeat "tremolo" 4 {ees bes\)} \stemNeutral |
   \repeat "tremolo" 4 {ees\fp\( c} \repeat "tremolo" 4 {ees c\)} |
   \repeat "tremolo" 4 {ees\( c} \repeat "tremolo" 4 {ees c\)} |
   \deprecatedcresc \repeat "tremolo" 4 {ees\( ces} \repeat "tremolo" 4 {ees ces\)} |
   \repeat "tremolo" 4 {f\f\( bes,} \repeat "tremolo" 4 {f' d\)} |
   ees8 r r ees,( g bes ees g) |
   c,4\sf( bes8) ees,( g bes ees g) |
   c,4\sf( bes8) ees,( g bes ees g) |
   c,2( bes)\sf |
   bes4. ees,8( g bes ees aes) |
   c,4\sf( bes8) ees,( g bes ees g) |
   c,4\sf( bes8) ees,( g bes ees g) |
   c,2\p\accent d\accent |
   e\accent \deprecatedcresc f\accent |
   g\accent \deprecatedcresc a\accent |
   b\accent\f c4\accent ees,\accent |
   bes!2:16\ff bes2:16 |
   ees,8 r ees'16\p-. ees-. ees-. f-. g-. g-. ees-. g-. bes-. bes-. g-. bes-. |
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
   \deprecatedcresc ees1)~ |
   ees1\f~ |
   \deprecateddim ees~ |
   ees~\p |
   ees4 r r2 |
   \repeat "tremolo" 4 {ees,16\( bes} \repeat "tremolo" 4 {ees bes\)} |
   \deprecatedcresc \repeat "tremolo" 4 {ees\( bes} \repeat "tremolo" 4 {ees bes\)} | 
   \repeat "tremolo" 4 {ees\f\( bes} \repeat "tremolo" 4 {ees bes\)} |
   \repeat "tremolo" 4 {e\p\( c} \repeat "tremolo" 4 {e c\)} |
   \repeat "tremolo" 4 {e\( c} \repeat "tremolo" 4 {e c\)} |
   \deprecatedcresc \repeat "tremolo" 4 {f\( des} \repeat "tremolo" 4 {g\f e\)} |
   \repeat "tremolo" 4 {g\( bes} \repeat "tremolo" 4 {g bes} |
   aes4.\) c8( aes f c aes) |
   des4\sf( c8) c'( aes f c aes) |
   des4\sf( c8) c'( aes f c aes) |
   d,2\fp e\accent |
   \deprecatedcresc f\accent g\accent |
   
   %% Bar 50
   aes\accent g2:16\f |
   c2:16 d4:16 ees4:16 |
   d8 r d'16-.\p d-. ees-. cis-. d2~ |
   d4 d16-. d-. ees-. cis-. d2~ |
   d4 d16-. d-. ees-. cis-. \deprecateddim d2~ |
   d4 d16-. d-. ees-. cis-. d4 d16-. d-. ees-. cis-. |
   d4 d16-.\pp d-. ees-. cis-. d2~ |
   d8 d-.( ees-. cis-.) d2~ |
   d8\< d\!( ees\>_\markup{\large\bold\italic {"cresc."}} cis\! d)\< d(\! ees\> cis\! |
   d1)~\p |
   d4 d2 d4( |
   \deprecatedcresc des1)~ |
   des4 des2 des4( |
   c4.) f,,8(\f a b c d) |
   c4(\accent a8) \deprecatedcresc f( a b c d) |
   c2\accent a\accent |
   <f c'>4\ff\accent <f c'>\accent <f c'>\accent <f c'>\accent |
   <f c'>8 f16 f f4:16 f4:16 f8 f |
   bes'1~_\markup{\dynamic "fpp"} |
   bes~ |
   bes2( f |
   bes,4) r r2 |
   bes'1_\markup{\dynamic "sf pp"}~ |
   bes( |
   f |
   bes8) r r4 r2 |
   R1*5 |
   r4 b,\p( c d |
   ees d8 c) d4 b8( c |
   d4 ees8 d) d( c) b-. c-. |
   b8-. r r4 g8^\markup{\bold\italic "pizz."} r8 r4 |
   c,8 r r4 g'8 r r4 |
   c,8 r r4 r2 |
   ees''1\accent^\markup{\bold\italic "arco"}( |
   aes,8) r r4 \afterGrace { aes,2\startTrillSpan\( } {g32[\stopTrillSpan aes]} |
   bes8\) r r4 \afterGrace { bes2\startTrillSpan\( } {a32[\stopTrillSpan bes]} |
   
   %% Bar 90
   c8\) r ges4\accent( f8) r f' r |
   r4 ges,4\accent( f8) r f' r |
   r4 fis,4\accent( g8) r d^\markup{\bold\italic "pizz."} r |
   g r d r g r r4 |
   \deprecatedcresc ees1^\markup{\bold\italic "arco"}( |
   e) |
   f_\markup{\dynamic "f sf"}~\! |
   f~ |
   f~ |
   f8 g16( a bes c d ees f8)\< g16( a bes c d ees\! |
   
   %% Bar 100
   f1)~ |
   f1 |
   <d,, bes'>1~\ff |
   <d bes'>~_\markup{\bold\italic "sempre" \dynamic "ff"} |
   \set doubleSlurs = ##t
   <d bes'>( 
   <ees bes'>8) r r4 r2 |
   \set doubleSlurs = ##f
   bes''1~\f |
   bes2 bes\accent |
   \deprecatedcresc bes4\accent bes\accent bes8-. bes-. bes-. bes-. |
   f,16\ff f f f f f f f f8 r f r |
   f''8-. d-. bes-. g-. f-. d-. bes-. g-. |
   f r r4 r2 |
   r4 g8 r ees r f r |
   bes4. bes8\f( d f bes d) |
   g,,4. g8( bes d g bes) |
   d,,4. d8( f bes d f) |
   des,2\sf( c8) r f r |
   bes4. bes8( d f bes d) |
   g,,4. g8( bes d g bes) |
   d,,4. d8( f bes d f) |
   des,2(\accent c8) r f r |
   des2(\accent c8) r f r |
   des'2\ff( c8) r f r |
   bes, r ges4\accent( f2)~ |
   f8 r ges4\accent( f2)~ |
   f8 r ges4\accent( f8) r f' r |
   bes, r f' r bes, r f' r |
  }
  \alternative {
   {
    r4 bes,8 r r4 f8 r |
    r bes r bes r bes r bes |
    r bes r bes r bes r bes |
    r4 bes r bes |
    \repeat "tremolo" 4 {ees16\fp\( bes} \repeat "tremolo" 4 {ees bes\)} |
   }
   {
    bes4 r8 d,\f( f bes d d') |
   }
  }
  bes4. f,8( bes d f f') |
  d4. bes,8( d f bes d) |
  aes!2 aes,! |
  g4 r r r8 d''\sf~ |
  d( g, d b g4) r8 d''\sf~ |
  d( g, d b g4) r8 d''\sf~ |
  d(  g, d) aes'\accent( g d b) g'\accent( |
  
  %% Bar 140
  f d b) ees\accent( d b g) ees'16 ees |
  d\< d c c b b a a g8:16 f8:16 ees8:16 d8:16\! |
  c8 r c16\ff c c d ees ees c ees g g ees g |
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
  c8 r <c c'>4-.^\accent( <c c'>-.^\accent <c c'>4-.)^\accent |
  r  <c c'>4-.^\accent( <c c'>-.^\accent <c c'>4-.)^\accent |
  r bes'-.\f^\accent( bes-.^\accent bes-.^\accent) |
  r \deprecateddim f'-.( f-. f-.) |
  r des-.(\mf c-. bes-.) |
  r \deprecateddim des-.( des-. des-.) |
  r des-.(\p c-. bes-.) |
  
  %% Bar 160
  r aes-.( aes-. aes-.) |
  r bes-.( bes-. bes-.) |
  r bes-.( bes-. bes-.) |
  r c-.( c-. c-.) |
  r b-.( b-. b-.) |
  r bes!-.( bes-. bes-.) |
  r \deprecateddim aes-.( r des-.) |
  r2 c\pp( |
  r c) |
  R1*9 |
  ees,1\p( |
  aes)( |
  
  %% Bar 180
  ees)( |
  aes) |
  ees\pp~ |
  ees |
  d~ |
  d |
  g~ |
  g |
  f~ |
  f( |
  
  %% Bar 190
  bes) |
  bes~ |
  bes~ |
  bes~ |
  bes~ |
  bes~ |
  bes~ |
  bes~ |
  bes~ |
  bes~ |
  bes8 r r4 r2 |
  R1*6 |
  bes8\p bes4 \deprecatedcresc bes bes bes8~ |
  bes bes4 bes bes bes8~ |
  bes bes4\mf bes bes bes8~ |
  
  %% Bar 210
  bes bes4 bes \deprecatedcresc bes bes8~ |
  bes bes4 bes bes bes8~ |
  << {bes bes4 bes bes bes8 } {s2 s2\< } >>|
  bes16\f( a bes c d ees f g f ees d c bes a bes b) |
  c( b c d ees f g aes! g f ees d c b c cis) |
  d( c! d ees f g \deprecatedcresc aes bes aes g f ees d c d ees |
  f8) f,16( g aes g aes bes) c\ff( bes c d ees f g a |
  bes a c bes d c ees d) f( e g f aes! g f ees) |
  d(_\markup{\bold\italic "sempre" \dynamic "ff"} c ees d f ees d c) bes( a bes b c bes aes g) |
  aes( g f e) f( ees d c) d( c bes a bes c d ees) |
  
  %% Bar 220
  f( ees d c d ees f g) f\<( ees d c bes aes! g f\! |
  ees8) ees'16\p\( bes ees bes ees bes \repeat "tremolo" 4 {ees bes\)} |
  \repeat "tremolo" 4 {ees\( bes} \repeat "tremolo" 4 {ees bes\)} |
  \deprecatedcresc \repeat "tremolo" 4 {ees\( bes} \repeat "tremolo" 4 {ees bes\)} |
  \repeat "tremolo" 4 {ees\f\( c} \stemDown \repeat "tremolo" 4 {ees bes\)} \stemNeutral |
  \repeat "tremolo" 4 {ees\fp\( c} \repeat "tremolo" 4 {ees c\)} |
  \repeat "tremolo" 4 {ees\( c} \repeat "tremolo" 4 {ees c\)} |
  \deprecatedcresc \repeat "tremolo" 4 {ees\( ces} \repeat "tremolo" 4 {ees ces\)} |
  \repeat "tremolo" 4 {f\f\( bes,} \repeat "tremolo" 4 {f' d\)} |
  ees8 r r ees,( g bes ees g) |
  c,4\sf( bes8) ees,( g bes ees g) |
  c,4\sf( bes8) ees,( g bes ees g) |
  c,2\p\accent d\accent |
  ees\accent f\accent |
  \deprecatedcresc g\accent aes\accent |
  bes\accent b\accent |
  c1\f |
  ees\sf~ |
  ees~\p |
  ees~ |
  \deprecateddim ees2( d) |
  ees1\pp~ |
  ees~ |
  ees~ |
  ees2 bes~ |
  bes8 r r4 c,,8^\markup{\bold\italic "pizz."} r r4 |
  f8 r r4 c8 r r4 |
  f8 r r4 r2 |
  ees''1\accent\p~^\markup{\bold\italic "arco"} |
  ees8 r aes,, r r4 bes16-.\pp bes-. bes-. c-. |
  d-. d-. bes-. d-. f-. f-. d-. f-. bes8 r c,16-. c-. c-. d-. |
  ees-. ees-. c-. ees-. g-. g-. ees-. g-. c8 r d,16-. d-. d-. ees-. |
  f-. f-. d-. f-. g g g b c c c c g g g b |
  c c c c g g g b c8 r r4 |
  aes,1  |
  a |
  bes8 r r4 r2 |
  R1 |
  des'2_\markup{\dynamic "ff sf"} des16_\markup{\bold\italic "con fuoco"} des des c bes bes bes aes |
  g g g f ees ees ees d! des c bes aes g f ees des |
  
  %% Bar 260
  c1\sf~ |
  c |
  <d! bes'>1\ff~ |
  <d bes'>~ |
  \set doubleSlurs = ##t
  <d bes'>( |
  <ees bes'>8) r r4 r2 |
  \set doubleSlurs = ##f 
  bes''1\f~ |
  bes2 bes\accent |
  bes4\accent bes\accent bes8-. bes-. bes-. bes-. |
  ees,2:16\< aes2:16\ff |
  bes8 r c r aes r bes r |
  ees,,4.\f ees8( g bes ees g) |
  c,,4. c8( ees g c ees) |
  g,4. g8( bes ees g bes) |
  ges,2\sf( f8) r bes r |
  ees,4. ees8( g bes ees g) |
  c,,4. c8( ees g c ees) |
  g,4. g8( bes ees g bes) |
  ges,2(\accent f8) r bes r |
  ges2(\accent f8) r bes r |
  ges2(\ff\accent f8) r bes r |
  ees, r ees'16 ees ees f g g ees g bes bes g bes |
  ees8 r r4 r2 |
  r4 g,16 g g f ees ees g ees c c ees c |
  bes8 r r4 r2 |
  r4 c'16-.\pp c-. des-. b-. c2~ |
  c4 c16-. c-. des-. b-. c2~ |
  c4 c16-. c-. des-. b-. c2~ |
  c4 c16-. c-. des-. b-. c2~ |
  c( des |
  ees aes,)~ |
  aes1~ |
  aes2 f( |
  c' bes)~ |
  bes aes~ |
  aes r |
  R1*3 |
  \repeat "tremolo" 4 {ees16\p\( g} \repeat "tremolo" 4 {ees g} |
  
  %% Bar 300
  \repeat "tremolo" 4 {ees g} \repeat "tremolo" 4 {ees g\)} |
  \deprecatedcresc \repeat "tremolo" 4 {ees\( f} \repeat "tremolo" 4 {ees f\)} |
  \repeat "tremolo" 4 {ees\(\< fis} \repeat "tremolo" 4 {ees fis\)} |
  g(\f ees g ees) g,8 g aes2:8 |
  bes2:8 bes2:8 |
  ees8 ees g, g aes2:8 |
  bes2:8\< aes2:8 |
  g8\ff g' g g c, c bes bes |
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
  \repeat "tremolo" 4 {ees16\(\fp bes} \repeat "tremolo" 4 {ees bes\)} |
  \deprecatedcresc \repeat "tremolo" 4 {ees\( bes} \repeat "tremolo" 4 {ees bes\)} |
  \repeat "tremolo" 4 {ees\f\( bes} \repeat "tremolo" 4 {ees\< bes} |
  ees\) c c c c4:16 bes2:16\ff |
  ees8 r r4 bes8 r r4 |
  ees,8 r r4 r2 |
  \bar "|."
 }    
}

FirstCelloFirstMovementTiming =
{
 s1^\markup {" " \raise #4.0 \bold\huge "Allegro moderato ma con fuoco"} | 
 s1*176 \pageBreak
 s1*63
 s1^\markup{" " \raise #2.0 \bold\huge "poco rit."} |
 s1*3 |
 s1^\markup{" " \raise #2.0 \bold\huge "a tempo"}
}