%Violin 2, 3rd movement
\version "2.19.80"

SecondViolinThirdMovement =
{
 \relative c' {  
  \key g \minor
  \time 2/4
  g'16-.\pp bes-. a-. bes-. g-. bes-. a-. bes-. |
  \repeat volta 2 {
   g-. bes-. a-. bes-. g-. bes-. a-. bes-. |
   g-. bes-. a-. bes-. g-. bes-. a-. bes-. |
   g bes a bes g d' c bes |
   a bes c bes a bes' a g |
   fis g a g fis c' c bes |
   a bes g a fis g e fis |
   d ees! c d bes c a bes |
   g bes a bes g bes a bes |
   g bes a bes g bes a bes |
   g bes a bes g bes a bes |
   g bes a bes g fis g d |
   ees g f! g ees g f g |
   ees g f g ees g f g |
   ees g f g ees g f g |
   ees g f g ees d c bes |
   a8 r r c16-. d-. |
   ees8 r r4 |
   r8 bes16-. c-. d8 r |
   r d''32 d d d d8 g,16-. a-. |
   bes8 r r4 |
   R2 |
   r4 r8 d,,16-. ees-. |
   f8 a32 a a a a8 c |
   bes8 r r4 |
   R2*5 |
   <a a'>2~\pp |
   <a a'>2~ |
   <a a'>2~ |
   <a a'>2~ |
   <a a'>4( g'~) |
   g( f)~ |
   f8 bes16-.( f-. d-. bes-. f-. d-.) |
   bes8-. bes16-.( d-. f-. bes-. d-. f-.) |
   d'8-. d16-.( bes-. f-. d-. bes-. f-.) |
   d8-. bes16-.( d-. f-. bes-. d-. f-.) |
   g8-. g16-.( e-. c-. g-. e-. c-.) |
   a8-. a16-.( c-. f-. a-. c-. f-. |
   a8-.) a,\( a' a, |
   \repeat "tremolo" 2 { a'8 a,\) } |
   \repeat "tremolo" 4 { a'16\( a, } |
   \repeat "tremolo" 4 { a'16 a, } |
   \repeat "tremolo" 4 { a'16 a,\) } |
   d,8 r r4 |
   <a' a'>2~ |
   
   %% Bar 50
   <a a'>2~ |
   <a a'>2 |
   b'16( a) g-. fis-. fis( e) d-. cis-. |
   R2*2 |
   d2~\sfp |
   d4( a\accent) |
   d2\sf~ |
   d4( a\accent) |
   d r |
   R2*7 |
   r4 r8 g,16\pp r |
   bes! r gis r a r a, r |
  }
  \alternative {
   {
    a r r8 r4 |
    R2 |
    g'16-. bes-. a-. bes-. g-. bes-. a-. bes-. |
   }
   {
    a, r r8 r4 |
   }
  }
  R2*5 |
  c''16 r aes r fis r g r |
  f! r des r b r c r |
  R2*4 |
  a,16 r d r g r f r |
  a r d r g r f r |
  e r r8 r4 |
  R2*3 |
  b'16 r fis r cisis r dis r |
  b r fis r cisis r dis r |
  R2*2 |
  b''16 r fis r cisis r dis r |
  b r fis r cisis r dis r |
  r4 r8 b'16^\markup{\bold\italic "stacc."} a |
  g a b c b c a c |
  b8-. dis-. e-. \afterGrace { b8\trill\( } {a16[ b]} |
  e8\) r r4 |
  <g,, e' c' g'>8^\markup{\bold\italic "pizz."} r r g'16^\markup{\bold\italic "arco"} f |
  e f g a g a f d |
  g r b r c r \afterGrace {g8\trill\( } {fis16[ g]} |
  c8\) r r4 |
  <e, b' e>8^\markup{\bold\italic "pizz."} r r d'16^\markup{\bold\italic "arco"} c |
  b c d c b b b b |
  b a gis a b8 \afterGrace { b8\trill\( } {a16[ b]} |
  e8\) r r4 |
  <e, a a'>8^\markup{\bold\italic "pizz."} r r a16^\markup{\bold\italic "arco"} b |
  cis a e f g f a g |
  g g g g g8 \afterGrace { e8\trill\( } {d16[ e]} |
  a8\) r r4 |
  <d, a' a'>8^\markup{\bold\italic "pizz."} r r a'16^\markup{\bold\italic "arco"} g |
  fis g a g fis g a bes! |
  c8 fis,16 g a r \afterGrace { a8\trill\( } {g16[ a]} |
  d8\) r r4 |
  g,2~\p |
  g~ |
  g~ |
  g~ |
  g |
  f2~ |
  f4( fis |
  g2)~ |
  g4 r |
  R2*13 |
  aes'2~\pp |
  aes2~ |
  aes8 ees( aes g|
  aes ees aes g) |
  fis2~ |
  fis8 fis(_\markup{\bold\italic "espress."} g fis) |
  bes2~ |
  bes8 bes( fis g) |
  g4( d) |
  R2*7 |
  r8 d16-. c-. bes-. c-. a-. bes-. |
  g-. a-. fis-. g-. d-. ees-. c-. d-. |
  g, r d''8\trill\( \grace {c16[ d]} g8\) r |
  R2 |
  r8 bes16-. aes-. g-. aes-. f-. g-. |
  ees8 bes8\trill\( \grace {c16[ d]} ees8\) r |
  r c16 d ees d f ees |
  g f aes g g f ees d |
  c2~ |
  c2~ |
  c2~ |
  c2 |
  bes4:16-. bes16-. c-. d-. bes-. |
  ees d c bes a g fis ees |
  a2~ |
  a2 |
  aes2~ |
  aes |
  e'~ |
  e~ |
  e~ |
  e |
  \repeat "tremolo" 4 {e16\( d} |
  \repeat "tremolo" 4 {e16 d\)} |
  d16-. c-. d-. c-. d-. c-. d-. c-. |
  d-. c-. d-. c-. d-. c-. d-. c-. |
  c8 c r bes |
  r c r c |
  \repeat "tremolo" 4 {d16\( c} |
  \repeat "tremolo" 4 {d16 c\)} |
  c16-. bes-. c-. bes-. c-. bes-. c-. bes-. |
  c-. bes-. c-. bes-. c-. bes-. c-. bes-. |
  c8 r aes r |
  bes r d, r |
  g r r4 |
  R2*7 |
  bes'2:16^\markup{\bold\italic "stacc."} |
  bes2:16 |
  bes2:16 |
  bes2:16 |
  c2:16 |
  bes2:16 |
  b2~ |
  b2~ |
  b4 r8 fis( |
  g) r r fis( |
  g) r r fis( |
  g) r r4 |
  r8 d-. g( fis |
  g) d-. g( fis |
  g) d-. g( fis |
  g) r r4 |
  R2*2 |
  g2\sfp~ |
  g4( d\accent) |
  g2\sf~ |
  g4( d\accent) |
  g2\sf~ |
  g4( d\accent) |
  g8 r r4 |
  R2 |
  g2\accent |
  d2\accent |
  R2 |
  d8 d16 d d8 r |
  R2*2 |
  r4 r8 c16\pp r |
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
  g r bes r d r fis,, r |
  g r \deprecateddim g r bes r bes r |
  bes r bes r bes r bes r |
  bes\! r r8 r4 |
  \bar "|."
 }    
}

SecondViolinThirdMovementTiming =
{
 s2^\markup {" " \raise #4.0 \bold\huge "Allegro leggierissimo"} |
 %s2*243 
}