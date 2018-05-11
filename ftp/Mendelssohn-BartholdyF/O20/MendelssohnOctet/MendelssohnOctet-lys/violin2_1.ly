%Violin 2, 1st movement
\version "2.19.80"

SecondViolinFirstMovement =
{
 \relative c' {  
  \key c \minor
  \time 4/4
  \repeat "tremolo" 4 { g'16\p\( bes, } \repeat "tremolo" 4 { g'16 bes,\) }
  \repeat volta 2 {
   \repeat "tremolo" 4 { g'16\( bes, } \repeat "tremolo" 4 { g'16 bes,\) }
   << {\repeat "tremolo" 4 { g'16\( bes, } \repeat "tremolo" 4 { g'16 bes,\) } } {s4. \deprecatedcresc s8 s2} >> 
   \repeat "tremolo" 4 { g'16\f\( ees } \repeat "tremolo" 4 { g16 ees\) }
   \repeat "tremolo" 4 { f16\fp\( ees } \repeat "tremolo" 4 { f16 ees\) }
   \repeat "tremolo" 4 { f16\( ees } \repeat "tremolo" 4 { f16 ees\) }
   \deprecatedcresc \repeat "tremolo" 4 { aes16\( f } \repeat "tremolo" 4 { aes16 f\) }
   \repeat "tremolo" 4 { aes16\f\( f } \repeat "tremolo" 4 { aes16 f\) }
   ees8 r r4 r2 |
   <ees ees'>4.\sf ees'16-. ees-. ees8( ees,) r4 |
   <ees ees'>4.\sf ees'16-. ees-. ees8( ees,) r4 |
   r8 ees( d ees f\sf d bes aes |
   g4) r4 r2 |
   <ees' ees'>4.\sf ees'16-. ees-. ees8( ees,) r4 |
   <ees ees'>4.\sf ees'16-. ees-. ees8( ees,) r4 |
   R1 |
   \repeat "tremolo" 4 { des'16\p( bes) } \deprecatedcresc d16( ces d ces) aes8\! r |
   r2 \deprecatedcresc \repeat "tremolo" 4 { ges'16( ees) } |
   \repeat "tremolo" 4 { f16\f( d) } \repeat "tremolo" 4 { ees( c) } |
   bes'16-.\ff aes-. g-. f-. ees-. d-. c-. bes-. aes g f ees d c bes aes |
   g8 r r4 r2 |
   r4 bes'\p( aes g) |
   g( f8) r r2 |
   r4 des'( c b) |
   b( c8) r r4 aes( |
   bes) r r aes( |
   g) r r ges( |
   f1 |
   ees4) r r aes( |
   bes) r r aes( |
   g) r r2 |
   R1*2 | 
   <g bes>1~\f |
   \deprecateddim <g bes> |
   c,2\p( ces |
   bes4) r r2 |
   R1 |
   \deprecatedcresc \repeat "tremolo" 4 { g'16\( ees } \repeat "tremolo" 4 { g16 ees\) }
   
   % Bar 40
   \repeat "tremolo" 4 { g16\f\( ees } \repeat "tremolo" 4 { g16 ees\) }
   e4 r8 bes\p( e g bes des |
   bes4.\accent) e,8( \deprecatedcresc g bes des g |
   bes,4.)\accent f8( bes des f\f des') |
   bes4( g e bes) |
   aes8 r r4 r2 |
   f'4.\sf f16-. f-. f8( f,) r4 |
   f'4.\sf f16-. f-. f8( f,) r4 |
   r2 r8 g'\p( f g |
   aes\accent f des aes ees) \deprecatedcresc bes''( aes bes |
   c\accent aes ees c) b'\f\accent( f d b) |
   c r g'4.\sf g8 g g |
   fis r r4 r bes,\p( |
   c) r r bes( |
   a) r r2 |
   R1*4 |
   f'1\p~ |
   f4 f2 f4( |
   \deprecatedcresc e1~) |
   e4 e2 e4( |
   ees!2.)\f ees8. ees16 |
   << {ees2.  ees8. ees 16} {s2 \deprecatedcresc s2} >> |
   \repeat "tremolo" 4 { ees16\ff\( a, } \repeat "tremolo" 4 { ees'16 a,\) } |
   ees'(\sf a, ees' a,) ees'(\sf a, ees' a,) ees'(\sf a, ees' a,) ees'(\sf a, ees' a,) |
   ees'(\sf a, ees' a,) ees'(\sf a, ees' a,) ees'(\sf a, c bes a c ees a) |
   bes1~_\markup{\dynamic {fpp}} |
   bes |
   f~ |
   f4 r r2 |
   bes,1~_\markup{\dynamic {sf pp}} |
   bes~ |
   bes2( f |
   bes,8) r r4 r2 |
   d'1~\accent |
   d4 g,\p( a b |
   c b8 a) b4 g8( a |
   b4 c8 b) b( a g a) |
   g4 r r2 |
   g'1~_\markup{\dynamic {sf pp}} |
   g~ |
   g2( d |
   g,8) r d'-.^\markup{\bold\italic "stacc."} c-. c( b) a-. b-. |
   c r d-. c-. c( b) a-. b-. |
   c( g) aes!-. aes-. aes( g) f-. g-. |
   aes( c,) aes'-. aes-. aes( g) f-. g-. |
   aes r r4 r2 |
   r4 d16-. d-. d-. c-. bes-. bes-. d-. bes-. g-. g-. bes-. g-. |
   
   % Bar 90
   ees8 r r4 ees'16\pp ees ees d c c c bes |
   a a c a f8 r ees'16 ees ees d c c c bes |
   a a c a ees4( d8) r r4 |
   r r8 d\mf( g bes d bes' |
   g4.\accent) \deprecatedcresc d,8( g bes d bes' |
   g4.\accent) d,8( g bes d d' |
   bes2\f f) |
   bes,1\accent |
   f\accent |
   f'~ |
   f~ |
   f8 bes16( a g f ees d c bes a g f ees d c |
   f8) r r4 r2 |
   R1*2 |
   r8 bes( bes'4.) bes,8( bes'4~) |
   bes8 bes,( bes' bes, bes' bes, bes' bes,) |
   g'4( f) g( f) |
   \deprecatedcresc g8( f) g( f) g-. f-. g-. g-. |
   f,16\ff d d d d d d d d f f f f f f f |
   f bes bes bes bes bes bes bes bes d d d d d d d |
   bes8 r r4 r2 |
   r4 <d, bes'>8 r <ees bes' g'> r <c f a> r |
   bes'16\f bes bes bes bes4:16 bes2:16 |
   bes2:16 bes 2:16 |
   f'2:16 f2:16 |
   e2:16 ees2:16 |
   d2:16 d2:16 |
   g2:16 g2:16 |
   bes2:16 bes2:16 |
   bes2:16 a2:16 |
   e2:16 ees2:16 |
   g2:16\ff g8:16 f8:16 ees8:16 c8:16 |
   bes8 r r4 r d16( c) bes-. a-. |
   bes( f) d-. bes-. d8 r r4 d'16( c) bes-. a-. |
   bes( f) d-. bes-. d8 r r4 d'16( c) bes-. a-. |
   bes( d,) f-. bes-. d( c) bes-. a-. bes( d,) f-. bes-. d( c) bes-. a-. |
  }
  \alternative
  {
   {
    bes8 r <d, bes' f'> r r4 <f a f'>8 r |
    r des' r d r ees r e |
    r f r g r aes r bes |
    r4 c,, r <d bes' bes'> |
    <ees bes' g'>8 r g16\(\p bes, g' bes, \repeat "tremolo" 4 { g'16 bes,\) } |
   }
   {
    \repeat "tremolo" 4 { d'16\f\( bes } \repeat "tremolo" 4 { d16 bes\) } |
   }
  }
  \repeat "tremolo" 4 { d16\( bes } \repeat "tremolo" 4 { d16 bes\) } |
  \repeat "tremolo" 4 { f'16\( d } \repeat "tremolo" 4 { f16 d\) } |
  \repeat "tremolo" 4 { f16\( d } \repeat "tremolo" 4 { f16 d\) } |
  \repeat "tremolo" 4 { f,16\(\sf d } \repeat "tremolo" 4 { f16 d\) } |
  \repeat "tremolo" 6 { g16\( f } g16 f aes f\) |
  \repeat "tremolo" 6 { g16\( f } g16 f aes f\) |
  g8( b d f d4) r8 <b g'> |
  
  %% Bar 140
  <b g'>4 r8 d, g2~ |
  g8\< a16 a b b c c d8:16 ees8:16 f8:16 f8:16\! |
  ees2\ff ees4.. c16 |
  g8 r des'4-.\accent( des-. -\tweak Y-offset 4 \accent des-.\accent) |
  bes2 bes4.. <bes bes'>16 |
  <bes bes'>8 r a4-.\accent( a-.\accent a-.\accent) |
  bes2 f4.. des16 |
  bes8 r des'4-.\accent( des-. -\tweak Y-offset 4 \accent des-.\accent) |
  <des f>2 <des f>4.. <des f>16 |
  <des f>8 r <ges, c>4-.\accent( <ges c>4-. -\tweak Y-offset -4 \accent <ges c>4-.\accent) |
  <f des'>2 aes4.. f16 |
  f8 r f'4-.\accent( f-.\accent f-.\accent) |
  <c f>1~ |
  <c f>8 r g'4-.\accent( g-.\accent g-.\accent) |
  r aes-.\accent( aes-.\accent aes-.\accent) |
  R1*5 |
  
  %% Bar 160
  r4 f-.\p( f-. f-.) |
  r f-.( f-. f-.) |
  r f-.( f-. f-.) |
  r f-.( f-. f-.) |
  r f-.( f-. f-.) |
  r e-.( e-. e-.) |
  r4 \deprecateddim f-.( r f-.) |
  r2 b,(\!_\markup{\dynamic {pp} \bold\italic\whiteout "con espress."} |
  r c) |
  R1*9 |
  r4 ees,\p( f g |
  aes2 g4 f) |
  g( ees f g |
  aes2 g4 f) |
  g1~\pp |
  g~ |
  g4 g( a bes |
  c2 bes4 a |
  g) r r2 |
  c1( |
  d |
  a) |
  bes |
  \set doubleSlurs = ##t
  <bes, ees>1( |
  <bes d>)( |
  <bes ees>)( |
  <bes d>) |
  <bes ees>( |
  <bes d>)( |
  <bes ees>)~ |
  <bes ees>~ |
  <bes ees>( |
  <bes d>4) r r2 |
  \set doubleSlurs = ##f
  R1*5 |
  a'8\p a4 a a a8( |
  bes) r r4 r2 |
  R1 |
  f16\mf( e f g aes bes c bes \deprecatedcresc aes g f g aes g f ees |
  
  %% Bar 210
  d ees f g aes g f ees) d( ees f g aes bes c d |
  ees f g aes \deprecatedcresc bes aes g f ees f g f ees d c bes) |
  a( bes c d ees d c bes) a\<( bes c d ees f g a |
  bes8\f f d bes f bes,) bes-. bes~ |
  bes bes4 bes \deprecatedcresc bes bes8~ |
  bes bes4 bes bes bes8~ |
  bes bes4 bes8 c16\ff( bes c d ees f g a |
  bes a c bes d c ees d) f( e g f aes! g f ees) |
  d_\markup{\bold\italic "sempre" \dynamic{ff}}( c ees d f ees d c) bes( a bes b c bes aes g) |
  aes( g f e) f( ees d c) d( c bes a bes c d ees) |
  f( ees d c d ees f g) aes\<( g f g aes bes c d\! |
  ees8) g,16\p\( bes, g' bes, g' bes, \repeat "tremolo" 4 {g'16 bes,\)} |
  \repeat "tremolo" 4 {g'16\( bes,} \repeat "tremolo" 4 {g'16 bes,\)} |
  \deprecatedcresc \repeat "tremolo" 4 {g'16\( bes,} \repeat "tremolo" 4 {g'16 bes,\)} |
  \repeat "tremolo" 4 {g'16\(\f ees} \repeat "tremolo" 4 {g16 ees\)} |
  \repeat "tremolo" 4 {f16\(\fp ees} \repeat "tremolo" 4 {f16 ees\)} |
  \repeat "tremolo" 4 {f16\( ees} \repeat "tremolo" 4 {f16 ees\)} |
  \deprecatedcresc \repeat "tremolo" 4 {aes16\( f} \repeat "tremolo" 4 {aes16 f\)} |
  \repeat "tremolo" 4 {aes16\f\( f} \repeat "tremolo" 4 {aes16 f\)} |
  ees8 r r4 r2 |
  <ees ees'>4.\sf ees'16-. ees-. ees8( ees,) r4 |
  <ees ees'>4.\sf ees'16-. ees-. ees8( ees,) r4 |
  R1 |
  ees'2_\markup{\dynamic {p} \bold\italic "cantabile"}( d4 c |
  bes) \deprecatedcresc g'( f ees |
  d) bes'8(\f aes g4 aes8 f |
  ees2)~ ees8 ees( b c |
  f2)\sf~ f8( ees d c) |
  bes!1~_\markup{\dynamic {fpp}} |
  bes~ |
  bes( |
  bes4) r r2 |
  R1*3 |
  r4 bes8-.\p^\markup{\bold\italic "stacc."} aes-. aes( g) f-. g-. |
  f( c) bes'-. aes-. aes( g) f-. g-. |
  f r aes-. aes-. aes( g) f-. g-. |
  aes r aes-. aes-. aes( g) f-. g-. |
  aes r aes16\pp-. aes-. aes-. g-. f-. f-. aes-. f-. d-. d-. f-. d-. |
  
  %% Bar 250
  bes8 r bes'16 bes bes aes g g bes g ees ees g ees |
  c8 r c'16 c c bes aes aes c aes f f aes f |
  d8 r b'16 b b d c c c a b b b d |
  c c c a b8-. g( c ees g ees') |
  c1\accent~ |
  c1 |
  \deprecatedcresc bes~ |
  bes4 aes( g f) |
  \set doubleSlurs = ##t
  <ees, ees'>1\f~ |
  <ees ees'>1 |
  <a a'>1~\sf |
  <a a'> |
  \set doubleSlurs = ##f
  bes~\ff |
  bes~ |
  bes |
  r8 bes(\f bes'4.) bes,8( bes'4)~ |
  bes8 bes,( bes' bes, bes' bes, bes' bes,) |
  g'4( f) g( f) |
  g8( f) g( f) g-. f-. g-. f-. |
  \set doubleSlurs = ##t
  g2\< <c, aes'>\ff( |
  <bes g'>8) r ees r ees r bes r |
  \set doubleSlurs = ##f
  bes2:16\f bes2:16 |
  ees2:16 ees2:16 |
  ees2:16 ees2:16 |
  ees2:16 d2:16 |
  ees2:16\f ees2:16 |
  ees2:16 ees2:16 |
  ees2:16 ees2:16 |
  ees2:16 d2:16 |
  ees2:16 d2:16 |
  ees2:16\ff d2:16 |
  ees8 r ees16 ees ees f g g ees g bes bes g bes |
  ees8 r g,,4\p aes2( |
  g8) r g'16\ff g g f ees ees g ees c c ees c |
  bes8 r ees,2(\p bes4) |
  bes r r2 |
  R1*13 |
  bes''1\p~ |
  bes2( g) |
  \deprecatedcresc f1( |
  fis)\< |
  \repeat "tremolo" 4 {g16\f\( ees} \repeat "tremolo" 4 {f!16 ees\)} |
  \repeat "tremolo" 4 {g16\( ees} \repeat "tremolo" 4 {aes16 d,\)} |
  \repeat "tremolo" 4 {g16\( ees} \repeat "tremolo" 4 {f16 ees\)} |
  \repeat "tremolo" 4 {g16\(\< ees} \repeat "tremolo" 4 {f16 d\)} |
  g1~\ff |
  g8( f e f e f g f) |
  bes( aes g aes g aes bes aes) |
  c4. bes8 g4\accent ees\accent |
  d\accent bes\accent aes\accent f\accent |
  ees'2:16 ees2:16 |
  bes4:16 d4:16 d2:16 |
  ees4 r <ees, ees'>2\sf |
  <ees ees'>\sf <ees ees'>\sf |
  aes'1~ |
  aes4 bes, g'4. f8 |
  ees16\(\fp bes g bes, g' bes, g' bes, \repeat "tremolo" 4 {g'16 bes,\)} |
  \deprecatedcresc \repeat "tremolo" 4 {g'16\( bes,} \repeat "tremolo" 4 {g'16 bes,\)} |
  \repeat "tremolo" 4 {g'16\f\( bes,} \repeat "tremolo" 4 {g'16\< bes,\)} |
  g'2:16\! d'2:16\ff |
  ees8 r r4 <bes, f' d'>8 r r4 |
  <bes f' ees'>8 r r4 r2 |
  \bar "|."
 }
}

SecondViolinFirstMovementTiming =
{
 s1^\markup {" " \raise #4.0 \bold \huge { Allegro moderato ma con fuoco}}
 s1*204 \pageBreak
 s1*35
 s1^\markup{" " \raise #2.0 \bold\huge "poco rit."} |
 s1*3 |
 s1^\markup{" " \raise #2.0 \bold\huge "a tempo"}
}