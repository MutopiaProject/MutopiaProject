%Violin 1, 1st movement
\version "2.19.80"

FirstViolinFirstMovement =
{
 \relative c' {  
  \key c \minor
  \time 4/4
  r4 r8 g8(\p bes es g ees' |
  \repeat volta 2 {
   bes4.)\accent bes,8( ees g bes g' |
   ees4.)\accent \deprecatedcresc ees,8( g bes ees g |
   bes g) ees'4\f~ ees16 bes( g es bes g aes g) |
   f4 r8 aes,8(\p c f aes f' |
   c4.)\accent c,8( f aes c aes' |
   \once\override Script.padding = #1.0
   f4.)\accent \deprecatedcresc aes,8( ces f aes ces |
   f)\f aes~\accent aes16 f( d bes aes f d bes aes f d aes) |
   g8 r r4 r2 |
   
   %% Bar 10
   ees'''4.\sf ees16-. ees-. ees8( ees,) r4 |
   ees'4.\sf ees16-. ees-. ees8( ees,) r4 |
   r8 ees( d ees f\sf d bes aes |
   g4) r4 r2 |
   ees''4.\sf ees16-. ees-. ees8( ees,) r4 |
   ees'4.\sf ees16-. ees-. ees8( ees,) r4 |
   r8 ees\p( d ees f d bes aes |
   g) g'( f g \deprecatedcresc aes f d ces |
   bes) bes'( aes bes \deprecatedcresc c a ges ees |
   d) d'\f( c d f ees4)\accent  d16 c |
   bes-.\ff aes-. g-. f-. ees-. d-. c-. bes-. aes g f ees d c bes aes |
   g8 r r4 r2 |
   r4 g''\p( f ees) |
   e( f8) r r2 |
   r4 bes( aes f) |
   f( e8) r r4 aes( |
   g) r r f( |
   e) r r ees |
   ees2( d4 bes') |
   ees, r r aes( |
   g) r r f( |
   e) r r ges(\sf |
   \deprecatedcresc f1) |
   <bes, bes'>2.\f\accent( aes'4)
   g1~ |
   \deprecateddim g4( ees bes g |
   ees2\p f |
   g4) r8 g,8(\p bes es g ees' |
   bes4.)\accent bes,8( ees g bes g' |
   ees4.)\accent \deprecatedcresc ees,8( g bes ees g |
   
   %% Bar 40
   bes g) ees'4\f~ ees16 bes( g es bes g ees bes) |
   g4 r8 e'\p( g bes des bes' |
   g4.)\accent g,8( \deprecatedcresc bes des g des' |
   \once\override Script.padding = #1.0
   bes4.\accent) bes,8( des g bes\f g' |
   f e) des4\accent~ des16 bes( g e des bes g e) |
   f8 r r4 r2 |
   f''4.\sf f16-. f-. f8( f,) r4 |
   f'4.\sf f16-. f-. f8( f,) r4 |
   r8 f\p( e f g\accent e c bes |
   aes) aes'( \deprecatedcresc g aes bes\accent g ees des |
   c) c'( b c d!\f \accent b g f |
   e8. e'16) e8.(\accent d16) d8.\accent( cis16) cis8.(\accent d16) |
   d8 r r4 r bes\p( |
   a) r r g(
   fis) r r c,( |
   \deprecateddim b2 bes |
   a4)\! r r c\pp( |
   b2)~ b8 b-.( b-. b-.) |
   \deprecatedcresc bes!1~ |
   bes4 r8 d\p( f bes d bes' |
   
   %% Bar 60
   f) f,( bes d f\< d'\!  bes\> f)\! |
   r8 e,( g \deprecatedcresc bes des bes' g) g,( |
   bes\< des g des'\! bes\> g e bes)\! |
   r8 a,\f( c ees! f c' ees f |
   \stemDown a) ees,( f a \stemNeutral \deprecatedcresc c ees a c) |
   g'1~\ff |
   g8 f4\accent ees\accent d\accent c8~\accent |
   c bes-. a-. g-. f-. e-. ees-. c-. |
   bes r r4 r2 |
   R1*2 |
   
   % Bar 71
   r4 r8 d,\p( f bes d d') |
   bes1~_\markup{\dynamic "sf pp"} |
   bes1~ |
   bes2( f |
   bes,8) r c-.\p^\markup{\bold\italic {stacc.} } bes-. bes( a) g-. a-. |
   g( d) c'-. bes-. bes( a) g-. a-. |
   
   % 5th page
   g1~_\markup{\dynamic "sf pp"} |
   g1( |
   d) |
   g,4. b8( d g b b' |
   g) r g,4\p( a b |
   c b8 a) b4 g8( a |
   b4 c8 b) b( a) g-. a-. |
   g r f'^\markup{\bold\italic {stacc.}} ees-. ees( d) c-. d-. |
   c( g) f'-. ees-. ees( d) c-. d-. |
   c-. r des-. c-. c( bes) aes-. bes-. |
   aes( ees) des'-. c-. c( bes) aes-. bes-. |
   aes r c16-. c-. c-. bes-. aes-. aes-. c-. aes-. f-. f-. aes-. f-. |
   bes,8 r r4 r2 |
   ees'16-.\pp ees-. ees-. d-. c-. c-. ees-. c-. a-. a-. c-. a-. f8 r |
   ees'16 ees ees d c c ees c a a c a f8  r |
   ees'16 ees ees a, d d d c bes bes bes g d' d d c |
   bes bes bes g d' d d c bes bes d bes g g bes g |
   \deprecatedcresc ees ees g bes d d d c bes bes d bes g g bes g |
   e e g bes d d d c bes bes d bes g g bes g |
   
   % 6th page
   f\f( bes a bes c bes a bes a bes a bes c bes a bes) |
   bes'1\accent |
   f\accent |
   f'~ |
   f~ |
   f |
   aes2\accent\ff aes16 aes aes g f f f ees |
   d_\markup{\bold\italic {sempre} \dynamic{ff}} d d c bes bes bes a aes aes aes g f f f ees |
   d c bes a aes g f ees d ees f ees d c bes aes |
   g^\markup{\bold\italic "con fuoco"} aes bes c d ees f g bes aes g f ees d c bes |
   g' aes bes c d ees f g bes aes g f ees d c bes |
   g'\f bes, ees g bes bes, bes' aes g bes, ees g bes bes, bes' aes |
   \deprecatedcresc g bes, bes' aes g bes, bes' aes g8 r bes4 |
   f,2~\ff f16 d ees f g a bes c |
   
   %% Bar 110
   d bes c d ees f g a bes f g a bes c d ees |
   f8-. d-. bes-. g-. f-. d-. bes-. g-. |
   f r <d bes'> r <ees bes' g'> r a r |
   \grace bes16 bes'1\f\accent |
   d\accent |
   f\accent |
   g2~\sf g8( f) ees-. c-. |
   \grace d16 c8( bes) bes4 r2 |
   d8. c16 bes4 r2 |
   f'8. ees16 d4 r2 |
   g2~ g8( f) ees-. c-. |
   g'2~ g8( f) ees-. c-. |
   g'2~\ff g8 f-. ees-. c-. |
   bes8 r r4 r4 d16( c) bes-. a-. |
   bes( f) d-. bes-. d,8 r r4 d''16( c) bes-. a-. |
   bes( f) d-. bes-. d,8 r r4 d''16( c) bes-. a-. |
   bes( d,) f-. bes-. d( c) bes-. a-. bes( d,) f-. bes-. d( c) bes-. a-. |
  }
  \alternative {
   {
    bes2\accent c\accent |    
    des4\accent d\accent ees\accent e\accent |   
    \ottava #1
    \set Staff.ottavation = #"8"
     f\accent g\accent aes\accent bes\accent |
     c2\accent d\accent |
     ees4\accent
    \ottava #0    
    r8 
    \once\override Slur.control-points = #'((1.6 . -0.2) (3 . 5) (10 . 8) (15 . 5))
    g,,,,\p( bes8 ees g ees') |    
   }
   {
    bes'2 r2 |
   }
  }
  d2 r |
  f r |
  f8-. d-. f4~ f16 d( b aes f d b aes) |
  f4 r8 b,( d f b aes' |
  g4) r8 b,,( d f b aes' |
  g4) r8 b,,( d f b aes' |
  g4) r8 c( b4) r8 ees( |
  
  % Bar 140
  d4) r8 f,,8 b2~ |
  b16\< b c c d d ees ees f8:16 g8:16 a8:16 b8:16\! |
  c2\ff g4.. ees16 |  
  c8 r <bes e>4-.\accent( <bes e>4-.\accent <bes e>4-.\accent) |
  <bes f'>2 bes'4.. des16 |
  f8 r ges,4-.\accent( f-.\accent ees-.\accent) |
  <f, des'>2 <f des'>4.. <f des'>16 |
  <f des'>8 r g'!4-.\accent( g-.\accent g-.\accent) |
  aes2 aes4.. aes16 |
  aes8 r <c, bes'>4-.\accent( <c aes'>-.\accent ges'\accent) |
  f2 des4.. aes16 |
  f8 r b'4-.\accent( b-.\accent b-.\accent) |
  c1~ |
  c8 r des4-.\accent( c-.\accent bes-.\accent) |
  R1*7 | 
  ges,1\p( |
  g! |
  bes2 a) |
  ees'( d) |
  des1( |
  \deprecateddim c2 f,) |
  aes1\pp( |
  g1 |
  f8) r f4\p( g aes |
  bes aes8 g) aes4 f8( g |
  aes4 bes8 aes) aes( g f g) |
  f8 r f4( g aes |
  bes aes8 g) aes4 f8( g |
  aes4 bes8 aes) aes( g f g) |
  f8 r f4( f g |
  aes g8 f) g4 ees8( f |
  g4 aes8 g) g( f ees f) |
  ees4 r r2 |
  R1*4 |
  a1\pp( |
  bes |
  fis) |
  bes~ |
  bes~ |
  bes4 bes( c d |
  ees2 d4 c) |
  bes1 |
  bes( |
  ces |
  c! |
  bes) |
  bes( |
  ces |
  c!)~ |
  c~ |
  c( |
  bes4) r r2 |
  R1*6 |
  bes8\p bes4 bes8( \deprecatedcresc b) b4 b8( |
  c8) c4 c4 c4 c8~ |
  c8 c4\mf c8( \deprecatedcresc ces) ces4 ces8( |
  bes8) bes4 bes bes bes8~ |
  bes8 ees4 ees ees ees8~
  ees8 \deprecatedcresc ees4 ees ees ees8( |
  d)\f bes4 bes bes bes8~ |
  bes bes4 bes \deprecatedcresc bes bes8~ |
  bes bes4 bes bes bes8~ |
  bes bes4 bes8 c16\ff( bes c d ees f g a |
  bes a c bes d c ees d) f( e g f aes! g f ees) |
  d(_\markup{\bold\italic {sempre} \dynamic {ff}} c ees d f ees d c) bes( a bes b c bes aes g) |
  aes( g f e) f( ees d c) d( c bes a bes c d ees) |
  
  %% Bar 220
  f( ees d c d ees f g) aes(\< g f g aes bes c d\! |
  ees8) r r g,,,\p( bes ees g ees' |
  bes4.\accent) bes,8( ees g bes g' |
  \deprecatedcresc ees4.\accent) ees,8( g bes ees g |
  bes g) ees'4~\f ees16 bes( g ees bes g aes g) |
  f4 r8 aes,\p( c f aes f' |
  c4.\accent) c,8( f aes c aes' |
  f4.\accent) \deprecatedcresc aes,8( ces f aes ces |
  f\f) aes\accent~ aes16 f( d bes aes f d bes aes f d aes) |
  g8 r r4 r2 |
  ees'''4.\sf ees16-. ees-. ees8( ees,) r4 |
  ees'4.\sf ees16-. ees-. ees8( ees,) r4 |
  r8 ees(\p d ees f\accent d bes aes |
  g) g'( f g aes\accent f d aes |
  \deprecatedcresc g) bes'( aes bes  c aes f c |
  bes) d'\f( c d) r d( c d |
  ees c g ees) c( g ees c) |
  ees''\sf( c a f ees c a f) |
  bes1\fp~ |
  bes4 r r2 |
  r1 |
  bes4(_\markup{\dynamic {pp} \bold\italic " con espress."} g8. ees'16) ees4( bes8. g'16) |
  g2( f4 ees) |
  ees2~ ees8( d c bes) |
  bes2( d, |
  ees4) r r2 |
  r1 |
  r4 des'8-.\p^\markup{\bold\italic "stacc."} c-. c( bes) aes-. bes-. |
  aes( ees) des'-. c-. c( bes) aes-. bes-. |
  aes8 r c16-.\pp c-. c-. bes-. aes-. aes-. c-. aes-. f-. f-. aes-. f-. |
  d!8 r d'16 d d c bes bes d bes g g bes g |
  ees8 r ees'16 ees ees d c c ees c aes aes c aes |
  f8 r g'16 g g f ees ees ees fis g g g f |
  ees ees ees fis g g g f ees ees g ees c c ees c |
  aes c ees ees g g g f ees ees g ees c c ees c |
  a c ees ees g g g f ees ees g ees c c ees c |
  g bes ees ees g g g f \deprecatedcresc ees ees g, ees' g g g f |
  ees ees g, ees' ees ees g, ees' ees bes c d ees f g aes |
  bes1~\f |
  bes1( |
  a8) r r4 r2 |
  r1 |
  aes'!2\ff aes16_\markup{\bold\italic "con fuoco"} aes aes g f f f ees |
  d d d c bes bes bes a aes aes aes g f f f ees |
  d c bes a aes g f ees d ees f ees d c bes aes |
  g aes bes c d ees f g bes aes g f ees d c bes |
  g' aes bes c d ees f g bes aes g f ees d c bes |
  g' bes, ees g bes bes, bes' aes g bes, ees g bes bes, bes' aes |
  g bes, bes' aes g bes, bes' aes g bes, bes' aes g bes, bes' aes |
  g2\< c2\ff( |
  ees8) r g, r c r d, r |
  
  % 14th page
  ees1\f\accent |
  g\accent |
  bes\accent |
  c2~\sf c8( bes) aes-. f-. |
  \grace g16 f8( ees) ees4 r2 |
  g8. f16 ees4 r2 |
  bes'8. aes16 g4 r2 |
  c2~ c8( bes) aes-. f-. |
  c'2~ c8( bes) aes-. f-. |
  
  %% Bar 280
  c'2~\ff c8 bes-. aes-. f-. |
  ees8 r ees16 ees ees f g g ees g bes bes g bes |
  ees8 r g,4\p g( f |
  ees8) r g16\ff g g f ees ees g ees c c ees c |
  bes8 r g4\p g( f |
  ees) r r2 |
  R1*2 |
  r2 r4 aes'\pp-.( |
  aes2.-.) aes4-.( |
  aes1-.)( |
  aes~) |
  aes4( ces2) ces4 |
  ces( c) r a |
  a( bes) r g |
  g( aes!\< c2~)\! |
  c8 r aes4(\< c2~)\! |
  c8 r c4(\< ees2~)\! |
  ees8 r c4\f( ees2~) |
  ees8\p bes(_\markup{\bold\italic "con fuoco"} g' f ees d c bes) |
  
  %% Bar 300
  a( bes c bes ees d c bes) |
  \deprecatedcresc b( c d c f ees d c) |
  b(\< c d c f ees d c) |
  bes!4\f ees c aes'8_\markup{\bold\italic\whiteout "espress."} f |
  ees2 \afterGrace {f\trill_(}  {ees16[ f]) } |
  g4 f8( ees d c aes' f)  |
  ees2\< d |
  g1\ff~ |
  g8( f e f e f g f) |
  bes( aes g aes g aes bes aes) |
  c4. bes8 g4\accent ees\accent |
  d\accent bes\accent aes\accent f\accent |
  c'4. bes8 aes g f ees |
  d ees f g aes bes c d |        
  \deprecatedcresc ees2^\markup{\dynamic {sf}}  ees^\markup{\dynamic {sf}} |    
  ees^\markup{\dynamic {sf}} ees^\markup{\dynamic {sf}} |   
  aes1~\ff |
  aes4 bes, g'4. f8 |
  ees4 r8 g,,,(\p bes ees g ees' |
  bes4.\accent) \deprecatedcresc bes,8( ees g bes g' |
  ees4.\accent) ees,8\f( \tuplet 3/2 {g8\< bes ees)} \tuplet 3/2 { g( bes ees)} |
  g2\! bes\ff |
  ees,8 r r4 <bes,, f' d'>8 r r4 |
  <bes g' ees'>8 r r4 r2 |
  \bar "|."
 }    
}

FirstViolinFirstMovementTiming =
{
 s1^\markup {" " \raise #4.0 \bold\huge "Allegro moderato ma con fuoco"} | 
 s1*158 \pageBreak
 s1*81
 s1^\markup{" " \raise #2.0 \bold\huge "poco rit."} |
 s1*3 |
 s1^\markup{" " \raise #2.0 \bold\huge "a tempo"}
}