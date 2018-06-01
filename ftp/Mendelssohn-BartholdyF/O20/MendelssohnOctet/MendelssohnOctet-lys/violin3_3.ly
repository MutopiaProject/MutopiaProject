%Violin 3, 3rd movement
\version "2.19.80"

ThirdViolinThirdMovement =
{
 \relative c' {  
  \key g \minor
  \time 2/4
  R2 |
  \repeat volta 2 {
   R2*3
   r8 <fis a>\pp^\markup{\bold\italic "pizz."} <fis a> r |
   r <fis a> <fis a> r |
   R2*2 |
   r8 d''16^\markup{\bold\italic "arco"} d d8 d16 d |
   d8 r r4 |
   R2*2 |
   g,4.\p( f8) |
   g4.( f8) |
   g( f g f |
   g f g) a16-. bes-. |
   c8-. r r4 |
   R2*2 |
   r8 bes32\pp bes bes bes bes8 r |
   r4 r8 bes,,16-. c-. |
   des8 r r4 |
   r r8 bes16-. c-. |
   d!8 ees32 ees ees ees ees8 ees |
   d8 f16-. f-. f8-. f16-. f-. |
   f8-. f-. f4~ |
   f8 f16-. f-. f8-. f16-. f-. |
   f8-. f-. f4( |
   g8) g16 g g8 g16 g |
   f8 f f4 |
   <d a'>2~ |
   <d a'>~ |
   <d a'>~ |
   <d a'>~ |
   <d a'>4 f'( |
   e ees |
   d8) f,16 f f4\startTrillSpan~ |
   f2~ |
   f2~ |
   
   %% Bar 40
   \afterGrace { f2\( } {e16\stopTrillSpan[ f]\)} |
   g2\startTrillSpan |
   \afterGrace { a( } {g16\stopTrillSpan[ a]} |
   d8) d\accent( a4)~ |
   a8 d\accent( a4)~ |
   a8 d\accent( a4)~ |
   a8 d\accent( a4)~ |
   a8 d\accent( a4)~ |
   a8 d,-. b'-. g-. |
   fis8( d'4 e8 |
   d4. e8 |
   d4. e8 |
   d) r r4 |
   b'16( a) g-. fis-. fis( e) d-. cis-. |
   R2 |
   d,2\sfp~ |
   d4( a)\accent |
   d2~\sf |
   d4( a)\accent |
   d r |
   R2*7 |
   r4 r8 g16\pp r |
   bes! r gis r a r cis, r |
  }  
  \alternative {
   {
    d r r8 r4 |
    R2*2 |
   }
   {
    d16 r r8 r4 |
   }
  }
  R2*9 |
  <e a>2\p~ |
  \set doubleSlurs = ##t  
  <e a>( |
  \set doubleSlurs = ##f
  <d a'>)( |
  <a' gis'>) |
  <a a'>2~ |
  <a a'>~ |
  <a a'>4 d( |
  f e |
  dis b) |
  fis2( |
  b |
  ais' |
  b |
  fis |
  b,4) r |
  r8 b16^\markup{\bold\italic "stacc."} a g a fis a |
  b c a b g b a b |
  e,8 b\trill( \grace {a16[ b]} e8) r |
  R2 |
  r8 g16 f e f d f |
  g a f g c,8 r |
  R2 |
  <e b' b'>8^\markup{\bold\italic "pizz."} r r4 |
  r8 f'16^\markup{\bold\italic "arco"} e d f dis e |
  e,8 f16 e d! f dis e |
  b8 b\trill( \grace {a16[ b] } e8) r |
  <a e'>8^\markup{\bold\italic "pizz."} r r \afterGrace { e8\trill\(^\markup{\bold\italic "arco"}} {d16[ e]} |
  a8\) a16 b cis b d cis |
  e8 r r4 |
  r8 e,\trill( \grace {d16[ e]} a8) r |
  R2 |
  r8 c16 bes! a bes a g |
  fis g a bes c r r8 |
  r a,8\trill( \grace { g16[ a]} d8) r |
  d2\p~ |
  d |
  ees2~ |
  ees~ |
  ees4( e |
  f2)~ |
  f~ |
  f( |
  ees4) r |
  R2*13 |
  ees'2\pp~ |
  ees~ |
  ees~ |
  ees |
  a,,!~ |
  a |
  g~ |
  g |
  g'16-. bes-. a-. bes-. g-. bes-. a-. bes-. |
  g-. bes-. a-. bes-. g-. bes-. a-. bes-. |
  g-. bes-. a-. bes-. g-. bes-. a-. bes-. |
  g bes a bes g a bes c |
  d2:16 |
  d2:16 |
  d2:16 |
  d2:16 |
  d8 r r4 |
  r8 d16-. c-. bes-. c-. a-. bes-. |
  g d c d g, r \afterGrace { d'8\trill\( } {c16[ d]} |
  g8\) r r4 |
  <ees bes' g'>8^\markup{\bold\italic "pizz."} r r bes'16^\markup{\bold\italic "arco"} aes |
  g aes g f ees8 r |
  <g, ees' c'>^\markup{\bold\italic "pizz."} r r c16-.^\markup{\bold\italic "arco"} d-. |
  ees-. d-. f-. ees-. ees d c c |
  c2~ |
  c~ |
  c~ |
  c |
  g'4:16-. g16-. a-. bes-. g-. |
  c bes a g fis ees d c |
  ees2~ |
  ees |
  f~ |
  f |
  bes~ |
  bes~ |
  bes~ |
  bes |
  \repeat "tremolo" 4 {bes16\( a} \repeat "tremolo" 4 {bes a\)} |
  aes-. g-. aes-. g-. aes-. g-. aes-. g-. |
  aes-. g-. aes-. g-. aes-. g-. aes-. g-. |
  fis8 fis r g |
  r aes r aes |
  \repeat "tremolo" 4 {aes16\( g} \repeat "tremolo" 4 {aes g\)} |
  ges-. f-. ges-. f-. ges-. f-. ges-. f-. |
  ges-. f-. ges-. f-. ges-. f-. ges-. f-. |
  ees8 r ees r |
  g8 r c, r |
  bes r r4 |
  R2*7 |
  g''2:16^\markup{\bold\italic "stacc."} |
  g2:16 |
  g2:16 |
  g2:16 |
  f2:16 |
  f2:16 |
  g2~ |
  g~ |
  g4 r8 fis,( |
  g) r r fis( |
  g) r r fis( |
  g) r r4 |
  <d d'>2~ |
  <d d'>~ |
  <d d'>~ |
  <d d'>8 g-. c-. c-. |
  b g16-. fis-. e8-. c-. |
  b r r4 |
  g'8(\p fis f e |
  d cis c a) |
  g'( fis f e |
  d cis c a) |
  g'( fis f e |
  d cis c a) |
  g r r4 |
  R2*2 |
  d'''8 d16 d d8 r |
  R2 |
  r4 d8 d16 d |
  R2*2 |
  r4 r8 c,16\pp r |
  ees r b r c r g r |
  aes r fis r g r d r |
  ees r b r c r e r |
  f r cis r d r fis r |
  g r a r bes r fis r |
  g r d r ees r b' r |
  c r gis r a r e r |
  f r cis' r d r a r |
  bes r fis r g r ees r |
  d r g r bes r cis r |
  d r g r bes r ees,, r |
  d r bes' r cis r d r |
  g r bes r d r c,, r |
  bes r \deprecateddim d r g r g r |
  g r g r g r g r |
  g\! r r8 r4 |
  \bar "|."
 }
}

ThirdViolinThirdMovementTiming =
{
 s2^\markup {" " \raise #4.0 \bold\huge "Allegro leggierissimo"} |
 %s2*243 
}