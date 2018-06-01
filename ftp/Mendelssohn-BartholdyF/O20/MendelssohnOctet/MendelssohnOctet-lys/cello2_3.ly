%Cello 2, 3rd movement
\version "2.19.80"

SecondCelloThirdMovement =
{
 \relative c {  
  \key g \minor
  \time 2/4
  \clef "bass"
  R2
  \repeat volta 2 {
   R2*9
   r8 d'16\pp d d8 d16 d |
   d8 r r4 |
   r8 bes-. ees( d |
   ees) bes-. ees( d |
   ees) d( ees) d( |
   ees) d( ees16) bes-. ees,8-. |
   a,! r r4 |
   r8 a32 a a a a8 g16-. a-. |
   bes8 r r4 |
   R2 |
   <g e'>8^\markup{\bold\italic "pizz."} r r4 |
   r8 g32^\markup{\bold\italic "arco"} g g g g8 r |
   f r r f32 f f f |
   f8 f32 f f f f8 f' |
   bes bes16-. bes-. bes8-. bes16-. bes-. |
   a8-. a-. a4( |
   g8) g16-. g-. g8-. g16-. g-. |
   f8-. f-. f4( |
   e8)  e16 e e8 e16 e |
   ees!8 ees ees4 |
   d,2~ |
   d~ |
   d~ |
   d~ |
   d4( g |
   c, f |
   bes8) bes'16 bes bes8 bes16 bes |
   a8 a a4( |
   g8) g16 g g8 g16 g |
   f8 f f4( |
   e8) e16 e e8 e16 e |
   ees!8 ees ees4 |
   d,2~ |
   d~ |
   d8 a'( d cis |
   d) a( d cis |
   d) a( d cis |
   d) r r4 |
   d,2~ |
   
   %% Bar 50
   d~ |
   d~ |
   d8 fis'-. g-. a-. |
   b-. fis-. g-. a-. |
   b fis,16 fis g g a a |
   d,2~\sfp |
   d |
   d\sf~ |
   d |
   d4 r |
   R2*3 |
   d''2\accent |
   a\accent |
   R2 |
   r4 r8 d,16\pp r |
   c! r a r fis r g r |
   bes! r gis r a r a r |
  }
  \alternative
  {
   {
    d( ees! d ees c d c d |
    bes c bes c a bes a bes |
    g8) r r4 |
   }
   {
    \repeat "tremolo" 4 {d'16\( ees} |
   }
  }
  \repeat "tremolo" 4 {c d} |
  bes8\) r r4 |
  R2 |
  <g g'>2~ |
  <g g'>~ |
  <g g'>8 r r4 |
  R2*3 |
  a!2\p( |
  g |
  f |
  d) |
  a'( |
  g |
  f4) r |
  R2 |
  b2( |
  a |
  g |
  e) |
  b'( |
  a |
  g4) r8 a-. |
  b-. r b-. r |
  e, r r4 |
  r4 r8 \afterGrace {b'\trill\(} {a16[ b]} |
  e8\) r r4 |
  R2 |
  r4 r8 g,16-.^\markup{\bold\italic "stacc."} f-. |
  e-. f-. d-. e-. c-. c'-. b-. a-. |
  gis8 r r4 |
  R2*2 |
  r4 r8 \afterGrace {b\trill\(} {a16[ b]} |
  e8\) r r4 |
  R2 |
  r4 r8 a,16-. b-. |
  cis b d cis e-. e-. cis-. a-. |
  d r \once \override Script.script-priority = #-100 a8(\trill^\markup{\tiny\flat} \grace {g16[ a]} d8) r |
  R2 |
  r8 <d d'>-.( <d d'>-. <d d'>-.) |
  <d d'>2 |
  d~ |
  d( |
  bes)~ |
  bes |
  c~ |
  c4 r |
  R2*2 |
  r4 ees( |
  d g, |
  c) ees( |
  d g, |
  c) g( |
  c) g( |
  c2)~ |
  c8 c-.( c-. c-.) |
  c2~ |
  c8 c-.( c-. c-.) |
  d2~ |
  d8 \deprecateddim d-.( d-. d-.) |
  d2~ |
  d8 d-.( d-. d-.) |
  ees,2\pp~ |
  ees~ |
  ees~ |
  ees |
  ees~ |
  ees~ |
  ees~ |
  ees |
  d8 r r4 |
  R2*2 |
  r4 r16 g-. fis-. e-. |
  d-. e-. fis-. e-. d-. bes'-. a-. g-. |
  fis-. g-. a-. g-. fis-. c'-. c-. bes-. |
  a-. bes-. g-. a-. fis-. g-. e-. fis-. |
  d-. e-. fis-. g-. a-. c-. bes-. a-. |
  g8-. r r \afterGrace {d\trill\( } {c16[ d]} |
  g8\) r r4 |
  r r8 d'16-. c-. |
  bes-. c-. a-. bes-. g-. g-. f-. g-. |
  ees8 r r4 |
  r4 r8 \afterGrace {\once \override Script.script-priority = #-100 g\trill\(^\markup{\tiny\flat} } {f16[ g]} |
  c8\) r r4 |
  r4 r8 bes!( |
  a!2)~ |
  a~ |
  a~ |
  a( |
  bes8) r r4 |
  R2 |
  a2~ |
  a |
  b~ |
  b |
  <cis, g'>~ |
  <cis g'>~ |
  <cis g'>~ |
  <cis g'> |
  \repeat "tremolo" 4 {cis'16\( d} |
  \repeat "tremolo" 4 {cis d\)} |
  b-. c!-. b-. c-. b-. c-. b-. c-. |
  b-. c-. b-. c-. b-. c-. b-. c-. |
  d8 r ees r |
  c r d r |
  \repeat "tremolo" 4 {b16\( c} |
  \repeat "tremolo" 4 {b16 c\)} |
  a-. bes!-. a-. bes-. a-. bes-. a-. bes-. |
  a-. bes-. a-. bes-. a-. bes-. a-. bes-. |
  ees,8 ees r c |
  r d r d |
  ees r r ees''16-. ees-. |
  d8-. d-. d4( |
  c8) c16-. c-. c8-. c16-. c-. |
  bes8-. bes-. bes4( |
  a!8) a16 a a8 a16 a |
  aes8 aes aes4( |
  g8) g c4( |
  aes8) aes bes4( |
  ees,8) ees'16 ees ees8 ees16 ees |
  d8 d d4( |
  c8) c16 c c8 c16 c |
  bes8 bes bes4( |
  a!8) a16 a a8 a16 a |
  aes8 aes aes4 |
  <g, d'>2~ |
  <g d'>~ |
  <g d'>~ |
  <g d'>~ |
  <g d'>~ |
  <g d'>8 r r4 |
  g4.( d8) |
  g4.( d8) |
  g4.( d8) |
  g-. b-. c-. d-. |
  e-. e16-. d-. c8-. d-. |
  e8 e16 d c c d d |
  g,2\sfp~ |
  g |
  g~\sf |
  g |
  g8( fis f e |
  d cis c a') |
  g r r4 |
  R2*3 |
  g2\accent |
  d\accent |
  R2 |
  r4 r8 g'16\pp r |
  f r d r b r c r |
  ees r b r c r g r |
  aes r fis r g r d r |
  ees r b' r c r e, r |
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

SecondCelloThirdMovementTiming =
{
 s2^\markup {" " \raise #4.0 \bold\huge "Allegro leggierissimo"} |
}