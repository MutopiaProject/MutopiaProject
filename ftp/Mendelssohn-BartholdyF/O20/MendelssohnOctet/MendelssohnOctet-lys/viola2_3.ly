%Viola 2, 3rd movement
\version "2.19.80"

SecondViolaThirdMovement =
{
 \relative c' {  
  \key g \minor
  \clef "alto"
  \time 2/4
  R2
  \repeat volta 2 {
   R2*2 |
   r4 r16 g-.\pp aes-. bes-. |
   c-. bes-. a-. bes-. c-. g-. a-. bes-. |
   c-. bes-. a-. bes-. c-. fis,-. fis-. g-. |
   a a bes bes c c cis cis |
   d d g g fis fis d d |
   d8 r r4 |
   R2*3 |
   r8 bes-. ees( d |
   ees) bes-. ees( d |
   ees) d( ees) d( |
   ees) d( ees16) bes-. a-. g-. |
   fis r a'-. bes-. c8 r |
   r ees,,32 ees ees ees ees8 r |
   r4 r8 g'16-. a-. |
   bes8 r r4 |
   r8 g16-. a-. bes8 r |
   r des,,32 des des des des8 d16-. ees-. |
   f8 r r4 |
   R2 r8 bes'16-. bes-. bes8-. bes16-. bes-. |
   bes8-. bes-. bes4~ |
   bes8 bes16-. bes-. bes8-. bes16-. bes-. |
   bes8-. bes-. bes4~ |
   bes8 bes16 bes bes8 bes16 bes |
   a8 a a4 |
   fis,16( a g a fis a g a |
   fis a g a fis a g a) |
   fis( a g a fis a g a |
   fis a g a fis a g a) |   
   fis( a g a f g f g |
   e  g e g ees f ees f |
   d8) bes''16 bes bes8 bes16 bes |
   bes8 bes bes4~ |
   bes8 bes16 bes bes8 bes16 bes |
   bes8 bes bes4~ |
   bes8 bes16 bes bes8 bes16 bes |
   a8 a a4 |
   fis,16( a g a fis a g a |
   fis a g a fis a g a) |
   fis( a g a fis a g a |
   fis a g a fis a g a) |
   fis( a g a fis a g a |
   fis8) r r4 |
   d16( fis e fis d fis e fis |
   
   %% Bar 50
   d fis e fis d fis e fis) |
   d( fis e fis d fis e fis |
   d8) r r4 |
   R2*2 |
   d''2\sfp~ |
   d4( a)\accent |
   d2\sf~ |
   d4( a)\accent |
   d4 r |
   R2 |
   d2\accent |
   a\accent |
   R2*2 |
   r4 r8 a16\pp r |
   g r e r cis r d r |
   c! r a r fis r g r |
   bes! r gis r a r e r |
  } 
  \alternative
  {
   {   
    d2~ |
    d2~ |
    d8 r r4 |
   }
   {
    d2~ |
   }
  }
  d2~ |
  d8 r r4 |
  R2*3 |
  r4 r8 g'16\pp r |
  f r des r b r c r |
  c,2~ |
  c |
  cis2~ |
  cis( |
  d |
  <f a>) |
  <e cis'>~ |
  <e cis'> |
  <a d>4 r |
  R2 |
  dis,2~ |
  dis( |
  e)~ |
  e |
  dis~ |
  dis( |
  e4) r |
  R2*2 |
  r8 b'16-.^\markup{\bold\italic "stacc."} a-. g-. a-. fis-. g-. |
  e-. f!-. e-. d-. c8 r |
  R2*2 |
  r8 g'16 f e e' d c |
  d8 r r4 |
  R2*3 |
  r8 e,\trill( \grace {d16[ e]} a8) r |
  <e g>-.( <e g>-. <e g>-.) a16 b |
  cis b cis d e d f e |
  g e a, a g' e a, a |
  fis'8 r r \afterGrace {\once \override Script.script-priority = #-100 a,\trill^\markup{\tiny\flat}\( } {g16[ a]} |
  d8\) r r c16 bes |
  a bes a g fis g a bes |
  c c c c c c bes a |
  g2~\p |
  g~ |
  g~ |
  g~ |
  g |
  f~ |
  f4( fis |
  g2)~ |
  g4 c(\p |
  b2 |
  c4) c( |
  b2 |
  c4) b( |
  c) b( |
  c2)~ |
  c8 c-.( c-. c-.) |
  c2~ |
  c8 c-.( c-. c-.) |
  b2~ |
  b8 \deprecateddim b-.( b-. b-.) |
  b2~ |
  b8 b-.( b-. b-.) |
  c16(\pp ees des ees c ees des ees |
  c ees des ees c ees des ees) |
  c( ees des ees c ees des ees |
  c ees des ees c ees des ees) |
  c( ees des ees c ees des ees |
  c ees des ees c ees des ees) |
  bes( des c des bes des c des |
  bes des c des bes des c des) |
  bes8 r r4 |
  r8 d,16-. d-. d8-. d16-. d-. |
  d2~ |
  d4( g8 d) |
  d2~ |
  d16 d-. d-. d-. d4:16-. |
  d2~ |
  d8 r r4 |
  R2 |
  r4 r8 d'16-. c-. |
  bes c a bes g d' c d |
  g, g c d bes d g g, |
  bes8 r r4 |
  r4 bes16 aes g f |
  ees f ees d c8 r |
  r g'8\trill( \grace {f16[ g]} c8) r |
  fis16( a g a fis a g a |
  fis a g a fis a g a |
  fis a g a fis a g a |
  fis a g a fis a g a |
  d,8) r r4 |
  R2 |
  a16( c bes c a c bes c |
  a c bes c a c bes c) |
  aes( d c d aes d c d |
  aes d c d aes d c d) |
  g,( bes a! bes g bes a bes |
  g bes a bes g bes a bes) |
  g( bes a bes g bes a bes |
  g bes a bes g bes a bes) |
  \repeat "tremolo" 4 {bes\( a} |
  \repeat "tremolo" 4 {bes a\)}
  aes-. g-. aes-. g-. aes-. g-. aes-. g-. |
  aes-. g-. aes-. g-. aes-. g-. aes-. g-. |
  fis8 r g r |
  aes r aes r |
  \repeat "tremolo" 4 {f16\( e} |
  \repeat "tremolo" 4 {f e\)} |
  ees!-. d-. ees-. d-. ees-. d-. ees-. d-. |
  ees-. d-. ees-. d-. ees-. d-. ees-. d-. |
  g8 g r aes |
  r g r a! |
  r g'16-. g-. g8-. g16-. g-. |
  g8-. ees-. ees4( |
  g8) g16-. g-. g8-. g16-. g-. |
  g8-. bes,-. bes4( |
  f'8) f16 f f8 f16 f |
  bes8 bes bes4~ |
  bes8 g g4( |
  f8) f f4( |
  g8) g16 g g8 g16 g |
  g8 g,16-. aes-. bes8-. c16-. d-. |
  ees8-. g-. \afterGrace { \once \override Script.script-priority = #-100 g4\(\trill^\markup{\tiny \flat}} {f16[ g\)] } |
  g8 g,16-. aes-. bes8-. c16-. d-. |
  ees8-. f-. f4 |
  f8 bes bes4 |
  <g, d'>2~ |
  <g d'>2~ |
  <g d'>16 d'-. c-. d-. b-. d-. c-. d-. |
  b-. d-. c-. d-. b-. d-. c-. d-. |
  b-. d-. c-. d-. b-. d-. c-. d-. |
  b8 r r4 |
  g16-. b-. a-. b-. g-. b-. a-. b-. |
  g-. b-. a-. b-. g-. b-. a-. b-. |
  g-. b-. a-. b-. g-. b-. a-. b-. |
  g8 r r4 |
  R2*2 |
  g2\sfp~ |
  g4( d)\accent |
  g2\sf~ |
  g4( d)\accent |
  g2\sf~ |
  g4( d)\accent |
  g8 r r4 |
  R2*3 |
  d8 d16 d d8 r |
  R2 |
  r4 r8 d''16\pp r |
  c r a r fis r g r |
  f! r d r b r c r |
  ees r b r c r g r |
  aes r fis r g r d r |
  ees r b' r c r e,! r |
  f r cis r d r fis r |
  g r a r bes r fis r |
  g r d r ees r b' r |
  c r gis r a r e r |
  f r cis' r d r a r |
  bes r fis r g r ees r |
  d r g r bes r cis r |
  d r g r bes r ees,, r |
  d r bes' r cis r d r |
  g r bes r d r d,, r |
  g r \deprecateddim g r g r g r |
  g r g r g r g r |
  g\! r r8 r4 |
  \bar "|."
 }    
}

SecondViolaThirdMovementTiming =
{
 s2^\markup {" " \raise #4.0 \bold\huge "Allegro leggierissimo"} |
 s2*153 \pageBreak
}