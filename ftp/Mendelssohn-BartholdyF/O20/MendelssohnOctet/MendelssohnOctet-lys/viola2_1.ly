%Viola 2, 1st movement
\version "2.19.80"

SecondViolaFirstMovement =
{
 \relative c {  
  \key c \minor
  \clef "alto"
  \time 4/4
  ees8\p ees4 ees ees ees8~ |
  \repeat volta 2 {
   ees ees4 ees ees ees8( |
   d) d4 \deprecatedcresc d d d8( |
   c)\f c4 c8( ees) ees4 ees8~ |
   ees ees4\p ees ees ees8~ |
   ees ees4 ees ees ees8_( |
   \deprecatedcresc ces') ces4 ces ces ces8( |
   bes)\f bes4 bes bes bes8~ |
   bes g16\( ees g ees g ees \repeat "tremolo" 4 {g ees\)} |
   fis\sf\( ees fis ees \repeat "tremolo" 6 {g ees\)} |
   fis\sf\( ees fis ees \repeat "tremolo" 6 {g ees\)} |
   \repeat "tremolo" 4 {ges\( ees} d2\sf\) |
   \repeat "tremolo" 4 {g!16\( ees} \repeat "tremolo" 4 {g ees\)} |
   fis\sf\( ees fis ees \repeat "tremolo" 6 {g ees\)} |
   fis\sf\( ees fis ees \repeat "tremolo" 6 {g ees\)} |
   \repeat "tremolo" 4 {a(\p ges)} \repeat "tremolo" 4 {aes!( f)} |
   \repeat "tremolo" 4 {g!( bes)} \deprecatedcresc \repeat "tremolo" 4 {aes( ces)} |
   \repeat "tremolo" 4 {bes( des)} \deprecatedcresc \repeat "tremolo" 4 {c!( ees)} |
   \repeat "tremolo" 4 {d!(\f f)} ees( c ees c aes c aes c) |
   
   %% Bar 20
   <ees, g>2:16\ff <f aes>2:16 |
   <ees g>8 r ees'16\p-. ees-. ees-. f-. g-. g-. ees-. g-. bes-. bes-. g-. bes-. |
   ees8-. r r4 r2 |
   r4 des16-. des-. des-. c-. bes-. bes-. des-. bes-. g-. g-. bes-. g-. |
   e8-. r r4 r2 |
   r4 c'16-. c-. des-. b-. c2~ |
   c4 c16-. c-. des-. b-. c2~ |
   c4 c16-. c-. des-. b-. c2~ |
   c8 c-.( c-. c-.) c( bes! a aes! |
   g) r c16-. c-. des-. b-. c2~ |
   c4 c16-. c-. des-. b-. c2~ |
   c4 c16-. c-. des-. b-. c2~ |
   c8 c( bes! a bes c des d! |
   \deprecatedcresc ees f, g aes bes c d ees) |
   ees4(\f bes g ees |
   \deprecateddim g,1) |
   aes1(\p |
   g8) <ees g>4 <ees g> <ees g> <ees g>8~ |
   \set doubleSlurs = ##t
   <ees g> <ees g>4 <ees g> <ees g> <ees g>8( |   
   \deprecatedcresc <d g>) <d g>4 <d g> <d g> <d g>8( |
      
    %% Bar 40
   <des g>)\f <des g>4 <des g> <des g> <des g>8( |
   <g bes>)\p <g bes>4 <g bes> <g bes> <g bes>8~ |
   <g bes> <g bes>4 <g bes> <g bes> <g bes>8( |   
   \deprecatedcresc <f bes>) <f bes>4 <f bes>8( <g bes>)\f <g bes>4 <g bes>8~ |
   \set doubleSlurs = ##f
   <g bes> <g bes>4 <g bes>8 \repeat "tremolo" 4 {e'16( g)} |
   f8 r r4 r c,(\< |
   des\!\> c8)\! r r4 c\<( |
   des\!\> c8)\! r r2 |
   r c2:16\mf |
   c4:16 des2:16\sf \deprecatedcresc ees4:16_\markup{\dynamic "sf"} |
   ees4:16 f2:16_\markup{\dynamic "sf"} g4:16_\markup{\dynamic "sf"} |
   g4:16 c4:16 bes4:16 a4:16 |
   a8\! r d'16\p-. d-. ees-. cis-. d2~ |
   d4 d16-. d-. ees-. cis-. d2~ |
   d4 d16-. d-. ees-. cis-. \deprecateddim d2~ |
   d4\! r r2 |
   r r4 a,\pp( |
   g2)~ g8 d-.( d-. d-.) |
   \deprecatedcresc bes'2~ bes8( d ees e) |
   f16\p\( d f d f, d f d \repeat "tremolo" 4 {f d\)} |
   
   %% Bar 60
   \repeat "tremolo" 4 {f\( d} \repeat "tremolo" 4 {f d\)} |
   \deprecatedcresc \repeat "tremolo" 4 {g\( e} \repeat "tremolo" 4 {g e} |
   \repeat "tremolo" 4 {g e} \repeat "tremolo" 4 {g e\)} |
   \repeat "tremolo" 4 {a\f\( f} \repeat "tremolo" 4 {a f\)} |
   \repeat "tremolo" 4 {a f\(} \deprecatedcresc \repeat "tremolo" 4 {a f\)} |
   \repeat "tremolo" 4 {a\ff\( c} \repeat "tremolo" 4 {a c\)} |
   ees,16(\sf f ees f) ees(\sf f ees f) ees(\sf f ees f) ees(\sf f ees f) |
   ees(\sf f ees f) ees(\sf f ees f) ees(\sf f ees f ees f ees f) |
   d8 r r4 r2 |
   R1*2 |
   d'16\pp( f d f d8) r r2 |
   R1*3 |
   r4 ees8-.\p^\markup{\bold\italic "stacc."} d-. d( c) bes-. c-. |
   bes( g) ees'-. d-. d( c) bes-. c-. |
   bes4( b c d |
   ees d8 c) d4 b8( c |
   d4 ees8 d) d( c b c) |
   b4 r r2 |
   g1~_\markup{\dynamic "sf pp"} |
   g~ |
   g2( d)~ |
   d8 r r4 r2 |
   R1 |
   r2 r4 ees''8^\markup{\bold\italic "pizz."} ees |
   ees ees, aes c ees ees ees ees, |
   c, d! ees f g aes bes c |
   d, r r4 r8 bes' c d |
   ees, c' ees, c c ees a f' |
   ees c a ees ees a c f |
   a c, c a bes d d a' |
   d, bes' d, a' d, bes' r4 |
   \deprecatedcresc \repeat "tremolo" 4 {g,16\(^\markup{\bold\italic "arco"} bes} \repeat "tremolo" 4 {g bes} |
   g bes d bes \repeat "tremolo" 6 {g bes\)} |
   \repeat "tremolo" 4 {d\f\( bes} f'8\) r r4 |
   R1 |
   bes2( a |
   bes4) d,,( ees f) |
   g( f8 e) f4 d8( ees |
   f4 g8 f) f( ees d ees) |
   f1\ff~ |
   f~_\markup{\bold\italic "sempre" \dynamic "ff"} |
   f( |
   ees8) r r ees\f( d ees f d) |
   ees8 r r ees( d ees f d) |
   ees4( f) ees( f) |
   \deprecatedcresc ees8( f) ees( f) ees-. f-. ees-. g-. |
   f8\ff r bes'-. g-. f-. d-. bes-. g-. |
   f2~\accent f8 bes16 bes bes bes bes bes |
   bes8 r r4 r2 |
   r4 <g d'> 8 r ees r f r |
   f16\f f f f f4:16 f2:16 |
   g2:16 g2:16 |
   f2:16 f2:16 |
   g2:16 a2:16 |
   bes2:16 bes2:16 |
   bes2:16 bes2:16 |
   bes2:16 <bes d>2:16 |
   
   %% Bar 120
   e,2:16 ees2:16 |
   g2:16 a2:16 |
   g2:16\ff a2:16 |
   bes8 r ges4(\accent f2)~ |
   f8 r ges4(\accent f2)~ |
   f8 r ges4(\accent f8) r c' r |
   bes r c r bes r c r |
  }
  \alternative
  {
   {
    r4 <f, bes>8 r r4 a8 r |
    r bes r f r ees r bes' |
    r bes r bes r bes r bes |
    r4 <f aes> r <f aes> |
    <ees g>8 r r ees4\p ees \once\override Slur.control-points = #'((1 . -3.5) (2 . -4.5) (3 . -4.5) (4 . -3.5)) ees8(  |
   }
   {
    bes'4) r8 d,8\f( f bes d d') |
   }
  } 
  bes4. f,8( bes d f f') |
  d4. bes,8( d f bes d) |
  <aes,! f'>2 <aes f'> |
  <aes f'>4 r8 d,( f b d f~ |
  f d b) d,( f b d f~ |
  f d b) d,( f b d f~ |
  f d b) d,( b' d g b |
  
  %% Bar 140
  g4) r8 g,( f' d b c |
  f)\< ees16 ees d d c c b8:16 aes8:16 g8:16 d8:16\! |
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
  c8 r <g' bes>4-.(\accent <g bes>-.\accent <g bes>-.)\accent |
  r <f aes>-.(\accent <f aes>-.\accent <f aes>-.)\accent |
  r g-.(\accent\f g-.\accent g-.)\accent |
  r \deprecateddim aes-.( aes-. aes-.) |
  r des,\mf-.( des-. des-.) |
  r \deprecateddim g-.( g-. g-.) |
  r des\p-.( des-. des-.) |
  R1*9 |
  f'1~\sfp |
  f~ |
  f2( e) |
  f1~ |
  f~ |
  f2( e |
  f4) r r2 |
  R1*2 |
  ees,1\p~ |
  ees~ |
  ees~ |
  ees |
  ees\pp~ |
  ees |
  d~ |
  d |
  g~ |
  g |
  f~ |
  f~ |
  f |
  ees( |
  aes |
  ges |
  f) |
  ees( |
  aes |
  ges)~ |
  ges~ |
  ges( |
  f4) r r2 |
  R1 |
  c'8\p c4 c c c8( |
  ces) ces4 ces ces ces8~ |
  ces ces4 ces ces ces8~ |
  ces ces4 ces ces ces8( |
  c!) c4 c c c8( |
  g) g4 \deprecatedcresc g g g8~ |
  g g4 g g g8( |
  aes) f4\mf f f f8~ |
  f f4 f \deprecatedcresc f f8( |
  ees) ees4 ees g g8( |
  a) a4 a8( f)\< f4 f8~\! |
  f r r4 r2 |
  ees16\f( d c d ees f g aes! g f ees d c d ees e) |
  f( ees! d ees f g \deprecatedcresc aes bes aes g f ees d c d ees) |
  f( e f g aes g aes bes) c(\ff bes c d ees! f g a |
  bes8) c,16( bes d c ees d) f( e g f aes g f ees) |
  d_\markup{\bold\italic "sempre" \dynamic "ff"}( c ees d f ees d c) bes( a bes b c bes aes g) |
  aes( g f e) f( ees d c) \stemUp d8 bes'16( a bes c d ees) \stemNeutral |
  
  %% Bar 220
  f( ees d c d ees f g) f(\< ees d c bes aes! g f\! |
  ees8) ees4\p ees ees ees8~ |
  ees ees4 ees ees ees8( |
  \deprecatedcresc d) d4 d d d8( |
  c) c4\f c8( ees) ees4 ees8~ |
  ees ees4\p ees ees ees8~ |
  ees ees4 ees ees ees8( |
  \deprecatedcresc ces') ces4 ces ces ces8( |
  bes) bes4\f bes bes bes8~ |
  bes g16\( ees g ees g ees \repeat "tremolo" 4 {g ees\)} |
  fis\sf\( ees fis ees \repeat "tremolo" 6 {g ees\)} |
  fis\sf\( ees fis ees \repeat "tremolo" 6 {g ees\)} |
  \repeat "tremolo" 4 {ges\p\( ees} \repeat "tremolo" 4 {aes f\)} |
  \repeat "tremolo" 4 {g!\( ees} \repeat "tremolo" 4 {aes f\)} |
  \deprecatedcresc \repeat "tremolo" 4 {bes( g)} \repeat "tremolo" 4 {c( aes)} |
  \repeat "tremolo" 4 {f( aes)} \repeat "tremolo" 4 {f( g)} |
  \repeat "tremolo" 4 {ees\f( g)} \repeat "tremolo" 4 {ees( g)} |
  \repeat "tremolo" 4 {ees\sf\( f} \repeat "tremolo" 4 {ees f} |
  ees8\) r g4\p( aes bes |
  c bes8 a) bes4 g8( aes |
  bes4 \deprecateddim c8 bes) bes( aes g aes) |
  g1~\pp |
  g4 g( aes bes |
  c bes8 a) bes4 g8( aes |
  bes4 c8 bes) bes( aes g aes |
  g) r r4 r2 |
  <c, c'>1~\accent |
  <c c'>8 r r4 r2 |
  r2 r4 ees''8^\markup{\bold\italic "pizz."} ees |
  ees ees, ees, f g aes f r |
  r bes' f bes, bes g' g, r |
  r c c g' aes, ees' f r |
  r4 <g, d' b'>8 r <g ees' c'> r <g d' b'> r |
  <g ees' c'> r <g d' b'> r <g ees' c'> r r4 |
  R1 |
  r4 r8 c,^\markup{\bold\italic "arco"}( ees a c c' |
  \deprecatedcresc g1)~ |
  g4 aes( ees d) |
  bes1~_\markup{\dynamic "f sf"} |
  bes |
  ees,1\sf~ |
  ees |
  f\ff~ |
  f~ |
  f( |
  g8) r r ees(\f d ees f d) |
  ees4 r8 ees8( d ees f d) |
  ees4( f) ees( f) |
  ees8( f) ees( f) ees-. f-. ees-. f-. |
  ees16\< g g g g4:16 ees2:16\ff |
  ees8 r g' r f r bes, r |
  g2:16\f g2:16 |
  c2:16 c2:16 |
  bes2:16 bes2:16 |
  c2:16 bes2:16 |
  bes2:16 bes2:16 |
  c2:16 c2:16 |
  bes2:16 bes2:16 |
  c2:16 bes2:16 |
  a2:16 aes2:16 |
  a2:16\ff aes2:16 |
  g8 r ees16 ees ees f g g ees g bes bes g bes |
  ees8 r r4 r2 |
  r4 g16 g g f ees ees g ees c c ees c |
  bes8 r r4 r2 |
  r2 r4 aes\p( |
  bes) r r f( |
  g) r r g( |
  f1) |
  ees2\pp( des |
  c ees |
  ces'1)~ |
  ces2 f~ |
  f4( e ees2)~ |
  ees4( d des2)~ |
  des4( c8) \deprecatedcresc c4 c c8~ |
  c c4 c c c8( |
  \deprecatedcresc ees) ees4 ees8( c) c4 c8( |
  ees)\f ees4 ees ees ees8~ |
  ees16\p\( bes ees bes \repeat "tremolo" 6 {ees bes\)} |
  \repeat "tremolo" 4 {ees\( bes} \repeat "tremolo" 4 {ees bes\)} |
  \deprecatedcresc \repeat "tremolo" 4 {ees\( c} \repeat "tremolo" 4 {ees c\)} |
  \repeat "tremolo" 4 {ees\<\( c} \repeat "tremolo" 4 {ees c\)} |
  ees\f\( bes ees bes g b g b \repeat "tremolo" 4 {aes c\)} |
  \repeat "tremolo" 4 {g( bes!)} \repeat "tremolo" 4 {f( bes)} |
  \repeat "tremolo" 4 {g\( bes} \repeat "tremolo" 4 {aes c\)} |
  \repeat "tremolo" 4 {g(\< bes)} \repeat "tremolo" 4 {f( bes)} |
  b2:16\ff c4:16 bes4:16 |
  <aes f'>2:16 <aes f'>2:16 |
  <aes f'>2:16 <aes f'>2:16 |
  g'2:16 g2:16 |
  aes2:16 aes2:16 |
  g4:16 bes,4:16 bes2:16 |
  bes2:16 bes2:16 |
  \deprecatedcresc bes2:16^\markup{\dynamic "sf"} b2:16^\markup{\dynamic "sf"} |
  c2:16^\markup{\dynamic "sf"} c2:16^\markup{\dynamic "sf"} |
  bes!2:16\ff bes2:16 |
  bes2:16 aes2:16 |
  g8 ees4\p ees ees ees8~ |
  \deprecatedcresc ees ees4 ees ees ees8( |
  << {d)\f d4 d d d8( } {s2 s2\<} >>|
  c16) ees ees ees ees4:16 bes'2:16\ff |
  bes8 r r4 <f aes>8 r r4 |
  <ees g>8 r r4 r2 |
  \bar "|."
 }    
}

SecondViolaFirstMovementTiming =
{
 s1^\markup {" " \raise #4.0 \bold\huge "Allegro moderato ma con fuoco"} | 
 s1*167 \pageBreak
 s1*72
 s1^\markup{" " \raise #2.0 \bold\huge "poco rit."} |
 s1*3 |
 s1^\markup{" " \raise #2.0 \bold\huge "a tempo"}
}